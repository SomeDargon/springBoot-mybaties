package com.student.component.server;

import com.student.service.ConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * html调用 thymeleaf 实现参数管理
 */
@Component
public class ConfigComponentService {
    @Autowired
    private ConfigService configService;

    /**
     * 根据键名查询参数配置信息
     *
     * @param configKey 参数名称
     * @return 参数键值
     */
    public String selectConfigByKey(String configKey) {
        return configService.selectConfigByKey(configKey);
    }

}
