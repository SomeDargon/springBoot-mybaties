package com.student.service;

import com.student.entity.QualityInspect;

import java.util.List;

public interface QualityInspectService {

    /**
     * 保存
     *
     * @param qualityInspect
     * @return
     */
    Integer save(QualityInspect qualityInspect);

    /**
     * 更新
     *
     * @param qualityInspect
     * @return
     */
    Integer update(QualityInspect qualityInspect);

    /**
     * 删除
     *
     * @param ids
     * @return
     */
    void deleteQualityInspectByIds(String ids);

    /**
     * 查询列表
     *
     * @param qualityInspect
     * @return
     */
    List<QualityInspect> selectQualityInspectList(QualityInspect qualityInspect);

    /**
     * 查询id
     *
     * @param id
     * @return
     */
    QualityInspect selectQualityInspectById(Long id);
}
