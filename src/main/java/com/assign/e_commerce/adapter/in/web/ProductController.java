package com.assign.e_commerce.adapter.in.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1")
public class ProductController {

    @GetMapping("/test")
    public String testProject() {
        return "Project is Running!!!";
    }
}
