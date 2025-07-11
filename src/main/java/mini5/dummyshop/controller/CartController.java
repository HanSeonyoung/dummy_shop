package mini5.dummyshop.controller;

import lombok.RequiredArgsConstructor;
import mini5.dummyshop.dto.CartViewDto;
import mini5.dummyshop.service.CartService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {
    private final CartService cartService;

    @GetMapping
    public String getCartView(Model model) {
        CartViewDto cartViewDto = cartService.getCartView();
        model.addAttribute("cart", cartViewDto);
        return "cart/view";
    }

    @PostMapping("/add")
    public String addToCart(@RequestParam Long productId, @RequestParam(defaultValue = "1") int quantity) {
        cartService.addToCart(productId, quantity);
        return "redirect:/cart";
    }

    @PostMapping("/remove")
    public String removeFromCart(@RequestParam Long productId) {
        cartService.removeFromCart(productId);
        return "redirect:/cart";
    }
}
