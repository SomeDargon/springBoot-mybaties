package com.student.service.impl;


import com.student.constant.UserConstants;
import com.student.dao.mapper.DictDataMapper;
import com.student.dao.mapper.DictTypeMapper;
import com.student.entity.DictType;
import com.student.service.DictTypeService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import com.student.util.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 字典 业务层处理
 *
 * @author ruoyi
 */
@Service("dictTypeService")
public class DictTypeServiceImpl implements DictTypeService {
    @Autowired
    private DictTypeMapper dictTypeMapper;

    @Autowired
    private DictDataMapper dictDataMapper;

    /**
     * 根据条件分页查询字典类型
     *
     * @param dictType 字典类型信息
     * @return 字典类型集合信息
     */
    @Override
    public List<DictType> selectDictTypeList(DictType dictType) {
        return dictTypeMapper.selectDictTypeList(dictType);
    }

    /**
     * 根据所有字典类型
     *
     * @return 字典类型集合信息
     */
    @Override
    public List<DictType> selectDictTypeAll() {
        return dictTypeMapper.selectDictTypeAll();
    }

    /**
     * 根据字典类型ID查询信息
     *
     * @param dictId 字典类型ID
     * @return 字典类型
     */
    @Override
    public DictType selectDictTypeById(Long dictId) {
        return dictTypeMapper.selectDictTypeById(dictId);
    }

    /**
     * 通过字典ID删除字典信息
     *
     * @param dictId 字典ID
     * @return 结果
     */
    @Override
    public int deleteDictTypeById(Long dictId) {
        return dictTypeMapper.deleteDictTypeById(dictId);
    }

    /**
     * 批量删除字典类型
     *
     * @param ids 需要删除的数据
     * @return 结果
     */
    @Override
    public int deleteDictTypeByIds(String ids) throws Exception {
        Long[] dictIds = Convert.toLongArray(ids);
        for (Long dictId : dictIds) {
            DictType dictType = selectDictTypeById(dictId);
            if (dictDataMapper.countDictDataByType(dictType.getDictType()) > 0) {
                throw new Exception(String.format("%1$s已分配,不能删除", dictType.getDictName()));
            }
        }

        return dictTypeMapper.deleteDictTypeByIds(dictIds);
    }

    /**
     * 保存字典类型信息
     *
     * @param dictType 字典类型信息
     * @return 结果
     */
    @Override
    public int saveDictType(DictType dictType) {
        Long dictId = dictType.getId();
        if (StringUtils.isNotNull(dictId)) {
            dictType.setUpdateBy(ShiroUtils.getLoginName());
            return dictTypeMapper.updateDictType(dictType);
        } else {
            dictType.setCreateBy(ShiroUtils.getLoginName());
            return dictTypeMapper.insertDictType(dictType);
        }
    }

    /**
     * 校验字典类型称是否唯一
     *
     * @param dict 字典类型
     * @return 结果
     */
    @Override
    public String checkDictTypeUnique(DictType dict) {
        if (dict.getId() == null) {
            dict.setId(-1L);
        }
        Long dictId = dict.getId();
        DictType dictType = dictTypeMapper.checkDictTypeUnique(dict.getDictType());
        if (StringUtils.isNotNull(dictType) && dictType.getId() != dictId) {
            return UserConstants.DICT_TYPE_NOT_UNIQUE;
        }
        return UserConstants.DICT_TYPE_UNIQUE;
    }
}
