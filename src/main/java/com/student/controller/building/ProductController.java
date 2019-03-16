package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.Post;
import com.student.entity.Product;
import com.student.entity.Role;
import com.student.entity.User;
import com.student.entity.page.TableDataInfo;
import com.student.service.PostService;
import com.student.service.ProductService;
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
 * @author somedragon
 */
@Controller
@RequestMapping("/building/product")
public class ProductController extends BaseController {
    private String prefix = "building/product";

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PostService postService;

    @Autowired
    private ProductService productService;

    @RequiresPermissions("system:user:view")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String product() {
        return prefix + "/product";
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
    public AjaxResult export(User user) {
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


    @RequiresPermissions("building:product:add")
    @Log(title = "添加项目", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @RequiresPermissions("building:product:save")
    @Log(title = "项目保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(Product product) {
        return productService.save(product)==1?success():error();
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
     * 检查手机是否重复
     * @param product
     * @return
     */
    @PostMapping("/checkProductNumber")
    @ResponseBody
    public String checkProductNumber(Product product) {
        String uniqueFlag = "0";
        if (product != null) {
            uniqueFlag = productService.checkProductNumber(product);
        }
        return uniqueFlag;
    }
}