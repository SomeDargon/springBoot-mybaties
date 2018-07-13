package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 岗位对象 sys_post
 * 
 */
@Getter
@Setter
@Table
@Entity
public class Post extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    @Column(name = "post_code")
    private String postCode;

    @Column(name = "post_name")
    private String postName;

    @Column(name = "post_sort")
    private String postSort;

    private String status;

    private boolean flag = false;
}
