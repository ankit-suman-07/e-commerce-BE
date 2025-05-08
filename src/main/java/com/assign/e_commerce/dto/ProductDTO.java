package com.assign.e_commerce.dto;

import com.assign.e_commerce.entities.ProductCategory;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
public class ProductDTO {
    private UUID id;
    private String name;
    private String description;
    private BigDecimal price;
    private String brand;
    private ProductCategory category;
    private String imageUrl;

}
