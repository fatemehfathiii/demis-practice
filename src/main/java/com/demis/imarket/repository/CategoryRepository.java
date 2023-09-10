package com.demis.imarket.repository;


import com.demis.imarket.model.entity.Category;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CategoryRepository extends MasterRepository<Category> {
    @Query(value = "from Category p where p.name =:secondSuCategoryName and p.parent.name =:firstSubCategoryName and p.parent.parent.name =:parentCategoryName")
    Optional<Category> getCategory(
            @Param("parentCategoryName") String parentCategoryName,
            @Param("firstSubCategoryName")String firstSubCategoryName,
            @Param("secondSuCategoryName") String secondSuCategoryName);
}

