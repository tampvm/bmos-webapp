package com.aeronosh.bmos.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AccountController {

    @RequestMapping("/tai-khoan")
    public String showManageAccount(){
        return "admin/manage-account";
    }

}
