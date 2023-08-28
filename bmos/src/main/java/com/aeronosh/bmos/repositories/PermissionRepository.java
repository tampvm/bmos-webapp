package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.Permission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PermissionRepository extends JpaRepository<Permission, String> {
    // Custom repository methods (if needed)
}
