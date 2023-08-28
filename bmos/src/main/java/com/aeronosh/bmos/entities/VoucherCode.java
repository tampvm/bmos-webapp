//package com.aeronosh.bmos.entities;
//
//import jakarta.persistence.*;
//import lombok.Data;
//import java.io.Serializable;
//
//@Data
//@Entity
//@Table(name = "Tbl_VoucherCode")
//public class VoucherCode implements Serializable {
//    @Id
//    @Column(name = "voucher_id", columnDefinition = "varchar(50)", nullable = false)
//    private String voucherId;
//
//    @Column(name = "voucher_code", columnDefinition = "varchar(10)")
//    private String voucherCode;
//
//    @Column(name = "value")
//    private Float value;
//
//    @Column(name = "quantity")
//    private Integer quantity;
//
//    @Column(name = "used")
//    private Integer used;
//
//    @Column(name = "status")
//    private Boolean status;
//
//    @OneToOne(mappedBy = "voucherCode")
//    private VoucherUsed voucherUsed;
//}

//đang fix database
