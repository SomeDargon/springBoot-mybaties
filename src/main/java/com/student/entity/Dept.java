package com.student.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "dept")
public class Dept extends BaseEntity {

    /** 父部门ID */
    @Column(name = "parent_id")
    private Long parentId;

    /** 部门名称 */
    @Column(name = "dept_name")
    private String deptName;

    /** 显示顺序 */
    @Column(name = "order_num")
    private String orderNum;

    /** 负责人 */
    private String leader;

    /** 联系电话 */
    private String phone;

    /** 邮箱 */
    private String email;

    /** 部门状态:0正常,1停用 */
    private String status;

    /** 父部门名称 */
    @Column(name = "parent_name")
    private String parentName;
}
