package com.student.service.impl;

import com.student.constant.UserConstants;
import com.student.dao.mapper.building.ProductMapper;
import com.student.entity.Dept;
import com.student.entity.Product;
import com.student.service.ProductService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 *  服务管理 服务层
 * @author somedragon
 * @date 2019/3/3
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public String checkProductNumber(Product product){
        if (product.getId() == null) {
            product.setId(-1L);
        }
        Long userId = product.getId();
        Product info = productMapper.checkProductNumberUnique(product.getProductName());
        if (StringUtils.isNotNull(info) && StringUtils.isNotNull(info.getId())
                && info.getId().longValue() != userId.longValue()) {
            return UserConstants.PRODUCT_NUMBER_NOT_UNIQUE;
        }
        return UserConstants.PRODUCT_NUMBER_UNIQUE;
    }

    @Override
    public Integer save(Product product) {
        if (product.getId() !=null ) return productMapper.updateProduct(product);
        return productMapper.insertProduct(product);
    }

    @Override
    public Integer update(Product product) {
        return productMapper.updateProduct(product);
    }

    @Override
    public void deleteProductByIds(String ids) {
        Long[] proIds = Convert.toLongArray(ids);
        productMapper.deleteProductByIds(proIds);
    }


    @Override
    public List<Product> selectProductList(Product product) {
        return productMapper.selectProductList(product);
    }

    @Override
    public Product selectProductById(Long id) {
        return productMapper.selectProductById(id);
    }

    @Override
    public List<Map<String, Object>> selectProductTree() {
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        List<Product> products = productMapper.selectProductAll();
        for (Product product : products) {
                Map<String, Object> deptMap = new HashMap<String, Object>();
                deptMap.put("id", product.getId());
                deptMap.put("pId", "");
                deptMap.put("name", product.getProductName());
                deptMap.put("title", product.getProductName());
                trees.add(deptMap);
        }
        return trees;
    }
}
