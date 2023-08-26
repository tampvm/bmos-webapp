package com.aeronosh.bmos.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import java.io.Serializable;
import java.util.Date;

@Entity
public class TblUser implements Serializable {

    @Id
    @Column (name = "UserId", columnDefinition = "varchar(50)")
    private String  userId;

//    @Column (name = "Username", columnDefinition = "varchar(100)")
//    private String userName;
//
//    @Column (name = "Password", columnDefinition = "varchar(20)")
//    private String password;
//
//    @Column (name = "IsConfirm", nullable = false)
//    private boolean isConfirm;
//
//    @Column (name = "FirstName", columnDefinition = "nvarchar(50)")
//    private String firstName;
//
//    @Column (name = "LastName", columnDefinition = "nvarchar(50)")
//    private String lastName;
//
//    @Column (name = "NumberPhone", columnDefinition = "varchar(10)")
//    private String numberPhone;
//
//    @Column (name = "DateCreate")
//    private Date dateCreate;
}
