package com.demis.imarket.repository;

import com.demis.imarket.model.entity.OrderDetail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;




public interface OrderDetailRepository extends MasterRepository<OrderDetail> {
    @Query(value = "from OrderDetail where customer.id =:id")
    Page<OrderDetail> getCustomerOrder(@Param("id") Long id, Pageable pageable);

    @Query(value = "select count(o.id) from OrderDetail o where o.customer.email=:email ")
    int countOrderByCustomer(@Param("email") String email);

}
