package com.student.service;

import com.student.entity.ProjectWorkLog;

import java.util.List;

/** 
 * 施工日志接口
 * @version
 */
public interface ProjectWorkLogService{


	/**
	 * 保存
	 *
	 * @param projectWorkLog
	 * @return
	 */
	Integer save(ProjectWorkLog projectWorkLog);

	/**
	 * 更新
	 *
	 * @param projectWorkLog
	 * @return
	 */
	Integer update(ProjectWorkLog projectWorkLog);

	/**
	 * 删除
	 *
	 * @param ids
	 * @return
	 */
	void deleteProjectWorkLogByIds(String ids);

	/**
	 * 查询列表
	 *
	 * @param projectWorkLog
	 * @return
	 */
	List<ProjectWorkLog> selectProjectWorkLogList(ProjectWorkLog projectWorkLog);

	/**
	 * 查询id
	 *
	 * @param id
	 * @return
	 */
	ProjectWorkLog selectProjectWorkLogById(Long id);

}

