package com.student.controller.monitor;


import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.JobLog;
import com.student.entity.page.TableDataInfo;
import com.student.service.JobLogService;
import com.student.util.poi.ExcelUtil;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 调度日志操作处理
 */
@Controller
@RequestMapping("/monitor/jobLog")
public class JobLogController extends BaseController {
    private String prefix = "monitor/job";

    @Autowired
    private JobLogService jobLogService;

    @RequiresPermissions("monitor:job:view")
    @GetMapping()
    public String jobLog() {
        return prefix + "/jobLog";
    }

    @RequiresPermissions("monitor:job:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobLog jobLog) {
        startPage();
        List<JobLog> list = jobLogService.selectJobLogList(jobLog);
        return getDataTable(list);
    }

    @Log(title = "调度日志", action = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(JobLog jobLog) throws Exception {
        try {
            List<JobLog> list = jobLogService.selectJobLogList(jobLog);
            ExcelUtil<JobLog> util = new ExcelUtil<JobLog>(JobLog.class);
            return util.exportExcel(list, "jobLog");
        } catch (Exception e) {
            return error("导出Excel失败，请联系网站管理员！");
        }
    }

    @Log(title = "调度日志", action = BusinessType.DELETE)
    @RequiresPermissions("monitor:job:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            jobLogService.deleteJobLogByIds(ids);
            return success();
        } catch (Exception e) {
            e.printStackTrace();
            return error(e.getMessage());
        }
    }
}
