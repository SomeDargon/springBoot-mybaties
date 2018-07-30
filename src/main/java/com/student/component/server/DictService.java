package com.student.component.server;

import com.student.entity.DictData;
import com.student.service.DictDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * html调用 thymeleaf 实现字典读取
 */
@Component
public class DictService {
    @Autowired
    private DictDataService dictDataService;

    /**
     * 根据字典类型查询字典数据信息
     *
     * @param dictType 字典类型
     * @return 参数键值
     */
    public List<DictData> selectDictData(String dictType) {
        return dictDataService.selectDictDataByType(dictType);
    }
}
