package com.demis.imarket.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Collection;
import java.util.Objects;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
public class Customer extends MasterEntity {
    @Column(nullable = false,unique = true, updatable = false)
    private String email;
    @Column(nullable = false, columnDefinition = "varchar(50)")
    private String firstname;
    @Column(nullable = false, columnDefinition = "varchar(50)")
    private String lastname;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
    private Collection<OrderDetail> orders;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "seller")
    private Set<Product> onSaleProduct;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Customer customer1 = (Customer) o;
        return Objects.equals(id, customer1.id);
    }

    @Override
    public String toString() {
        return """
                Customer{
                id=%d,
                email= %s,
                firstname = %s,
                lastname= = %s
                }
                """.formatted(id, email, firstname, lastname);
    }

}
