package com.student.controller;

import com.student.config.StudentConfig;
import com.student.entity.Menu;
import com.student.entity.User;
import com.student.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * 首页 业务处理
 */
@Controller
public class IndexController extends BaseController {
    @Autowired
    private MenuService menuService;

    @Autowired
    private StudentConfig studentConfig;

    // 系统首页
    @GetMapping("/index")
    public String index(Model model) {
        // 取身份信息
        User user = getUser();
        // 根据用户id取出菜单
        List<Menu> menus = menuService.selectMenusByUserId(user.getId());
        model.addAttribute("menus", menus);
        model.addAttribute("user", user);
        model.addAttribute("copyrightYear", studentConfig.getCopyrightYear());
        return "index";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(Model model) {
        model.addAttribute("version", studentConfig.getVersion());
        return "main";
    }

}
