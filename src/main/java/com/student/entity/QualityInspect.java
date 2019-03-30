package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 质量检查
 */
@Setter
@Getter
public class QualityInspect extends BaseEntity {

    /** 项目名称 */
    private String productName;

    /** 检查性质 */
    private String inspectType;

    /** 检查人 */
    private String inspectName;

    /** 检查日期 */
    private String inspectDate;

    /** 项目编号 */
    private Long productId;

    /** 检查结果 */
    private String productResult;
}
