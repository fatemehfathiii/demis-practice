package com.demis.imarket.controller.dto.product;

import com.demis.imarket.model.entity.Product;

import java.util.Map;

public record GetProductDetailsResponse(
        String title,
        String brandName,
        int price,
        Map<String, String> features,
        boolean isExist,
        byte[] image,
        String firstname,
        String lastname
) {
    public static GetProductDetailsResponse fromProduct(Product product, byte[] image) {
        return new GetProductDetailsResponse(
                product.getTitle(), product.getBrandName(), product.getPrice(),product.getFeature(), product.isExist(),
                image,product.getSeller().getFirstname(),product.getSeller().getLastname());
    }
}
