package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.ProductSecurity;
import com.student.entity.page.TableDataInfo;
import com.student.service.ProductSecurityService;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 安全检查
 */
@Controller
@RequestMapping(value = "/building/security")
public class ProductSecurityController extends BaseController {

    private String prefix = "building/security";
    
    @Autowired
    private ProductSecurityService productSecurityService;
    

    @RequiresPermissions("building:security:view")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String security() {
        return prefix + "/security";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProductSecurity productSecurity) {
        startPage();
        List<ProductSecurity> list = productSecurityService.selectProductSecurityList(productSecurity);
        return getDataTable(list);
    }

    @Log(title = "施工日志管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        ProductSecurity productSecurity = productSecurityService.selectProductSecurityById(id);
        model.addAttribute("productSecurity", productSecurity);
        return prefix + "/edit";
    }


    @Log(title = "添加项目", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @Log(title = "项目保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(ProductSecurity productSecurity) {
        return productSecurityService.save(productSecurity)==1?success():error();
    }


    @Log(title = "项目删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            productSecurityService.deleteProductSecurityByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
