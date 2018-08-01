package com.student.util;


import com.student.constant.Constants;
import com.student.constant.ScheduleConstants;
import com.student.entity.Job;
import com.student.entity.JobLog;
import com.student.service.JobLogService;
import com.student.util.spring.SpringUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;

import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * 定时任务
 */
public class ScheduleJob extends QuartzJobBean {
    private static final Logger log = LoggerFactory.getLogger(ScheduleJob.class);

    private ExecutorService service = Executors.newSingleThreadExecutor();

    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
        // Job job = (Job) context.getMergedJobDataMap().get(ScheduleConstants.JOB_PARAM_KEY);
        JobDataMap jobDataMap = context.getMergedJobDataMap();
        Job job = new Job();
        try {
            PropertyUtils.copyProperties(job, jobDataMap.get(ScheduleConstants.JOB_PARAM_KEY));
        } catch (Exception e) {
            log.error("copyProperties执行异常  - ：", e);
        }

        JobLogService jobLogService = (JobLogService) SpringUtils.getBean(JobLogService.class);

        JobLog jobLog = new JobLog();
        jobLog.setJobName(job.getJobName());
        jobLog.setJobGroup(job.getJobGroup());
        jobLog.setMethodName(job.getMethodName());
        jobLog.setParams(job.getParams());
        jobLog.setCreateTime(new Date());

        long startTime = System.currentTimeMillis();

        try {
            // 执行任务
            log.info("任务开始执行 - 名称：{} 方法：{}", job.getJobName(), job.getMethodName());
            ScheduleRunnable task = new ScheduleRunnable(job.getJobName(), job.getMethodName(), job.getParams());
            Future<?> future = service.submit(task);
            future.get();
            long times = System.currentTimeMillis() - startTime;
            // 任务状态 0：成功 1：失败
            jobLog.setStatus(Constants.SUCCESS);
            jobLog.setJobMessage(job.getJobName() + " 总共耗时：" + times + "毫秒");

            log.info("任务执行结束 - 名称：{} 耗时：{} 毫秒", job.getJobName(), times);
        } catch (Exception e) {
            log.info("任务执行失败 - 名称：{} 方法：{}", job.getJobName(), job.getMethodName());
            log.error("任务执行异常  - ：", e);
            long times = System.currentTimeMillis() - startTime;
            jobLog.setJobMessage(job.getJobName() + " 总共耗时：" + times + "毫秒");
            // 任务状态 0：成功 1：失败
            jobLog.setStatus(Constants.FAIL);
            jobLog.setExceptionInfo(e.toString());
        } finally {
            jobLogService.addJobLog(jobLog);
        }
    }
}
