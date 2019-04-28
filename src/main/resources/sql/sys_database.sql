-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: studen_mybatis
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_building_product`
--

DROP TABLE IF EXISTS `sys_building_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_building_product` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL COMMENT '项目名称',
  `product_abbreviation` varchar(100) DEFAULT NULL COMMENT ' 项目简称',
  `product_number` varchar(100) DEFAULT NULL COMMENT '施工合同编号',
  `product_type` int(2) DEFAULT NULL COMMENT '项目性质',
  `product_status` int(1) DEFAULT NULL COMMENT '项目状态',
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `product_label` varchar(255) DEFAULT NULL COMMENT '工程标签',
  `product_money` decimal(10,0) DEFAULT NULL COMMENT '项目造价（万元）',
  `product_area` varchar(20) DEFAULT NULL COMMENT '项目面积（㎡）',
  `product_length` varchar(25) DEFAULT NULL COMMENT '项目长度（m）',
  `product_company` varchar(100) DEFAULT NULL COMMENT '施工单位',
  `product_first_party` varchar(100) DEFAULT NULL COMMENT '甲方',
  `province` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `area` varchar(25) DEFAULT NULL,
  `specific_address` varchar(255) DEFAULT NULL COMMENT '具体地址',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_building_product`
--

LOCK TABLES `sys_building_product` WRITE;
/*!40000 ALTER TABLE `sys_building_product` DISABLE KEYS */;
INSERT INTO `sys_building_product` VALUES (1,'1123','123','1',3,NULL,'','','123',123,'12','12',NULL,NULL,'浙江省','杭州市','西湖区',NULL,'','2019-03-17 15:04:28','','2019-03-28 23:06:53','312','1231'),(2,'111','111','1',1,NULL,'','','1',1,'1','11',NULL,NULL,'浙江省','杭州市','西湖区',NULL,'','2019-03-17 16:03:00','','2019-03-30 13:22:06','1','1');
/*!40000 ALTER TABLE `sys_building_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_config` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-default','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认 skin-default、蓝色 skin-blue、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` int(11) DEFAULT '0' COMMENT '父部门id',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT '' COMMENT '负责人',
  `phone` varchar(11) DEFAULT '' COMMENT '联系电话',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` char(1) DEFAULT '1' COMMENT '部门状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'管理部门',0,'房建管理','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','jxj','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(500) DEFAULT '' COMMENT '样式属性',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'是','Y','sys_yes_no','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(11,2,'否','N','sys_yes_no','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(12,1,'通知','1','sys_notice_type','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(13,2,'公告','2','sys_notice_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(14,1,'正常','0','sys_notice_status','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(15,2,'关闭','1','sys_notice_status','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(16,1,'新增','1','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(17,2,'修改','2','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(18,3,'保存','3','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,4,'删除','4','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(20,5,'授权','5','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(21,6,'导出','6','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(22,7,'导入','7','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(23,8,'强退','8','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(24,9,'禁止访问','9','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(25,10,'生成代码','10','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(26,1,'成功','0','sys_common_status','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(27,2,'失败','1','sys_common_status','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(6,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(7,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(8,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(9,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'ryTask','系统默认（无参）','ryNoParams','','0/10 * * * * ?','1','admin','2018-03-16 11:33:00','admin','2018-08-01 15:52:37',''),(2,'ryTask','系统默认（有参）','ryParams','ry','0/20 * * * * ?','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job_log` (
  `job_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` text COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
INSERT INTO `sys_job_log` VALUES (1,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：1毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:35:32'),(2,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：0毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:35:55'),(3,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：1毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:36:00'),(4,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：1毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:36:10'),(5,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：1毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:36:20'),(6,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：4毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:36:30'),(7,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：0毫秒','1','org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available','2018-08-01 15:36:40'),(8,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：4毫秒','0',NULL,'2018-08-01 15:52:10'),(9,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：6毫秒','0',NULL,'2018-08-01 15:52:20'),(10,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：5毫秒','0',NULL,'2018-08-01 15:52:22'),(11,'ryTask','系统默认（无参）','ryNoParams','','ryTask 总共耗时：3毫秒','0',NULL,'2018-08-01 15:52:30');
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_logininfor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (1,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 10:40:58'),(2,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 10:47:15'),(3,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 11:15:07'),(4,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','????','2018-07-24 11:17:51'),(5,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 11:24:02'),(6,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 11:42:25'),(7,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 11:58:18'),(8,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 12:03:14'),(9,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 12:05:37'),(10,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 15:02:54'),(11,'admin','127.0.0.1','XX ??IP','Chrome','Windows 7','0','????','2018-07-24 15:18:56'),(12,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 15:26:12'),(13,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 15:29:57'),(14,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-24 16:43:01'),(15,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 16:44:47'),(16,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 17:00:22'),(17,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 17:15:42'),(18,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 17:19:23'),(19,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-24 17:22:24'),(20,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-24 17:25:17'),(21,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 10:41:25'),(22,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 11:26:56'),(23,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 11:36:27'),(24,'admin','127.0.0.1',NULL,'Chrome','Windows 7','1','验证码错误','2018-07-27 11:43:45'),(25,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 11:43:52'),(26,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 11:52:06'),(27,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 11:58:13'),(28,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 12:13:42'),(29,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 13:55:21'),(30,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 14:19:28'),(31,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 14:21:36'),(32,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-27 14:26:41'),(33,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 14:26:46'),(34,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 14:29:39'),(35,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 14:50:41'),(36,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 14:56:09'),(37,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 15:06:46'),(38,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 15:29:13'),(39,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 16:04:10'),(40,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 16:20:32'),(41,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 16:28:24'),(42,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 16:29:44'),(43,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 16:35:00'),(44,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 16:38:35'),(45,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-27 16:51:44'),(46,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-27 16:51:50'),(47,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 16:52:08'),(48,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 16:57:04'),(49,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 17:00:27'),(50,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','退出成功','2018-07-27 17:00:58'),(51,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','退出成功','2018-07-27 17:00:58'),(52,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','退出成功','2018-07-27 17:00:59'),(53,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-27 17:01:04'),(54,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-27 17:02:36'),(55,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-30 10:40:54'),(56,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 10:41:00'),(57,'admin','127.0.0.1',NULL,'Chrome','Windows 7','1','验证码错误','2018-07-30 11:18:24'),(58,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 11:19:07'),(59,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 11:30:38'),(60,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-30 11:33:54'),(61,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-30 11:33:59'),(62,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 11:36:57'),(63,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 11:49:41'),(64,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','退出成功','2018-07-30 12:01:03'),(65,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 12:01:38'),(66,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:05:41'),(67,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-30 14:14:36'),(68,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:15:56'),(69,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:17:17'),(70,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:25:11'),(71,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:32:29'),(72,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:47:42'),(73,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-30 14:49:41'),(74,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:52:10'),(75,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-30 14:55:01'),(76,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 14:57:12'),(77,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 15:03:19'),(78,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 15:07:33'),(79,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 15:42:01'),(80,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 15:50:07'),(81,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 16:12:37'),(82,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 16:15:24'),(83,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 16:22:37'),(84,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-30 16:26:10'),(85,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 16:29:50'),(86,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 16:36:09'),(87,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-30 16:38:21'),(88,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 11:10:36'),(89,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:22:08'),(90,'admin','127.0.0.1',NULL,'Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:22:17'),(91,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:22:24'),(92,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:22:39'),(93,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-31 11:22:45'),(94,'jiangxiaojie','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-31 11:23:11'),(95,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:24:19'),(96,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-31 11:24:55'),(97,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:24:58'),(98,'admin','127.0.0.1',NULL,'Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:26:01'),(99,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:27:21'),(100,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:27:27'),(101,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-31 11:28:56'),(102,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 11:28:59'),(103,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','用户不存在/密码错误','2018-07-31 11:31:45'),(104,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 11:32:21'),(105,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 11:36:06'),(106,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','退出成功','2018-07-31 11:36:39'),(107,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 14:02:54'),(108,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-31 14:56:00'),(109,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 14:59:27'),(110,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:03:17'),(111,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-07-31 15:10:44'),(112,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:10:48'),(113,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:12:46'),(114,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:24:48'),(115,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-07-31 15:26:36'),(116,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:29:28'),(117,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:43:20'),(118,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 15:55:19'),(119,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 16:32:34'),(120,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 16:34:39'),(121,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 16:36:38'),(122,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 16:40:41'),(123,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 16:54:37'),(124,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-07-31 17:08:01'),(125,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2018-08-01 09:51:54'),(127,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 14:08:42'),(128,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','1','验证码错误','2018-08-01 14:20:21'),(129,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 14:20:24'),(130,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 15:35:18'),(131,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 15:51:56'),(132,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 15:54:39'),(133,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 16:03:20'),(134,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 16:50:38'),(135,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 7','0','登录成功','2018-08-01 16:57:46'),(136,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-08-04 10:44:08'),(137,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-08-04 14:37:42'),(138,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-23 15:02:35'),(139,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-25 14:32:15'),(140,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2019-02-25 14:55:24'),(141,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-25 16:35:42'),(142,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2019-02-25 16:39:07'),(143,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-25 16:46:51'),(144,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','1','验证码错误','2019-02-25 16:50:43'),(145,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2019-02-25 16:50:47'),(146,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','1','验证码错误','2019-02-25 16:54:17'),(147,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2019-02-25 16:54:20'),(148,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-25 16:56:29'),(149,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-25 17:04:04'),(150,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-26 15:12:02'),(151,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2019-02-26 15:23:35'),(152,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-02-26 15:36:01'),(153,'admin','127.0.0.1',NULL,'Chrome','Windows 10','1','验证码错误','2019-03-03 19:35:15'),(154,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-03-03 19:35:23'),(155,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-03-03 20:10:29'),(156,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-03-03 21:06:00'),(157,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','1','验证码错误','2019-03-03 21:10:53'),(158,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2019-03-03 21:10:56'),(159,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-03-03 21:13:13'),(160,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2019-03-03 21:21:26'),(161,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-13 21:07:52'),(162,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误2次，admin1234','2019-03-13 21:08:02'),(163,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误3次，admin1234','2019-03-13 21:08:34'),(164,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-13 21:11:40'),(165,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-13 21:54:30'),(166,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-13 22:02:35'),(167,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-13 22:03:36'),(168,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-16 08:42:06'),(169,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-16 08:42:12'),(170,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-16 09:32:42'),(171,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-03-16 09:32:47'),(172,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-16 09:32:51'),(173,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-16 09:38:16'),(174,'admin','127.0.0.1',NULL,'Chrome','Windows 7','0','登录成功','2019-03-16 11:52:32'),(175,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-16 11:53:06'),(176,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-17 14:52:55'),(177,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 14:53:21'),(178,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 15:04:09'),(179,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-17 15:59:01'),(180,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 15:59:13'),(181,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 16:52:10'),(182,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 16:54:20'),(183,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 16:59:06'),(184,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-17 17:12:37'),(185,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 17:12:44'),(186,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-17 17:15:09'),(187,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 17:15:22'),(188,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 17:21:34'),(189,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，admin','2019-03-17 17:31:27'),(190,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 17:33:08'),(191,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 17:45:38'),(192,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 17:50:43'),(193,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 17:54:52'),(194,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 17:57:57'),(195,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-17 18:31:58'),(196,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 18:32:08'),(197,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 19:39:46'),(198,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 19:42:43'),(199,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 19:45:48'),(200,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 19:49:25'),(201,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 19:53:51'),(202,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 19:56:43'),(203,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 20:01:09'),(204,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-17 21:30:58'),(205,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 21:34:13'),(206,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-17 21:37:30'),(207,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 11:00:01'),(208,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 11:49:26'),(209,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 11:53:42'),(210,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 11:56:25'),(211,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 11:58:53'),(212,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 12:05:37'),(213,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 12:12:18'),(214,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 12:13:27'),(215,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 12:15:24'),(216,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 12:17:24'),(217,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 12:20:07'),(218,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-23 15:06:43'),(219,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-25 22:07:03'),(220,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-25 22:07:08'),(221,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-03-25 22:09:03'),(222,'dragon','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，admin123','2019-03-25 22:09:15'),(223,'dragon','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误2次，admin123','2019-03-25 22:09:25'),(224,'dragon','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-25 22:09:42'),(225,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-25 22:21:04'),(226,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-26 23:11:00'),(227,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-26 23:19:55'),(228,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-27 23:26:02'),(229,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-27 23:27:50'),(230,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-27 23:31:15'),(231,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 20:40:37'),(232,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-28 20:45:44'),(233,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 20:45:56'),(234,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-28 21:33:01'),(235,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-28 21:33:11'),(236,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-28 21:33:20'),(237,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误1次，admin','2019-03-28 21:33:46'),(238,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误2次，admin','2019-03-28 21:33:54'),(239,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 21:34:02'),(240,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-28 21:37:28'),(241,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 21:37:44'),(242,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-03-28 21:57:28'),(243,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 21:57:41'),(244,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','验证码错误','2019-03-28 22:00:01'),(245,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:00:11'),(246,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 22:02:16'),(247,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:06:14'),(248,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 22:13:42'),(249,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 22:16:45'),(250,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:19:17'),(251,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:23:42'),(252,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:27:58'),(253,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:30:32'),(254,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:33:04'),(255,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:35:00'),(256,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:37:49'),(257,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:40:08'),(258,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 22:44:41'),(259,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:51:34'),(260,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:53:38'),(261,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 22:55:41'),(262,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 22:57:10'),(263,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:03:16'),(264,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:05:31'),(265,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:06:39'),(266,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:09:43'),(267,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-03-28 23:12:50'),(268,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:12:57'),(269,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:13:53'),(270,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:15:43'),(271,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:28:13'),(272,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:30:20'),(273,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:32:27'),(274,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:34:31'),(275,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:36:16'),(276,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-28 23:39:28'),(277,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:43:39'),(278,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:47:39'),(279,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-28 23:50:42'),(280,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，damin123','2019-03-30 12:46:10'),(281,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 12:46:17'),(282,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 12:48:10'),(283,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-30 12:49:25'),(284,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 12:49:36'),(285,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 12:52:26'),(286,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 12:54:12'),(287,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 12:58:43'),(288,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-03-30 13:00:32'),(289,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:00:37'),(290,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:02:09'),(291,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:03:01'),(292,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:09:56'),(293,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:11:23'),(294,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:14:32'),(295,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:16:29'),(296,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:17:52'),(297,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:18:41'),(298,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:29:54'),(299,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:30:55'),(300,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:32:24'),(301,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:33:56'),(302,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误1次，damin123','2019-03-30 13:34:55'),(303,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:35:02'),(304,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:36:33'),(305,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，damin123','2019-03-30 13:38:08'),(306,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 13:38:20'),(307,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:47:43'),(308,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:50:53'),(309,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 13:54:04'),(310,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:00:07'),(311,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:02:30'),(312,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:03:17'),(313,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 14:04:15'),(314,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:07:17'),(315,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:10:53'),(316,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:11:50'),(317,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:14:17'),(318,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 14:16:33'),(319,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:22:45'),(320,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 14:24:36'),(321,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:28:20'),(322,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-03-30 14:30:55'),(323,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-03-30 14:30:57'),(324,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-03-30 14:30:57'),(325,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-03-30 14:30:58'),(326,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误1次，admin123','2019-03-30 14:33:16'),(327,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:33:26'),(328,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','密码输入错误1次，123456','2019-03-30 14:35:37'),(329,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 14:35:47'),(330,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','1','密码输入错误1次，admin123','2019-03-30 14:40:00'),(331,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:40:06'),(332,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 14:41:39'),(333,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:08:02'),(334,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-03-30 15:12:29'),(335,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 15:13:55'),(336,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 15:23:02'),(337,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:25:25'),(338,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-03-30 15:31:41'),(339,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:31:51'),(340,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:36:00'),(341,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:43:40'),(342,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:45:29'),(343,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 15:46:46'),(344,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 15:57:11'),(345,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 16:00:16'),(346,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-03-30 16:02:25'),(347,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-03-30 16:02:40'),(348,'dragon','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-30 16:02:49'),(349,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-03-31 09:51:45'),(350,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-04-14 18:50:05'),(351,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:20'),(352,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:20'),(353,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:20'),(354,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:20'),(355,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:21'),(356,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:21'),(357,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:21'),(358,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-14 18:50:22'),(359,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-04-14 18:53:32'),(360,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-04-14 18:53:36'),(361,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-14 18:53:41'),(362,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:27:15'),(363,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-28 21:27:25'),(364,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:28:26'),(365,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-28 21:28:33'),(366,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-04-28 21:29:37'),(367,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:38:46'),(368,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:40:17'),(369,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','退出成功','2019-04-28 21:40:39'),(370,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:40:43'),(371,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-28 21:40:45'),(372,'admin1','127.0.0.1',NULL,'Chrome','Ubuntu','1','用户不存在/密码错误','2019-04-28 21:42:21'),(373,'admin123','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-04-28 21:42:32'),(374,'admin123','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-28 21:42:47'),(375,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:45:01'),(376,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','1','验证码错误','2019-04-28 21:51:19'),(377,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:51:22'),(378,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 21:56:43'),(379,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-28 21:58:31'),(380,'admin123','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-04-28 21:59:37'),(381,'admin','127.0.0.1',NULL,'Chrome','Ubuntu','0','登录成功','2019-04-28 22:04:41'),(382,'admin','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','退出成功','2019-04-28 22:04:43'),(383,'admin123','127.0.0.1','XX 内网IP','Chrome','Ubuntu','0','登录成功','2019-04-28 22:04:52');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT NULL COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(4,'建筑管理',0,4,'#','M','0','','fa fa-edit','admin','2018-07-27 11:34:59','lxl','2018-07-27 11:35:07','功能管理'),(5,'例行管理',0,5,'#','M','0','','fa fa-th','admin','2018-07-27 11:34:59','lxl','2018-07-27 11:35:07','例行管理'),(6,'物资管理',0,6,'#','M','0','','fa fa-dedent','admin','2018-07-27 11:34:59','lxl','2018-07-27 11:35:07','物资管理'),(7,'项目管理',0,2,'','M','0','','#','admin',NULL,'',NULL,''),(100,'用户管理',1,1,'/system/user','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/system/role','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),(108,'日志管理',1,9,'#','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(115,'项目清单',7,1,'/building/product','C','0','building:product:view','#','admin','2019-02-25 14:49:01','ry','2019-02-25 14:49:11','建筑管理菜单'),(116,'施工日志',4,2,'/building/workLog','C','0','building:workLog:view','#','admin','2019-02-25 14:49:01','ry','2019-02-25 14:49:11','施工日志详情管理'),(117,'质量检查',124,1,'/building/qualityInspect','C','0','building:quality:view','#','admin','2019-02-25 14:49:01','ry','2019-02-25 14:49:11','质量检查菜单'),(118,'安全检查',125,1,'/building/security','C','0','building:security:view','#','admin','2019-02-25 14:49:01','ry','2019-02-25 14:49:11','安全检查菜单'),(119,'库存清单',126,2,'/building/stock','C','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(120,'入库管理',126,3,'/building/storage','C','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(121,'任务管理',5,4,'/building/taskManager','C','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(122,'建设团队人员管理',5,5,'/building/teamManager','C','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(123,'采购管理',6,6,'/building/procurement','C','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(124,'质量管理',4,1,'#','M','0','','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(125,'安全管理',4,2,'#','M','0','','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(126,'库存管理',6,1,'#','M','0','','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(500,'操作日志',108,1,'/monitor/operlog','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(1000,'用户查询',100,1,'#','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户保存',100,5,'#','F','0','system:user:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'重置密码',100,6,'#','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'角色查询',101,1,'#','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色新增',101,2,'#','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色修改',101,3,'#','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色删除',101,4,'#','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色保存',101,5,'#','F','0','system:role:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'菜单查询',102,1,'#','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单新增',102,2,'#','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单修改',102,3,'#','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单删除',102,4,'#','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单保存',102,5,'#','F','0','system:menu:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'部门保存',103,5,'#','F','0','system:dept:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位查询',104,1,'#','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位新增',104,2,'#','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位修改',104,3,'#','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位删除',104,4,'#','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'岗位保存',104,5,'#','F','0','system:post:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典查询',105,1,'#','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典新增',105,2,'#','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典修改',105,3,'#','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典删除',105,4,'#','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'字典保存',105,5,'#','F','0','system:dict:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数查询',106,1,'#','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数新增',106,2,'#','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数修改',106,3,'#','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数删除',106,4,'#','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'参数保存',106,5,'#','F','0','system:config:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告查询',107,1,'#','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告新增',107,2,'#','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告修改',107,3,'#','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'公告删除',107,4,'#','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'公告保存',107,5,'#','F','0','system:notice:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'操作查询',500,1,'#','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'操作删除',500,2,'#','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'详细信息',500,3,'#','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录查询',501,1,'#','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'登录删除',501,2,'#','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'在线查询',109,1,'#','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'批量强退',109,2,'#','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'单条强退',109,3,'#','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'任务查询',110,1,'#','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务新增',110,2,'#','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务修改',110,3,'#','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务删除',110,4,'#','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'任务保存',110,5,'#','F','0','monitor:job:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'状态修改',110,6,'#','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'生成查询',113,1,'#','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'生成代码',113,2,'#','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'项目保存',115,1,'#','F','0','building:product:save','#','admin','2019-03-03 19:54:47','ry','2019-03-03 21:32:36',''),(1058,'项目添加',115,2,'#','f','0','building:product:add','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(1059,'项目查询',115,3,'#','F','0','building:product:list','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(1060,'项目跳转',115,4,'#','F','0','building:product:view','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(1061,'项目编辑',115,5,'#','F','0','building:product:edit','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(1062,'项目删除',115,6,'#','F','0','building:product:remove','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36',''),(1063,'质量整改',124,3,'/building/qualityRectification','C','0','','#','admin','2019-03-03 21:32:36','ry',NULL,''),(1064,'安全整改',125,5,'/building/rectification','C','0','','#','admin','2019-03-03 21:32:36','ry','2019-03-03 21:32:36','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_notice` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(2) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(5000) NOT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 ','2','新版本内容','0','admin','2018-03-16 11:33:00','admin','2019-04-28 21:45:40','管理员'),(2,'不朽3','1','<div><div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;waitingdays=0;<br>&nbsp;&nbsp;&nbsp;&nbsp;while()<br>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;openMax();<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(check_immortal_III()==1)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;waitingdays++;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;closeMax();<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;&nbsp;&nbsp;openDota2();<br>}&nbsp;</div></div>','0','admin','2018-07-31 15:40:13','',NULL,'');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_oper_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `action` varchar(100) DEFAULT '' COMMENT '功能请求',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `channel` varchar(20) DEFAULT '' COMMENT '来源渠道（manage后台用户 mobile手机端用户 other其它）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(30) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(255) DEFAULT '' COMMENT '请求参数',
  `status` char(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (1,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"100\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:19:32'),(2,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:25:23'),(3,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:26:06'),(4,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:29:42'),(5,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:29:44'),(6,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:30:38'),(7,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-07-30 14:32:42'),(8,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','1','nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'postId\' of \'class com.student.entity.Post\' with value \'1\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'postId\' in \'class com.student.entity.Post\'','2018-07-30 14:47:50'),(9,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','1','\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'field list\'\r\n### The error may exist in file [D:\\workspace\\inventory\\springBoot-mybaties\\target\\classes\\mapper\\system\\PostMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select id, post_code, post_name, post_sort, status, create_by, create_time, remark from sys_post\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'field list\'','2018-07-30 14:49:48'),(10,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 14:50:23'),(11,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 14:50:33'),(12,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 14:52:16'),(13,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2018-07-30 14:55:12'),(14,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 14:57:17'),(15,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 15:04:28'),(17,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2018-07-30 15:07:41'),(19,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 15:42:06'),(20,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1','XX 内网IP','{\"deptId\":[\"106\"],\"loginName\":[\"dargon\"],\"userName\":[\"dargon\"],\"password\":[\"123456\"],\"email\":[\"296569845@qq.com\"],\"phoneNumber\":[\"18324191811\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}','0',NULL,'2018-07-30 15:42:29'),(21,'用户管理','4','com.student.controller.UserController.remove()','1','admin','研发一部','/system/user/remove','127.0.0.1','XX 内网IP','{\"ids\":[\"4\"]}','0',NULL,'2018-07-30 15:50:21'),(22,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 15:50:24'),(23,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1','XX 内网IP','{\"deptId\":[\"106\"],\"loginName\":[\"jiangxiaojie\"],\"userName\":[\"jiangxiaojie\"],\"password\":[\"123456\"],\"email\":[\"296569841@qq.com\"],\"phoneNumber\":[\"13478539991\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}','0',NULL,'2018-07-30 15:50:51'),(24,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2018-07-30 15:50:56'),(25,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1','XX 内网IP','{\"deptId\":[\"105\"],\"loginName\":[\"dargon1\"],\"userName\":[\"admin\"],\"password\":[\"123456\"],\"email\":[\"764776245@qq.com\"],\"phoneNumber\":[\"18324191814\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','0',NULL,'2018-07-30 15:51:26'),(26,'用户管理','4','com.student.controller.UserController.remove()','1','admin','研发一部','/system/user/remove','127.0.0.1','XX 内网IP','{\"ids\":[\"6\"]}','0',NULL,'2018-07-30 15:51:32'),(27,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','1','','2018-07-30 15:51:38'),(28,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','1','','2018-07-30 15:56:45'),(29,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','1','\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'up.id\' in \'on clause\'\r\n### The error may exist in file [D:\\workspace\\inventory\\springBoot-mybaties\\target\\classes\\mapper\\system\\PostMapper.xml]\r\n### The error may involve com.student.dao.mapper.PostMapper.selectPostsByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT p.id, p.post_name, p.post_code   FROM sys_user u     LEFT JOIN sys_user_post up ON u.id = up.user_id     LEFT JOIN sys_post p ON up.id = p.id   WHERE up.user_id = ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'up.id\' in \'on clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'up.id\' in \'on clause\'','2018-07-30 16:12:57'),(30,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','1','','2018-07-30 16:15:35'),(31,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','1','','2018-07-30 16:21:37'),(32,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','1','','2018-07-30 16:22:46'),(33,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 16:26:19'),(34,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 16:30:00'),(35,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 16:31:44'),(36,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 16:36:14'),(37,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-30 16:38:29'),(38,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1',NULL,'{\"id\":[\"5\"],\"deptId\":[\"106\"],\"userName\":[\"jiangxiaojie\"],\"email\":[\"296569841@qq.com\"],\"phoneNumber\":[\"13478539991\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1,2\"]}','0',NULL,'2018-07-30 16:38:41'),(39,'重置密码','2','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd/5','127.0.0.1',NULL,'{}','0',NULL,'2018-07-30 16:38:51'),(40,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:10:52'),(41,'重置密码','2','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:10:56'),(42,'重置密码','3','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd','127.0.0.1','XX 内网IP','{\"userId\":[\"5\"],\"loginName\":[\"jiangxiaojie\"],\"password\":[\"12345\"]}','0',NULL,'2018-07-31 11:11:03'),(43,'角色管理','2','com.student.controller.RoleController.edit()','1','admin','研发一部','/system/role/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:15:41'),(44,'角色管理','1','com.student.controller.RoleController.add()','1','admin','研发一部','/system/role/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:15:46'),(45,'重置密码','2','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:29:09'),(46,'重置密码','3','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd','127.0.0.1','XX 内网IP','{\"userId\":[\"5\"],\"loginName\":[\"jiangxiaojie\"],\"password\":[\"123456\"]}','0',NULL,'2018-07-31 11:29:55'),(47,'重置密码','2','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:32:34'),(48,'重置密码','2','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd/5','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 11:36:16'),(49,'重置密码','3','com.student.controller.UserController.resetPwd()','1','admin','研发一部','/system/user/resetPwd','127.0.0.1','XX 内网IP','{\"id\":[\"5\"],\"loginName\":[\"jiangxiaojie\"],\"password\":[\"123456\"]}','0',NULL,'2018-07-31 11:36:37'),(50,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/0','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:19:21'),(51,'菜单管理','2','com.student.controller.MenuController.edit()','1','admin','研发一部','/system/menu/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:19:26'),(52,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:19:30'),(53,'部门管理','1','com.student.controller.DeptController.add()','1','admin','研发一部','/system/dept/add/100','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:19:40'),(54,'菜单管理','2','com.student.controller.MenuController.edit()','1','admin','研发一部','/system/menu/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:56:13'),(55,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:56:17'),(56,'部门管理','2','com.student.controller.DeptController.edit()','1','admin','研发一部','/system/dept/edit/101','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:56:22'),(57,'部门管理','2','com.student.controller.DeptController.edit()','1','admin','研发一部','/system/dept/edit/101','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 14:59:37'),(58,'菜单管理','2','com.student.controller.MenuController.edit()','1','admin','研发一部','/system/menu/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2018-07-31 15:03:26'),(59,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:03:30'),(60,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/0','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:03:35'),(61,'菜单管理','2','com.student.controller.MenuController.edit()','1','admin','研发一部','/system/menu/edit/112','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:03:40'),(62,'岗位管理','2','com.student.controller.PostController.edit()','1','admin','研发一部','/system/post/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:10:59'),(63,'岗位管理','2','com.student.controller.PostController.edit()','1','admin','研发一部','/system/post/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:12:58'),(64,'岗位管理','1','com.student.controller.PostController.add()','1','admin','研发一部','/system/post/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:13:03'),(65,'参数管理','2','com.student.controller.ConfigController.edit()','1','admin','研发一部','/system/config/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:25:17'),(66,'参数管理','1','com.student.controller.ConfigController.add()','1','admin','研发一部','/system/config/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:25:20'),(67,'通知公告','1','com.student.controller.NoticeController.add()','1','admin','研发一部','/system/notice/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:26:46'),(68,'通知公告','3','com.student.controller.NoticeController.save()','1','admin','研发一部','/system/notice/save','127.0.0.1','XX 内网IP','{\"noticeTitle\":[\"123\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>123</p>\"],\"status\":[\"0\"]}','1','Invalid bound statement (not found): com.student.dao.mapper.NoticeMapper.insertNotice','2018-07-31 15:26:56'),(69,'参数管理','2','com.student.controller.ConfigController.edit()','1','admin','研发一部','/system/config/edit/2','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:33:15'),(70,'参数管理','1','com.student.controller.ConfigController.add()','1','admin','研发一部','/system/config/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:33:18'),(71,'通知公告','1','com.student.controller.NoticeController.add()','1','admin','研发一部','/system/notice/add','127.0.0.1',NULL,'{}','0',NULL,'2018-07-31 15:33:27'),(72,'通知公告','3','com.student.controller.NoticeController.save()','1','admin','研发一部','/system/notice/save','127.0.0.1',NULL,'{\"noticeTitle\":[\"不朽3\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;waiti','1','\r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\r\n### The error may involve com.student.dao.mapper.NoticeMapper.insertNotice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_notice (     notice_title,       notice_type,       notice_content,       status,             create_by,      create_time    )values(     ?,       ?,       ?,       ?,             ?,      sysdate()   )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\n; ]; Data truncation: Data too long for column \'notice_content\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1','2018-07-31 15:33:50'),(73,'通知公告','1','com.student.controller.NoticeController.add()','1','admin','研发一部','/system/notice/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:36:28'),(74,'通知公告','3','com.student.controller.NoticeController.save()','1','admin','研发一部','/system/notice/save','127.0.0.1','XX 内网IP','{\"noticeTitle\":[\"不朽3\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;waiti','1','\r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\r\n### The error may involve com.student.dao.mapper.NoticeMapper.insertNotice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_notice (     notice_title,       notice_type,       notice_content,       status,             create_by,      create_time    )values(     ?,       ?,       ?,       ?,             ?,      sysdate()   )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\n; ]; Data truncation: Data too long for column \'notice_content\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1','2018-07-31 15:36:56'),(75,'通知公告','1','com.student.controller.NoticeController.add()','1','admin','研发一部','/system/notice/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 15:39:39'),(76,'通知公告','3','com.student.controller.NoticeController.save()','1','admin','研发一部','/system/notice/save','127.0.0.1','XX 内网IP','{\"noticeTitle\":[\"不朽3\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<div><div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;','0',NULL,'2018-07-31 15:40:14'),(77,'字典类型','1','com.student.controller.DictTypeController.add()','1','admin','研发一部','/system/dict/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 16:34:54'),(78,'字典类型','2','com.student.controller.DictTypeController.edit()','1','admin','研发一部','/system/dict/edit/6','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-31 16:40:51'),(79,'登陆日志','4','com.student.controller.monitor.LogininforController.remove()','1','admin','研发一部','/monitor/logininfor/remove','127.0.0.1','XX 内网IP','{\"ids\":[\"126\"]}','0',NULL,'2018-08-01 14:08:58'),(80,'在线用户','8','com.student.controller.monitor.UserOnlineController.batchForceLogout()','1','admin','研发一部','/monitor/online/batchForceLogout','127.0.0.1','XX 内网IP','{\"ids[]\":[\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\"]}','1','nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 9','2018-08-01 14:09:24'),(81,'在线用户','8','com.student.controller.monitor.UserOnlineController.forceLogout()','1','admin','研发一部','/monitor/online/forceLogout','127.0.0.1','XX 内网IP','{\"sessionId\":[\"970ffb8e-a436-4ece-a335-8e80cf1191f4\"]}','0',NULL,'2018-08-01 14:21:37'),(82,'在线用户','8','com.student.controller.monitor.UserOnlineController.batchForceLogout()','1','admin','研发一部','/monitor/online/batchForceLogout','127.0.0.1','XX 内网IP','{\"ids[]\":[\"970ffb8e-a436-4ece-a335-8e80cf1191f4\"]}','0',NULL,'2018-08-01 14:21:50'),(83,'定时任务','2','com.student.controller.monitor.JobController.run()','1','admin','研发一部','/monitor/job/run','127.0.0.1','XX 内网IP','{\"jobId\":[\"1\"]}','0',NULL,'2018-08-01 15:35:32'),(84,'定时任务','2','com.student.controller.monitor.JobController.changeStatus()','1','admin','研发一部','/monitor/job/changeStatus','127.0.0.1','XX 内网IP','{\"jobId\":[\"1\"],\"status\":[\"0\"]}','0',NULL,'2018-08-01 15:35:55'),(85,'定时任务','2','com.student.controller.monitor.JobController.changeStatus()','1','admin','研发一部','/monitor/job/changeStatus','127.0.0.1','XX 内网IP','{\"jobId\":[\"1\"],\"status\":[\"1\"]}','0',NULL,'2018-08-01 15:36:44'),(86,'定时任务','2','com.student.controller.monitor.JobController.changeStatus()','1','admin','研发一部','/monitor/job/changeStatus','127.0.0.1','XX 内网IP','{\"jobId\":[\"1\"],\"status\":[\"0\"]}','0',NULL,'2018-08-01 15:52:10'),(87,'定时任务','2','com.student.controller.monitor.JobController.run()','1','admin','研发一部','/monitor/job/run','127.0.0.1',NULL,'{\"jobId\":[\"1\"]}','0',NULL,'2018-08-01 15:52:24'),(88,'定时任务','2','com.student.controller.monitor.JobController.changeStatus()','1','admin','研发一部','/monitor/job/changeStatus','127.0.0.1','XX 内网IP','{\"jobId\":[\"1\"],\"status\":[\"1\"]}','0',NULL,'2018-08-01 15:52:37'),(89,'代码生成','10','com.student.controller.tool.GenController.genCode()','1','admin','研发一部','/tool/gen/genCode/sys_user_online','127.0.0.1','XX 内网IP','{}','1','','2018-08-01 16:50:59'),(90,'代码生成','10','com.student.controller.tool.GenController.genCode()','1','admin','研发一部','/tool/gen/genCode/sys_user_online','127.0.0.1','XX 内网IP','{}','1','','2018-08-01 16:51:41'),(91,'代码生成','10','com.student.controller.tool.GenController.genCode()','1','admin','研发一部','/tool/gen/genCode/sys_user_online','127.0.0.1','XX 内网IP','{}','1','','2018-08-01 16:53:08'),(92,'代码生成','10','com.student.controller.tool.GenController.genCode()','1','admin','研发一部','/tool/gen/genCode/sys_user_online','127.0.0.1','XX 内网IP','{}','1','','2018-08-01 16:53:40'),(93,'代码生成','10','com.student.controller.tool.GenController.genCode()','1','admin','研发一部','/tool/gen/genCode/sys_user_online','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-08-01 16:58:03'),(94,'用户管理','6','com.student.controller.UserController.export()','1','admin','研发一部','/system/user/export','127.0.0.1','XX 内网IP','{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-08-04 14:40:48'),(95,'角色管理','6','com.student.controller.RoleController.export()','1','admin','研发一部','/system/role/export','127.0.0.1','XX 内网IP','{\"roleName\":[\"\"],\"roleKey\":[\"\"],\"status\":[\"\"]}','0',NULL,'2018-08-04 14:41:01'),(96,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/0','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 16:41:14'),(97,'菜单管理','1','com.student.controller.MenuController.add()','1','admin','研发一部','/system/menu/add/0','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 16:41:55'),(98,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 16:48:14'),(99,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 16:50:53'),(100,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 16:51:36'),(101,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 16:56:37'),(102,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:04:12'),(103,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:04:59'),(104,'角色管理','1','com.student.controller.RoleController.add()','1','admin','研发一部','/system/role/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 17:07:57'),(105,'参数管理','1','com.student.controller.ConfigController.add()','1','admin','研发一部','/system/config/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 17:08:07'),(106,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 17:08:50'),(107,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:12:42'),(108,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:15:00'),(109,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-25 17:15:30'),(110,'定时任务','2','com.student.controller.monitor.JobController.edit()','1','admin','研发一部','/monitor/job/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:19:28'),(111,'字典类型','2','com.student.controller.DictTypeController.edit()','1','admin','研发一部','/system/dict/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:19:42'),(112,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-25 17:32:10'),(113,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-26 15:12:41'),(114,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-26 15:20:25'),(115,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:22:01'),(116,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:22:36'),(117,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:23:41'),(118,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:24:45'),(119,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:25:22'),(120,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:34:18'),(121,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:36:07'),(122,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:37:03'),(123,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-26 15:38:11'),(124,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:39:24'),(125,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:47:28'),(126,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-02-26 15:50:49'),(127,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2019-02-26 15:55:58'),(128,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-03-03 19:35:28'),(129,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-03 19:40:54'),(130,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-03 19:42:03'),(131,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-03-03 20:10:35'),(132,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-03-03 21:13:19'),(133,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-03 21:21:33'),(134,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-03-03 21:25:07'),(135,'项目添加','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2019-03-13 21:11:45'),(136,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-13 21:54:35'),(137,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-13 21:57:47'),(138,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-13 22:03:43'),(140,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-13 22:06:46'),(142,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-13 22:14:37'),(144,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 08:42:16'),(146,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 09:27:20'),(148,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 09:32:55'),(150,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 09:38:20'),(152,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 09:57:11'),(154,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 09:57:41'),(156,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-16 11:53:12'),(157,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 14:53:26'),(159,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 14:55:12'),(161,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 15:04:12'),(162,'项目保存','3','com.student.controller.building.ProductController.save()','1','admin','研发一部','/building/product/save','127.0.0.1',NULL,'{\"productName\":[\"1123\"],\"productAbbreviation\":[\"123\"],\"productNumber\":[\"1\"],\"productType\":[\"3\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"productLabel\":[\"123\"],\"productMoney\":[\"123\"],\"productArea\":[\"12\"],\"productLength\":[\"12\"],\"province\":[\"浙江省\"],\"city\":[\"杭州市\"],\"ar','0',NULL,'2019-03-17 15:04:28'),(163,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 16:02:44'),(164,'项目保存','3','com.student.controller.building.ProductController.save()','1','admin','研发一部','/building/product/save','127.0.0.1',NULL,'{\"productName\":[\"111\"],\"productAbbreviation\":[\"111\"],\"productNumber\":[\"1\"],\"productType\":[\"1\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"productLabel\":[\"1\"],\"productMoney\":[\"1\"],\"productArea\":[\"1\"],\"productLength\":[\"1\"],\"province\":[\"浙江省\"],\"city\":[\"杭州市\"],\"area\\\\\\\\[','0',NULL,'2019-03-17 16:03:00'),(165,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 17:16:21'),(166,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"deptId\":[\"106\"],\"userName\":[\"admin\"],\"email\":[\"jxj@163.com\"],\"phoneNumber\":[\"15888888888\"],\"sex\":[\"1\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}','0',NULL,'2019-03-17 17:16:33'),(167,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 17:54:58'),(169,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 17:58:01'),(171,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 18:35:43'),(173,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 19:39:52'),(175,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 19:42:55'),(177,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 19:43:36'),(179,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 19:45:54'),(181,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 19:47:07'),(182,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"123\"],\"labor\":[\"12\"],\"machineList\":[\"12\"],\"technicalWorkRecord\":[\"13\"],\"workTime\":[\"\"]}','0',NULL,'2019-03-17 19:47:20'),(183,'添加项目','1','com.student.controller.building.ProductController.add()','1','admin','研发一部','/building/product/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-17 20:19:24'),(184,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-23 11:59:03'),(185,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/5','127.0.0.1',NULL,'{}','0',NULL,'2019-03-23 11:59:30'),(186,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-23 11:59:49'),(187,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-25 22:07:13'),(189,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1',NULL,'{\"deptId\":[\"106\"],\"loginName\":[\"dragon\"],\"userName\":[\"dragon\"],\"password\":[\"12345\"],\"email\":[\"296569145@qq.com\"],\"phoneNumber\":[\"18328463514\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','0',NULL,'2019-03-25 22:08:49'),(190,'角色管理','2','com.student.controller.RoleController.edit()','1','admin','研发一部','/system/role/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-25 22:22:41'),(191,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-26 23:22:26'),(192,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 20:45:59'),(193,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 20:46:02'),(194,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 20:46:05'),(195,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 21:48:58'),(196,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 21:57:47'),(198,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:00:15'),(200,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:02:21'),(202,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:06:18'),(204,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:07:24'),(206,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:09:22'),(207,'团队人员管理保存','3','com.student.controller.building.TeamManagerController.save()','1','admin','研发一部','/building/teamManager/save','127.0.0.1',NULL,'{\"userName\":[\"小龙\"],\"sex\":[\"男\"],\"phone\":[\"18328463514\"],\"address\":[\"成都\"],\"productId\":[\"1\"]}','0',NULL,'2019-03-28 22:09:41'),(208,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:13:46'),(209,'团队人员管理保存','3','com.student.controller.building.TeamManagerController.save()','1','admin','研发一部','/building/teamManager/save','127.0.0.1',NULL,'{\"userName\":[\"小龙\"],\"sex\":[\"男\"],\"phone\":[\"18328463514\"],\"address\":[\"123\"],\"productId\":[\"1\"]}','0',NULL,'2019-03-28 22:13:55'),(210,'添加团队人员管理','1','com.student.controller.building.TeamManagerController.add()','1','admin','研发一部','/building/teamManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:16:50'),(211,'团队人员管理删除','4','com.student.controller.building.TeamManagerController.remove()','1','admin','研发一部','/building/teamManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:19:25'),(212,'团队人员管理删除','4','com.student.controller.building.TeamManagerController.remove()','1','admin','研发一部','/building/teamManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:19:38'),(213,'团队人员管理删除','4','com.student.controller.building.TeamManagerController.remove()','1','admin','研发一部','/building/teamManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:21:19'),(214,'团队人员管理删除','4','com.student.controller.building.TeamManagerController.remove()','1','admin','研发一部','/building/teamManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:23:53'),(215,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:23:56'),(216,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:27:08'),(217,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:28:04'),(218,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:30:35'),(220,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:33:09'),(222,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:35:03'),(223,'团队人员管理保存','3','com.student.controller.building.TeamManagerController.save()','1','admin','研发一部','/building/teamManager/save','127.0.0.1',NULL,'{\"id\":[\"2\"],\"userName\":[\"小龙\"],\"sex\":[\"男\"],\"phone\":[\"18328463514\"],\"address\":[\"1231\"],\"productId\":[\"1\"]}','0',NULL,'2019-03-28 22:35:05'),(224,'团队人员管理','2','com.student.controller.building.TeamManagerController.edit()','1','admin','研发一部','/building/teamManager/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:35:09'),(225,'团队人员管理保存','3','com.student.controller.building.TeamManagerController.save()','1','admin','研发一部','/building/teamManager/save','127.0.0.1',NULL,'{\"id\":[\"2\"],\"userName\":[\"小龙\"],\"sex\":[\"男\"],\"phone\":[\"18328463514\"],\"address\":[\"12311\"],\"productId\":[\"1\"]}','0',NULL,'2019-03-28 22:35:11'),(226,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:35:14'),(228,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:36:25'),(230,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:37:54'),(231,'任务管理保存','3','com.student.controller.building.TaskManagerController.save()','1','admin','研发一部','/building/taskManager/save','127.0.0.1',NULL,'{\"productName\":[\"1\"],\"productId\":[\"1\"],\"taskDescription\":[\"1\"],\"finishDate\":[\"\"],\"workload\":[\"1\"],\"houseAddress\":[\"1\"],\"phone\":[\"1\"]}','0',NULL,'2019-03-28 22:37:59'),(232,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:40:12'),(233,'任务管理删除','4','com.student.controller.building.TaskManagerController.remove()','1','admin','研发一部','/building/taskManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:40:19'),(234,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:44:45'),(235,'任务管理删除','4','com.student.controller.building.TaskManagerController.remove()','1','admin','研发一部','/building/taskManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:45:15'),(236,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:45:47'),(237,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:48:08'),(238,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:49:11'),(239,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:49:18'),(240,'任务管理保存','3','com.student.controller.building.TaskManagerController.save()','1','admin','研发一部','/building/taskManager/save','127.0.0.1',NULL,'{\"productName\":[\"2\"],\"productId\":[\"1\"],\"taskDescription\":[\"1\"],\"finishDate\":[\"\"],\"workload\":[\"1\"],\"houseAddress\":[\"1\"],\"phone\":[\"1\"]}','0',NULL,'2019-03-28 22:49:26'),(241,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:50:13'),(242,'任务管理保存','3','com.student.controller.building.TaskManagerController.save()','1','admin','研发一部','/building/taskManager/save','127.0.0.1',NULL,'{\"productName\":[\"3\"],\"productId\":[\"3\"],\"taskDescription\":[\"3\"],\"finishDate\":[\"\"],\"workload\":[\"12\"],\"houseAddress\":[\"3\"],\"phone\":[\"12\"]}','0',NULL,'2019-03-28 22:50:36'),(243,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:50:38'),(244,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:51:37'),(245,'添加任务管理','1','com.student.controller.building.TaskManagerController.add()','1','admin','研发一部','/building/taskManager/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:53:43'),(246,'任务管理保存','3','com.student.controller.building.TaskManagerController.save()','1','admin','研发一部','/building/taskManager/save','127.0.0.1',NULL,'{\"productName\":[\"1123\"],\"productId\":[\"123\"],\"taskDescription\":[\"123\"],\"finishDate\":[\"2018-04-20\"],\"workload\":[\"123\"],\"houseAddress\":[\"123\"],\"phone\":[\"123\"]}','0',NULL,'2019-03-28 22:53:54'),(247,'任务管理删除','4','com.student.controller.building.TaskManagerController.remove()','1','admin','研发一部','/building/taskManager/remove','127.0.0.1',NULL,'{\"ids\":[\"3\"]}','0',NULL,'2019-03-28 22:53:58'),(248,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/3','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:54:08'),(249,'任务管理删除','4','com.student.controller.building.TaskManagerController.remove()','1','admin','研发一部','/building/taskManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:54:52'),(250,'任务管理删除','4','com.student.controller.building.TaskManagerController.remove()','1','admin','研发一部','/building/taskManager/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:55:49'),(251,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/3','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:55:51'),(253,'任务管理删除','4','com.student.controller.building.TaskManagerController.remove()','1','admin','研发一部','/building/taskManager/remove','127.0.0.1',NULL,'{\"ids\":[\"2\"]}','0',NULL,'2019-03-28 22:57:19'),(254,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/3','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 22:57:21'),(255,'任务管理保存','3','com.student.controller.building.TaskManagerController.save()','1','admin','研发一部','/building/taskManager/save','127.0.0.1',NULL,'{\"id\":[\"3\"],\"productName\":[\"3\"],\"productId\":[\"3\"],\"taskDescription\":[\"3\"],\"finishDate\":[\"\"],\"workload\":[\"12\"],\"houseAddress\":[\"3\"],\"phone\":[\"12\"]}','0',NULL,'2019-03-28 22:57:29'),(256,'项目删除','4','com.student.controller.building.ProductController.remove()','1','admin','研发一部','/building/product/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 22:57:36'),(257,'项目管理','2','com.student.controller.building.ProductController.edit()','1','admin','研发一部','/building/product/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:03:25'),(258,'项目管理','2','com.student.controller.building.ProductController.edit()','1','admin','研发一部','/building/product/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:05:38'),(259,'项目管理','2','com.student.controller.building.ProductController.edit()','1','admin','研发一部','/building/product/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:06:44'),(260,'项目保存','3','com.student.controller.building.ProductController.save()','1','admin','研发一部','/building/product/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"productName\":[\"1123\"],\"productAbbreviation\":[\"123\"],\"productNumber\":[\"1\"],\"productType\":[\"3\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"productLabel\":[\"123\"],\"productMoney\":[\"123\"],\"productArea\":[\"12\"],\"productLength\":[\"12\"],\"province\":[\"浙江省\"],\"city\":','0',NULL,'2019-03-28 23:06:53'),(261,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:07:07'),(262,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:07:13'),(264,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:09:46'),(266,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:13:04'),(268,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:13:59'),(270,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:14:50'),(271,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:15:49'),(273,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:28:18'),(274,'采购保存','3','com.student.controller.building.ProcurementManagerController.save()','1','admin','研发一部','/building/procurement/save','127.0.0.1',NULL,'{\"procurementName\":[\"1\"],\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-28 23:28:22'),(275,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:30:24'),(276,'采购保存','3','com.student.controller.building.ProcurementManagerController.save()','1','admin','研发一部','/building/procurement/save','127.0.0.1',NULL,'{\"procurementName\":[\"1\"],\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-28 23:30:30'),(277,'添加采购','1','com.student.controller.building.ProcurementManagerController.add()','1','admin','研发一部','/building/procurement/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:33:09'),(278,'采购删除','4','com.student.controller.building.ProcurementManagerController.remove()','1','admin','研发一部','/building/procurement/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-28 23:36:22'),(279,'采购管理','2','com.student.controller.building.ProcurementManagerController.edit()','1','admin','研发一部','/building/procurement/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:36:29'),(280,'采购管理','2','com.student.controller.building.ProcurementManagerController.edit()','1','admin','研发一部','/building/procurement/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:39:36'),(281,'采购保存','3','com.student.controller.building.ProcurementManagerController.save()','1','admin','研发一部','/building/procurement/save','127.0.0.1',NULL,'{\"id\":[\"2\"],\"procurementName\":[\"1\"],\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"2018-04-20\"],\"num\":[\"11\"],\"unitPrice\":[\"1.0\"]}','0',NULL,'2019-03-28 23:39:38'),(282,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:43:46'),(284,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:47:43'),(286,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:48:13'),(288,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:48:51'),(290,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:50:47'),(292,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:51:18'),(294,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-28 23:52:01'),(295,'库存保存','3','com.student.controller.building.StorageController.save()','1','admin','研发一部','/building/storage/save','127.0.0.1',NULL,'{\"storageName\":[\"1\"],\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"storageDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-28 23:52:05'),(296,'添加库存','1','com.student.controller.building.StorageController.add()','1','admin','研发一部','/building/storage/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 12:46:20'),(297,'库存保存','3','com.student.controller.building.StorageController.save()','1','admin','研发一部','/building/storage/save','127.0.0.1',NULL,'{\"storageName\":[\"123\"],\"materialsName\":[\"123\"],\"unit\":[\"12\"],\"storageDate\":[\"\"],\"num\":[\"12\"],\"unitPrice\":[\"12\"]}','0',NULL,'2019-03-30 12:46:25'),(298,'库存管理','2','com.student.controller.building.StorageController.edit()','1','admin','研发一部','/building/storage/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 12:49:42'),(299,'库存管理','2','com.student.controller.building.StorageController.edit()','1','admin','研发一部','/building/storage/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 12:52:31'),(300,'库存管理','2','com.student.controller.building.StorageController.edit()','1','admin','研发一部','/building/storage/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 12:52:55'),(301,'库存管理','2','com.student.controller.building.StorageController.edit()','1','admin','研发一部','/building/storage/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 12:54:15'),(302,'库存保存','3','com.student.controller.building.StorageController.save()','1','admin','研发一部','/building/storage/save','127.0.0.1',NULL,'{\"storageName\":[\"1\"],\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"storageDate\":[\"\"],\"num\":[\"12\"],\"unitPrice\":[\"1.0\"]}','0',NULL,'2019-03-30 12:54:18'),(303,'库存管理','2','com.student.controller.building.StorageController.edit()','1','admin','研发一部','/building/storage/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 12:54:21'),(304,'库存删除','4','com.student.controller.building.StorageController.remove()','1','admin','研发一部','/building/storage/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-30 12:54:43'),(305,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:00:42'),(307,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:02:14'),(308,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:02:18'),(309,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:02:32'),(310,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:03:06'),(311,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"12\"],\"unit\":[\"123\"],\"procurementDate\":[\"\"],\"num\":[\"123\"],\"unitPrice\":[\"123\"]}','0',NULL,'2019-03-30 13:03:10'),(312,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:04:03'),(313,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:04:19'),(314,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:09:59'),(315,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:10:09'),(316,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:11:28'),(317,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:11:35'),(318,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:12:14'),(319,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:12:22'),(320,'添加库存','1','com.student.controller.building.StockController.add()','1','admin','研发一部','/building/stock/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:14:39'),(321,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"materialsName\":[\"1\"],\"unit\":[\"1\"],\"procurementDate\":[\"2018-04-20\"],\"num\":[\"1\"],\"unitPrice\":[\"1\"]}','0',NULL,'2019-03-30 13:14:44'),(322,'库存删除','4','com.student.controller.building.StockController.remove()','1','admin','研发一部','/building/stock/remove','127.0.0.1',NULL,'{\"ids\":[\"2\"]}','0',NULL,'2019-03-30 13:14:48'),(323,'库存管理','2','com.student.controller.building.StockController.edit()','1','admin','研发一部','/building/stock/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:14:50'),(324,'库存管理','2','com.student.controller.building.StockController.edit()','1','admin','研发一部','/building/stock/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:16:50'),(325,'库存管理','2','com.student.controller.building.StockController.edit()','1','admin','研发一部','/building/stock/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:17:55'),(326,'库存管理','2','com.student.controller.building.StockController.edit()','1','admin','研发一部','/building/stock/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:18:45'),(327,'库存保存','3','com.student.controller.building.StockController.save()','1','admin','研发一部','/building/stock/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"materialsName\":[\"11\"],\"unit\":[\"11\"],\"procurementDate\":[\"2018-04-20\"],\"num\":[\"1\"],\"unitPrice\":[\"1.0\"]}','0',NULL,'2019-03-30 13:18:48'),(328,'任务管理','2','com.student.controller.building.TaskManagerController.edit()','1','admin','研发一部','/building/taskManager/edit/3','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:18:54'),(329,'任务管理保存','3','com.student.controller.building.TaskManagerController.save()','1','admin','研发一部','/building/taskManager/save','127.0.0.1',NULL,'{\"id\":[\"3\"],\"productName\":[\"3\"],\"productId\":[\"3\"],\"taskDescription\":[\"3\"],\"finishDate\":[\"\"],\"workload\":[\"12\"],\"houseAddress\":[\"133\"],\"phone\":[\"12\"]}','0',NULL,'2019-03-30 13:18:58'),(330,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:19:02'),(332,'项目管理','2','com.student.controller.building.ProductController.edit()','1','admin','研发一部','/building/product/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:22:00'),(333,'项目保存','3','com.student.controller.building.ProductController.save()','1','admin','研发一部','/building/product/save','127.0.0.1',NULL,'{\"id\":[\"2\"],\"productName\":[\"111\"],\"productAbbreviation\":[\"111\"],\"productNumber\":[\"1\"],\"productType\":[\"1\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"productLabel\":[\"1\"],\"productMoney\":[\"1\"],\"productArea\":[\"1\"],\"productLength\":[\"11\"],\"province\":[\"浙江省\"],\"city\":[\"杭州市\"','0',NULL,'2019-03-30 13:22:06'),(334,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:22:12'),(335,'项目保存','3','com.student.controller.building.ProductController.save()','1','admin','研发一部','/building/product/save','127.0.0.1',NULL,'{\"productName\":[\"1\"],\"inspectType\":[\"1\"],\"inspectName\":[\"1\"],\"inspectDate\":[\"\"],\"productId\":[\"1\"],\"productResult\":[\"1\"]}','0',NULL,'2019-03-30 13:22:17'),(336,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:22:46'),(337,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:25:35'),(338,'项目保存','3','com.student.controller.building.ProductController.save()','1','admin','研发一部','/building/product/save','127.0.0.1',NULL,'{\"productName\":[\"1\"],\"inspectType\":[\"1\"],\"inspectName\":[\"1\"],\"inspectDate\":[\"\"],\"productId\":[\"1\"],\"productResult\":[\"1\"]}','0',NULL,'2019-03-30 13:25:42'),(339,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:29:58'),(341,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:30:59'),(343,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:32:28'),(344,'任务管理保存','3','com.student.controller.building.QualityInspectController.save()','1','admin','研发一部','/building/qualityInspect/save','127.0.0.1',NULL,'{\"productName\":[\"1\"],\"inspectType\":[\"1\"],\"inspectName\":[\"1\"],\"inspectDate\":[\"\"],\"productId\":[\"1\"],\"productResult\":[\"1\"]}','0',NULL,'2019-03-30 13:32:33'),(345,'任务管理','2','com.student.controller.building.QualityInspectController.edit()','1','admin','研发一部','/building/qualityInspect/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:35:07'),(346,'任务管理','2','com.student.controller.building.QualityInspectController.edit()','1','admin','研发一部','/building/qualityInspect/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:36:39'),(348,'任务管理','2','com.student.controller.building.QualityInspectController.edit()','1','admin','研发一部','/building/qualityInspect/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:38:26'),(349,'任务管理保存','3','com.student.controller.building.QualityInspectController.save()','1','admin','研发一部','/building/qualityInspect/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"productName\":[\"1\"],\"inspectType\":[\"1\"],\"inspectName\":[\"11\"],\"inspectDate\":[\"2018-04-20\"],\"productId\":[\"1\"],\"productResult\":[\"1\"]}','0',NULL,'2019-03-30 13:38:28'),(350,'添加任务管理','1','com.student.controller.building.QualityInspectController.add()','1','admin','研发一部','/building/qualityInspect/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:38:31'),(351,'任务管理保存','3','com.student.controller.building.QualityInspectController.save()','1','admin','研发一部','/building/qualityInspect/save','127.0.0.1',NULL,'{\"productName\":[\"23\"],\"inspectType\":[\"23\"],\"inspectName\":[\"23\"],\"inspectDate\":[\"\"],\"productId\":[\"23\"],\"productResult\":[\"23\"]}','0',NULL,'2019-03-30 13:38:36'),(352,'任务管理删除','4','com.student.controller.building.QualityInspectController.remove()','1','admin','研发一部','/building/qualityInspect/remove','127.0.0.1',NULL,'{\"ids\":[\"2\"]}','0',NULL,'2019-03-30 13:38:39'),(353,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:38:56'),(354,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"1\"],\"labor\":[\"1\"],\"machineList\":[\"1\"],\"technicalWorkRecord\":[\"1\"],\"workTime\":[\"\"]}','0',NULL,'2019-03-30 13:39:44'),(355,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:39:51'),(356,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"1\"],\"labor\":[\"1123\"],\"machineList\":[\"12\"],\"technicalWorkRecord\":[\"1\"],\"workTime\":[\"\"]}','0',NULL,'2019-03-30 13:40:00'),(357,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:40:16'),(358,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"1\"],\"labor\":[\"1\"],\"machineList\":[\"1\"],\"technicalWorkRecord\":[\"1\"],\"workTime\":[\"\"]}','0',NULL,'2019-03-30 13:40:35'),(359,'任务管理','2','com.student.controller.building.QualityInspectController.edit()','1','admin','研发一部','/building/qualityInspect/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:47:52'),(360,'任务管理保存','3','com.student.controller.building.QualityInspectController.save()','1','admin','研发一部','/building/qualityInspect/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"productName\":[\"1\"],\"inspectType\":[\"1\"],\"inspectName\":[\"111\"],\"inspectDate\":[\"2018-04-20\"],\"productId\":[\"1\"],\"productResult\":[\"1\"]}','0',NULL,'2019-03-30 13:47:54'),(361,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:47:57'),(362,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:50:58'),(364,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 13:54:08'),(366,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:00:12'),(368,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:01:08'),(369,'项目保存','3','com.student.controller.building.ProductSecurityController.save()','1','admin','研发一部','/building/security/save','127.0.0.1',NULL,'{\"serialNo\":[\"1\"],\"workTime\":[\"2019-04-20\"],\"planName\":[\"1\"],\"projectObservation\":[\"1\"],\"timeLimit\":[\"2019-04-20\"],\"securityType\":[\"1\"],\"rectificationStatus\":[\"1\"]}','0',NULL,'2019-03-30 14:01:13'),(370,'施工日志管理','2','com.student.controller.building.ProductSecurityController.edit()','1','admin','研发一部','/building/security/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:02:36'),(371,'施工日志管理','2','com.student.controller.building.ProductSecurityController.edit()','1','admin','研发一部','/building/security/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:03:23'),(372,'施工日志管理','2','com.student.controller.building.ProductSecurityController.edit()','1','admin','研发一部','/building/security/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:04:19'),(373,'项目保存','3','com.student.controller.building.ProductSecurityController.save()','1','admin','研发一部','/building/security/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"serialNo\":[\"1\"],\"beginDate\":[\"2018-04-20\"],\"workTime\":[\"2019-04-20\"],\"planName\":[\"1\"],\"projectObservation\":[\"1\"],\"timeLimit\":[\"2019-04-20\"],\"securityType\":[\"1\"],\"rectificationStatus\":[\"11\"]}','0',NULL,'2019-03-30 14:04:22'),(374,'项目删除','4','com.student.controller.building.ProductSecurityController.remove()','1','admin','研发一部','/building/security/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-30 14:04:26'),(375,'添加项目','1','com.student.controller.building.ProductSecurityController.add()','1','admin','研发一部','/building/security/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:04:27'),(376,'项目保存','3','com.student.controller.building.ProductSecurityController.save()','1','admin','研发一部','/building/security/save','127.0.0.1',NULL,'{\"serialNo\":[\"1\"],\"workTime\":[\"2019-04-20\"],\"planName\":[\"1\"],\"projectObservation\":[\"1\"],\"timeLimit\":[\"2019-04-20\"],\"securityType\":[\"1\"],\"rectificationStatus\":[\"1\"]}','0',NULL,'2019-03-30 14:04:32'),(377,'施工日志管理','2','com.student.controller.building.ProjectWorkLogController.edit()','1','admin','研发一部','/building/workLog/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:04:36'),(378,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:04:45'),(379,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"123\"],\"labor\":[\"123\"],\"machineList\":[\"123\"],\"technicalWorkRecord\":[\"123\"],\"workTime\":[\"\"]}','0',NULL,'2019-03-30 14:05:04'),(380,'施工日志管理','2','com.student.controller.building.ProjectWorkLogController.edit()','1','admin','研发一部','/building/workLog/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:07:23'),(381,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"6\"],\"labor\":[\"2\"],\"machineList\":[\"12\"],\"technicalWorkRecord\":[\"4\"],\"workTime\":[\"2018-04-20\"]}','0',NULL,'2019-03-30 14:07:56'),(382,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"5\"]}','0',NULL,'2019-03-30 14:10:58'),(383,'施工日志管理','2','com.student.controller.building.ProjectWorkLogController.edit()','1','admin','研发一部','/building/workLog/edit/5','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:11:57'),(384,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"5\"]}','0',NULL,'2019-03-30 14:12:01'),(385,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"6\"]}','0',NULL,'2019-03-30 14:12:04'),(386,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"7\"]}','0',NULL,'2019-03-30 14:12:06'),(387,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"4\"]}','0',NULL,'2019-03-30 14:12:08'),(388,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"3\"]}','0',NULL,'2019-03-30 14:12:10'),(389,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"2\"]}','0',NULL,'2019-03-30 14:12:11'),(390,'项目删除','4','com.student.controller.building.ProjectWorkLogController.remove()','1','admin','研发一部','/building/workLog/remove','127.0.0.1',NULL,'{\"ids\":[\"1\"]}','0',NULL,'2019-03-30 14:12:24'),(391,'添加项目','1','com.student.controller.building.ProjectWorkLogController.add()','1','admin','研发一部','/building/workLog/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:12:25'),(392,'项目保存','3','com.student.controller.building.ProjectWorkLogController.save()','1','admin','研发一部','/building/workLog/save','127.0.0.1',NULL,'{\"workRecord\":[\"123\"],\"totalAmount\":[\"12\"],\"labor\":[\"123\"],\"machineList\":[\"123\"],\"technicalWorkRecord\":[\"123\"],\"workTime\":[\"2018-04-20\"]}','0',NULL,'2019-03-30 14:12:33'),(393,'项目删除','4','com.student.controller.building.ProductController.remove()','1','admin','研发一部','/building/product/remove','127.0.0.1',NULL,'{\"ids\":[\"4\"]}','0',NULL,'2019-03-30 14:16:40'),(394,'项目删除','4','com.student.controller.building.ProductController.remove()','1','admin','研发一部','/building/product/remove','127.0.0.1',NULL,'{\"ids\":[\"3\"]}','0',NULL,'2019-03-30 14:16:42'),(395,'重置密码','2','com.student.controller.ProfileController.resetPwd()','1','admin','研发一部','/system/user/profile/resetPwd','127.0.0.1',NULL,'{\"userId\":[\"1\"],\"loginName\":[\"admin\"],\"oldPassword\":[\"admin123\"],\"password\":[\"123456\"],\"confirm\":[\"123456\"]}','1','principal argument cannot be null.','2019-03-30 14:30:06'),(396,'重置密码','2','com.student.controller.ProfileController.resetPwd()','1','admin','研发一部','/system/user/profile/resetPwd','127.0.0.1',NULL,'{\"userId\":[\"1\"],\"loginName\":[\"admin\"],\"oldPassword\":[\"123456\"],\"password\":[\"admin123\"],\"confirm\":[\"admin123\"]}','1','principal argument cannot be null.','2019-03-30 14:34:15'),(397,'重置密码','2','com.student.controller.ProfileController.resetPwd()','1','admin','研发一部','/system/user/profile/resetPwd','127.0.0.1',NULL,'{\"userId\":[\"1\"],\"loginName\":[\"admin\"],\"oldPassword\":[\"admin123\"],\"password\":[\"123456\"],\"confirm\":[\"123456\"]}','1','principal argument cannot be null.','2019-03-30 14:36:41'),(398,'重置密码','2','com.student.controller.ProfileController.resetPwd()','1','admin','研发一部','/system/user/profile/resetPwd','127.0.0.1',NULL,'{\"userId\":[\"1\"],\"loginName\":[\"admin\"],\"oldPassword\":[\"admin123\"],\"password\":[\"123456\"],\"confirm\":[\"123456\"]}','1','principal argument cannot be null.','2019-03-30 14:38:36'),(399,'重置密码','2','com.student.controller.ProfileController.resetPwd()','1','admin','研发一部','/system/user/profile/resetPwd','127.0.0.1',NULL,'{\"id\":[\"1\"],\"loginName\":[\"admin\"],\"oldPassword\":[\"123456\"],\"password\":[\"admin123\"],\"confirm\":[\"admin123\"]}','0',NULL,'2019-03-30 14:40:31'),(400,'个人信息','2','com.student.controller.ProfileController.avatar()','1','admin','研发一部','/system/user/profile/avatar/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:40:39'),(401,'个人信息','2','com.student.controller.ProfileController.avatar()','1','admin','研发一部','/system/user/profile/avatar/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:41:45'),(402,'个人信息','3','com.student.controller.ProfileController.updateAvatar()','1','admin','研发一部','/system/user/profile/updateAvatar','127.0.0.1',NULL,'{\"id\":[\"1\"]}','0',NULL,'2019-03-30 14:41:56'),(403,'岗位管理','2','com.student.controller.PostController.edit()','1','admin','研发一部','/system/post/edit/4','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 14:43:21'),(404,'岗位管理','3','com.student.controller.PostController.save()','1','admin','研发一部','/system/post/save','127.0.0.1',NULL,'{\"id\":[\"4\"],\"postCode\":[\"user\"],\"postName\":[\"普通员工\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"1\"]}','0',NULL,'2019-03-30 14:43:23'),(405,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:21:31'),(406,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:23:09'),(407,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:25:30'),(408,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:32:01'),(409,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:36:08'),(410,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:38:15'),(411,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:40:55'),(412,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:43:44'),(413,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:45:52'),(414,'个人信息','2','com.student.controller.ProfileController.edit()','1','admin','研发一部','/system/user/profile/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:46:52'),(415,'个人信息','3','com.student.controller.ProfileController.update()','1','admin','研发一部','/system/user/profile/update','127.0.0.1',NULL,'{\"id\":[\"1\"],\"loginName\":[\"admin\"],\"dept.deptName\":[\"研发一部\"],\"userName\":[\"admin1\"],\"email\":[\"jxj@163.com\"],\"phoneNumber\":[\"15888888888\"],\"sex\":[\"1\"]}','0',NULL,'2019-03-30 15:47:05'),(416,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:47:24'),(417,'用户管理','1','com.student.controller.UserController.add()','1','admin','研发一部','/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:50:33'),(418,'用户管理','3','com.student.controller.UserController.save()','1','admin','研发一部','/system/user/save','127.0.0.1',NULL,'{\"deptId\":[\"100\"],\"loginName\":[\"dragon\"],\"userName\":[\"dragon\"],\"password\":[\"dragon\"],\"email\":[\"296569845@qq.com\"],\"phoneNumber\":[\"18328463514\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','0',NULL,'2019-03-30 15:51:21'),(419,'用户管理','2','com.student.controller.UserController.edit()','1','admin','研发一部','/system/user/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:53:40'),(420,'角色管理','2','com.student.controller.RoleController.edit()','1','admin','研发一部','/system/role/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:53:51'),(421,'角色管理','2','com.student.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:57:16'),(422,'角色管理','2','com.student.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 15:57:21'),(423,'角色管理','2','com.student.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 16:00:22'),(425,'角色管理','2','com.student.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/2','127.0.0.1',NULL,'{}','0',NULL,'2019-03-30 16:02:30'),(426,'角色管理','3','com.student.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1',NULL,'{\"id\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"4,115,1057,1058,1059,1060,1061,1062,116,117,118,5,121,122,6,119,120,123\"]}','0',NULL,'2019-03-30 16:02:36'),(427,'字典类型','6','com.student.controller.DictTypeController.export()','1','admin',NULL,'/system/dict/export','127.0.0.1',NULL,'{\"dictName\":[\"\"],\"dictType\":[\"\"],\"status\":[\"\"]}','0',NULL,'2019-03-31 09:52:06'),(428,'参数管理','2','com.student.controller.ConfigController.edit()','1','admin',NULL,'/system/config/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-03-31 09:52:37'),(429,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/9','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:29:55'),(430,'角色管理','2','com.student.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:34:35'),(431,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/9','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:34:47'),(432,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/9','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:35:45'),(433,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/9','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:38:51'),(434,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/9','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:40:24'),(435,'用户管理','3','com.student.controller.UserController.save()','1','admin',NULL,'/system/user/save','127.0.0.1',NULL,'{\"id\":[\"9\"],\"deptId\":[\"100\"],\"userName\":[\"admin123\"],\"email\":[\"296569841@qq.com\"],\"phoneNumber\":[\"15888888881\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','0',NULL,'2019-04-28 21:40:29'),(436,'通知公告','2','com.student.controller.NoticeController.edit()','1','admin',NULL,'/system/notice/edit/1','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:45:33'),(437,'通知公告','3','com.student.controller.NoticeController.save()','1','admin',NULL,'/system/notice/save','127.0.0.1',NULL,'{\"id\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2018-07-01 \"],\"noticeType\":[\"2\"],\"noticeContent\":[\"新版本内容\"],\"status\":[\"0\"]}','0',NULL,'2019-04-28 21:45:40'),(438,'用户管理','1','com.student.controller.UserController.add()','1','admin',NULL,'/system/user/add','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:51:51'),(439,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/10','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:57:19'),(440,'用户管理','2','com.student.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/10','127.0.0.1',NULL,'{}','0',NULL,'2019-04-28 21:58:11');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','admin','2019-03-30 14:43:23','1');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_procure`
--

DROP TABLE IF EXISTS `sys_procure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_procure` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `materialname` varchar(255) DEFAULT NULL COMMENT '物资及规格',
  `brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `category` varchar(255) DEFAULT NULL COMMENT '物资类别',
  `quantity` int(11) DEFAULT NULL COMMENT '需求数量',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `unitprice` varchar(255) DEFAULT NULL COMMENT '单价',
  `usetime` varchar(32) DEFAULT NULL COMMENT '使用时间',
  `createtime` varchar(32) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_procure`
--

LOCK TABLES `sys_procure` WRITE;
/*!40000 ALTER TABLE `sys_procure` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_procure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_procurement_manager`
--

DROP TABLE IF EXISTS `sys_procurement_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_procurement_manager` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `procurement_name` varchar(100) DEFAULT NULL COMMENT '采购人',
  `materials_name` varchar(100) DEFAULT NULL COMMENT '材料名称',
  `procurement_date` varchar(20) DEFAULT NULL COMMENT ' 采购日期',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `unit_price` double DEFAULT NULL COMMENT '单价',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='采购管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_procurement_manager`
--

LOCK TABLES `sys_procurement_manager` WRITE;
/*!40000 ALTER TABLE `sys_procurement_manager` DISABLE KEYS */;
INSERT INTO `sys_procurement_manager` VALUES (2,'1','1','2018-04-20','1',11,1,'2019-03-28 23:30:30','2019-03-28 23:39:38',NULL);
/*!40000 ALTER TABLE `sys_procurement_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_product_security`
--

DROP TABLE IF EXISTS `sys_product_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_product_security` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `begin_date` varchar(32) DEFAULT NULL COMMENT '计划开始日期',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司编号',
  `employee_id` varchar(255) DEFAULT NULL COMMENT '检查人id',
  `end_date` varchar(32) DEFAULT NULL COMMENT '计划结束日期',
  `plan_name` varchar(255) DEFAULT NULL COMMENT '计划名称',
  `project_observation` varchar(255) DEFAULT NULL COMMENT '项目检查',
  `serial_no` varchar(255) DEFAULT NULL COMMENT '编号',
  `time_limit` varchar(255) DEFAULT NULL COMMENT '工期',
  `security_type` varchar(255) DEFAULT NULL COMMENT '检查性质',
  `rectification_status` varchar(255) DEFAULT NULL COMMENT '检查结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_product_security`
--

LOCK TABLES `sys_product_security` WRITE;
/*!40000 ALTER TABLE `sys_product_security` DISABLE KEYS */;
INSERT INTO `sys_product_security` VALUES (2,NULL,NULL,NULL,NULL,'1','1','1','2019-04-20','1','1');
/*!40000 ALTER TABLE `sys_product_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_project_work_log`
--

DROP TABLE IF EXISTS `sys_project_work_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_project_work_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `labor` varchar(255) DEFAULT NULL COMMENT '人工',
  `machine_list` varchar(255) DEFAULT NULL COMMENT '设备',
  `technical_work_record` varchar(255) DEFAULT NULL COMMENT '技术质量安全工作',
  `total_amount` varchar(255) DEFAULT NULL COMMENT '总价',
  `work_record` varchar(255) DEFAULT NULL COMMENT '工单',
  `material_science` varchar(255) DEFAULT NULL COMMENT '材料',
  `work_time` varchar(32) DEFAULT NULL COMMENT '时间',
  `create_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_project_work_log`
--

LOCK TABLES `sys_project_work_log` WRITE;
/*!40000 ALTER TABLE `sys_project_work_log` DISABLE KEYS */;
INSERT INTO `sys_project_work_log` VALUES (8,'123','123','123','12','123',NULL,'2018-04-20','2019-03-30 14:12:33');
/*!40000 ALTER TABLE `sys_project_work_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_quality_inspect`
--

DROP TABLE IF EXISTS `sys_quality_inspect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_quality_inspect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inspect_type` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `inspect_name` varchar(45) DEFAULT NULL,
  `inspect_date` varchar(45) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_result` varchar(45) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_quality_inspect`
--

LOCK TABLES `sys_quality_inspect` WRITE;
/*!40000 ALTER TABLE `sys_quality_inspect` DISABLE KEYS */;
INSERT INTO `sys_quality_inspect` VALUES (1,'1','1','111','2018-04-20',1,'1','2019-03-30');
/*!40000 ALTER TABLE `sys_quality_inspect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'0','admin','2018-03-16 11:33:00','admin','2019-03-30 16:02:36','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1),(1,2),(1,3),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,500),(1,501),(1,1000),(1,1001),(1,1002),(1,1003),(1,1004),(1,1005),(1,1006),(1,1007),(1,1008),(1,1009),(1,1010),(1,1011),(1,1012),(1,1013),(1,1014),(1,1015),(1,1016),(1,1017),(1,1018),(1,1019),(1,1020),(1,1021),(1,1022),(1,1023),(1,1024),(1,1025),(1,1026),(1,1027),(1,1028),(1,1029),(1,1030),(1,1031),(1,1032),(1,1033),(1,1034),(1,1035),(1,1036),(1,1037),(1,1038),(1,1039),(1,1040),(1,1041),(1,1042),(1,1043),(1,1044),(1,1045),(1,1046),(1,1047),(1,1048),(1,1049),(1,1050),(1,1051),(1,1052),(1,1053),(1,1054),(1,1055),(1,1056),(1,1057),(1,1058),(1,1059),(1,1060),(1,1061),(1,1062),(2,4),(2,5),(2,6),(2,7),(2,115),(2,116),(2,117),(2,118),(2,119),(2,120),(2,121),(2,122),(2,123),(2,124),(2,125),(2,126),(2,1057),(2,1058),(2,1059),(2,1060),(2,1061),(2,1062),(2,1063),(2,1064);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_stock`
--

DROP TABLE IF EXISTS `sys_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_stock` (
  `id` int(11) NOT NULL COMMENT '主键',
  `projectid` varchar(255) DEFAULT NULL COMMENT '项目id',
  `stockintime` varchar(32) DEFAULT NULL COMMENT '入库时间',
  `employeeid` varchar(255) DEFAULT NULL COMMENT '员工id',
  `storageintotalamount` varchar(255) DEFAULT NULL COMMENT '合计资金',
  `suppliername` varchar(255) DEFAULT NULL COMMENT '供应商',
  `suppliercontactname` varchar(255) DEFAULT NULL COMMENT '供应商联系人',
  `suppliercontactphone` varchar(255) DEFAULT NULL COMMENT '供应商联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_stock`
--

LOCK TABLES `sys_stock` WRITE;
/*!40000 ALTER TABLE `sys_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_stock_manager`
--

DROP TABLE IF EXISTS `sys_stock_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_stock_manager` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `materials_name` varchar(100) DEFAULT NULL COMMENT '材料名称',
  `procurement_date` varchar(20) DEFAULT NULL COMMENT ' 采购日期',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `unit_price` double DEFAULT NULL COMMENT '单价',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='库存管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_stock_manager`
--

LOCK TABLES `sys_stock_manager` WRITE;
/*!40000 ALTER TABLE `sys_stock_manager` DISABLE KEYS */;
INSERT INTO `sys_stock_manager` VALUES (1,'11','2018-04-20','11',1,1,'2019-03-30 13:11:35'),(3,'1','2018-04-20','1',1,1,'2019-03-30 13:14:44');
/*!40000 ALTER TABLE `sys_stock_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_storage`
--

DROP TABLE IF EXISTS `sys_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_storage` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL COMMENT '入库人',
  `materials_name` varchar(20) DEFAULT NULL COMMENT ' 材料名称',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `num` int(1) DEFAULT NULL COMMENT '数量',
  `product_id` int(1) DEFAULT NULL COMMENT '项目id',
  `create_time` datetime DEFAULT NULL,
  `storage_name` varchar(45) DEFAULT NULL,
  `storage_date` varchar(45) DEFAULT NULL,
  `unit_price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='入库管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_storage`
--

LOCK TABLES `sys_storage` WRITE;
/*!40000 ALTER TABLE `sys_storage` DISABLE KEYS */;
INSERT INTO `sys_storage` VALUES (2,NULL,'123','12',12,NULL,'2019-03-30 12:46:25','123','','12.0'),(3,NULL,'1','1',12,NULL,'2019-03-30 12:54:18','1','','1.0');
/*!40000 ALTER TABLE `sys_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task_manager`
--

DROP TABLE IF EXISTS `sys_task_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_task_manager` (
  `id` int(5) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL COMMENT '项目管理',
  `task_description` varchar(100) DEFAULT NULL COMMENT ' 任务描述',
  `workload` varchar(100) DEFAULT NULL COMMENT '工作量',
  `house_address` int(2) DEFAULT NULL COMMENT '房屋住址',
  `phone` int(1) DEFAULT NULL COMMENT '电话号码',
  `finish_date` varchar(100) DEFAULT NULL COMMENT '完成时间',
  `create_time` datetime DEFAULT NULL,
  `product_id` int(5) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task_manager`
--

LOCK TABLES `sys_task_manager` WRITE;
/*!40000 ALTER TABLE `sys_task_manager` DISABLE KEYS */;
INSERT INTO `sys_task_manager` VALUES (3,'3','3','12',133,12,'','2019-03-28 22:50:36',3,'2019-03-30 13:18:58'),(4,'1123','123','123',123,123,'2018-04-20','2019-03-28 22:53:53',123,NULL);
/*!40000 ALTER TABLE `sys_task_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_team_manager`
--

DROP TABLE IF EXISTS `sys_team_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_team_manager` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `sex` varchar(2) DEFAULT NULL COMMENT ' 性别',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `product_id` int(1) DEFAULT NULL COMMENT '项目id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='团队人员管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_team_manager`
--

LOCK TABLES `sys_team_manager` WRITE;
/*!40000 ALTER TABLE `sys_team_manager` DISABLE KEYS */;
INSERT INTO `sys_team_manager` VALUES (2,'小龙','男','18328463514','12311',1,'2019-03-28 22:13:55');
/*!40000 ALTER TABLE `sys_team_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phone_number` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(20) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,106,'admin','admin1','00','jxj@163.com','15888888888','1','','81700418658c0bc63c4fae00512e3cb5','ff6003','0','0','127.0.0.1','2019-04-28 14:04:41','admin','2018-03-16 11:33:00','jxj','2019-04-28 22:04:41','jxj'),(8,100,'dragon','dragon','00','296569845@qq.com','18328463514','0','','410b4d3a05a6b6df28a4b50c23973ee1','140e03','0','0','127.0.0.1','2019-03-30 08:02:49','admin','2019-03-30 15:51:10','','2019-03-30 16:02:49',''),(9,100,'admin123','admin123','00','296569841@qq.com','15888888881','0','','aadc04d8f47101e08e80d473f5b1b872','b375b0','0','0','127.0.0.1','2019-04-28 14:04:53','','2019-04-28 21:28:58','admin','2019-04-28 22:04:52',''),(10,100,'admin11','admin11','00','296569842@qq.com','18328443514','0','','72fc93e09c1d87320b6b345913021cf5','f6e7b2','1','0','',NULL,'','2019-04-28 21:42:10','',NULL,'');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_online` (
  `session_id` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestsamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('11024a38-4fb3-4029-ba27-5bc3fee74cda','admin123','管理部门','127.0.0.1','XX 内网IP','Chrome','Ubuntu','on_line','2019-04-28 14:04:44','2019-04-28 14:22:30',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_post` (
  `user_id` varchar(64) NOT NULL COMMENT '用户ID',
  `post_id` varchar(64) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES ('1','1'),('10','4'),('2','2'),('4','1'),('5','1'),('5','2'),('6','4'),('7','4'),('8','4'),('9','4');
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(8,2),(9,2),(10,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-28 22:24:21
