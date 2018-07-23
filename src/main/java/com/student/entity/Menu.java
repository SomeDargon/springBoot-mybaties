package com.student.entity;


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Data
public class Menu extends BaseEntity {

    private String menuName;


    /** 父菜单名称 */
    private String parentName;

    /** 父菜单ID */
    private Long parentId;

    /** 显示顺序 */
    private String orderNum;

    /** 菜单URL */
    private String url;

    /** 类型:0目录,1菜单,2按钮 */
    private String menuType;

    /** 菜单状态:0显示,1隐藏 */
    private int visible;

    /** 权限字符串 */
    private String perms;

    /** 菜单图标 */
    private String icon;

    /** 子菜单 */
    private List<Menu> children = new ArrayList<Menu>();

}
