package com.student.service;

import com.student.entity.fucntion.Article;

import java.util.List;

public interface ArticleService {
    /**
     * 查询文章信息
     *
     * @param id 文章ID
     * @return 文章信息
     */
    Article selectArticleById(Integer id);

    /**
     * 查询文章列表
     *
     * @param article 文章信息
     * @return 文章集合
     */
    List<Article> selectArticleList(Article article);

    /**
     * 新增文章
     *
     * @param article 文章信息
     * @return 结果
     */
    int insertArticle(Article article);

    /**
     * 修改文章
     *
     * @param Article 文章信息
     * @return 结果
     */
    int updateArticle(Article Article);

    /**
     * 保存文章
     *
     * @param article 文章信息
     * @return 结果
     */
    int saveArticle(Article article);

    /**
     * 删除文章信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteArticleByIds(String ids);
}
