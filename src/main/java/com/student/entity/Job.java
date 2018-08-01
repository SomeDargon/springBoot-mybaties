package com.student.entity;


import com.student.annotation.Excel;
import lombok.Data;

import java.io.Serializable;

/**
 * 定时任务调度信息 sys_job
 */
@Data
public class Job extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 任务ID
     */
    @Excel(name = "任务序号", column = "A")
    private Long jobId;

    /**
     * 任务名称
     */
    @Excel(name = "任务名称", column = "B")
    private String jobName;

    /**
     * 任务组名
     */
    @Excel(name = "任务组名", column = "C")
    private String jobGroup;

    /**
     * 任务方法
     */
    @Excel(name = "任务方法", column = "D")
    private String methodName;

    /**
     * 方法参数
     */
    @Excel(name = "方法参数", column = "E")
    private String params;

    /**
     * cron执行表达式
     */
    @Excel(name = "执行表达式 ", column = "F")
    private String cronExpression;

    /**
     * 任务状态（0正常 1暂停）
     */
    @Excel(name = "任务状态", column = "G")
    private String status;



}
