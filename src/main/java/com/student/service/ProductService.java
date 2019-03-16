package com.student.service;

import com.student.entity.Product;

/**
 *
 * 项目管理 业务层
 * @author somedragon
 * @date 2019/3/3
 *
 */
public interface ProductService {

    /**
     * 检查服务编号是否重复
     *
     * @param product
     * @return
     */
    String checkProductNumber(Product product);

    /**
     * 保存
     *
     * @param product
     * @return
     */
    Integer save(Product product);
}
