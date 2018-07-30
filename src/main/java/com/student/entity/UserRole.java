package com.student.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Data
public class UserRole {

    private Long userId;
    /** 角色ID */
    private Long roleId;
}
