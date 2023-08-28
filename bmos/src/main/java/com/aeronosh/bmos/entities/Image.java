package com.aeronosh.bmos.entities;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;

@Data
@Entity
@Table(name = "Tbl_Image")
public class Image implements Serializable {
    @Id
    @Column(name = "image_id")
    private String imageId;

    @Column(name = "name")
    private String name;

    @Column(name = "relation_id")
    private String relationId;

    @Column(name = "type")
    private String type;

    @Column(name = "url")
    private String url;
}
