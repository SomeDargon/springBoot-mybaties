package com.student.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Getter
@Setter
public class RoleMenu {
    /** 角色ID */
    private Long id;
    /** 菜单ID */
    private Long menuId;
}
