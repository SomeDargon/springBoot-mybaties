package com.student.dao.mapper.monitor;


import com.student.entity.Job;

import java.util.List;

/**
 * 调度任务信息 数据层
 */
public interface JobMapper {

    /**
     * 查询调度任务日志集合
     *
     * @param job 调度信息
     * @return 操作日志集合
     */
    List<Job> selectJobList(Job job);

    /**
     * 查询所有调度任务
     *
     * @return 调度任务列表
     */
    List<Job> selectJobAll();

    /**
     * 通过调度ID查询调度任务信息
     *
     * @param jobId 调度ID
     * @return 角色对象信息
     */
    Job selectJobById(Long jobId);

    /**
     * 通过调度ID删除调度任务信息
     *
     * @param jobId 调度ID
     * @return 结果
     */
    int deleteJobById(Job job);

    /**
     * 批量删除调度任务信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteJobLogByIds(Long[] ids);

    /**
     * 修改调度任务信息
     *
     * @param job 调度任务信息
     * @return 结果
     */
    int updateJob(Job job);

    /**
     * 新增调度任务信息
     *
     * @param job 调度任务信息
     * @return 结果
     */
    int insertJob(Job job);

}
