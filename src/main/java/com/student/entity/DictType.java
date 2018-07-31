package com.student.entity;


import com.student.annotation.Excel;
import lombok.Data;

/**
 * 字典类型对象 sys_dict_type
 *
 */
@Data
public class DictType extends BaseEntity
{
    private static final long serialVersionUID = 1L;


    /** 字典名称 */
    @Excel(name = "字典名称", column = "A")
    private String dictName;

    /** 字典类型 */
    @Excel(name = "字典类型 ", column = "B")
    private String dictType;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", column = "C")
    private String status;



}
