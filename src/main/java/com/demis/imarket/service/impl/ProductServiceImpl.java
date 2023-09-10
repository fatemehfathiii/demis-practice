package com.demis.imarket.service.impl;

import com.demis.imarket.config.exception.RecordNotFoundException;
import com.demis.imarket.model.entity.Category;
import com.demis.imarket.model.entity.Customer;
import com.demis.imarket.model.entity.Image;
import com.demis.imarket.model.entity.Product;
import com.demis.imarket.repository.CustomerRepository;
import com.demis.imarket.repository.ProductRepository;
import com.demis.imarket.service.CategoryService;
import com.demis.imarket.service.ProductService;
import com.demis.imarket.service.UUID.UUIDGenerator;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;


@Service
@AllArgsConstructor
@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
public class ProductServiceImpl implements ProductService {
    private final ProductRepository productRepository;
    private final CategoryService categoryService;
    private final CustomerRepository customerRepository;


    @Override
    @Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
    public Product createProduct(Product product, Customer seller, String parentCategoryName, String firstSubCategory
            , String secondSuCategoryName, Image image) {
        var customer = customerRepository.getCustomersByEmail(seller.getEmail());
        if (customer.isEmpty()) {
            product.setSeller(customerRepository.save(seller));
        } else {
            product.setSeller(customer.get());
        }
        Category category = categoryService.getCategory(parentCategoryName, firstSubCategory, secondSuCategoryName);
        product.setCategory(category);
        product.setImage(image);
        product.setProductCode(UUIDGenerator.generateUniqueID());
        return productRepository.save(product);
    }

    @Override
    public Product getProductDetails(Long id) {
        return productRepository.getProductsById(id).orElseThrow(RecordNotFoundException::new);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public Page<Product> getProductBySellerEmail(String email, Pageable pageable) {
        return productRepository.getProductsBySeller(email, pageable);
    }


    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    @Override
    public Page<Product> getProductByParentCategory(String parentCategory, Pageable pageable) {
        return productRepository.getProductsByParentCategoryName(parentCategory, pageable);
    }

    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    @Override
    public Page<Product> getProductsByFirstSubCategoryName(String firstSubCategoryName, Pageable pageable) {
        return productRepository.getProductsByFirstSubCategoryName(firstSubCategoryName, pageable);
    }

    @Override
    public Page<Product> getProductsBySecondSubCategoryName(String secondSubCategoryName, Pageable pageable) {
        return productRepository.getProductsBySecondSubCategoryName(secondSubCategoryName, pageable);
    }

    @Override
    public Page<Product> search(String input, Pageable pageable) {
        return productRepository.getProductsByTitleLike(input, pageable);
    }

    @Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
    @Override
    public Product updateProduct(Long id, String title, String brandName, int price,
                                 Map<String, String> features, boolean exist) {
        Product product = productRepository.getProductsById(id).orElseThrow(RecordNotFoundException::new);
        product.setTitle(title);
        product.setBrandName(brandName);
        product.setPrice(price);
        product.setFeature(features);
        product.setExist(exist);
        return productRepository.save(product);
    }

    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    @Override
    public int deleteProduct(Long id) {
        return productRepository.deleteProduct(id);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public int countOfProductInParentCategory(String parentCategory) {
        return productRepository.countOfProductInParentCategory(parentCategory);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)

    public int countOfProductInFirstCategory(String firstCategory) {
        return productRepository.countOfProductInFirstCategory(firstCategory);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public int countOfProductInSecondCategory(String secondCategory) {
        return productRepository.countOfProductInSecondCategory(secondCategory);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public int countProductByTitle(String title) {
        return productRepository.getProductsByTitleLike(title);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public int countBySeller(String email) {
        return productRepository.countBySeller(email);
    }


}
