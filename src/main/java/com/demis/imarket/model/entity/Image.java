package com.demis.imarket.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "products_image")
@NoArgsConstructor
public class Image extends MasterEntity {
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private String type;
    @Column(nullable = false)
    private long size;
    @Column(nullable = false,unique = true)
    private String imagePath;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Image image = (Image) o;
        return id.equals(image.id) && imagePath.equals(image.imagePath);
    }

    @Override
    public String toString() {
        return """
                Image{
                id = %s,
                name = %s,
                type = %s,
                size = %d,
                imagePath = %s,
                }
                """.formatted(id, name, type, size, imagePath);
    }

}
