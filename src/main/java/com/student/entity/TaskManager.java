package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;


/**
 * 任务管理
 */
@Getter
@Setter
public class TaskManager extends BaseEntity  {

    /** 项目管理 */
    private String productName;

    /** 项目编号 */
    private String productId;

    /** 任务描述 */
    private String taskDescription;

    /** 工作量 */
    private String workload;

    /** 房屋住址 */
    private String houseAddress;

    /** 电话号码 */
    private String phone;

    /** 完成时间 */
    private String finishDate;
}
