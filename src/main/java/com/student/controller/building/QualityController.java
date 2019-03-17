package com.student.controller.building;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 质量检查表
 */
@Controller
@RequestMapping(value = "/building/quality")
public class QualityController {

    private String prefix = "building/quality";

    @RequiresPermissions("building:quality:view")
    @PostMapping("/list")
    @ResponseBody
    public String list() {
        return "";
    }
}
