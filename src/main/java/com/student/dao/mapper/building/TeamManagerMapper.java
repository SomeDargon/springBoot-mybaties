package com.student.dao.mapper.building;

import com.student.entity.TeamManager;

import java.util.List;

public interface TeamManagerMapper {
    /**
     * 保存
     *
     * @param teamManager
     */
    Integer insertTeamManager(TeamManager teamManager);

    /**
     * 根据条件分页查询项目对象
     *
     * @param teamManager 用户信息
     * @return 项目信息集合信息
     */
    List<TeamManager> selectTeamManagerList(TeamManager teamManager);

    /**
     * 批量删除
     *
     * @param id 需要删除的数据ID
     * @return 结果
     */
    int deleteTeamManagerById(Long id);

    /**
     * 修改
     *
     * @param teamManager
     * @return 结果
     */
    int updateTeamManager(TeamManager teamManager);


    /**
     * id查询
     * @param id
     * @return
     */
    TeamManager selectTeamManagerById(Long id);

    /**
     * 批量删除
     * @param ids
     */
    void deleteUserByIds(Long[] ids);
}
