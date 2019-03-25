package com.student.service.impl;

import com.student.dao.mapper.building.TeamManagerMapper;
import com.student.entity.TeamManager;
import com.student.service.TeamManagerService;
import com.student.support.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamManagerServiceImpl implements TeamManagerService {

    @Autowired
    private TeamManagerMapper teamManagerMapper;

    @Override
    public Integer save(TeamManager teamManager) {
        return teamManagerMapper.insertTeamManager(teamManager);
    }

    @Override
    public Integer update(TeamManager teamManager) {
        return teamManagerMapper.updateTeamManager(teamManager);
    }

    @Override
    public void deleteTeamManagerByIds(String ids) {
        Long[] teamIds = Convert.toLongArray(ids);
        teamManagerMapper.deleteUserByIds(teamIds);
    }

    @Override
    public List<TeamManager> selectTeamManagerList(TeamManager teamManager) {
        return teamManagerMapper.selectTeamManagerList(teamManager);
    }

    @Override
    public TeamManager selectTeamManagerById(Long id) {
        return teamManagerMapper.selectTeamManagerById(id);
    }
}
