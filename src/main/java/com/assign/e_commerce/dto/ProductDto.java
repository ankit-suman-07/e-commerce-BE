package com.assign.e_commerce.dto;

import com.assign.e_commerce.domain.model.Category;

import java.math.BigDecimal;
import java.util.UUID;

public class ProductDto {
    private UUID id;
    private String name;
    private String description;
    private BigDecimal price;
    private String brand;
    private Category category;
    private String imageUrl;

    // Getters and setters
}
