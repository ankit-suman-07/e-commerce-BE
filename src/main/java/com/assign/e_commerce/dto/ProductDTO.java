package com.assign.e_commerce.dto;

import com.assign.e_commerce.entities.ProductCategory;

import java.math.BigDecimal;
import java.util.UUID;

public class ProductDTO {
    private UUID id;
    private String name;
    private String description;
    private BigDecimal price;
    private String brand;
    private ProductCategory category;
    private String imageUrl;

}
