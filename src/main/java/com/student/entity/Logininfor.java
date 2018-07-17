package com.student.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * 系统访问日志情况信息 sys_logininfor
 *
 * @author ruoyi
 */
@Getter
@Setter
public class Logininfor extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 用户账号
     */
    private String loginName;
    /**
     * 登录状态 0成功 1失败
     */
    private String status;
    /**
     * 登录IP地址
     */
    private String ipaddr;
    /**
     * 登录地点
     */
    private String loginLocation;
    /**
     * 浏览器类型
     */
    private String browser;
    /**
     * 操作系统
     */
    private String os;
    /**
     * 提示消息
     */
    private String msg;
    /**
     * 访问时间
     */
    private Date loginTime;

}