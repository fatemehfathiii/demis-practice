package com.demis.imarket.repository;

import com.demis.imarket.model.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface ProductRepository extends MasterRepository<Product> {
    Optional<Product> getProductsById(Long id);

    @Query(value = "from Product where seller.email =:email")
    Page<Product> getProductsBySeller(@Param("email") String email, Pageable pageable);

    @Query(value = "from Product p where p.category.parent.parent.name =:parentCategory")
    Page<Product> getProductsByParentCategoryName(
            @Param("parentCategory") String parentCategory, Pageable pageable);

    @Query(value = "from Product p where p.category.parent.name =:firstSubCategoryName")
    Page<Product> getProductsByFirstSubCategoryName(
            @Param("firstSubCategoryName") String firstSubCategoryName, Pageable pageable);

    @Query(value = "from Product p where p.category.name =:secondSubCategoryName ")
    Page<Product> getProductsBySecondSubCategoryName(
            @Param("secondSubCategoryName") String secondSubCategoryName
            , Pageable pageable);

    Page<Product> getProductsByTitleLike(String input, Pageable pageable);

    @Modifying
    @Query(value = "update Product p set p.deleted=true where p.id =:id")
    int deleteProduct(@Param("id") Long id);

    @Query(value = "select count(p.id) from Product p where p.category.name =:parentCategory")
    int countOfProductInParentCategory(@Param("parentCategory") String parentCategory);

    @Query(value = "select count(p.id) from Product p where p.category.name =:firstCategory")
    int countOfProductInFirstCategory(@Param("firstCategory") String firstCategory);

    @Query(value = "select count(p.id) from Product p where p.category.name =:secondCategory")
    int countOfProductInSecondCategory(@Param("secondCategory") String secondCategory);

    int getProductsByTitleLike(String title);

    @Query(value = "select count (p.id) from Product p where p.seller.email =:email")
    int countBySeller(@Param("email") String email);
}
