package com.student.dao.mapper;

import com.student.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    @Select("select * FROM user WHERE status = ${status}")
    User findByState(@Param("status") Integer status);
}
