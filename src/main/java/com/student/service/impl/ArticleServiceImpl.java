package com.student.service.impl;

import com.student.dao.mapper.function.ArticleMapper;
import com.student.entity.fucntion.Article;
import com.student.service.ArticleService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import com.student.util.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl  implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public Article selectArticleById(Integer id) {
        return articleMapper.selectArticleById(id);
    }

    @Override
    public List<Article> selectArticleList(Article article) {
        return articleMapper.selectArticleList(article);
    }

    @Override
    public int insertArticle(Article article) {
        return articleMapper.insertArticle(article);
    }

    @Override
    public int updateArticle(Article article) {
        return articleMapper.updateArticle(article);
    }

    @Override
    public int saveArticle(Article article) {
        Long articleId = article.getId();
        int rows = 0;
        if (StringUtils.isNotNull(articleId)) {
            article.setUpdateBy(ShiroUtils.getLoginName());
            // 修改文章
            rows = articleMapper.updateArticle(article);
        } else {
            article.setCreateBy(ShiroUtils.getLoginName());
            // 新增修改
            rows = articleMapper.insertArticle(article);
        }
        return rows;
    }

    @Override
    public int deleteArticleByIds(String ids) {
        return articleMapper.deleteArticleByIds(Convert.toStrArray(ids));
    }
}
