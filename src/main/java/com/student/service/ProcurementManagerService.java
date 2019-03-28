package com.student.service;

import com.student.entity.ProcurementManager;

import java.util.List;

public interface ProcurementManagerService {

    /**
     * 查询采购信息
     *
     * @param id
     * @return
     */
    ProcurementManager selectProcurementManagerById(Long id);

    /**
     * 查询采购列表
     *
     * @param procurementManager
     * @return
     */
    List<ProcurementManager> selectProcurementManagerList(ProcurementManager procurementManager);

    /**
     * 新增
     *
     * @param procurementManager
     * @return
     */
    int save(ProcurementManager procurementManager);


    /**
     * 删除文章信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    void deleteProcurementManagerByIds(String ids);
}
