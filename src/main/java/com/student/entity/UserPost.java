package com.student.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Table;

/**
 * 用户和岗位关联 sys_user_post
 * 
 */
@Getter
@Setter
public class UserPost
{
    /** 用户ID */
    private Long userId;

    /** 岗位ID */
    private Long postId;


}
