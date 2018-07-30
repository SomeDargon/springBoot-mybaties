package com.student.service;


import com.student.entity.Dept;

import java.util.List;
import java.util.Map;

/**
 * 部门管理 服务层
 */
public interface DeptService {
    /**
     * 查询部门管理集合
     *
     * @return 所有部门信息
     */
    List<Dept> selectDeptAll();

    /**
     * 查询部门管理树
     *
     * @return 所有部门信息
     */
    List<Map<String, Object>> selectDeptTree();

    /**
     * 查询部门人数
     *
     * @param parentId 父部门ID
     * @return 结果
     */
    int selectDeptCount(Long parentId);

    /**
     * 查询部门是否存在用户
     *
     * @param deptId 部门ID
     * @return 结果 true 存在 false 不存在
     */
    boolean checkDeptExistUser(Long deptId);

    /**
     * 删除部门管理信息
     *
     * @param deptId 部门ID
     * @return 结果
     */
    int deleteDeptById(Long deptId);

    /**
     * 保存部门信息
     *
     * @param dept 部门信息
     * @return 结果
     */
    int saveDept(Dept dept);

    /**
     * 根据部门ID查询信息
     *
     * @param deptId 部门ID
     * @return 部门信息
     */
    Dept selectDeptById(Long deptId);

    /**
     * 校验部门名称是否唯一
     *
     * @param dept 部门信息
     * @return 结果
     */
    String checkDeptNameUnique(Dept dept);
}
