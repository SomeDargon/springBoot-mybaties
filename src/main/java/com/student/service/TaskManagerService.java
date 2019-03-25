package com.student.service;

import com.student.entity.TaskManager;

import java.util.List;

public interface TaskManagerService {

    /**
     * 保存
     *
     * @param taskManager
     * @return
     */
    Integer save(TaskManager taskManager);

    /**
     * 更新
     *
     * @param taskManager
     * @return
     */
    Integer update(TaskManager taskManager);

    /**
     * 删除
     *
     * @param ids
     * @return
     */
    void deleteTaskManagerByIds(String ids);

    /**
     * 查询列表
     *
     * @param taskManager
     * @return
     */
    List<TaskManager> selectTaskManagerList(TaskManager taskManager);

    /**
     * 查询id
     *
     * @param id
     * @return
     */
    TaskManager selectTaskManagerById(Long id);
}
