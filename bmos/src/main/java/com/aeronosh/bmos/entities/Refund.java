package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "Tbl_Refund")
public class Refund implements Serializable {
    @Id
    @Column(name = "refund_id", columnDefinition = "varchar(10)", nullable = false)
    private String refundId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    @Column(name = "description", columnDefinition = "nvarchar(200)")
    private String description;

    @Column(name = "date", columnDefinition = "datetime")
    private Date date;

    @Column(name = "is_confirm")
    private Boolean isConfirm;
}
