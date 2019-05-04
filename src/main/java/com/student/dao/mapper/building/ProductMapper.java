package com.student.dao.mapper.building;


import com.student.entity.Product;

import java.util.List;

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

    /**
     * 根据条件分页查询项目对象
     *
     * @param product 用户信息
     * @return 项目信息集合信息
     */
    List<Product> selectProductList(Product product);

    /**
     * 批量删除用户信息
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteProductById(Long id);

    /**
     * 修改用户信息
     *
     * @param product 用户信息
     * @return 结果
     */
    int updateProduct(Product product);


    /**
     * id查询
     * @param id
     * @return
     */
    Product selectProductById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteProductByIds(Long[] ids);

    List<Product> selectProductAll();

}
