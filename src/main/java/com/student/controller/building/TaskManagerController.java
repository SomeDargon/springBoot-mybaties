package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.dao.mapper.building.TaskManagerMapper;
import com.student.entity.TaskManager;
import com.student.entity.page.TableDataInfo;
import com.student.service.TaskManagerService;
import com.student.service.TaskManagerService;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 *  任务管理
 */
@Controller
@RequestMapping(value = "/building/taskManager")
public class TaskManagerController extends BaseController {

    private String prefix = "building/taskManager";

    @Autowired
    private TaskManagerService taskManagerService;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String product() {
        return prefix + "/taskManager";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TaskManager taskManager) {
        startPage();
        List<TaskManager> list = taskManagerService.selectTaskManagerList(taskManager);
        return getDataTable(list);
    }

    @Log(title = "任务管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        TaskManager taskManager = taskManagerService.selectTaskManagerById(id);
        model.addAttribute("taskManager", taskManager);
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
    public AjaxResult save(TaskManager taskManager) {
        return taskManagerService.save(taskManager)==1?success():error();
    }


    @Log(title = "任务管理删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            taskManagerService.deleteTaskManagerByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
