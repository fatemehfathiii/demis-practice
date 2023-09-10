package com.demis.imarket.controller;

import com.demis.imarket.controller.dto.order.CreateOrderRequest;
import com.demis.imarket.controller.dto.order.GetOrderListResponse;
import com.demis.imarket.service.ImageService;
import com.demis.imarket.service.OrderDetailService;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/orders")
@AllArgsConstructor
public class OrderController {
    private final OrderDetailService orderService;
    private final ImageService imageService;

    @PostMapping
    public String register(@ModelAttribute("request") @Valid CreateOrderRequest request) {
        orderService.create(request.toOrder(), request.getProductId(), request.toCustomer(), request.toAddress());
        return "result";
    }

    @GetMapping("/add")
    public ModelAndView createOrder(@RequestParam Long productId, ModelAndView model) {
        model.setViewName("createOrderForm");
        model.addObject("productId", productId);
        model.addObject("request", new CreateOrderRequest());
        return model;
    }

    @GetMapping("/myOrder")
    public ModelAndView showCustomerOrders(ModelAndView model) {
        model.setViewName("identification");
        model.addObject("path", "/orders/all/1");
        return model;
    }

    @GetMapping("/all/{page}")
    public ModelAndView getCustomerOrder(@RequestParam String email,
                                         @PathVariable int page, ModelAndView model) {
        var response = orderService.getOrderList(email, PageRequest.of(page, 10)).stream()
                .map(
                        orderDetail -> GetOrderListResponse.fromOrderDetails(
                                orderDetail,
                                imageService.downloadProductImage(orderDetail.getProduct().getImage().getName())
                        )
                ).toList();
        int pagesCount = orderService.countOrderByCustomer(email) / 10;

        if (!response.isEmpty()) {
            model.setViewName("showOrderList");
            model.addObject("pagesCount", pagesCount);
            model.addObject("orderList", response);
        } else {
            model.setViewName("showEmptyOrderList");
        }
        return model;
    }
}
