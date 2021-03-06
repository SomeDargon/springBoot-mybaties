package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.ProjectWorkLog;
import com.student.entity.User;
import com.student.entity.page.TableDataInfo;
import com.student.service.ProjectWorkLogService;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 施工日志
 *
 */
@Controller
@RequestMapping(value = "/building/workLog")
public class ProjectWorkLogController extends BaseController {

    private String prefix = "building/workLog";

    @Autowired
    private ProjectWorkLogService projectWorkLogService;


    @RequiresPermissions("building:product:view")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String product() {
        return prefix + "/workLog";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProjectWorkLog projectWorkLog) {
		startPage();
        List<ProjectWorkLog> list = projectWorkLogService.selectProjectWorkLogList(projectWorkLog);
        return getDataTable(list);
    }

    @Log(title = "施工日志管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        ProjectWorkLog projectWorkLog = projectWorkLogService.selectProjectWorkLogById(id);
        model.addAttribute("projectWorkLog", projectWorkLog);
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
    public AjaxResult save(ProjectWorkLog projectWorkLog) {
        return projectWorkLogService.save(projectWorkLog)==1?success():error();
    }


    @Log(title = "项目删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            projectWorkLogService.deleteProjectWorkLogByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
