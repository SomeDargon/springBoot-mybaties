package com.student.entity;

import lombok.Data;


@Data
public class Role extends BaseEntity {

    /** 角色名称 */
    private String roleName;

    /** 角色权限 */
    private String roleKey;

    /** 角色排序 */
    private String roleSort;

    /** 角色状态（0正常 1停用） */
    private String status;

    /** 用户是否存在此角色标识 默认不存在 */
    private boolean flag = false;

    /** 菜单组 */
    private Long[] menuIds;
}
