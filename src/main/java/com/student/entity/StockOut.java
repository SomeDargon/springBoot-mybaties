package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 出库表
 */
@Getter
@Setter
public class StockOut extends BaseEntity {


    /** 出购人 */
    private String stockOutName;

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
