package com.student.entity;


import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 采购管理
 *
 */
@Getter
@Setter
public class ProcurementManager extends BaseEntity {

    /** 采购人 */
    private String procurementName;

    /** 材料名称 */
    private String materialsName;

    /** 采购日期 */
    private Date procurementDate;

    /** 单位 */
    private String unit;

    /** 数量 */
    private String num;

    /** 单价 */
    private Double unitPrice;

}
