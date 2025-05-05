package com.assign.e_commerce.domain.model;

import java.math.BigDecimal;
import java.util.Locale;
import java.util.UUID;

public class Product {
    private UUID id;
    private String name;
    private String description;
    private BigDecimal price;
    private String brand;
    private Locale.Category category;
    private String imageUrl;
}

