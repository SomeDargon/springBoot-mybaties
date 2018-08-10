package com.student.service.impl;

import com.student.constant.UserConstants;
import com.student.dao.mapper.ConfigMapper;
import com.student.entity.Config;
import com.student.service.ConfigService;
import com.student.support.Convert;
import com.student.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 参数配置 服务层实现
 *
 */
@Service
public class ConfigServiceImpl implements ConfigService {
    @Autowired
    private ConfigMapper configMapper;

    /**
     * 查询参数配置信息
     *
     * @param configId 参数配置ID
     * @return 参数配置信息
     */
    @Override
    public Config selectConfigById(Integer configId) {
        return configMapper.selectConfigById(configId);
    }

    /**
     * 根据键名查询参数配置信息
     *
     * @param configKey 参数名称
     * @return 参数键值
     */
    @Override
    public String selectConfigByKey(String configKey) {
        Config config = configMapper.selectConfigByKey(configKey);
        return StringUtils.isNotNull(config) ? config.getConfigValue() : "";
    }

    /**
     * 查询参数配置列表
     *
     * @param config 参数配置信息
     * @return 参数配置集合
     */
    @Override
    public List<Config> selectConfigList(Config config) {
        return configMapper.selectConfigList(config);
    }

    /**
     * 新增参数配置
     *
     * @param config 参数配置信息
     * @return 结果
     */
    @Override
    public int insertConfig(Config config) {
        return configMapper.insertConfig(config);
    }

    /**
     * 修改参数配置
     *
     * @param config 参数配置信息
     * @return 结果
     */
    @Override
    public int updateConfig(Config config) {
        return configMapper.updateConfig(config);
    }

    /**
     * 保存参数配置
     *
     * @param config 参数配置信息
     * @return 结果
     */
    @Override
    public int saveConfig(Config config) {
        Long configId = config.getId();
        int rows = 0;
        if (StringUtils.isNotNull(configId)) {
            rows = configMapper.updateConfig(config);
        } else {
            rows = configMapper.insertConfig(config);
        }
        return rows;
    }

    /**
     * 删除参数配置信息
     *
     * @param configId 参数配置ID
     * @return 结果
     */
    @Override
    public int deleteConfigById(Integer configId) {
        return configMapper.deleteConfigById(configId);
    }

    /**
     * 批量删除参数配置对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteConfigByIds(String ids) {
        return configMapper.deleteConfigByIds(Convert.toStrArray(ids));
    }

    /**
     * 校验参数键名是否唯一
     *
     * @param config 参数配置信息
     * @return 结果
     */
    @Override
    public String checkConfigKeyUnique(Config config) {
        if (config.getId() == null) {
            config.setId(-1L);
        }
        Long configId = config.getId();
        Config info = configMapper.selectConfigByKey(config.getConfigKey());
        if (StringUtils.isNotNull(info) && StringUtils.isNotNull(info.getId())
                && info.getId().intValue() != configId.intValue()) {
            return UserConstants.CONFIG_KEY_NOT_UNIQUE;
        }
        return UserConstants.CONFIG_KEY_UNIQUE;
    }

}