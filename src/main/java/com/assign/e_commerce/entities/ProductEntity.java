package com.assign.e_commerce.entities;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Table(name = "products")
public class ProductEntity {

    @Id
    @GeneratedValue
    private UUID id;

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
