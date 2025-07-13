package mini5.dummyshop.repository;

import mini5.dummyshop.entity.Cart;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

    List<Cart> findByUserId(Long userId);

    List<Cart> findBySessionId(String sessionId);

    // Native SQL
    @Modifying
    @Query(value = "INSERT INTO carts (user_id, session_id, product_id, quantity, created_at, updated_at) " +
            "VALUES (:userId, :sessionId, :productId, :quantity, NOW(), NOW()) " +
            "ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity), updated_at = NOW()", nativeQuery = true)
    void upsertCart(@Param("userId") Long userId,
            @Param("sessionId") String sessionId,
            @Param("productId") Long productId,
            @Param("quantity") int quantity);

    // JPQL
    @Modifying
    @Query("UPDATE Cart c SET c.quantity = :quantity, c.updatedAt = CURRENT_TIMESTAMP " +
            "WHERE c.userId = :userId AND c.productId = :productId")
    int updateQuantityByUserId(@Param("userId") Long userId,
            @Param("productId") Long productId,
            @Param("quantity") int newQuantity);

    @Modifying
    @Query("UPDATE Cart c SET c.quantity = :quantity, c.updatedAt = CURRENT_TIMESTAMP " +
            "WHERE c.sessionId = :sessionId AND c.productId = :productId")
    int updateQuantityBySessionId(@Param("sessionId") String sessionId,
            @Param("productId") Long productId,
            @Param("quantity") int newQuantity);

    @Modifying
    int deleteByUserIdAndProductId(Long userId, Long productId);

    @Modifying
    int deleteBySessionIdAndProductId(String sessionId, Long productId);

}
