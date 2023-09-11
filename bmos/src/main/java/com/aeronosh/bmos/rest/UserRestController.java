package com.aeronosh.bmos.rest;

import com.aeronosh.bmos.entities.User;
import com.aeronosh.bmos.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.RepositoryRestController;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@RepositoryRestController
public class UserRestController {

    @Autowired
    private UserRepository userRepository;
    @RequestMapping("/users/tim-kiem")
    public ResponseEntity<List<User>> searchByUsername(@RequestParam(defaultValue = "") String keyword){
        List<User> userList =  userRepository.findUserByUsernameContaining(keyword);
        if(userList.isEmpty()){
            return  ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(userList);
    }

}
