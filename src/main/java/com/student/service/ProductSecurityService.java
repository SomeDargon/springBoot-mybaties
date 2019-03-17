package com.student.service;


import com.student.entity.ProductSecurity;

import java.util.List;

public interface ProductSecurityService {

    /**
     * 保存
     *
     * @param product
     * @return
     */
    Integer save(ProductSecurity product);

    /**
     * 更新
     * @param product
     * @return
     */
    Integer update(ProductSecurity product);

    /**
     * 删除
     * @param ids
     * @return
     */
    void deleteProductSecurityByIds(String ids);

    /**
     * 查询列表
     * @param product
     * @return
     */
    List<ProductSecurity> selectProductSecurityList(ProductSecurity product);

    /**
     * 查询id
     * @param id
     * @return
     */
    ProductSecurity selectProductSecurityById(Long id);
}
