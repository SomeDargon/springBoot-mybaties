package com.student.entity;

import lombok.Data;

/**
 * 公告表 sys_notice
 */
@Data
public class Notice extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 公告标题
     */
    private String noticeTitle;
    /**
     * 公告类型（1通知 2公告）
     */
    private String noticeType;
    /**
     * 公告内容
     */
    private String noticeContent;
    /**
     * 公告状态（0正常 1关闭）
     */
    private String status;

}
