package com.demis.imarket.service;


import com.demis.imarket.model.entity.Image;
import org.springframework.web.multipart.MultipartFile;

public interface ImageService {
    byte[] downloadProductImage(String fileName);
    Image UploadProductImage(MultipartFile file);
}
