package com.student.controller;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.entity.Post;
import com.student.entity.Role;
import com.student.entity.User;
import com.student.entity.page.TableDataInfo;
import com.student.service.PostService;
import com.student.service.RoleService;
import com.student.service.UserService;
import com.student.util.StringUtils;
import com.student.util.poi.ExcelUtil;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 用户信息
 *
 */
@Controller
@RequestMapping("/system/user")
public class UserController extends BaseController {
    private String prefix = "system/user";

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PostService postService;

    @RequiresPermissions("system:user:view")
    @GetMapping()
    public String user() {
        return prefix + "/user";
    }

    @RequiresPermissions("system:user:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(User user) {
        startPage();
        List<User> list = userService.selectUserList(user);
        return getDataTable(list);
    }

    @Log(title = "用户管理", action = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(User user) throws Exception {
        try {
            List<User> list = userService.selectUserList(user);
            ExcelUtil<User> util = new ExcelUtil<User>(User.class);
            return util.exportExcel(list, "user");
        } catch (Exception e) {
            return error("导出Excel失败，请联系网站管理员！");
        }
    }

    /**
     * 修改用户
     */
    @RequiresPermissions("system:user:edit")
    @Log(title = "用户管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{userId}")
    public String edit(@PathVariable("userId") Long userId, Model model) {
        User user = userService.selectUserById(userId);
        List<Role> roles = roleService.selectRolesByUserId(userId);
        List<Post> posts = postService.selectPostsByUserId(userId);
        model.addAttribute("roles", roles);
        model.addAttribute("posts", posts);
        model.addAttribute("user", user);
        return prefix + "/edit";
    }

    /**
     * 新增用户
     */
    @RequiresPermissions("system:user:add")
    @Log(title = "用户管理", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add(Model model) {
        List<Role> roles = roleService.selectRoleAll();
        List<Post> posts = postService.selectPostAll();
        model.addAttribute("roles", roles);
        model.addAttribute("posts", posts);
        return prefix + "/add";
    }

    @RequiresPermissions("system:user:resetPwd")
    @Log(title = "重置密码", action = BusinessType.UPDATE)
    @GetMapping("/resetPwd/{userId}")
    public String resetPwd(@PathVariable("userId") Long userId, Model model) {
        User user = userService.selectUserById(userId);
        model.addAttribute("user", user);
        return prefix + "/resetPwd";
    }

    @RequiresPermissions("system:user:resetPwd")
    @Log(title = "重置密码", action = BusinessType.SAVE)
    @PostMapping("/resetPwd")
    @ResponseBody
    public AjaxResult resetPwd(User user) {
        int rows = userService.resetUserPwd(user);
        if (rows > 0) {
            return success();
        }
        return error();
    }

    @RequiresPermissions("system:user:remove")
    @Log(title = "用户管理", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            userService.deleteUserByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 保存用户
     */
    @RequiresPermissions("system:user:save")
    @Log(title = "用户管理", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(User user) {
        if (StringUtils.isNotNull(user.getId()) && User.isAdmin(user.getId())) {
            return error("不允许修改超级管理员用户");
        }
        return userService.saveUser(user) > 0 ? success() : error();
    }

    /**
     * 校验用户名
     */
    @PostMapping("/checkLoginNameUnique")
    @ResponseBody
    public String checkLoginNameUnique(User user) {
        String uniqueFlag = "0";
        if (user != null) {
            uniqueFlag = userService.checkLoginNameUnique(user.getLoginName());
        }
        return uniqueFlag;
    }

    /**
     * 校验手机号码
     */
    @PostMapping("/checkPhoneUnique")
    @ResponseBody
    public String checkPhoneUnique(User user) {
        String uniqueFlag = "0";
        if (user != null) {
            uniqueFlag = userService.checkPhoneUnique(user);
        }
        return uniqueFlag;
    }

    /**
     * 校验email邮箱
     */
    @PostMapping("/checkEmailUnique")
    @ResponseBody
    public String checkEmailUnique(User user) {
        String uniqueFlag = "0";
        if (user != null) {
            uniqueFlag = userService.checkEmailUnique(user);
        }
        return uniqueFlag;
    }
}