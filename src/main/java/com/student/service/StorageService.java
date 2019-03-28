package com.student.service;

import com.student.entity.Storage;

import java.util.List;

public interface StorageService {
    /**
     * 查询信息
     *
     * @param id
     * @return
     */
    Storage selectStorageById(Long id);

    /**
     * 查询列表
     *
     * @param storage
     * @return
     */
    List<Storage> selectStorageList(Storage storage);

    /**
     * 保存文章
     *
     * @param storage 文章信息
     * @return 结果
     */
    int save(Storage storage);

    /**
     * 删除文章信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    void deleteStorageByIds(String ids);
}
