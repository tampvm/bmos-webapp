package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "Tbl_Feedback")
public class Feedback implements Serializable {
    @Id
    @Column(name = "feedback_id")
    private String feedbackId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @Column(name = "content", columnDefinition = "nvarchar(200)")
    private String content;

    @Column(name = "star")
    private Integer star;

    @Column(name = "date", columnDefinition = "datetime")
    private Date date;
}
