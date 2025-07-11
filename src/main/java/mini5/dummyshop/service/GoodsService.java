package mini5.dummyshop.service;

import lombok.RequiredArgsConstructor;
import mini5.dummyshop.entity.Product;
import mini5.dummyshop.repository.GoodsRepository;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GoodsService {
    private final GoodsRepository goodsRepository;

    public List<Product> index() {
        return goodsRepository.findAll();
    }

    public Product detail(Long productId) {
        return goodsRepository.findById(productId).orElse(null);
    }
}
