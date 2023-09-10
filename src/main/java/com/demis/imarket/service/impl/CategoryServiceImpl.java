package com.demis.imarket.service.impl;

import com.demis.imarket.config.exception.RecordNotFoundException;
import com.demis.imarket.model.entity.Category;
import com.demis.imarket.repository.CategoryRepository;
import com.demis.imarket.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {
    private final CategoryRepository categoryRepository;
    @Transactional(readOnly = true,propagation = Propagation.REQUIRED)
    @Override
    public Category getCategory(String parentCategoryName, String firstSubCategory, String secondSuCategoryName) {
        return categoryRepository.getCategory(parentCategoryName, firstSubCategory, secondSuCategoryName)
                .orElseThrow(RecordNotFoundException::new);
    }
}
