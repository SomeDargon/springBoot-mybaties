package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.Product;
import com.student.entity.page.TableDataInfo;
import com.student.service.PostService;
import com.student.service.ProductService;
import com.student.service.RoleService;
import com.student.service.UserService;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 项目信息
 *
 */
@Controller
@RequestMapping("/building/product")
public class ProductController extends BaseController {

    private String prefix = "building/product";

    @Autowired
    private ProductService productService;

    @RequiresPermissions("building:product:view")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String product() {
        return prefix + "/product";
    }

    @RequiresPermissions("building:product:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Product product) {
        startPage();
        List<Product> list = productService.selectProductList(product);
        return getDataTable(list);
    }


    @RequiresPermissions("building:product:edit")
    @Log(title = "项目管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        Product product = productService.selectProductById(id);
        model.addAttribute("product", product);
        return prefix + "/edit";
    }


    @RequiresPermissions("building:product:add")
    @Log(title = "添加项目", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @RequiresPermissions("building:product:save")
    @Log(title = "项目保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(Product product) {
        return productService.save(product)==1?success():error();
    }


    @RequiresPermissions("building:product:remove")
    @Log(title = "项目删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            productService.deleteProductByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 检查手机是否重复
     * @param product
     * @return
     */
    @PostMapping("/checkProductNumber")
    @ResponseBody
    public String checkProductNumber(Product product) {
        String uniqueFlag = "0";
        if (product != null) {
            uniqueFlag = productService.checkProductNumber(product);
        }
        return uniqueFlag;
    }
}