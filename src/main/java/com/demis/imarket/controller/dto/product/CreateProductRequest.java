package com.demis.imarket.controller.dto.product;

import com.demis.imarket.model.entity.Customer;
import com.demis.imarket.model.entity.Product;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;

@NoArgsConstructor
@Setter
@Getter
public class CreateProductRequest {
    @NotNull
    @NotBlank
    @Size(min = 3, max = 50)
    private String firstname;
    @NotNull
    @NotBlank
    @Size(min = 3, max = 50)
    private String lastname;
    @Email
    @NotNull
    private String email;
    @NotNull
    @NotBlank
    @Size(min = 5, max = 60)
    private String title;
    @NotNull
    @NotBlank
    @Size(min = 5, max = 60)
    private String brandName;
    @NotNull
    @NotBlank
    private String parentCategory;

    private String firstSubCategory;

    private String secondSubCategory;
    @Positive
    private int price;
    private String color;
    private String type;
    private String size;
    private String weight;
    private String subject;
    private String energy;
    private MultipartFile image;

    public Product toProduct() {
        var product = new Product();
        product.setTitle(title);
        product.setBrandName(brandName);
        product.setPrice(price);

        var feature = new HashMap<String, String>();
        feature.put("color", color);
        feature.put("type", type);
        feature.put("size", size);
        feature.put("weight", weight);
        feature.put("subject", subject);
        feature.put("energy label", energy);

        product.setFeature(feature);
        product.setExist(true);
        return product;
    }

    public Customer toCustomer() {
        var customer = new Customer();
        customer.setEmail(email);
        customer.setFirstname(firstname);
        customer.setLastname(lastname);
        return customer;
    }
}
