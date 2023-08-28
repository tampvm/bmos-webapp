package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;

@Data
@Entity
@Table(name = "Tbl_Address")
public class Address implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "address_id", nullable = false)
    private Integer addressId;

    @Column(name = "address", columnDefinition = "nvarchar(max)")
    private String address;

    @Column(name = "city_province", columnDefinition = "nvarchar(100)")
    private String cityProvince;

    @Column(name = "district", columnDefinition = "nvarchar(100)")
    private String district;

    @Column(name = "block_village", columnDefinition = "nvarchar(100)")
    private String blockVillage;

    @Column(name = "is_default")
    private Boolean isDefault;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
