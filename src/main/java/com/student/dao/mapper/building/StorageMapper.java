package com.student.dao.mapper.building;

import com.student.entity.Storage;

import java.util.List;

public interface StorageMapper {

    /**
     * 保存
     *
     * @param storage
     */
    Integer insertStorage(Storage storage);

    /**
     * 根据条件分页查询项目对象
     *
     * @param storage 用户信息
     * @return 项目信息集合信息
     */
    List<Storage> selectStorageList(Storage storage);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteStorageById(Long id);

    /**
     * 修改
     *
     * @param storage
     * @return 结果
     */
    int updateStorage(Storage storage);


    /**
     * id查询
     * @param id
     * @return
     */
    Storage selectStorageById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteStorageByIds(Long[] ids);
}
