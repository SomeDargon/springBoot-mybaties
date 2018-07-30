package com.student.service.impl;

import com.student.constant.UserConstants;
import com.student.dao.mapper.DeptMapper;
import com.student.entity.Dept;
import com.student.service.DeptService;
import com.student.util.StringUtils;
import com.student.util.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 部门管理 服务实现
 */
@Repository("deptService")
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptMapper;

    /**
     * 查询部门管理集合
     *
     * @return 所有部门信息
     */
    @Override
    public List<Dept> selectDeptAll() {
        return deptMapper.selectDeptAll();
    }

    /**
     * 查询部门管理树
     *
     * @return 所有部门信息
     */
    @Override
    public List<Map<String, Object>> selectDeptTree() {
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        List<Dept> deptList = deptMapper.selectDeptAll();

        for (Dept dept : deptList) {
            if (UserConstants.DEPT_NORMAL.equals(dept.getStatus())) {
                Map<String, Object> deptMap = new HashMap<String, Object>();
                deptMap.put("id", dept.getId());
                deptMap.put("pId", dept.getParentId());
                deptMap.put("name", dept.getDeptName());
                deptMap.put("title", dept.getDeptName());
                trees.add(deptMap);
            }
        }
        return trees;
    }

    /**
     * 查询部门人数
     *
     * @param parentId 部门ID
     * @return 结果
     */
    @Override
    public int selectDeptCount(Long parentId) {
        Dept dept = new Dept();
        dept.setParentId(parentId);
        return deptMapper.selectDeptCount(dept);
    }

    /**
     * 查询部门是否存在用户
     *
     * @param Id 部门ID
     * @return 结果 true 存在 false 不存在
     */
    @Override
    public boolean checkDeptExistUser(Long Id) {
        int result = deptMapper.checkDeptExistUser(Id);
        return result > 0 ? true : false;
    }

    /**
     * 删除部门管理信息
     *
     * @param Id 部门ID
     * @return 结果
     */
    @Override
    public int deleteDeptById(Long Id) {
        return deptMapper.deleteDeptById(Id);
    }

    /**
     * 保存部门信息
     *
     * @param dept 部门信息
     * @return 结果
     */
    @Override
    public int saveDept(Dept dept) {
        if (StringUtils.isNotNull(dept.getId())) {
            dept.setUpdateBy(ShiroUtils.getLoginName());
            return deptMapper.updateDept(dept);
        } else {
            dept.setCreateBy(ShiroUtils.getLoginName());
            return deptMapper.insertDept(dept);
        }
    }

    /**
     * 根据部门ID查询信息
     *
     * @param Id 部门ID
     * @return 部门信息
     */
    @Override
    public Dept selectDeptById(Long Id) {
        return deptMapper.selectDeptById(Id);
    }

    /**
     * 校验部门名称是否唯一
     *
     * @param dept 部门信息
     * @return 结果
     */
    @Override
    public String checkDeptNameUnique(Dept dept) {
        if (dept.getId() == null) {
            dept.setId(-1L);
        }
        Long Id = dept.getId();
        Dept info = deptMapper.checkDeptNameUnique(dept.getDeptName());
        if (StringUtils.isNotNull(info) && StringUtils.isNotNull(info.getId())
                && info.getId().longValue() != Id.longValue()) {
            return UserConstants.DEPT_NAME_NOT_UNIQUE;
        }
        return UserConstants.DEPT_NAME_UNIQUE;
    }
}
