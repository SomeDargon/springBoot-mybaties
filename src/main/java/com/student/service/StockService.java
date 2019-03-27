package com.student.service;

import com.student.entity.Stock;

import java.util.List;

public interface StockService {

    /**
     * 查询信息
     *
     * @param id
     * @return
     */
    Stock selectStockById(Long id);

    /**
     * 查询列表
     *
     * @param stock
     * @return
     */
    List<Stock> selectStockList(Stock stock);

    /**
     * 新增
     *
     * @param stock
     * @return
     */
    int insertStock(Stock stock);

    /**
     * 修改
     *
     * @param stock
     * @return 结果
     */
    int updateStock(Stock stock);

    /**
     * 保存文章
     *
     * @param stock 文章信息
     * @return 结果
     */
    int saveStock(Stock stock);

    /**
     * 删除文章信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    void deleteStockByIds(String ids);
}
