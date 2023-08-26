package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.TblUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository  extends JpaRepository<TblUser, String> {
}
