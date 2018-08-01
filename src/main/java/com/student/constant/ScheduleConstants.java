package com.student.constant;

/**
 * 任务调度通用常量
 */
public interface ScheduleConstants {
    /**
     * 任务调度参数key
     */
     String JOB_PARAM_KEY = "JOB_PARAM_KEY";

    enum Status {
        /**
         * 正常
         */
        NORMAL("0"),
        /**
         * 暂停
         */
        PAUSE("1");

        private String value;

        private Status(String value) {
            this.value = value;
        }

        public String getValue() {
            return value;
        }
    }

}
