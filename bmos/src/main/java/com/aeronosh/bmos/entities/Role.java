package com.aeronosh.bmos.entities;

import java.io.Serializable;
import java.util.List;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Tbl_Role")
public class Role implements Serializable {
    @Id
    @Column(name = "user_role_id", nullable = false)
    private int userRoleId;

    @Column(name = "role_name", columnDefinition = "nvarchar(10)")
    private String roleName;

    @OneToMany(mappedBy = "role", cascade = CascadeType.ALL)
    private List<User> users;

    @OneToOne(mappedBy = "role")
    private Permission permission;
}
