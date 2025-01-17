package com.interview.service;

import com.interview.dto.ProductDto;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<ProductDto> getAvailableProduct(Optional<Long> id);
}
