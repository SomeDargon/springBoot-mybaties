package com.student.service.impl;

import com.student.dao.mapper.building.ProcurementManagerMapper;
import com.student.entity.ProcurementManager;
import com.student.service.ProcurementManagerService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProcurementManagerServiceImpl implements ProcurementManagerService {

    @Autowired
    private ProcurementManagerMapper procurementManagerMapper;

    @Override
    public ProcurementManager selectProcurementManagerById(Long id) {
        return procurementManagerMapper.selectProcurementManagerById(id);
    }

    @Override
    public List<ProcurementManager> selectProcurementManagerList(ProcurementManager procurementManager) {
        return procurementManagerMapper.selectProcurementManagerList(procurementManager);
    }

    @Override
    public int save(ProcurementManager procurementManager) {
        if (procurementManager.getId() != null) return procurementManagerMapper.updateProcurementManager(procurementManager);
        return procurementManagerMapper.insertProcurementManager(procurementManager);
    }

    @Override
    public void deleteProcurementManagerByIds(String ids) {
        Long[] postIds = Convert.toLongArray(ids);
        procurementManagerMapper.deleteProcurementManagerByIds(postIds);
    }
}
