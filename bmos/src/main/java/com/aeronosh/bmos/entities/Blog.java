package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "Tbl_Blog")
public class Blog implements Serializable {
    @Id
    @Column(name = "blog_id")
    private String blogId;

    @Column(name = "name")
    private String name;

    @Column(name = "description", columnDefinition = "nvarchar(max)")
    private String description;

    @Column(name = "date", columnDefinition = "datetime")
    private Date date;

    @Column(name = "status")
    private Boolean status;
}
