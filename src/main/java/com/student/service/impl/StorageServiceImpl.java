package com.student.service.impl;

import com.student.dao.mapper.building.StorageMapper;
import com.student.entity.Storage;
import com.student.service.StorageService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StorageServiceImpl implements StorageService {

    @Autowired
    private StorageMapper storageMapper;

    @Override
    public Storage selectStorageById(Long id) {
        return storageMapper.selectStorageById(id);
    }

    @Override
    public List<Storage> selectStorageList(Storage storage) {
        return storageMapper.selectStorageList(storage);
    }

    @Override
    public int save(Storage storage) {
        if (storage.getId() != null) return storageMapper.updateStorage(storage);
        return storageMapper.insertStorage(storage);
    }

    @Override
    public void deleteStorageByIds(String ids) {
        Long[] postIds = Convert.toLongArray(ids);
        storageMapper.deleteStorageByIds(postIds);
    }
}
