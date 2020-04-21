package com.peekatech.springboot.springsecurity.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BillingController {

    @GetMapping("/billing")
    public String billing() {
        return "billing";
    }
}