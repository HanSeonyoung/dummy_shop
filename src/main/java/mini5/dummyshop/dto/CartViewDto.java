package mini5.dummyshop.dto;

import java.math.BigDecimal;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartViewDto {
    private List<CartItemViewDto> cartItems;
    private BigDecimal totalPrice; // 전체 합계
    private int itemCount;
}
