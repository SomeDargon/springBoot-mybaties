package com.student.controller;


import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.entity.User;
import com.student.service.UserService;
import com.student.util.ServletUtils;
import com.student.util.StringUtils;
import com.student.web.result.AjaxResult;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @GetMapping("/welcome")
    public String main() {
        return "welcome";
    }

    @GetMapping("/registry")
    public String registry() {
        return "registry";
    }

    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response, Model model) {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest((HttpServletRequest) request)) {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }

        return "login";
    }




    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe) {
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            return success();
        } catch (AuthenticationException e) {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage())) {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }

    /**
     * 校验用户名
     */
    @PostMapping("/registry/checkLoginNameUnique")
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
    @PostMapping("/registry/checkPhoneUnique")
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
    @PostMapping("/registry/checkEmailUnique")
    @ResponseBody
    public String checkEmailUnique(User user) {
        String uniqueFlag = "0";
        if (user != null) {
            uniqueFlag = userService.checkEmailUnique(user);
        }
        return uniqueFlag;
    }

    @PostMapping("/registry/save")
    @ResponseBody
    public AjaxResult registry(User user) {
        return userService.registryUser(user) > 0 ? success() : error();
    }
}
