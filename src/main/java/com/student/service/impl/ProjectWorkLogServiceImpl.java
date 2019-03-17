package com.student.service.impl;

import com.student.dao.mapper.building.ProjectWorkLogMapper;
import com.student.entity.ProjectWorkLog;
import com.student.service.ProjectWorkLogService;
import com.student.support.Convert;
import org.springframework.stereotype.Service;

import java.util.List;

/** 
 * 说明： 施工日志
 * 创建人：Liuxh
 * 创建时间：2019-03-16
 * @version
 */
@Service
public class ProjectWorkLogServiceImpl implements ProjectWorkLogService {

	private ProjectWorkLogMapper projectWorkLogMapper;


	@Override
	public Integer save(ProjectWorkLog projectWorkLog) {
		return projectWorkLogMapper.insertProjectWorkLog(projectWorkLog);
	}

	@Override
	public Integer update(ProjectWorkLog projectWorkLog) {
		return projectWorkLogMapper.updateProjectWorkLog(projectWorkLog);
	}

	@Override
	public void deleteProjectWorkLogByIds(String ids) {
		Long[] proIds = Convert.toLongArray(ids);
		projectWorkLogMapper.deleteUserByIds(proIds);
	}

	@Override
	public List<ProjectWorkLog> selectProjectWorkLogList(ProjectWorkLog projectWorkLog) {
		return projectWorkLogMapper.selectProjectWorkLogList(projectWorkLog);
	}

	@Override
	public ProjectWorkLog selectProjectWorkLogById(Long id) {
		return projectWorkLogMapper.selectProjectWorkLogById(id);
	}
}

