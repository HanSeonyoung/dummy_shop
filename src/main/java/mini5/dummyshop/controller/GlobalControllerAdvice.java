package mini5.dummyshop.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import lombok.RequiredArgsConstructor;
import mini5.dummyshop.dto.UserInfo;
import mini5.dummyshop.service.CartService;
import mini5.dummyshop.service.UserContextService;

@ControllerAdvice
@RequiredArgsConstructor
public class GlobalControllerAdvice {
    private final UserContextService userContextService;
    private final CartService cartService;

    @ModelAttribute("currentUser")
    public UserInfo getCurrentUser() {
        return userContextService.getCurrentUser();
    }

    @ModelAttribute("cartItemCount")
    public int getCartItemCount() {
        return cartService.getCartItemCount();
    }
}