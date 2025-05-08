package com.assign.e_commerce.controllers;

import com.assign.e_commerce.dto.ProductDTO;
import com.assign.e_commerce.entities.ProductCategory;
import com.assign.e_commerce.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

@RestController
@RequestMapping("/products")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public ResponseEntity<List<ProductDTO>> getAllProducts(@RequestParam(required = false) String search) {
        List<ProductDTO> products = productService.getAllProducts(search);
        return ResponseEntity.ok(products);
    }

    @GetMapping("/categories")
    public ResponseEntity<List<String>> getAllCategories() {
        List<String> categories = Arrays.stream(ProductCategory.values())
                .map(Enum::name)
                .toList();
        return ResponseEntity.ok(categories);
    }


    // GET /products/{id} — Get product details by ID
    @GetMapping("/{id}")
    public ResponseEntity<ProductDTO> getProductById(@PathVariable UUID id) {
        ProductDTO product = productService.getProductById(id);
        return ResponseEntity.ok(product);
    }
}