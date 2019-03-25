package com.student.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 团队人员管理
 */
@Getter
@Setter
public class TeamManager extends BaseEntity {

    /** 用户名 */
    private String userName;

    /** 性别 */
    private String sex;

    /** 电话 */
    private String phone;

    /** 地址 */
    private String address;

    /** 项目id */
    private Long productId;
}
