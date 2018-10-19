package com.student.dao.mapper.function;

import com.student.entity.article.Article;

import java.util.List;


/**
 * 文章 数据层
 */
public interface ArticleMapper {
    /**
     * 查询文章信息
     *
     * @param ArticleId 文章ID
     * @return 文章信息
     */
    Article selectArticleById(Integer ArticleId);

    /**
     * 查询文章列表
     *
     * @param Article 文章信息
     * @return 文章集合
     */
    List<Article> selectArticleList(Article Article);

    /**
     * 新增文章
     *
     * @param Article 文章信息
     * @return 结果
     */
    int insertArticle(Article Article);

    /**
     * 修改文章
     *
     * @param Article 文章信息
     * @return 结果
     */
    int updateArticle(Article Article);

    /**
     * 批量删除文章
     *
     * @param ArticleIds 需要删除的数据ID
     * @return 结果
     */
    int deleteArticleByIds(String[] ArticleIds);
}
