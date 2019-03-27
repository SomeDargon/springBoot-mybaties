package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;


/**
 * 入库表
 */
@Getter
@Setter
public class Storage extends BaseEntity{

    /** 入库人 */
    private String storageName;

    /** 材料名称 */
    private String materialsName;

    /** 入库日期 */
    private Date storageDate;

    /** 单位 */
    private String unit;

    /** 数量 */
    private Integer num;

    /** 单价 */
    private Double unitPrice;
}
