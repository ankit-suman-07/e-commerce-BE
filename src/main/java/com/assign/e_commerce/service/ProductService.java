package com.assign.e_commerce.service;

import com.assign.e_commerce.dto.ProductDTO;
import com.assign.e_commerce.entities.ProductEntity;
import com.assign.e_commerce.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<ProductDTO> getAllProducts(String search) {
        List<ProductEntity> entities = (search == null || search.isEmpty()) ?
                productRepository.findAll() :
                productRepository.searchByNameOrBrand(search);
        return entities.stream().map(this::toDTO).collect(Collectors.toList());
    }

    public ProductDTO getProductById(Long id) {
        return productRepository.findById(id).map(this::toDTO)
                .orElseThrow(() -> new RuntimeException("Product not found"));
    }

    private ProductDTO toDTO(ProductEntity entity) {
        ProductDTO dto = new ProductDTO();
        dto.setId(entity.getId());
        dto.setName(entity.getName());
        dto.setDescription(entity.getDescription());
        dto.setPrice(entity.getPrice());
        dto.setBrand(entity.getBrand());
        dto.setCategory(entity.getCategory());
        dto.setImageUrl(entity.getImageUrl());
        return dto;
    }
}
