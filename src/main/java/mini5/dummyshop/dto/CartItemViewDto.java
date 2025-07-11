package mini5.dummyshop.dto;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
@AllArgsConstructor
public class CartItemViewDto {
    private String name;
    private String image_url;
    private BigDecimal price;
    private int quantity;
    private BigDecimal totalPrice;
    private Long productId;
}
