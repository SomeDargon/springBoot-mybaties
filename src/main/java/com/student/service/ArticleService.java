package com.student.service;

import com.student.entity.article.Article;

import java.util.List;

public interface ArticleService {

    List<Article> selectArticleList(Article article);
}
