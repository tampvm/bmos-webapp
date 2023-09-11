package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
    Page<User> findByUsernameContainingAndRole_RoleNameContaining(String username,String roleName,Pageable pageable);
    List<User> findUserByUsernameContaining(String username);
}
