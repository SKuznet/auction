package io.khasang.auction.controller;

import io.khasang.auction.model.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {
    @Autowired
    @Qualifier("messageServiceCustom")
    private MessageService messageService;

    // http://localhost:8080/
    @RequestMapping("/")
    public String getHelloPage(Model model) {
        model.addAttribute("name", messageService.getMessage());
        return "hello";
    }
}
