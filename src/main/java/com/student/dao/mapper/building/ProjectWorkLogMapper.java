package com.student.dao.mapper.building;

import com.student.entity.ProjectWorkLog;

import java.util.List;

public interface ProjectWorkLogMapper {

    /**
     * 保存
     *
     * @param projectWorkLog
     */
    Integer insertProjectWorkLog(ProjectWorkLog projectWorkLog);

    /**
     * 根据条件分页查询项目对象
     *
     * @param projectWorkLog 用户信息
     * @return 项目信息集合信息
     */
    List<ProjectWorkLog> selectProjectWorkLogList(ProjectWorkLog projectWorkLog);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteProjectWorkLogById(Long id);

    /**
     * 修改
     *
     * @param projectWorkLog
     * @return 结果
     */
    int updateProjectWorkLog(ProjectWorkLog projectWorkLog);


    /**
     * id查询
     * @param id
     * @return
     */
    ProjectWorkLog selectProjectWorkLogById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteProjectWorkLogByIds(Long[] ids);
}
