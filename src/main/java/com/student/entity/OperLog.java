package com.student.entity;


import lombok.Data;

import java.util.Date;

/**
 * 操作日志记录 oper_log
 */
@Data
public class OperLog extends BaseEntity {
    private static final long serialVersionUID = 1L;


    /**
     * 操作模块
     */
    private String title;

    /**
     * 操作类型
     */
    private String action;

    /**
     * 请求方法
     */
    private String method;

    /**
     * 来源渠道
     */
    private String channel;

    /**
     * 操作人员
     */
    private String operName;

    /**
     * 部门名称
     */
    private String deptName;

    /**
     * 请求url
     */
    private String operUrl;

    /**
     * 操作地址
     */
    private String operIp;

    /**
     * 操作地点
     */
    private String operLocation;

    /**
     * 请求参数
     */
    private String operParam;

    /**
     * 状态0正常 1异常
     */
    private String status;

    /**
     * 错误消息
     */
    private String errorMsg;

    /**
     * 操作时间
     */
    private Date operTime;

}
