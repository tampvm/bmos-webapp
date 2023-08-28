package com.aeronosh.bmos.entities;

import java.io.Serializable;
import jakarta.persistence.*;
import lombok.Data;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "Tbl_User")
public class User implements Serializable {
    @Id
    @Column(name = "user_id", columnDefinition = "varchar(50)", nullable = false)
    private String userId;

    @Column(name = "username", columnDefinition = "varchar(100)")
    private String username;

    @Column(name = "password", columnDefinition = "varchar(20)")
    private String password;

    @Column(name = "is_confirm", columnDefinition = "bit")
    private Boolean isConfirm;

    @Column(name = "firstname", columnDefinition = "nvarchar(50)")
    private String firstname;

    @Column(name = "lastname", columnDefinition = "nvarchar(50)")
    private String lastname;

    @Column(name = "number_phone", columnDefinition = "varchar(10)")
    private String numberPhone;

    @Column(name = "date_create", columnDefinition = "datetime")
    private Date dateCreate;

    @Column(name = "last_activity", columnDefinition = "datetime")
    private Date lastActivity;

    @Column(name = "point", columnDefinition = "float")
    private Float point;

    @Column(name = "status", columnDefinition = "bit")
    private Boolean status;

    @Column(name = "google_id", columnDefinition = "varchar(100)")
    private String googleId;

    @ManyToOne
    @JoinColumn(name = "user_role_id", nullable = false)
    private Role role;

    @OneToMany(mappedBy = "user",  cascade = CascadeType.ALL)
    private List<Address> addresses;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Order> orders;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<FavouriteList> favouriteLists;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Feedback> feedbacks;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Refund> refunds;

//    @ManyToMany
//    @JoinTable(
//            name = "Tbl_VoucherUsed",
//            joinColumns = @JoinColumn(name = "user_id"),
//            inverseJoinColumns = @JoinColumn(name = "voucher_id")
//    )
//    private List<VoucherCode> usedVouchers;

//    @OneToMany(mappedBy = "user")
//    private List<Notify> notifications;
}
