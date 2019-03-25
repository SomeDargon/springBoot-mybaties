package com.student.dao.mapper.building;

import com.student.entity.TaskManager;

import java.util.List;

public interface TaskManagerMapper {

    /**
     * 保存
     *
     * @param taskManager
     */
    Integer insertTaskManager(TaskManager taskManager);

    /**
     * 根据条件分页查询项目对象
     *
     * @param taskManager 用户信息
     * @return 项目信息集合信息
     */
    List<TaskManager> selectTaskManagerList(TaskManager taskManager);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteTaskManagerById(Long id);

    /**
     * 修改
     *
     * @param taskManager
     * @return 结果
     */
    int updateTaskManager(TaskManager taskManager);


    /**
     * id查询
     * @param id
     * @return
     */
    TaskManager selectTaskManagerById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteUserByIds(Long[] ids);
}
