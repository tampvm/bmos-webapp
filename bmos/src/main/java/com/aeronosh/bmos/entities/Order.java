package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "Tbl_Order")
public class Order implements Serializable {
    @Id
    @Column(name = "order_id", columnDefinition = "varchar(10)", nullable = false)
    private String orderId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "total_price")
    private Float totalPrice;

    @Column(name = "date", columnDefinition = "datetime")
    private Date date;

    @Column(name = "address", columnDefinition = "nvarchar(max)")
    private String address;

    @Column(name = "phone", length = 10)
    private String phone;

    @Column(name = "note", columnDefinition = "nvarchar(max)")
    private String note;

    @Column(name = "payment_type", length = 50)
    private String paymentType;

    @Column(name = "point")
    private Float point;

    @Column(name = "status")
    private Integer status;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<Refund> refunds;
}
