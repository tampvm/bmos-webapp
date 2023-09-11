package com.aeronosh.bmos.controllers.admin;

import com.aeronosh.bmos.entities.User;
import com.aeronosh.bmos.repositories.RoleRepository;
import com.aeronosh.bmos.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/admin/tai-khoan")
public class AccountController {

    @Autowired
    private UserRepository userRepository;
    @RequestMapping("")
    public String showManageAccount(@RequestParam(defaultValue = "0") int page,
                                    @RequestParam(defaultValue = "10") int size ,
                                    @RequestParam(defaultValue = "username") String sortBy,
                                    @RequestParam(defaultValue = "asc") String sortOrder,
                                    @RequestParam(defaultValue = "") String keyword,
                                    @RequestParam(defaultValue = "") String roleName,
                                    Model model){
        Sort sort = Sort.by(Sort.Order.asc(sortBy));
        if(sortOrder.equalsIgnoreCase("desc")){
            sort = Sort.by(Sort.Order.desc(sortBy));
        }
        Pageable pageable = PageRequest.of(page,size,sort);
        Page<User> userPage = userRepository.findByUsernameContainingAndRole_RoleNameContaining(keyword,roleName,pageable);

        int startUser = userPage.getNumber() * userPage.getSize() + 1;
        long endUser = Math.min(startUser + userPage.getSize() - 1, userPage.getTotalElements());

        model.addAttribute("userPage",userPage);
        model.addAttribute("size",size);
        model.addAttribute("sortBy",sortBy);
        model.addAttribute("sortOrder",sortOrder);
        model.addAttribute("roleName",roleName);
        model.addAttribute("keyword",keyword);
        model.addAttribute("startUser",startUser);
        model.addAttribute("endUser",endUser);
        model.addAttribute("totalUser",userPage.getTotalElements());

        return "admin/manage-account";
    }

    @RequestMapping("/them-moi")
    public String showAddForm(Model model){
        model.addAttribute(new User());
        return "admin/add-account";
    }




}
