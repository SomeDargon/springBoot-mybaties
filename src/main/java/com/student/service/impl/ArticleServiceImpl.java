package com.student.service.impl;

import com.student.entity.article.Article;
import com.student.service.ArticleService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl  implements ArticleService {
    @Override
    public List<Article> selectArticleList(Article article) {
        return null;
    }
}
