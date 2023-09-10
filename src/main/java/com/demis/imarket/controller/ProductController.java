package com.demis.imarket.controller;


import com.demis.imarket.controller.dto.product.CreateProductRequest;
import com.demis.imarket.controller.dto.product.GetProductDetailsResponse;
import com.demis.imarket.controller.dto.product.GetProductListResponse;
import com.demis.imarket.controller.dto.product.UpdateProductRequest;
import com.demis.imarket.model.entity.Image;
import com.demis.imarket.model.entity.Product;
import com.demis.imarket.service.ImageService;
import com.demis.imarket.service.ProductService;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;


@Controller
@AllArgsConstructor
@RequestMapping("/products")
public class ProductController {
    private final ProductService productService;
    private final ImageService imageService;


    @GetMapping("/adsForm")
    public ModelAndView showAdsForm(ModelAndView model) {
        model.setViewName("createAdsForm");
        model.addObject("request", new CreateProductRequest());
        return model;
    }

    @PostMapping("")
    public String createProduct(@ModelAttribute("request")  CreateProductRequest request) {
        Image image = null;

        if (request.getImage() != null) {
            image = imageService.UploadProductImage(request.getImage());
        }
        productService.createProduct(request.toProduct(), request.toCustomer(), request.getParentCategory(),
                request.getFirstSubCategory(), request.getSecondSubCategory(), image);

        return "result";
    }

    @GetMapping("/details/{id}")
    public ModelAndView getProductDetails(@PathVariable Long id, ModelAndView model) {
        Product product = productService.getProductDetails(id);
        byte[] image = imageService.downloadProductImage(product.getImage().getName());
        GetProductDetailsResponse response = GetProductDetailsResponse.fromProduct(product, image);

        model.setViewName("showDetailsProduct");
        model.addObject("productId", id);
        model.addObject("productDetails", response);
        return model;
    }

    @GetMapping("/parent/{parentCategoryName}/{page}")
    public ModelAndView getProductByParentCategory(
            @PathVariable String parentCategoryName, @PathVariable int page, ModelAndView model) {
        List<
                GetProductListResponse> responses = mappingProductToGetProductListResponse(
                productService.getProductByParentCategory(
                        parentCategoryName, PageRequest.of(page, 10)));
        int pagesCount = productService.countOfProductInParentCategory(parentCategoryName) / 10;

        model.setViewName("showProductInParentCategory");
        model.addObject("countOfPages", pagesCount);
        model.addObject("productList", responses);
        model.addObject("categoryName", parentCategoryName);
        return model;

    }

    @GetMapping("/first/{firstSubCategoryName}/{page}")
    public ModelAndView getProductsByFirstSubCategoryName(
            @PathVariable String firstSubCategoryName, @PathVariable int page, ModelAndView model) {
        List<GetProductListResponse> response = mappingProductToGetProductListResponse(
                productService.getProductsByFirstSubCategoryName(
                        firstSubCategoryName, PageRequest.of(page, 10)
                )
        );
        int pagesCount = productService.countOfProductInFirstCategory(firstSubCategoryName) / 10;

        model.setViewName("showProductInFirstSubCategory");
        model.addObject("countOfPages", pagesCount);
        model.addObject("productList", response);
        model.addObject("subCategoryName", firstSubCategoryName);
        return model;
    }

    @GetMapping("/second/{secondSubCategoryName}/{page}")
    public ModelAndView getProductsBySecondSubCategoryName(
            @PathVariable String secondSubCategoryName, @PathVariable int page, ModelAndView model) {
        List<GetProductListResponse> response = mappingProductToGetProductListResponse(
                productService.getProductsBySecondSubCategoryName(
                        secondSubCategoryName, PageRequest.of(page, 10)
                )
        );
        int pagesCount = productService.countOfProductInSecondCategory(secondSubCategoryName) / 10;
        model.setViewName("showProductsInSecondCategory");
        model.addObject("countOfPages", pagesCount);
        model.addObject("productList", response);
        model.addObject("secondSubCategoryName", secondSubCategoryName);
        return model;
    }

    @GetMapping("/mySale")
    public ModelAndView showSellerAds(ModelAndView model) {
        model.setViewName("identification");
        model.addObject("path", "/products/showAds/1");
        return model;
    }

    @GetMapping("/showAds/{page}")
    public ModelAndView getSellerAds(@RequestParam String email, @PathVariable int page, ModelAndView model) {
        List<GetProductListResponse> responses = mappingProductToGetProductListResponse
                (productService.getProductBySellerEmail(email, PageRequest.of(page, 10)));
        int pagesCount = productService.countBySeller(email) / 10;

        model.setViewName("showCustomerAds");
        model.addObject("countOfPages", pagesCount);
        model.addObject("productList", responses);
        return model;
    }

    @GetMapping("/all/{page}")
    public ModelAndView search(@RequestParam(name = "input") String input, @PathVariable int page, ModelAndView model) {
        List<GetProductListResponse> response = mappingProductToGetProductListResponse(
                productService.search(input, PageRequest.of(page, 10))
        );
        model.setViewName("showProducts");
        model.addObject("input", input);
        model.addObject("productList", response);
        return model;
    }

    @GetMapping("/editForm/{productId}")
    public ModelAndView showEditAdsForm(@PathVariable Long productId, ModelAndView model) {
        Product product = productService.getProductDetails(productId);
        model.setViewName("updateAdsForm");
        model.addObject("product", product);
        model.addObject("request", new UpdateProductRequest());
        return model;
    }


    @PutMapping("/edit")
    public String updateProduct(@ModelAttribute("request") @Valid UpdateProductRequest request) {
        var feature = new HashMap<String, String>();
        feature.put("color", request.getColor());
        feature.put("type", request.getType());
        feature.put("size", request.getSize());
        feature.put("weight", request.getWeight());
        feature.put("subject", request.getSubject());
        feature.put("energy label", request.getEnergy());


        productService.updateProduct(request.getId(), request.getTitle(), request.getBrandName(), request.getPrice()
                , feature, request.getExist().equals("yes"));
        return "result";
    }

    @GetMapping("/delete/{productId}")
    public ModelAndView showDeleteAssurance(@PathVariable Long productId, ModelAndView model) {
        Product product = productService.getProductDetails(productId);
        model.setViewName("deleteAssurance");
        model.addObject("productId", productId);
        return model;
    }

    @DeleteMapping("/{id}")
    public ModelAndView deleteProduct(@PathVariable Long id, ModelAndView model) {
        var response = productService.deleteProduct(id);
        model.setViewName("result");
        model.addObject("object", response);
        return model;
    }


    private List<GetProductListResponse> mappingProductToGetProductListResponse(Page<Product> products) {
        return products.stream().map(
                product -> GetProductListResponse.fromProduct(
                        product, imageService.downloadProductImage(product.getImage().getName())
                )
        ).toList();
    }
}
