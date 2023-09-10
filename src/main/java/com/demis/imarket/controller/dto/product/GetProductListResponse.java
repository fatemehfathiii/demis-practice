package com.demis.imarket.controller.dto.product;


import com.demis.imarket.model.entity.Product;

public record GetProductListResponse(
        Long id,
        String title,
        byte[] image,
        int price,
        boolean isExist
) {

    public static GetProductListResponse fromProduct(Product product, byte[] image) {
        return new GetProductListResponse(
                product.getId(),product.getTitle(), image, product.getPrice(), product.isExist());
    }
}
