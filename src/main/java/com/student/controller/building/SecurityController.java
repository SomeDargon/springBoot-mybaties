package com.student.controller.building;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 安全检查
 */
@Controller
@RequestMapping(value = "/building/security")
public class SecurityController {

    private String prefix = "building/security";

    @RequiresPermissions("building:security:view")
    @PostMapping("/list")
    @ResponseBody
    public String list() {
        return "";
    }
}
