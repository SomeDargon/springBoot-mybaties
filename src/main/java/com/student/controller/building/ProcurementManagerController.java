package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.ProcurementManager;
import com.student.service.ProcurementManagerService;
import com.student.web.result.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


/**
 * 采购管理
 *
 */
@Controller
@RequestMapping("/building/procurement")
public class ProcurementManagerController extends BaseController {

    private static final String prefix = "/building/procurement";

    @Autowired
    private ProcurementManagerService procurementManagerService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String procurement() {
        return prefix + "/procurement";
    }


    @Log(title = "采购管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        ProcurementManager procurementManager = procurementManagerService.selectProcurementManagerById(id);
        model.addAttribute("procurementManager", procurementManager);
        return prefix + "/edit";
    }


    @Log(title = "添加采购", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @Log(title = "采购保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(ProcurementManager procurementManager) {
        return procurementManagerService.insertProcurementManager(procurementManager)==1?success():error();
    }


    @Log(title = "采购删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            procurementManagerService.deleteProcurementManagerByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

}
