package com.student.entity;


import lombok.Getter;
import lombok.Setter;

/**
 *
 */
@Getter
@Setter
public class ProjectWorkLog extends BaseEntity{

    /** 人工 */
    private String labor;

    /** 设备 */
    private String machineList;

    /** 技术质量安全工作 */
    private String technicalWorkRecord;

    /** 总价 */
    private String totalAmount;

    /** 项目 */
    private String workRecord;

    /** 材料 */
    private String materialScience;

    /** 时间 */
    private String workTime;
}
