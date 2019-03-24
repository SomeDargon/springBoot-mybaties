package com.student.dao.mapper.building;

import com.student.entity.ProcurementManager;

import java.util.List;

public interface ProcurementManagerMapper {

    /**
     * 保存
     *
     * @param procurementManager
     */
    Integer insertProcurementManager(ProcurementManager procurementManager);

    /**
     * 根据条件分页查询项目对象
     *
     * @param procurementManager 用户信息
     * @return 项目信息集合信息
     */
    List<ProcurementManager> selectProcurementManagerList(ProcurementManager procurementManager);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteProcurementManagerById(Long id);

    /**
     * 修改
     *
     * @param procurementManager
     * @return 结果
     */
    int updateProcurementManager(ProcurementManager procurementManager);


    /**
     * id查询
     * @param id
     * @return
     */
    ProcurementManager selectProcurementManagerById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteProcurementManagerByIds(Long[] ids);
}
