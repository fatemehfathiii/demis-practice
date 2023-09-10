package com.demis.imarket.repository;

import com.demis.imarket.model.entity.Image;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ImageRepository extends MasterRepository<Image>{
    Optional<Image> getImageByName(String fileName);
}
