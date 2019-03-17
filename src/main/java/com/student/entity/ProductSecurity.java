package com.student.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 安全检查
 */
@Getter
@Setter
public class ProductSecurity extends BaseEntity{

    /** 计划开始日期 */
    private String beginDate;

    /** 公司编号 */
    private String companyId;

    /** 检查人id */
    private String employeeId;

    /** 计划结束日期 */
    private String endDate;

    /** 计划名称 */
    private String planName;

    /** 项目检查 */
    private String projectObservation;

    /** 编号 */
    private String serialNo;

    /** 工期 */
    private String timeLimit;

    /** 检查性质 */
    private String securityType;

    /** 检查结果 */
    private String rectificationStatus;
}
