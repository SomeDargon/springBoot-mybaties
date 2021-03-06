package com.student.service;

import com.student.entity.Menu;
import com.student.entity.Role;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface MenuService {

    /**
     * 根据用户ID查询菜单
     *
     * @param userId 用户ID
     * @return 菜单列表
     */
     List<Menu> selectMenusByUserId(Long userId);

    /**
     * 查询菜单集合
     *
     * @return 所有菜单信息
     */
    List<Menu> selectMenuAll();

    /**
     * 根据用户ID查询权限
     *
     * @param userId 用户ID
     * @return 权限列表
     */
    Set<String> selectPermsByUserId(Long userId);

    /**
     * 根据角色ID查询菜单
     *
     * @param role 角色对象
     * @return 菜单列表
     */
    List<Map<String, Object>> roleMenuTreeData(Role role);

    /**
     * 查询所有菜单信息
     *
     * @return 菜单列表
     */
    List<Map<String, Object>> menuTreeData();

    /**
     * 查询系统所有权限
     *
     * @return 权限列表
     */
    Map<String, String> selectPermsAll();

    /**
     * 删除菜单管理信息
     *
     * @param menuId 菜单ID
     * @return 结果
     */
    int deleteMenuById(Long menuId);

    /**
     * 根据菜单ID查询信息
     *
     * @param menuId 菜单ID
     * @return 菜单信息
     */
    Menu selectMenuById(Long menuId);

    /**
     * 查询菜单数量
     *
     * @param parentId 菜单父ID
     * @return 结果
     */
    int selectCountMenuByParentId(Long parentId);

    /**
     * 查询菜单使用数量
     *
     * @param menuId 菜单ID
     * @return 结果
     */
    int selectCountRoleMenuByMenuId(Long menuId);

    /**
     * 保存菜单信息
     *
     * @param menu 菜单信息
     * @return 结果
     */
    int saveMenu(Menu menu);

    /**
     * 校验菜单名称是否唯一
     *
     * @param menu 菜单信息
     * @return 结果
     */
    String checkMenuNameUnique(Menu menu);

}
