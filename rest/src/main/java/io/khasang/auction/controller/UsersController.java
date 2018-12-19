package io.khasang.auction.controller;

import io.khasang.auction.entity.Users;
import io.khasang.auction.service.CreateTableUsers;
import io.khasang.auction.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/registration")
public class UsersController {
    @Autowired
    private UsersService usersService;

    @Autowired
    private CreateTableUsers createTable;

    @RequestMapping("/create_table_users")
    public String getCreateTableStatus(Model model) {
        model.addAttribute("status", createTable.getTableCreationStatus());
        return "create";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Users addUsers(@RequestBody Users user) {
        usersService.add(user);
        return user;
    }

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Users getUsersById(@PathVariable(value = "id") long id) {
        return usersService.getById(id);
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    @ResponseBody
    public List<Users> getAllUsers() {
        return usersService.getAll();
    }

    @RequestMapping(value = "/update", method = RequestMethod.PUT, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Users updateUsers(@RequestBody Users user) {
        return usersService.update(user);
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Users deleteUsers(@PathVariable(value = "id") long id) {
        return usersService.delete(id);
    }
}
