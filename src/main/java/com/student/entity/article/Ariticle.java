package com.student.entity.article;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

public class Ariticle implements Serializable {

    private static final long serialVersionUID = 1526082052497823738L;
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
}
