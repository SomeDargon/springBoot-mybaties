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
public class Post extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    private String postCode;

    private String postName;

    private String postSort;

    private String status;

    private boolean flag = false;
}
