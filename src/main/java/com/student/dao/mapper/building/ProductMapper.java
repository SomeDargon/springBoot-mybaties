package com.student.dao.mapper.building;


import com.student.entity.Product;

/**
 * Created by somedragon on 2019/3/3.
 */
public interface ProductMapper {

    /**
     * 通过项目编号查看 项目
     *
     * @param productNumber 项目编号
     * @return 项目信息
     */
    Product checkProductNumberUnique(String productNumber);

    /**
     * 保存 项目
     *
     * @param product
     */
    Integer insertProduct(Product product);

}
