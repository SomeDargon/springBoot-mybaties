package com.student.service;

import com.student.entity.Product;

import java.util.List;

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

    /**
     * 更新
     * @param product
     * @return
     */
    Integer update(Product product);

    /**
     * 删除
     * @param ids
     * @return
     */
    void deleteProductByIds(String ids);

    /**
     * 查询列表
     * @param product
     * @return
     */
    List<Product> selectProductList(Product product);

    /**
     * 查询id
     * @param id
     * @return
     */
    Product selectProductById(Long id);
}
