package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.ProductInRouting;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductInRoutingRepository extends JpaRepository<ProductInRouting, Integer> {

}
