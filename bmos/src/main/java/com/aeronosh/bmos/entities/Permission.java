package com.aeronosh.bmos.entities;

import java.io.Serializable;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Tbl_Permission")
public class Permission implements Serializable {
    @Id
    @Column(name = "permission_id", nullable = false)
    private String permissionId;

    @OneToOne
    @JoinColumn(name = "user_role_id")
    private Role role;

    @Column(name = "permission_name", columnDefinition = "varchar(50)")
    private String permissionName;
}
