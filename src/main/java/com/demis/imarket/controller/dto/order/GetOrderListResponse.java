package com.demis.imarket.controller.dto.order;

import com.demis.imarket.model.entity.OrderDetail;

import java.time.LocalDateTime;

public record GetOrderListResponse(
        String orderCode,
        LocalDateTime orderDate,
        LocalDateTime deliverDate,
        String orderStatus,
        int quantity,
        String productTitle,
        int totalPrice,
        byte[] productImage

) {
    public static GetOrderListResponse fromOrderDetails(OrderDetail order, byte[] image) {
        return new GetOrderListResponse(order.getOrderCode(), order.getOrderDate(), order.getDeliverDate(),
                order.getOrderStatus().toString(), order.getQuantity(),order.getProduct().getTitle(),order.getTotalPrice(), image);
    }
}
