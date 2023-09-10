package com.demis.imarket.repository;


import com.demis.imarket.model.entity.Address;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AddressRepository extends MasterRepository<Address> {
    Optional<Address> getAddressByPostalCode(String postalCode);
}
