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
@Table(name = "user_post")
public class UserPost
{
    /** 用户ID */
    @Column(name = "user_id")
    private Long userId;

    /** 岗位ID */
    @Column(name = "post_id")
    private Long postId;


}
