package com.student.controller;


import com.student.entity.Notice;
import com.student.entity.article.Article;
import com.student.entity.page.TableDataInfo;
import com.student.service.ArticleService;
import com.student.service.NoticeService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
     * 查询公告列表
     */
    @RequiresPermissions("function:article:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Article article) {
        startPage();
        List<Article> list = articleService.selectArticleList(article);
        return getDataTable(list);
    }

}
