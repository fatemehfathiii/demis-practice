package com.demis.imarket.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@Data
@NoArgsConstructor
public class Address extends MasterEntity {
    @Column(nullable = false)
    private String city;
    @Column(nullable = false)
    private String street;
    @Column(nullable = false)
    private String allay;
    @Column(nullable = false)
    protected int houseNumber;
    @Column(nullable = false, unique = true)
    private String postalCode;
    @Column(unique = true)
    private String email;
    private String mobileNumber;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Address address = (Address) o;
        return id.equals(address.id) && postalCode.equals(address.postalCode);
    }

    @Override
    public String toString() {
        return """
                 Address{
                 id = %d,
                 city =%s,
                 street =%s,
                 houseNumber =%d,
                 postalCode =%s,
                 email =%s,
                 mobileNumber =%s
                }
                 """.formatted(id, city, street, houseNumber, postalCode, email, mobileNumber);
    }
}
