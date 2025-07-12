package mini5.dummyshop.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@NoArgsConstructor
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private String description;
    @Column(precision = 10, scale = 2)
    private BigDecimal price;
<<<<<<< HEAD
    @Column
    private int stock;
=======
    @Column(name = "stock_quantity")
    private int stockQuantity;
>>>>>>> origin/main
    @Column
    private String category;
    @Column
    private String image_url;
    @Column
    private LocalDateTime created_at;
}
