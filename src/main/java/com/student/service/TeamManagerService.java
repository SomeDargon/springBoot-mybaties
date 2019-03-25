package com.student.service;

import com.student.entity.TeamManager;

import java.util.List;

public interface TeamManagerService {

    /**
     * 保存
     *
     * @param teamManager
     * @return
     */
    Integer save(TeamManager teamManager);

    /**
     * 更新
     *
     * @param teamManager
     * @return
     */
    Integer update(TeamManager teamManager);

    /**
     * 删除
     *
     * @param ids
     * @return
     */
    void deleteTeamManagerByIds(String ids);

    /**
     * 查询列表
     *
     * @param teamManager
     * @return
     */
    List<TeamManager> selectTeamManagerList(TeamManager teamManager);

    /**
     * 查询id
     *
     * @param id
     * @return
     */
    TeamManager selectTeamManagerById(Long id);
}
