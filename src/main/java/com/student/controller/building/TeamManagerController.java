package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.TeamManager;
import com.student.entity.page.TableDataInfo;
import com.student.service.TeamManagerService;
import com.student.web.result.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 团队人员管理
 */
@Controller
@RequestMapping(value = "/building/teamManager")
public class TeamManagerController extends BaseController {

    private String prefix = "building/teamManager";

    @Autowired
    private TeamManagerService teamManagerService;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String product() {
        return prefix + "/teamManager";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeamManager teamManager) {
        startPage();
        List<TeamManager> list = teamManagerService.selectTeamManagerList(teamManager);
        return getDataTable(list);
    }

    @Log(title = "团队人员管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        TeamManager teamManager = teamManagerService.selectTeamManagerById(id);
        model.addAttribute("teamManager", teamManager);
        return prefix + "/edit";
    }


    @Log(title = "添加团队人员管理", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @Log(title = "团队人员管理保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(TeamManager teamManager) {
        return teamManagerService.save(teamManager)==1?success():error();
    }


    @Log(title = "团队人员管理删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
             teamManagerService.deleteTeamManagerByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
