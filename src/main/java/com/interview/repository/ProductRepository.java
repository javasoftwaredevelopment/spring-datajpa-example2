package com.interview.repository;

import com.interview.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Optional<Product> findByAvailableIsTrueAndId(Long id);
    List<Product> findAllByAvailableIsTrue();
}
