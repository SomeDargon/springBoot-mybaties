package com.student.entity;


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "user")
@Entity
public class User extends BaseEntity {

    /** 部门ID */
    @Column(name = "dept_id")
    private Long deptId;

    /** 部门父ID */
    @Column(name = "paren_id")
    private Long parentId;

    /** 登录名称 */
    @Column(name = "login_name")
    private String loginName;

    /** 用户名称 */
    @Column(name = "user_name")
    private String userName;

    /** 用户邮箱 */
    private String email;

    /** 手机号码 */
    @Column(name = "phone_number")
    private String phoneNumber;

    /** 用户性别 */
    private String sex;

    /** 用户头像 */
    private String avatar;

    /** 密码 */
    private String password;

    /** 盐加密 */
    private String salt;

    /** 帐号状态（0正常 1停用） */
    private String status;

    @Column(name = "del_flag")
    private String delFlag;

    /** 最后登陆IP */
    @Column(name = "login_ip")
    private String loginIp;

    /** 最后登陆时间 */
    @Column(name = "login_date")
    private Date loginDate;

    /** 部门对象 */
    private Dept dept;

    /** 角色组 */
    private Long[] roleIds;

    /** 岗位组 */
    private Long[] postIds;

}
