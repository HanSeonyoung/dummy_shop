package mini5.dummyshop.controller;

import lombok.RequiredArgsConstructor;
import mini5.dummyshop.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/shop")
public class ShopController {
    private final GoodsService goodsService;

    @GetMapping("/index")
    public String home(Model model) {
        model.addAttribute("goods", goodsService.index());
        return "goods/index";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable Long id, Model model) {
        model.addAttribute("selectedItem", goodsService.detail(id));
        return "goods/detail";
    }
}
