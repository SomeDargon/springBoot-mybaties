package com.student.mapper;

import com.student.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    @Select("select * FROM USER WHERE state = ${state}")
    User findByState(@Param("state") String state);
}
