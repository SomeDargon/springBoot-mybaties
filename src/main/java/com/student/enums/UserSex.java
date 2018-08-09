package com.student.enums;

/*
 * 用户性别
 * */

public  enum  UserSex{
    FeMale(0,"女"), Male(1,"男");

    private final int key;
    private final String value;

    UserSex(int key, String value){
        this.key = key;
        this.value = value;
    }

    public int getKey() {
        return key;
    }

    public String getValue() {
        return value;
    }
}