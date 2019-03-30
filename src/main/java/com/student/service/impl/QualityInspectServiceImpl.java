package com.student.service.impl;

import com.student.dao.mapper.building.QualityInspectMapper;
import com.student.entity.QualityInspect;
import com.student.service.QualityInspectService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QualityInspectServiceImpl implements QualityInspectService {
    @Autowired
    private QualityInspectMapper qualityInspectMapper;

    @Override
    public Integer save(QualityInspect qualityInspect) {
        if (qualityInspect.getId() != null) return qualityInspectMapper.updateQualityInspect(qualityInspect);
        return qualityInspectMapper.insertQualityInspect(qualityInspect);
    }

    @Override
    public Integer update(QualityInspect qualityInspect) {
        return qualityInspectMapper.updateQualityInspect(qualityInspect);
    }

    @Override
    public void deleteQualityInspectByIds(String ids) {
        Long[] proIds = Convert.toLongArray(ids);
        qualityInspectMapper.deleteQualityInspectByIds(proIds);
    }

    @Override
    public List<QualityInspect> selectQualityInspectList(QualityInspect qualityInspect) {
        return qualityInspectMapper.selectQualityInspectList(qualityInspect);
    }

    @Override
    public QualityInspect selectQualityInspectById(Long id) {
        return qualityInspectMapper.selectQualityInspectById(id);
    }
}
