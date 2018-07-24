package com.student.config;


import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "student")
public class StudentConfig {

    /** 项目名称 */
    private String name;
    /** 版本 */
    private String version;
    /** 版权年份 */
    private String copyrightYear;
    /** 上传路径 */
    private static String profile;
    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getVersion()
    {
        return version;
    }

    public void setVersion(String version)
    {
        this.version = version;
    }

    public String getCopyrightYear()
    {
        return copyrightYear;
    }

    public void setCopyrightYear(String copyrightYear)
    {
        this.copyrightYear = copyrightYear;
    }

    public static String getProfile()
    {
        return profile;
    }

    public void setProfile(String profile)
    {
        StudentConfig.profile = profile;
    }
}
