package com.student.controller;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.entity.DictData;
import com.student.entity.page.TableDataInfo;
import com.student.service.DictDataService;
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
@RequestMapping("/system/dict/data")
public class DictDataController extends BaseController {
    private String prefix = "system/dict/data";

    @Autowired
    private DictDataService dictDataService;

    @RequiresPermissions("system:dict:view")
    @GetMapping()
    public String dictData() {
        return prefix + "/data";
    }

    @PostMapping("/list")
    @RequiresPermissions("system:dict:list")
    @ResponseBody
    public TableDataInfo list(DictData dictData) {
        startPage();
        List<DictData> list = dictDataService.selectDictDataList(dictData);
        return getDataTable(list);
    }

    @Log(title = "字典数据", action = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DictData dictData) throws Exception {
        try {
            List<DictData> list = dictDataService.selectDictDataList(dictData);
            ExcelUtil<DictData> util = new ExcelUtil<>(DictData.class);
            return util.exportExcel(list, "dictData");
        } catch (Exception e) {
            return error("导出Excel失败，请联系网站管理员！");
        }
    }

    /**
     * 修改字典类型
     */
    @Log(title = "字典数据", action = BusinessType.UPDATE)
    @RequiresPermissions("system:dict:edit")
    @GetMapping("/edit/{dictCode}")
    public String edit(@PathVariable("dictCode") Long dictCode, Model model) {
        DictData dict = dictDataService.selectDictDataById(dictCode);
        model.addAttribute("dict", dict);
        return prefix + "/edit";
    }

    /**
     * 新增字典类型
     */
    @Log(title = "字典数据", action = BusinessType.INSERT)
    @RequiresPermissions("system:dict:add")
    @GetMapping("/add/{dictType}")
    public String add(@PathVariable("dictType") String dictType, Model model) {
        model.addAttribute("dictType", dictType);
        return prefix + "/add";
    }

    /**
     * 保存字典类型
     */
    @Log(title = "字典数据", action = BusinessType.SAVE)
    @RequiresPermissions("system:dict:save")
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult save(DictData dict) {
        if (dictDataService.saveDictData(dict) > 0) {
            return success();
        }
        return error();
    }

    @Log(title = "字典数据", action = BusinessType.DELETE)
    @RequiresPermissions("system:dict:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        int rows = dictDataService.deleteDictDataByIds(ids);
        if (rows > 0) {
            return success();
        }
        return error();
    }
}
