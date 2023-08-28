package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "Tbl_Routing")
public class Routing implements Serializable {
    @Id
    @Column(name = "routing_id", columnDefinition = "varchar(10)", nullable = false)
    private String routingId;

    @Column(name = "name", columnDefinition = "nvarchar(100)")
    private String name;

    @Column(name = "description", columnDefinition = "nvarchar(max)")
    private String description;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "price")
    private Double price;

    @Column(name = "status")
    private Boolean status;

    @OneToMany(mappedBy = "routing")
    private List<ProductInRouting> productInRoutingList;
}
