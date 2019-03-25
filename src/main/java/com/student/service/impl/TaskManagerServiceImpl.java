package com.student.service.impl;

import com.student.dao.mapper.building.TaskManagerMapper;
import com.student.entity.TaskManager;
import com.student.service.TaskManagerService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskManagerServiceImpl implements TaskManagerService {

    @Autowired
    private TaskManagerMapper taskManagerMapper;

    @Override
    public Integer save(TaskManager taskManager) {
        return taskManagerMapper.insertTaskManager(taskManager);
    }

    @Override
    public Integer update(TaskManager taskManager) {
        return taskManagerMapper.updateTaskManager(taskManager);
    }

    @Override
    public void deleteTaskManagerByIds(String ids) {
        Long[] proIds = Convert.toLongArray(ids);
        taskManagerMapper.deleteUserByIds(proIds);
    }

    @Override
    public List<TaskManager> selectTaskManagerList(TaskManager taskManager) {
        return taskManagerMapper.selectTaskManagerList(taskManager);
    }

    @Override
    public TaskManager selectTaskManagerById(Long id) {
        return taskManagerMapper.selectTaskManagerById(id);
    }
}
