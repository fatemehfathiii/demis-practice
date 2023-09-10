package com.demis.imarket.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Map;


@Entity
@Data
@NoArgsConstructor
public class Product extends MasterEntity {
    @Column(unique = true, updatable = false, name = "product_code")
    private String productCode;
    @Column(nullable = false)
    private String title;
    @Column(nullable = false, name = "brand_name", columnDefinition = "varchar(50)")
    private String brandName;

    @Column(name = "product_price")
    private int price;
    @CreationTimestamp
    private LocalDateTime createAt;
    @UpdateTimestamp
    private LocalDateTime updateAt;
    private boolean exist;
    private boolean deleted;
    @ElementCollection
    @CollectionTable(name = "features"
    )
    @MapKeyColumn(name = "feature")
    @Column(name = "feature_value")
    private Map<String, String> feature;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "product_category", referencedColumnName = "id")
    private Category category;
    @OneToOne(fetch = FetchType.LAZY)
    private Image image;
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    private Customer seller;
    @ManyToOne
    private OrderDetail order;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private Collection<OrderDetail> orders;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return id.equals(product.id) && productCode.equals(product.productCode);
    }

    @Override
    public String toString() {
        return """
                Product{
                id = %d,
                productCode = %s,
                title = %s,
                brandName = %s,
                createAt = %tF,
                updateAt = %tF,
                exist = %b,
                feature =%s
                }
                """.formatted(id, productCode, title, brandName, createAt, updateAt, exist, feature.toString());
    }
}
