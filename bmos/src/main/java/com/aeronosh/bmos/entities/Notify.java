//package com.aeronosh.bmos.entities;
//
//import jakarta.persistence.*;
//import lombok.Data;
//import java.io.Serializable;
//import java.util.Date;
//
//@Data
//@Entity
//@Table(name = "Tbl_Notify")
//public class Notify implements Serializable {
//    @Id
//    @Column(name = "notify_id", columnDefinition = "varchar(50)", nullable = false)
//    private String notifyId;
//
//    @ManyToOne
//    @JoinColumn(name = "user_id")
//    private User user;
//
//    @Column(name = "message", columnDefinition = "nvarchar(200)")
//    private String message;
//
//    @Column(name = "type", columnDefinition = "varchar(50)")
//    private String type;
//
//    @Column(name = "date", columnDefinition = "datetime")
//    private Date date;
//}

//đang fix database
