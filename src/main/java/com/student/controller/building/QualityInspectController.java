package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.QualityInspect;
import com.student.entity.page.TableDataInfo;
import com.student.service.QualityInspectService;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 质量检查表
 */
@Controller
@RequestMapping(value = "/building/qualityInspect")
public class QualityInspectController extends BaseController {
    @Autowired
    private QualityInspectService qualityInspectService;

    private String prefix = "building/qualityInspect";

    @RequiresPermissions("building:quality:view")
    @PostMapping("/list")
    @ResponseBody
    public String list() {
        return "";
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String product() {
        return prefix + "/qualityInspect";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(QualityInspect qualityInspect) {
        startPage();
        List<QualityInspect> list = qualityInspectService.selectQualityInspectList(qualityInspect);
        return getDataTable(list);
    }

    @Log(title = "任务管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        QualityInspect qualityInspect = qualityInspectService.selectQualityInspectById(id);
        model.addAttribute("qualityInspect", qualityInspect);
        return prefix + "/edit";
    }


    @Log(title = "添加任务管理", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @Log(title = "任务管理保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(QualityInspect qualityInspect) {
        return qualityInspectService.save(qualityInspect)==1?success():error();
    }


    @Log(title = "任务管理删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            qualityInspectService.deleteQualityInspectByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
