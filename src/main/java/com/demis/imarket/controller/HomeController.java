package com.demis.imarket.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
@AllArgsConstructor
public class HomeController {

    @GetMapping
    private ModelAndView viewHomePage() {
        return new ModelAndView("home");
    }

    @GetMapping("/categories")
    private ModelAndView viewCategories() {
        return new ModelAndView("showParentCategories");
    }
}
