package com.demis.imarket.service.impl;

import com.demis.imarket.config.exception.RecordNotFoundException;
import com.demis.imarket.model.entity.Address;
import com.demis.imarket.model.entity.Customer;
import com.demis.imarket.model.entity.OrderDetail;
import com.demis.imarket.repository.AddressRepository;
import com.demis.imarket.repository.CustomerRepository;
import com.demis.imarket.repository.OrderDetailRepository;
import com.demis.imarket.repository.ProductRepository;
import com.demis.imarket.service.OrderDetailService;
import com.demis.imarket.service.UUID.UUIDGenerator;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Service
@AllArgsConstructor
public class OrderDetailServiceImpl implements OrderDetailService {
    private final OrderDetailRepository orderRepository;
    private final ProductRepository productRepository;
    private final AddressRepository addressRepository;
    private final CustomerRepository customerRepository;

    @Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
    @Override
    public OrderDetail create(OrderDetail order, Long productId, Customer customer, Address address) {
        var product = productRepository.getProductsById(productId).orElseThrow(RecordNotFoundException::new);
        var customerIsEmpty = customerRepository.getCustomersByEmail(customer.getEmail()).isEmpty();
        var addressIsEmpty = addressRepository.getAddressByPostalCode(address.getPostalCode()).isEmpty();

        if (customerIsEmpty) {
            customer = customerRepository.save(customer);
        }
        if (addressIsEmpty) {
            address = addressRepository.save(address);
        }

        order.setTotalPrice(product.getPrice() * order.getQuantity());
        order.setOrderCode(UUIDGenerator.generateUniqueID());
        order.setProduct(product);
        order.setCustomer(customer);
        order.setAddress(address);

        return orderRepository.save(order);

    }

    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    @Override
    public Page<OrderDetail> getOrderList(String email, Pageable pageable) {
        var customer = customerRepository.getCustomersByEmail(email);
        if (customer.isPresent()) {
            return orderRepository.getCustomerOrder(customer.get().getId(), pageable);
        } else {
            return Page.empty();
        }
    }

    @Override
    public int countOrderByCustomer(String email) {
        return orderRepository.countOrderByCustomer(email);
    }


}
