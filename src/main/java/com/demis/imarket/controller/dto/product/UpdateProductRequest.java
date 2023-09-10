package com.demis.imarket.controller.dto.product;

import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Map;

@NoArgsConstructor
@Setter
@Getter
public class UpdateProductRequest {

    @NotNull
    private Long id;
    @NotNull
    @NotBlank
    @Size(min = 10, max = 60)
    private String title;
    @NotNull
    @NotBlank
    @Size(min = 10, max = 60)
    private String brandName;
    @Positive
    private int price;
    @NotEmpty
    private Map<String, String> features;
    private String exist;
    private String color;
    private String type;
    private String size;
    private String weight;
    private String subject;
    private String energy;

}
