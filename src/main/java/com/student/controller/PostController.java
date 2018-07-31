package com.student.controller;


import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.entity.Post;
import com.student.entity.page.TableDataInfo;
import com.student.service.PostService;
import com.student.util.poi.ExcelUtil;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 岗位信息操作处理
 */
@Controller
@RequestMapping("/system/post")
public class PostController extends BaseController {
    private String prefix = "system/post";

    @Autowired
    private PostService postService;

    @RequiresPermissions("system:post:view")
    @GetMapping()
    public String operlog() {
        return prefix + "/post";
    }

    @RequiresPermissions("system:post:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Post post) {
        startPage();
        List<Post> list = postService.selectPostList(post);
        return getDataTable(list);
    }

    @Log(title = "岗位管理", action = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Post post) throws Exception {
        try {
            List<Post> list = postService.selectPostList(post);
            ExcelUtil<Post> util = new ExcelUtil<Post>(Post.class);
            return util.exportExcel(list, "post");
        } catch (Exception e) {
            return error("导出Excel失败，请联系网站管理员！");
        }
    }

    @RequiresPermissions("system:post:remove")
    @Log(title = "岗位管理", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            postService.deletePostByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 新增岗位
     */
    @Log(title = "岗位管理", action = BusinessType.INSERT)
    @RequiresPermissions("system:post:add")
    @GetMapping("/add")
    public String add(Model model) {
        return prefix + "/add";
    }

    /**
     * 修改岗位
     */
    @Log(title = "岗位管理", action = BusinessType.UPDATE)
    @RequiresPermissions("system:post:edit")
    @GetMapping("/edit/{postId}")
    public String edit(@PathVariable("postId") Long postId, Model model) {
        Post post = postService.selectPostById(postId);
        model.addAttribute("post", post);
        return prefix + "/edit";
    }

    /**
     * 保存岗位
     */
    @Log(title = "岗位管理", action = BusinessType.SAVE)
    @RequiresPermissions("system:post:save")
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult save(Post post) {
        if (postService.savePost(post) > 0) {
            return success();
        }
        return error();
    }

}
