package com.demis.imarket.service.impl;


import com.demis.imarket.config.exception.RecordNotFoundException;
import com.demis.imarket.model.entity.Image;
import com.demis.imarket.repository.ImageRepository;
import com.demis.imarket.service.ImageService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

@Service
@AllArgsConstructor
public class ImageServiceImpl implements ImageService {
    private final ImageRepository imageRepository;
    private static final String path = "C:\\Users\\Public\\Pictures";
    @Transactional(readOnly = true,propagation = Propagation.REQUIRED)
    @Override
    public byte[] downloadProductImage(String fileName) {
        Image image = imageRepository.getImageByName(fileName).orElseThrow(RecordNotFoundException::new);
        String fullPath = image.getImagePath();
        try {
            return Files.readAllBytes(new File(fullPath).toPath());
        } catch (IOException e) {
            throw new RuntimeException("the image could not be retrieved !");
        }
    }
    @Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
    @Override
    public Image UploadProductImage(MultipartFile file){
        String fullPath = """
                %s%s
                """.formatted(path, file.getOriginalFilename());
        Image newImage = new Image();
        newImage.setName(file.getOriginalFilename());
        newImage.setType(file.getContentType());
        newImage.setSize(file.getSize());
        newImage.setImagePath(fullPath);

        try {
            file.transferTo(new File(fullPath));
            return imageRepository.save(newImage);
        } catch (IOException e) {
            throw new RuntimeException("the image could not be upload !");
        }

    }
}
