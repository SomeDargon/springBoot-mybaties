package com.student.service.impl;

import com.student.dao.mapper.PostMapper;
import com.student.dao.mapper.UserPostMapper;
import com.student.entity.Post;
import com.student.service.PostService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import com.student.util.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 岗位信息 服务层处理
 */
@Service("postService")
public class PostServiceImpl implements PostService {
    @Autowired
    private PostMapper postMapper;

    @Autowired
    private UserPostMapper userPostMapper;

    /**
     * 查询岗位信息集合
     *
     * @param post 岗位信息
     * @return 岗位信息集合
     */
    @Override
    public List<Post> selectPostList(Post post) {
        return postMapper.selectPostList(post);
    }

    /**
     * 查询所有岗位
     *
     * @return 岗位列表
     */
    @Override
    public List<Post> selectPostAll() {
        return postMapper.selectPostAll();
    }

    /**
     * 根据用户ID查询岗位
     *
     * @param userId 用户ID
     * @return 岗位列表
     */
    @Override
    public List<Post> selectPostsByUserId(Long userId) {
        List<Post> userPosts = postMapper.selectPostsByUserId(userId);
        List<Post> posts = postMapper.selectPostAll();
        for (Post post : posts) {
            for (Post userRole : userPosts) {
                if (post.getId() == userRole.getId()) {
                    post.setFlag(true);
                    break;
                }
            }
        }
        return posts;
    }

    /**
     * 通过岗位ID查询岗位信息
     *
     * @param postId 岗位ID
     * @return 角色对象信息
     */
    @Override
    public Post selectPostById(Long postId) {
        return postMapper.selectPostById(postId);
    }

    /**
     * 通过岗位ID删除岗位信息
     *
     * @param postId 岗位ID
     * @return 结果
     */
    @Override
    public boolean deletePostById(Long postId) {
        return postMapper.deletePostById(postId) > 0 ? true : false;
    }

    /**
     * 批量删除岗位信息
     *
     * @param ids 需要删除的数据ID
     * @throws Exception
     */
    @Override
    public void deletePostByIds(String ids) throws Exception {
        Long[] postIds = Convert.toLongArray(ids);
        for (Long postId : postIds) {
            Post post = selectPostById(postId);
            if (countUserPostById(postId) > 0) {
                throw new Exception(String.format("%1$s已分配,不能删除", post.getPostName()));
            }
        }
        postMapper.deletePostByIds(postIds);
    }

    /**
     * 保存岗位信息
     *
     * @param post 岗位信息
     * @return 结果
     */
    @Override
    public int savePost(Post post) {
        Long postId = post.getId();
        int count = 0;
        if (StringUtils.isNotNull(postId)) {
            post.setUpdateBy(ShiroUtils.getLoginName());
            // 修改岗位信息
            count = postMapper.updatePost(post);
        } else {
            post.setCreateBy(ShiroUtils.getLoginName());
            // 新增岗位信息
            count = postMapper.insertPost(post);
        }
        return count;
    }

    /**
     * 通过岗位ID查询岗位使用数量
     *
     * @param postId 岗位ID
     * @return 结果
     */
    @Override
    public int countUserPostById(Long postId) {
        return userPostMapper.countUserPostById(postId);
    }

}
