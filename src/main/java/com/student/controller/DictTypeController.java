package com.student.controller;


import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.entity.DictType;
import com.student.entity.page.TableDataInfo;
import com.student.service.DictTypeService;
import com.student.util.poi.ExcelUtil;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 数据字典信息
 */
@Controller
@RequestMapping("/system/dict")
public class DictTypeController extends BaseController {
    private String prefix = "system/dict/type";

    @Autowired
    private DictTypeService dictTypeService;

    @RequiresPermissions("system:dict:view")
    @GetMapping()
    public String dictType() {
        return prefix + "/type";
    }

    @PostMapping("/list")
    @RequiresPermissions("system:dict:list")
    @ResponseBody
    public TableDataInfo list(DictType dictType) {
        startPage();
        List<DictType> list = dictTypeService.selectDictTypeList(dictType);
        return getDataTable(list);
    }

    @Log(title = "字典类型", action = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DictType dictType) throws Exception {
        try {
            List<DictType> list = dictTypeService.selectDictTypeList(dictType);
            ExcelUtil<DictType> util = new ExcelUtil<DictType>(DictType.class);
            return util.exportExcel(list, "dictType");
        } catch (Exception e) {
            return error("导出Excel失败，请联系网站管理员！");
        }
    }

    /**
     * 修改字典类型
     */
    @Log(title = "字典类型", action = BusinessType.UPDATE)
    @RequiresPermissions("system:dict:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long dictId, Model model) {
        DictType dict = dictTypeService.selectDictTypeById(dictId);
        model.addAttribute("dict", dict);
        return prefix + "/edit";
    }

    /**
     * 新增字典类型
     */
    @Log(title = "字典类型", action = BusinessType.INSERT)
    @RequiresPermissions("system:dict:add")
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 保存字典类型
     */
    @Log(title = "字典类型", action = BusinessType.SAVE)
    @RequiresPermissions("system:dict:save")
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult save(DictType dict) {
        if (dictTypeService.saveDictType(dict) > 0) {
            return success();
        }
        return error();
    }

    @Log(title = "字典类型", action = BusinessType.DELETE)
    @RequiresPermissions("system:dict:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            dictTypeService.deleteDictTypeByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 查询字典详细
     */
    @RequiresPermissions("system:dict:list")
    @GetMapping("/detail/{dictId}")
    public String detail(@PathVariable("dictId") Long dictId, Model model) {
        DictType dict = dictTypeService.selectDictTypeById(dictId);
        List<DictType> dictTypeList = dictTypeService.selectDictTypeAll();
        model.addAttribute("dict", dict);
        model.addAttribute("dictList", dictTypeList);
        return "system/dict/data/data";
    }

    /**
     * 校验字典类型
     */
    @PostMapping("/checkDictTypeUnique")
    @ResponseBody
    public String checkDictTypeUnique(DictType dictType) {
        String uniqueFlag = "0";
        if (dictType != null) {
            uniqueFlag = dictTypeService.checkDictTypeUnique(dictType);
        }
        return uniqueFlag;
    }
}
