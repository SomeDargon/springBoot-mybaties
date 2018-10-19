package com.student.entity.article;

import com.student.entity.BaseEntity;
import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;


/**
 * 文章
 */
@Data
public class Article extends BaseEntity {

    /** 标题 */
    private String title;

    /** 内容 */
    private String content;

    /** 点赞 */
    private Integer likeNum;

    /** 浏览数 */
    private Integer browseNum;

    /** 评论id */
    private Long commentId;

    /** 分类id */
    private Long typeId;

    /** 大图 */
    private String pictureUrl;

    /** 文章状态 */
    private Integer status;
}
