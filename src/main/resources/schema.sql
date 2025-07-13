CREATE TABLE IF NOT EXISTS carts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    session_id VARCHAR(255),
    product_id BIGINT NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT uk_user_product UNIQUE (user_id, product_id),
    CONSTRAINT uk_session_product UNIQUE (session_id, product_id),
    CONSTRAINT chk_user_or_session
        CHECK ((session_id IS NOT NULL AND user_id IS NOt NULL) OR
        (session_id IS NULL AND user_id IS NOT NULL))
);