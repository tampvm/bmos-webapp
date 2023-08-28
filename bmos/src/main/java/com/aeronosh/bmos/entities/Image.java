package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;

@Data
@Entity
@Table(name = "Tbl_Image")
public class Image implements Serializable {
    @Id
    @Column(name = "image_id", columnDefinition = "varchar(10)", nullable = false)
    private String imageId;

    @Column(name = "name", columnDefinition = "varchar(100)")
    private String name;

    @Column(name = "relation_id", columnDefinition = "varchar(10)")
    private String relationId;

    @Column(name = "type", columnDefinition = "varchar(20)")
    private String type;

    @Column(name = "url")
    private String url;
}
