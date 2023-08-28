package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
    // Custom repository methods (if needed)
}
