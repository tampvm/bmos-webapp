package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.Routing;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoutingRepository extends JpaRepository<Routing, String> {

}
