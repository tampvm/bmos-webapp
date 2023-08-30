package com.aeronosh.bmos.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class DashboardController {

    @RequestMapping("/dashboard")
    public String showDashBoard(){
        return "admin/dashboard";
    }


}
