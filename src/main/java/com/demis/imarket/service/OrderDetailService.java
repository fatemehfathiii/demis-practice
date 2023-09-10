package com.demis.imarket.service;



import com.demis.imarket.model.entity.Address;
import com.demis.imarket.model.entity.Customer;
import com.demis.imarket.model.entity.OrderDetail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface OrderDetailService {
    OrderDetail create(OrderDetail order, Long productId, Customer customer, Address address);

    Page<OrderDetail> getOrderList(String email, Pageable pageable);
    int countOrderByCustomer(String email);


}
