package mini5.dummyshop.repository;

import lombok.NonNull;
import mini5.dummyshop.entity.Product;
import org.springframework.data.repository.CrudRepository;
import java.util.List;

public interface GoodsRepository extends CrudRepository<Product, Long> {
    @Override
    @NonNull
    List<Product> findAll();
}
