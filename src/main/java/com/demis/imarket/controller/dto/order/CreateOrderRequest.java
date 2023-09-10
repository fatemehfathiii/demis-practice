package com.demis.imarket.controller.dto.order;

import com.demis.imarket.config.validations.MobileNumber;
import com.demis.imarket.model.entity.Address;
import com.demis.imarket.model.entity.Customer;
import com.demis.imarket.model.entity.OrderDetail;
import com.demis.imarket.model.enums.Status;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@NoArgsConstructor
@Setter
@Getter
public class CreateOrderRequest {

    @NotNull
    @Positive
    private Long productId;
    @Size(min = 3, max = 50)
    private String firstname;
    @NotNull
    @NotBlank
    @Size(min = 3, max = 50)
    private String lastname;
    @Positive
    public int quantity;
    @Future
    private LocalDateTime deliverDate;

    @MobileNumber
    private String mobileNumber;
    @Email
    @NotNull
    private String email;

    @NotNull
    @NotBlank
    private String city;
    @NotNull
    @NotBlank
    private String street;
    @NotNull
    @NotBlank
    public String allay;
    @Positive
    private int houseNumber;
    @NotNull
    @NotBlank
    private String postalCode;


    public OrderDetail toOrder() {
        OrderDetail order = new OrderDetail();
        order.setOrderStatus(Status.PROCESSING);
        order.setQuantity(quantity);
        order.setOrderDate(deliverDate);
        return order;
    }


    public Address toAddress() {
        Address address = new Address();
        address.setCity(city);
        address.setStreet(street);
        address.setAllay(allay);
        address.setHouseNumber(houseNumber);
        address.setPostalCode(postalCode);
        address.setMobileNumber(mobileNumber);
        return address;
    }

    public Customer toCustomer() {
        var customer = new Customer();
        customer.setEmail(email);
        customer.setFirstname(firstname);
        customer.setLastname(lastname);
        return customer;
    }
}
