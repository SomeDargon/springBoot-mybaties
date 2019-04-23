package com.student.dao.mapper.building;


import com.student.entity.ProductSecurity;

import java.util.List;

public interface ProductSecurityMapper {
    /**
     * 保存 项目
     *
     * @param product
     */
    Integer insertProductSecurity(ProductSecurity product);

    /**
     * 根据条件分页查询项目对象
     *
     * @param product 用户信息
     * @return 项目信息集合信息
     */
    List<ProductSecurity> selectProductSecurityList(ProductSecurity product);


    List<ProductSecurity> selectProductSecurityListNotPass(ProductSecurity product);
    List<ProductSecurity> selectProductSecurityListPass(ProductSecurity product);

    /**
     * 批量删除用户信息
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteProductSecurityById(Long id);

    /**
     * 修改用户信息
     *
     * @param product 用户信息
     * @return 结果
     */
    int updateProductSecurity(ProductSecurity product);


    /**
     * id查询
     * @param id
     * @return
     */
    ProductSecurity selectProductSecurityById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteProductSecurityByIds(Long[] ids);
}
