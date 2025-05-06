package com.assign.e_commerce.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.util.UUID;

@Data
@Entity
@Table(name = "products")
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Lob
    private String description;

    private BigDecimal price;
    private String brand;

    @Enumerated(EnumType.STRING)
    private ProductCategory category;

    private String imageUrl;
}
