package com.student.controller;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.entity.Notice;
import com.student.entity.page.TableDataInfo;
import com.student.service.NoticeService;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 公告 信息操作处理
 */
@Controller
@RequestMapping("/system/notice")
public class NoticeController extends BaseController {
    private String prefix = "system/notice";

    @Autowired
    private NoticeService noticeService;

    @RequiresPermissions("system:notice:view")
    @GetMapping()
    public String notice() {
        return prefix + "/notice";
    }

    /**
     * 查询公告列表
     */
    @RequiresPermissions("system:notice:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Notice notice) {
        startPage();
        List<Notice> list = noticeService.selectNoticeList(notice);
        return getDataTable(list);
    }

    /**
     * 新增公告
     */
    @RequiresPermissions("system:notice:add")
    @Log(title = "通知公告", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 修改公告
     */
    @RequiresPermissions("system:notice:edit")
    @Log(title = "通知公告", action = BusinessType.UPDATE)
    @GetMapping("/edit/{noticeId}")
    public String edit(@PathVariable("noticeId") Integer noticeId, Model model) {
        Notice notice = noticeService.selectNoticeById(noticeId);
        model.addAttribute("notice", notice);
        return prefix + "/edit";
    }

    /**
     * 保存公告
     */
    @RequiresPermissions("system:notice:save")
    @Log(title = "通知公告", action = BusinessType.SAVE)
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult save(Notice notice) {
        if (noticeService.saveNotice(notice) > 0) {
            return success();
        }
        return error();
    }

    /**
     * 删除公告
     */
    @RequiresPermissions("system:notice:remove")
    @Log(title = "通知公告", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        int rows = noticeService.deleteNoticeByIds(ids);
        if (rows > 0) {
            return success();
        }
        return error();
    }

}
