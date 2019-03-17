package com.student.service.impl;

import com.student.dao.mapper.building.ProductSecurityMapper;
import com.student.entity.ProductSecurity;
import com.student.service.ProductSecurityService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductSecurityServiceImpl implements ProductSecurityService {

    @Autowired
    private ProductSecurityMapper productSercurityMapper;



    @Override
    public Integer save(ProductSecurity product) {
        return productSercurityMapper.insertProductSecurity(product);
    }

    @Override
    public Integer update(ProductSecurity product) {
        return productSercurityMapper.updateProductSecurity(product);
    }

    @Override
    public void deleteProductSecurityByIds(String ids) {
        Long[] proIds = Convert.toLongArray(ids);
        productSercurityMapper.deleteProductSecurityByIds(proIds);
    }

    @Override
    public List<ProductSecurity> selectProductSecurityList(ProductSecurity product) {
        return productSercurityMapper.selectProductSecurityList(product);
    }

    @Override
    public ProductSecurity selectProductSecurityById(Long id) {
        return productSercurityMapper.selectProductSecurityById(id);
    }
}
