package com.student.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@Table
public class Role extends BaseEntity {

    /** 角色名称 */
    @Column(name = "role_name")
    private String roleName;

    /** 角色权限 */
    @Column(name = "role_key")
    private String roleKey;

    /** 角色排序 */
    @Column(name = "role_sort")
    private String roleSort;

    /** 角色状态（0正常 1停用） */
    private String status;

    /** 用户是否存在此角色标识 默认不存在 */
    private boolean flag = false;

    /** 菜单组 */
    private Long[] menuIds;
}
