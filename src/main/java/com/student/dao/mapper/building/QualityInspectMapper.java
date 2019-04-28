package com.student.dao.mapper.building;

import com.student.entity.QualityInspect;

import java.util.List;

public interface QualityInspectMapper {
    /**
     * 保存
     *
     * @param qualityInspect
     */
    Integer insertQualityInspect(QualityInspect qualityInspect);

    /**
     * 根据条件分页查询项目对象
     *
     * @param qualityInspect 用户信息
     * @return 项目信息集合信息
     */
    List<QualityInspect> selectQualityInspectList(QualityInspect qualityInspect);
    List<QualityInspect> selectQualityInspectListNotPass(QualityInspect qualityInspect);
    List<QualityInspect> selectQualityInspectListPass(QualityInspect qualityInspect);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteQualityInspectById(Long id);

    /**
     * 修改
     *
     * @param qualityInspect
     * @return 结果
     */
    int updateQualityInspect(QualityInspect qualityInspect);


    /**
     * id查询
     * @param id
     * @return
     */
    QualityInspect selectQualityInspectById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteQualityInspectByIds(Long[] ids);
}
