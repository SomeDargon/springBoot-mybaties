package com.student.entity;


import com.student.annotation.Excel;
import lombok.Data;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

@Data
public class User extends BaseEntity {

    /**
     * 部门ID
     */
    @Excel(name = "用户序号", column = "A")
    private Long deptId;

    /**
     * 部门父ID
     */
    private Long parentId;

    /**
     * 登录名称
     */
    @Excel(name = "登录名称", column = "B")
    private String loginName;

    /**
     * 用户名称
     */
    @Excel(name = "用户名称", column = "C")
    private String userName;

    /**
     * 用户邮箱
     */
    @Excel(name = "用户邮箱", column = "D")
    private String email;

    /**
     * 手机号码
     */
    @Excel(name = "手机号码", column = "E")
    private String phoneNumber;

    /**
     * 用户性别
     */
    @Excel(name = "用户性别", column = "F")
    private String sex;

    /**
     * 用户头像
     */
    private String avatar;

    /**
     * 密码
     */
    private String password;

    /**
     * 盐加密
     */
    private String salt;

    /**
     * 帐号状态（0正常 1停用）
     */
    @Excel(name = "帐号状态", column = "G")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /**
     * 最后登陆IP
     */
    @Excel(name = "最后登陆IP", column = "H")
    private String loginIp;

    /**
     * 最后登陆时间
     */
    @Excel(name = "最后登陆时间", column = "I")
    private Date loginDate;

    /**
     * 部门对象
     */
    private Dept dept;

    /**
     * 角色组
     */
    private Long[] roleIds;

    /**
     * 岗位组
     */
    private Long[] postIds;

    public static boolean isAdmin(Long userId) {
        return userId != null && 1L == userId;
    }

    /**
     * 生成随机盐
     */
    public void randomSalt() {
        // 一个Byte占两个字节，此处生成的3字节，字符串长度为6
        SecureRandomNumberGenerator secureRandom = new SecureRandomNumberGenerator();
        String hex = secureRandom.nextBytes(3).toHex();
        setSalt(hex);
    }
}
