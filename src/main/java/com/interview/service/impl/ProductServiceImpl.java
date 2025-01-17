package com.interview.service.impl;

import com.interview.dto.ProductDto;
import com.interview.repository.ProductRepository;
import com.interview.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public List<ProductDto> getAvailableProduct(Optional<Long> id) {
        return id.map(key->List.of(productRepository.findByAvailableIsTrueAndId(key).orElseThrow()))
                .orElseGet(productRepository::findAllByAvailableIsTrue)
                .stream()
                .map(product -> new ProductDto(
                        product.getId(),
                        product.getProductName(),
                        product.getStock(),
                        product.getPrice()))
                .toList();
    }
}

