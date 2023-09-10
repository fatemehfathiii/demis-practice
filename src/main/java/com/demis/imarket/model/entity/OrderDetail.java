package com.demis.imarket.model.entity;


import com.demis.imarket.model.enums.Status;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;


@Entity
@Data
@NoArgsConstructor
public class OrderDetail extends MasterEntity {
    private int quantity;
    @Column(name = "order_date", nullable = false, updatable = false)
    @CreationTimestamp
    private LocalDateTime orderDate;
    @Column(name = "deliver_date", nullable = false, updatable = false)
    private LocalDateTime deliverDate;
    @Column(name = "total_price")
    private int totalPrice;
    @Column(name = "order_status", columnDefinition = "varchar(30)")
    @Enumerated(EnumType.STRING)
    private Status orderStatus;
    @Column(name = "order_code", updatable = false, unique = true)
    private String orderCode;
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Product product;
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Customer customer;
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    private Address address;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDetail orderDetail = (OrderDetail) o;
        return id.equals(orderDetail.id) && orderCode.equals(orderDetail.orderCode);
    }

    @Override
    public String toString() {
        return """
                OrderDetail{
                id = %d,
                quantity = %d,
                orderDate = %tF,
                deliverDate = %tF
                totalPrice = %d,
                orderStatus = %S,
                orderCode = %s        
                }
                """.formatted(id, quantity, orderDate, deliverDate, totalPrice, orderStatus, orderCode);
    }
}
