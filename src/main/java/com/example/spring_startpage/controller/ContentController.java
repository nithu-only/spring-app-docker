package com.example.spring_startpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/req")
public class ContentController {

    @GetMapping("/login")
    public String showLoginPage(){
        return "login";
    }

    @GetMapping("/signup")
    public String signup(){
        return "signup";
    }
    @GetMapping("/index")
    public String home(){
        return "index";
    }

}
