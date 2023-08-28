package com.aeronosh.bmos.repositories;

import com.aeronosh.bmos.entities.FavouriteList;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FavouriteListRepository extends JpaRepository<FavouriteList, String> {
}
