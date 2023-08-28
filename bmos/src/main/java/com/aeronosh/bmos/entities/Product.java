package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "Tbl_Product")
public class Product implements Serializable {
    @Id
    @Column(name = "product_id", columnDefinition = "varchar(10)", nullable = false)
    private String productId;

    @Column(name = "name", columnDefinition = "varchar(100)")
    private String name;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "description", columnDefinition = "nvarchar(max)")
    private String description;

    @Column(name = "weight")
    private Double weight;

    @Column(name = "is_loved")
    private Boolean isLoved;

    @Column(name = "status")
    private Boolean status;

    @Column(name = "price")
    private Double price;

    @Column(name = "type", columnDefinition = "varchar(50)")
    private String type;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<ProductInRouting> productInRoutingList;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<FavouriteList> favouriteLists;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<Feedback> feedbacks;
}
