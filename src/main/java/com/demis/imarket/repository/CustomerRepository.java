package com.demis.imarket.repository;


import com.demis.imarket.model.entity.Customer;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends MasterRepository<Customer> {
    Optional<Customer> getCustomersByEmail(String email);
}
