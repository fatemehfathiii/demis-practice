package com.demis.imarket.service;


import com.demis.imarket.model.entity.Category;

public interface CategoryService {

    Category getCategory(String name, String firstSubCategory, String secondSuCategoryName);

}
