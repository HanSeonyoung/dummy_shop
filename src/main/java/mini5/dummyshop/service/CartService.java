package mini5.dummyshop.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import mini5.dummyshop.dto.CartItemViewDto;
import mini5.dummyshop.dto.CartViewDto;
import mini5.dummyshop.entity.Cart;
import mini5.dummyshop.entity.Product;
import mini5.dummyshop.repository.CartRepository;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class CartService {
    private final CartRepository cartRepository;
    private final UserContextService userContextService;

    private List<Cart> findMyCartItems() {
        if (userContextService.isLoggedIn()) {
            Long userId = userContextService.getUserId();
            log.debug("Cart query - userId : {}", userId);
            return cartRepository.findByUserId(userId);
        } else {
            String sessionId = userContextService.getSessionId();
            log.debug("Cart query - sessionId: {}", sessionId);
            return cartRepository.findBySessionId(sessionId);
        }
    }

    @Transactional
    public void addToCart(Long productId, int quantity) {
        if (userContextService.isLoggedIn()) {
            cartRepository.upsertCart(
                    userContextService.getUserId(),
                    null,
                    productId,
                    quantity);
        } else {
            cartRepository.upsertCart(
                    null,
                    userContextService.getSessionId(),
                    productId,
                    quantity);
        }
        log.info("Cart.add - product : {}, quantity : {}", productId, quantity);
    }

    @Transactional
    public void updateQuantity(Long productId, int newQuantity) {
        int updateRows;
        if (userContextService.isLoggedIn()) {
            updateRows = cartRepository.updateQuantityByUserId(
                    userContextService.getUserId(),
                    productId,
                    newQuantity);
        } else {
            updateRows = cartRepository.updateQuantityBySessionId(
                    userContextService.getSessionId(),
                    productId,
                    newQuantity);
        }
        if (updateRows == 0) {
            log.warn("상품을 찾을 수 없음 - product: {}", productId);
            // throw new CartItemNotFoundException("상품이 장바구니에 없습니다.");
        }
        log.info("Cart.update - product: {}, quantity: {}", productId, newQuantity);
    }

    @Transactional
    public void removeFromCart(Long productId) {
        int deletedRows;
        if (userContextService.isLoggedIn()) {
            deletedRows = cartRepository.deleteByUserIdAndProductId(
                    userContextService.getUserId(),
                    productId);
        } else {
            deletedRows = cartRepository.deleteBySessionIdAndProductId(
                    userContextService.getSessionId(),
                    productId);
        }
        if (deletedRows == 0) {
            log.warn("삭제할 상품 없음 - product : {}", productId);
        }
        log.info("Cart.remove - product: {}", productId);
    }

    public CartViewDto getCartView() {
        List<Cart> cartItems = findMyCartItems();
        return buildViewDto(cartItems);
    }

    private CartViewDto buildViewDto(List<Cart> cartItems) {
        List<CartItemViewDto> itemViews = cartItems.stream()
                .map(item -> {
                    Product product = item.getProduct();
                    BigDecimal price = product.getPrice();
                    int qty = item.getQuantity();
                    BigDecimal total = price.multiply(BigDecimal.valueOf(qty));

                    return new CartItemViewDto(
                            product.getName(),
                            product.getImage_url(),
                            price,
                            qty,
                            total,
                            product.getId());
                }).collect(Collectors.toList());
        BigDecimal totalPrice = itemViews.stream()
                .map(CartItemViewDto::getTotalPrice)
                .reduce(BigDecimal.ZERO, BigDecimal::add);

        // # 장바구니 담긴 상품군 수
        int itemCount = itemViews.size();
        // # 장바구니 담긴 총 상품 수
        // int itemCount = itemViews.stream()
        // .mapToInt(CartItemViewDto::getQuantity)
        // .sum();

        return new CartViewDto(itemViews, totalPrice, itemCount);
    }

    public int getCartItemCount() {
        List<Cart> myCart = findMyCartItems();
        return myCart.size();
    }

}
