package com.student.service;


import com.student.entity.Job;

import java.util.List;

/**
 * 定时任务调度信息信息 服务层
 */
public interface JobService {

    /**
     * 获取quartz调度器的计划任务
     *
     * @param job 调度信息
     * @return 调度任务集合
     */
    List<Job> selectJobList(Job job);

    /**
     * 通过调度任务ID查询调度信息
     *
     * @param jobId 调度任务ID
     * @return 调度任务对象信息
     */
    Job selectJobById(Long jobId);

    /**
     * 暂停任务
     *
     * @param job 调度信息
     * @return 结果
     */
    int pauseJob(Job job);

    /**
     * 恢复任务
     *
     * @param job 调度信息
     * @return 结果
     */
    int resumeJob(Job job);

    /**
     * 删除任务后，所对应的trigger也将被删除
     *
     * @param job 调度信息
     * @return 结果
     */
    int deleteJob(Job job);

    /**
     * 批量删除调度信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    void deleteJobByIds(String ids);

    /**
     * 任务调度状态修改
     *
     * @param job 调度信息
     * @return 结果
     */
    int changeStatus(Job job);

    /**
     * 立即运行任务
     *
     * @param job 调度信息
     * @return 结果
     */
    int run(Job job);

    /**
     * 新增任务表达式
     *
     * @param job 调度信息
     * @return 结果
     */
    int addJobCron(Job job);

    /**
     * 更新任务的时间表达式
     *
     * @param job 调度信息
     * @return 结果
     */
    int updateJobCron(Job job);

    /**
     * 保存任务的时间表达式
     *
     * @param job 调度信息
     * @return 结果
     */
    int saveJobCron(Job job);
}
