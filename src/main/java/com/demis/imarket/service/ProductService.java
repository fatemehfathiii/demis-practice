package com.demis.imarket.service;


import com.demis.imarket.model.entity.Customer;
import com.demis.imarket.model.entity.Image;
import com.demis.imarket.model.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Map;

public interface ProductService {

    Product createProduct(Product product, Customer seller, String parentCategoryName,
                          String firstSubCategory, String secondSuCategoryName, Image image);

    Product getProductDetails(Long id);

    Page<Product> getProductBySellerEmail(String email, Pageable page);

    Page<Product> getProductByParentCategory(String parentCategory, Pageable pageable);

    Page<Product> getProductsByFirstSubCategoryName(String firstSubCategoryName, Pageable pageable);

    Page<Product> getProductsBySecondSubCategoryName(String secondSubCategoryName, Pageable pageable);

    Page<Product> search(String input, Pageable pageable);

    Product updateProduct(Long id, String title, String brandName, int price, Map<String, String> features,boolean exist);

    int deleteProduct(Long id);

    int countOfProductInParentCategory(String parentCategory);

    int countOfProductInFirstCategory(String firstCategory);

    int countOfProductInSecondCategory(String secondCategory);

    int countProductByTitle(String title);

    int countBySeller(String email);

}
