package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 *  项目管理
 * @author somedragon
 */
@Getter
@Setter
public class Product extends BaseEntity {

    /** 项目名称 */
    private String productName;

    /** 项目简称 */
    private String productAbbreviation;

    /** 施工合同编号 */
    private String productNumber;

    /** 项目性质 */
    private Integer productType;

    /** 项目状态 */
    private Integer productStatus;

    /** 开工时间 */
    private String startTime;

    /** 竣工时间 */
    private String endTime;

    /** 工程标签 */
    private String productLabel;

    /** 项目造价（万元） */
    private String productMoney;

    /** 项目面积（㎡） */
    private String productArea;

    /** 项目长度（m） */
    private String productLength;

    /** 施工单位 */
    private String productCompany;

    /** 甲方 */
    private String productFirstPart;

    /** 省 */
    private String province;

    /** 市 */
    private String city;

    /** 区 */
    private String area;

    /** 项目简称 */
    private String specificAddress;

    /** 具体位置 **/
    private String address;

    /** TODO 项目人员，关键字，看是用外键来做还是 **/

}
