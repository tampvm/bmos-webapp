package com.aeronosh.bmos.controllers.admin;

import com.aeronosh.bmos.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/tai-khoan")
public class AccountController {

    @RequestMapping("")
    public String showManageAccount(){
        return "admin/manage-account";
    }

    @RequestMapping("/them-moi")
    public String showAddForm(Model model){
        model.addAttribute(new User());
        return "admin/add-account";
    }

}
