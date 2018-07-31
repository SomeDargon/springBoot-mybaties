package com.student.service.impl;


import com.student.dao.mapper.NoticeMapper;
import com.student.entity.Notice;
import com.student.service.NoticeService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import com.student.util.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 公告 服务层实现
 */
@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;

    /**
     * 查询公告信息
     *
     * @param noticeId 公告ID
     * @return 公告信息
     */
    @Override
    public Notice selectNoticeById(Integer noticeId) {
        return noticeMapper.selectNoticeById(noticeId);
    }

    /**
     * 查询公告列表
     *
     * @param notice 公告信息
     * @return 公告集合
     */
    @Override
    public List<Notice> selectNoticeList(Notice notice) {
        return noticeMapper.selectNoticeList(notice);
    }

    /**
     * 新增公告
     *
     * @param notice 公告信息
     * @return 结果
     */
    @Override
    public int insertNotice(Notice notice) {
        return noticeMapper.insertNotice(notice);
    }

    /**
     * 修改公告
     *
     * @param notice 公告信息
     * @return 结果
     */
    @Override
    public int updateNotice(Notice notice) {
        return noticeMapper.updateNotice(notice);
    }

    /**
     * 保存公告
     *
     * @param notice 公告信息
     * @return 结果
     */
    @Override
    public int saveNotice(Notice notice) {
        Long noticeId = notice.getId();
        int rows = 0;
        if (StringUtils.isNotNull(noticeId)) {
            notice.setUpdateBy(ShiroUtils.getLoginName());
            // 修改公告
            rows = noticeMapper.updateNotice(notice);
        } else {
            notice.setCreateBy(ShiroUtils.getLoginName());
            // 新增公告
            rows = noticeMapper.insertNotice(notice);
        }
        return rows;
    }

    /**
     * 删除公告对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNoticeByIds(String ids) {
        return noticeMapper.deleteNoticeByIds(Convert.toStrArray(ids));
    }

}
