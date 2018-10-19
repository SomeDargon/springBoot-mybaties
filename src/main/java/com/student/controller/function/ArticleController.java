package com.student.controller.function;


import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.Notice;
import com.student.entity.User;
import com.student.entity.article.Article;
import com.student.entity.page.TableDataInfo;
import com.student.service.ArticleService;
import com.student.service.NoticeService;
import com.student.util.FileUploadUtils;
import com.student.web.result.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 文章 管理

 */
@Controller
@RequestMapping("/function/article")
public class ArticleController extends BaseController {

    private String prefix = "function/article";

    @Autowired
    private ArticleService articleService;

    @RequiresPermissions("function:article:view")
    @GetMapping()
    public String notice()
    {
        return prefix + "/article";
    }


    /**
     * 查询文章列表
     */
    @RequiresPermissions("function:article:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Article article) {
        startPage();
        List<Article> list = articleService.selectArticleList(article);
        return getDataTable(list);
    }


    /**
     * 新增文章
     */
    @RequiresPermissions("function:article:add")
    @Log(title = "通知文章", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    /**
     * 新增文章
     */
    @RequiresPermissions("function:article:add")
    @Log(title = "通知文章", action = BusinessType.INSERT)
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult updateAvatar(Article article, @RequestParam("image") MultipartFile file) {
        try {
            if (!file.isEmpty()) {
                String avatar = FileUploadUtils.upload(file);
                System.out.println(avatar);
            }
            return error();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }


    /**
     * 修改公告
     */
    @RequiresPermissions("function:article:edit")
    @Log(title = "通知文章", action = BusinessType.UPDATE)
    @GetMapping("/edit/{articleId}")
    public String edit(@PathVariable("articleId") Integer articleId, Model model) {
        Article article = articleService.selectArticleById(articleId);
        model.addAttribute("article", article);
        return prefix + "/edit";
    }



}
