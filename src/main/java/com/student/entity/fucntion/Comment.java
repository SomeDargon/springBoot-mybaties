package com.student.entity.fucntion;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

@Data
public class Comment implements Serializable {

    private static final long serialVersionUID = 54475170262974159L;
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    /** 文章id */
    private Long articleId;

    /** 父级id */
    private Long superId;

    /** 评论时间 */
    private Date createTime;

    /** 评论人 */
    private String createBy;

    /** 状态 */
    private Integer status;

    /** 点赞数 */
    private Integer likeNum;

    /** 用户id */
    private Long userId;

}
