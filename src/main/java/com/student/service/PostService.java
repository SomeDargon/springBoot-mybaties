package com.student.service;


import com.student.entity.Post;

import java.util.List;

/**
 * 岗位信息 服务层
 */
public interface PostService {
    /**
     * 查询岗位信息集合
     *
     * @param post 岗位信息
     * @return 岗位信息集合
     */
    List<Post> selectPostList(Post post);

    /**
     * 查询所有岗位
     *
     * @return 岗位列表
     */
    List<Post> selectPostAll();

    /**
     * 根据用户ID查询岗位
     *
     * @param userId 用户ID
     * @return 岗位列表
     */
    List<Post> selectPostsByUserId(Long userId);

    /**
     * 通过岗位ID查询岗位信息
     *
     * @param postId 岗位ID
     * @return 角色对象信息
     */
    Post selectPostById(Long postId);

    /**
     * 通过岗位ID删除岗位信息
     *
     * @param postId 岗位ID
     * @return 结果
     */
    boolean deletePostById(Long postId);

    /**
     * 批量删除岗位信息
     *
     * @param ids 需要删除的数据ID
     */
    void deletePostByIds(String ids) throws Exception;

    /**
     * 保存岗位信息
     *
     * @param post 岗位信息
     * @return 结果
     */
    int savePost(Post post);

    /**
     * 通过岗位ID查询岗位使用数量
     *
     * @param postId 岗位ID
     * @return 结果
     */
    int countUserPostById(Long postId);
}
