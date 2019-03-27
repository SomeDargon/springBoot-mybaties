package com.student.dao.mapper.building;

import com.student.entity.Stock;

import java.util.List;

public interface StockMapper {

    /**
     * 保存
     *
     * @param stock
     */
    Integer insertStock(Stock stock);

    /**
     * 根据条件分页查询项目对象
     *
     * @param stock 用户信息
     * @return 项目信息集合信息
     */
    List<Stock> selectStockList(Stock stock);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteStockById(Long id);

    /**
     * 修改
     *
     * @param stock
     * @return 结果
     */
    int updateStock(Stock stock);


    /**
     * id查询
     * @param id
     * @return
     */
    Stock selectStockById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteStockByIds(Long[] ids);
}
