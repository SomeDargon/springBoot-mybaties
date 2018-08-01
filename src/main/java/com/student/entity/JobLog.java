package com.student.entity;


import com.student.annotation.Excel;
import lombok.Data;

/**
 * 定时任务调度日志信息 sys_job_log
 */
@Data
public class JobLog extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    @Excel(name = "日志序号", column = "A")
    private Long jobLogId;

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
     * 日志信息
     */
    @Excel(name = "日志信息", column = "F")
    private String jobMessage;

    /**
     * 执行状态（0正常 1失败）
     */
    @Excel(name = "执行状态", column = "G")
    private String status;

    /**
     * 异常信息
     */
    @Excel(name = "异常信息", column = "H")
    private String exceptionInfo;


}
