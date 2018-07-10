package com.student.entity;


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table
public class Menu extends BaseEntity {

    @Column(name = "menu_name")
    private String menuName;


    /** 父菜单名称 */
    @Column(name = "parent_name")
    private String parentName;

    /** 父菜单ID */
    @Column(name = "parent_id")
    private Long parentId;

    /** 显示顺序 */
    @Column(name = "order_num")
    private String orderNum;

    /** 菜单URL */
    private String url;

    /** 类型:0目录,1菜单,2按钮 */
    @Column(name = "menu_type")
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
