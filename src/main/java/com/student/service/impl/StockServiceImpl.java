package com.student.service.impl;

import com.student.dao.mapper.building.StockMapper;
import com.student.entity.Stock;
import com.student.service.StockService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StockServiceImpl implements StockService {

    @Autowired
    private StockMapper stockMapper;

    @Override
    public Stock selectStockById(Long id) {
        return stockMapper.selectStockById(id);
    }

    @Override
    public List<Stock> selectStockList(Stock stock) {
        return stockMapper.selectStockList(stock);
    }

    @Override
    public int insertStock(Stock stock) {
        return stockMapper.insertStock(stock);
    }

    @Override
    public int updateStock(Stock stock) {
        return stockMapper.updateStock(stock);
    }

    @Override
    public int saveStock(Stock stock) {
        return stockMapper.insertStock(stock);
    }

    @Override
    public void deleteStockByIds(String ids) {
        Long[] postIds = Convert.toLongArray(ids);
        stockMapper.deleteStockByIds(postIds);
    }
}
