package com.student.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "role_menu")
@Data
public class RoleMenu {
    /** 角色ID */
    private Long id;
    /** 菜单ID */
    @Column(name = "menu_id")
    private Long menuId;
}
