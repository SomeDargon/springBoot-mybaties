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
    private Integer like;

    /** 浏览数 */
    private Integer browse_num;

    /** 评论id */
    private Long comment_id;

    /** 分类id */
    private Long type_id;

    /** 大图 */
    private String picture_url;


}
