package com.student.service.impl;

import com.student.constant.UserConstant;
import com.student.dao.mapper.RoleMapper;
import com.student.dao.mapper.RoleMenuMapper;
import com.student.dao.mapper.UserRoleMapper;
import com.student.entity.Role;
import com.student.entity.RoleMenu;
import com.student.service.RoleService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import com.student.util.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    /**
     * 根据条件分页查询角色数据
     *
     * @param role 角色信息
     * @return 角色数据集合信息
     */
    @Override
    public List<Role> selectRoleList(Role role) {
        return roleMapper.selectRoleList(role);
    }

    /**
     * 根据用户ID查询权限
     *
     * @param userId 用户ID
     * @return 权限列表
     */
    @Override
    public Set<String> selectRoleKeys(Long userId) {
        List<Role> perms = roleMapper.selectRolesByUserId(userId);
        Set<String> permsSet = new HashSet<>();
        for (Role perm : perms) {
            if (StringUtils.isNotEmpty(perms)) {
                permsSet.addAll(Arrays.asList(perm.getRoleKey().trim().split(",")));
            }
        }
        return permsSet;
    }

    /**
     * 根据用户ID查询角色
     *
     * @param userId 用户ID
     * @return 角色列表
     */
    @Override
    public List<Role> selectRolesByUserId(Long userId) {
        List<Role> userRoles = roleMapper.selectRolesByUserId(userId);
        List<Role> roles = roleMapper.selectRolesAll();
        for (Role role : roles) {
            for (Role userRole : userRoles) {
                if (role.getId() == userRole.getId()) {
                    role.setFlag(true);
                    break;
                }
            }
        }
        return roles;
    }

    /**
     * 查询所有角色
     *
     * @return 角色列表
     */
    @Override
    public List<Role> selectRoleAll() {
        return roleMapper.selectRolesAll();
    }

    /**
     * 通过角色ID查询角色
     *
     * @param roleId 角色ID
     * @return 角色对象信息
     */
    @Override
    public Role selectRoleById(Long roleId) {
        return roleMapper.selectRoleById(roleId);
    }

    /**
     * 通过角色ID删除角色
     *
     * @param roleId 角色ID
     * @return 结果
     */
    @Override
    public boolean deleteRoleById(Long roleId) {
        return roleMapper.deleteRoleById(roleId) > 0 ? true : false;
    }

    /**
     * 批量删除角色信息
     *
     * @param ids 需要删除的数据ID
     * @throws Exception
     */
    @Override
    public void deleteRoleByIds(String ids) throws Exception {
        Long[] roleIds = Convert.toLongArray(ids);
        for (Long roleId : roleIds) {
            Role role = selectRoleById(roleId);
            if (countUserRoleByRoleId(roleId) > 0) {
                throw new Exception(String.format("%1$s已分配,不能删除", role.getRoleName()));
            }
        }
        roleMapper.deleteRoleByIds(roleIds);
    }

    /**
     * 保存角色信息
     *
     * @param role 角色信息
     * @return 结果
     */
    @Override
    public int saveRole(Role role) {
        Long roleId = role.getId();
        if (StringUtils.isNotNull(roleId)) {
            role.setUpdateBy(ShiroUtils.getLoginName());
            // 修改角色信息
            roleMapper.updateRole(role);
            // 删除角色与菜单关联
            roleMenuMapper.deleteRoleMenuByRoleId(roleId);
        } else {
            role.setCreateBy(ShiroUtils.getLoginName());
            // 新增角色信息
            roleMapper.insertRole(role);
        }
        ShiroUtils.clearCachedAuthorizationInfo();
        return insertRoleMenu(role);
    }

    /**
     * 新增角色菜单信息
     *
     * @param role 角色对象
     */
    public int insertRoleMenu(Role role) {
        int rows = 1;
        // 新增用户与角色管理
        List<RoleMenu> list = new ArrayList<RoleMenu>();
        for (Long menuId : role.getMenuIds()) {
            RoleMenu rm = new RoleMenu();
            rm.setId(role.getId());
            rm.setMenuId(menuId);
            list.add(rm);
        }
        if (list.size() > 0) {
            rows = roleMenuMapper.batchRoleMenu(list);
        }
        return rows;
    }

    /**
     * 校验角色名称是否唯一
     *
     * @param role 角色信息
     * @return 结果
     */
    @Override
    public String checkRoleNameUnique(Role role) {
        if (role.getId() == null) {
            role.setId(-1L);
        }
        Long roleId = role.getId();
        Role info = roleMapper.checkRoleNameUnique(role.getRoleName());
        if (StringUtils.isNotNull(info) && StringUtils.isNotNull(info.getId()) && info.getId() != roleId) {
            return UserConstant.ROLE_NAME_NOT_UNIQUE;
        }
        return UserConstant.ROLE_NAME_UNIQUE;
    }

    /**
     * 通过角色ID查询角色使用数量
     *
     * @param roleId 角色ID
     * @return 结果
     */
    @Override
    public int countUserRoleByRoleId(Long roleId) {
        return userRoleMapper.countUserRoleByRoleId(roleId);
    }


}
