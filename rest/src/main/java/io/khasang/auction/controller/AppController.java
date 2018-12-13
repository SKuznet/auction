package io.khasang.auction.controller;

import io.khasang.auction.model.MessageService;
import io.khasang.auction.service.CreateTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {
    @Autowired
    @Qualifier("messageServiceCustom")
    private MessageService messageService;

    @Autowired
    private CreateTable createTable;

    // http://localhost:8080/
    @RequestMapping("/")
    public String getHelloPage(Model model) {
        model.addAttribute("name", messageService.getMessage());
        return "hello";
    }

    @RequestMapping("/info")
    public String getHelloPage() {
        return "cat";
    }

    @RequestMapping("/create")
    public String getCreateTableStatus(Model model) {
        model.addAttribute("status", createTable.getTableCreationStatus());
        return "create";
    }

    @RequestMapping("/user")
    public String getUserPage(Model model) {
        model.addAttribute("user", "Access for user only!");
        return "user";
    }

    @RequestMapping("/admin")
    public String getAdminPage(Model model) {
        model.addAttribute("admin", "Access for admin only!");
        return "admin";
    }

    @RequestMapping(value = "/password/{password}")
    public String getCryptPassword(@PathVariable("password") String password, Model model) {
        model.addAttribute("password", password);
        model.addAttribute("encodePassword", new BCryptPasswordEncoder().encode(password));
        return "password";
    }

}
