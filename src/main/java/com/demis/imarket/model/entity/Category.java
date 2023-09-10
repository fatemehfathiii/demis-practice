package com.demis.imarket.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Objects;
import java.util.Set;


@Entity
@Data
@NoArgsConstructor
public class Category extends MasterEntity{
    @Column(nullable = false,unique = true,name ="type")
    private String name;
    @ManyToOne
    @JoinColumn(name = "parent_category_id")
    private Category parent;

    @OneToMany(mappedBy = "category",fetch = FetchType.LAZY)
    private Set<Product> products;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Category category = (Category) o;
        return Objects.equals(id, category.id) && Objects.equals(name, category.name);
    }

    @Override
    public String toString() {
        return """
                Category{
                id = %d,
                name = %s
                }
                """.formatted(id,name);
    }
}
