/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : studen_mybatis

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-10-19 17:29:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `sys_article`
-- ----------------------------
DROP TABLE IF EXISTS `sys_article`;
CREATE TABLE `sys_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '文章名称',
  `content` varchar(512) DEFAULT NULL COMMENT '文章内容',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞数',
  `browse_num` int(11) DEFAULT NULL COMMENT '浏览数',
  `comment_id` int(11) DEFAULT NULL COMMENT '评论id',
  `type_id` int(11) DEFAULT NULL COMMENT '分类id',
  `picture_url` varchar(128) DEFAULT NULL COMMENT '大图地址',
  `search_value` varchar(32) DEFAULT NULL COMMENT '搜索值',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` varchar(32) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章';

-- ----------------------------
-- Records of sys_article
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
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

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO sys_config VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-default', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认 skin-default、蓝色 skin-blue、黄色 skin-yellow');
INSERT INTO sys_config VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
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

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO sys_dept VALUES ('100', '0', '蒋小姐集团', '0', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('101', '100', '研发部门', '1', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('102', '100', '市场部门', '2', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('103', '100', '测试部门', '3', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('104', '100', '财务部门', '4', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('105', '100', '运维部门', '5', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('106', '101', '研发一部', '1', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('107', '101', '研发二部', '2', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('108', '102', '市场一部', '1', '蒋小姐', '15888888888', 'ry@qq.com', '0', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');
INSERT INTO sys_dept VALUES ('109', '102', '市场二部', '2', '蒋小姐', '15888888888', 'ry@qq.com', '1', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO sys_dict_data VALUES ('1', '1', '男', '0', 'sys_user_sex', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO sys_dict_data VALUES ('2', '2', '女', '1', 'sys_user_sex', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO sys_dict_data VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO sys_dict_data VALUES ('4', '1', '显示', '0', 'sys_show_hide', 'radio radio-info radio-inline', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO sys_dict_data VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', 'radio radio-danger radio-inline', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO sys_dict_data VALUES ('6', '1', '正常', '0', 'sys_normal_disable', 'radio radio-info radio-inline', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO sys_dict_data VALUES ('7', '2', '停用', '1', 'sys_normal_disable', 'radio radio-danger radio-inline', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO sys_dict_data VALUES ('8', '1', '正常', '0', 'sys_job_status', 'radio radio-info radio-inline', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO sys_dict_data VALUES ('9', '2', '暂停', '1', 'sys_job_status', 'radio radio-danger radio-inline', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO sys_dict_data VALUES ('10', '1', '是', 'Y', 'sys_yes_no', 'radio radio-info radio-inline', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO sys_dict_data VALUES ('11', '2', '否', 'N', 'sys_yes_no', 'radio radio-danger radio-inline', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO sys_dict_data VALUES ('12', '1', '通知', '1', 'sys_notice_type', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO sys_dict_data VALUES ('13', '2', '公告', '2', 'sys_notice_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO sys_dict_data VALUES ('14', '1', '正常', '0', 'sys_notice_status', 'radio radio-info radio-inline', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO sys_dict_data VALUES ('15', '2', '关闭', '1', 'sys_notice_status', 'radio radio-danger radio-inline', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO sys_dict_data VALUES ('16', '1', '新增', '1', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('17', '2', '修改', '2', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('18', '3', '保存', '3', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('19', '4', '删除', '4', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('20', '5', '授权', '5', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('21', '6', '导出', '6', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('22', '7', '导入', '7', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('23', '8', '强退', '8', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('24', '9', '禁止访问', '9', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('25', '10', '生成代码', '10', 'sys_oper_type', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO sys_dict_data VALUES ('26', '1', '成功', '0', 'sys_common_status', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO sys_dict_data VALUES ('27', '2', '失败', '1', 'sys_common_status', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO sys_dict_data VALUES ('28', '1', '技术文章', '0', 'article_type', '', 'Y', '0', 'admin', '2018-10-19 15:08:24', '', null, '文章所需类型');
INSERT INTO sys_dict_data VALUES ('29', '0', '草稿', '0', 'function_article_status', '', 'Y', '0', 'admin', '2018-10-19 15:15:52', '', null, '文章状态所需');
INSERT INTO sys_dict_data VALUES ('30', '1', '发布', '1', 'function_article_status', '', 'Y', '0', 'admin', '2018-10-19 15:16:38', '', null, '文章状态所需');
INSERT INTO sys_dict_data VALUES ('31', '2', '删除', '2', 'function_article_status', '', 'Y', '0', 'admin', '2018-10-19 15:16:54', '', null, '文章状态所需');
INSERT INTO sys_dict_data VALUES ('32', '1', '文学类', '1', 'article_type', '', 'Y', '0', 'admin', '2018-10-19 15:17:28', '', null, '文章所需类型');
INSERT INTO sys_dict_data VALUES ('33', '0', '文学类', '0', 'function_article_type', '', 'Y', '0', 'admin', '2018-10-19 15:19:17', '', null, '文章状态所需');
INSERT INTO sys_dict_data VALUES ('34', '1', '技术类', '1', 'function_article_type', '', 'Y', '0', 'admin', '2018-10-19 15:19:48', '', null, '文章所需类型');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO sys_dict_type VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO sys_dict_type VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO sys_dict_type VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO sys_dict_type VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO sys_dict_type VALUES ('5', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO sys_dict_type VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO sys_dict_type VALUES ('7', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO sys_dict_type VALUES ('8', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO sys_dict_type VALUES ('9', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO sys_dict_type VALUES ('10', '文章类型', 'function_article_type', '0', 'admin', '2018-10-18 16:43:04', 'admin', '2018-10-19 15:08:39', '文章所需类型');
INSERT INTO sys_dict_type VALUES ('11', '文章状态', 'function_article_status', '0', 'admin', '2018-10-19 15:12:30', '', null, '文章所需类型');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
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

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO sys_job VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '1', 'admin', '2018-03-16 11:33:00', 'admin', '2018-08-01 15:52:37', '');
INSERT INTO sys_job VALUES ('2', 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
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

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO sys_job_log VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:35:32');
INSERT INTO sys_job_log VALUES ('2', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：0毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:35:55');
INSERT INTO sys_job_log VALUES ('3', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:36:00');
INSERT INTO sys_job_log VALUES ('4', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:36:10');
INSERT INTO sys_job_log VALUES ('5', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:36:20');
INSERT INTO sys_job_log VALUES ('6', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：4毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:36:30');
INSERT INTO sys_job_log VALUES ('7', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：0毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ryTask\' available', '2018-08-01 15:36:40');
INSERT INTO sys_job_log VALUES ('8', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：4毫秒', '0', null, '2018-08-01 15:52:10');
INSERT INTO sys_job_log VALUES ('9', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：6毫秒', '0', null, '2018-08-01 15:52:20');
INSERT INTO sys_job_log VALUES ('10', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：5毫秒', '0', null, '2018-08-01 15:52:22');
INSERT INTO sys_job_log VALUES ('11', 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：3毫秒', '0', null, '2018-08-01 15:52:30');

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO sys_logininfor VALUES ('1', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 10:40:58');
INSERT INTO sys_logininfor VALUES ('2', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 10:47:15');
INSERT INTO sys_logininfor VALUES ('3', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 11:15:07');
INSERT INTO sys_logininfor VALUES ('4', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '????', '2018-07-24 11:17:51');
INSERT INTO sys_logininfor VALUES ('5', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 11:24:02');
INSERT INTO sys_logininfor VALUES ('6', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 11:42:25');
INSERT INTO sys_logininfor VALUES ('7', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 11:58:18');
INSERT INTO sys_logininfor VALUES ('8', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 12:03:14');
INSERT INTO sys_logininfor VALUES ('9', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 12:05:37');
INSERT INTO sys_logininfor VALUES ('10', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 15:02:54');
INSERT INTO sys_logininfor VALUES ('11', 'admin', '127.0.0.1', 'XX ??IP', 'Chrome', 'Windows 7', '0', '????', '2018-07-24 15:18:56');
INSERT INTO sys_logininfor VALUES ('12', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 15:26:12');
INSERT INTO sys_logininfor VALUES ('13', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 15:29:57');
INSERT INTO sys_logininfor VALUES ('14', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 16:43:01');
INSERT INTO sys_logininfor VALUES ('15', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 16:44:47');
INSERT INTO sys_logininfor VALUES ('16', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 17:00:22');
INSERT INTO sys_logininfor VALUES ('17', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 17:15:42');
INSERT INTO sys_logininfor VALUES ('18', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 17:19:23');
INSERT INTO sys_logininfor VALUES ('19', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 17:22:24');
INSERT INTO sys_logininfor VALUES ('20', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-24 17:25:17');
INSERT INTO sys_logininfor VALUES ('21', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 10:41:25');
INSERT INTO sys_logininfor VALUES ('22', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 11:26:56');
INSERT INTO sys_logininfor VALUES ('23', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 11:36:27');
INSERT INTO sys_logininfor VALUES ('24', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-27 11:43:45');
INSERT INTO sys_logininfor VALUES ('25', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 11:43:52');
INSERT INTO sys_logininfor VALUES ('26', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 11:52:06');
INSERT INTO sys_logininfor VALUES ('27', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 11:58:13');
INSERT INTO sys_logininfor VALUES ('28', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 12:13:42');
INSERT INTO sys_logininfor VALUES ('29', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 13:55:21');
INSERT INTO sys_logininfor VALUES ('30', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 14:19:28');
INSERT INTO sys_logininfor VALUES ('31', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 14:21:36');
INSERT INTO sys_logininfor VALUES ('32', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-27 14:26:41');
INSERT INTO sys_logininfor VALUES ('33', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 14:26:46');
INSERT INTO sys_logininfor VALUES ('34', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 14:29:39');
INSERT INTO sys_logininfor VALUES ('35', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 14:50:41');
INSERT INTO sys_logininfor VALUES ('36', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 14:56:09');
INSERT INTO sys_logininfor VALUES ('37', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 15:06:46');
INSERT INTO sys_logininfor VALUES ('38', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 15:29:13');
INSERT INTO sys_logininfor VALUES ('39', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:04:10');
INSERT INTO sys_logininfor VALUES ('40', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:20:32');
INSERT INTO sys_logininfor VALUES ('41', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:28:24');
INSERT INTO sys_logininfor VALUES ('42', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:29:44');
INSERT INTO sys_logininfor VALUES ('43', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:35:00');
INSERT INTO sys_logininfor VALUES ('44', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:38:35');
INSERT INTO sys_logininfor VALUES ('45', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-27 16:51:44');
INSERT INTO sys_logininfor VALUES ('46', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-27 16:51:50');
INSERT INTO sys_logininfor VALUES ('47', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:52:08');
INSERT INTO sys_logininfor VALUES ('48', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 16:57:04');
INSERT INTO sys_logininfor VALUES ('49', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 17:00:27');
INSERT INTO sys_logininfor VALUES ('50', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2018-07-27 17:00:58');
INSERT INTO sys_logininfor VALUES ('51', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2018-07-27 17:00:58');
INSERT INTO sys_logininfor VALUES ('52', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2018-07-27 17:00:59');
INSERT INTO sys_logininfor VALUES ('53', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 17:01:04');
INSERT INTO sys_logininfor VALUES ('54', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-27 17:02:36');
INSERT INTO sys_logininfor VALUES ('55', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-30 10:40:54');
INSERT INTO sys_logininfor VALUES ('56', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 10:41:00');
INSERT INTO sys_logininfor VALUES ('57', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-30 11:18:24');
INSERT INTO sys_logininfor VALUES ('58', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 11:19:07');
INSERT INTO sys_logininfor VALUES ('59', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 11:30:38');
INSERT INTO sys_logininfor VALUES ('60', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-30 11:33:54');
INSERT INTO sys_logininfor VALUES ('61', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 11:33:59');
INSERT INTO sys_logininfor VALUES ('62', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 11:36:57');
INSERT INTO sys_logininfor VALUES ('63', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 11:49:41');
INSERT INTO sys_logininfor VALUES ('64', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2018-07-30 12:01:03');
INSERT INTO sys_logininfor VALUES ('65', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 12:01:38');
INSERT INTO sys_logininfor VALUES ('66', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:05:41');
INSERT INTO sys_logininfor VALUES ('67', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:14:36');
INSERT INTO sys_logininfor VALUES ('68', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:15:56');
INSERT INTO sys_logininfor VALUES ('69', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:17:17');
INSERT INTO sys_logininfor VALUES ('70', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:25:11');
INSERT INTO sys_logininfor VALUES ('71', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:32:29');
INSERT INTO sys_logininfor VALUES ('72', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:47:42');
INSERT INTO sys_logininfor VALUES ('73', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:49:41');
INSERT INTO sys_logininfor VALUES ('74', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:52:10');
INSERT INTO sys_logininfor VALUES ('75', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:55:01');
INSERT INTO sys_logininfor VALUES ('76', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 14:57:12');
INSERT INTO sys_logininfor VALUES ('77', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 15:03:19');
INSERT INTO sys_logininfor VALUES ('78', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 15:07:33');
INSERT INTO sys_logininfor VALUES ('79', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 15:42:01');
INSERT INTO sys_logininfor VALUES ('80', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 15:50:07');
INSERT INTO sys_logininfor VALUES ('81', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:12:37');
INSERT INTO sys_logininfor VALUES ('82', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:15:24');
INSERT INTO sys_logininfor VALUES ('83', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:22:37');
INSERT INTO sys_logininfor VALUES ('84', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:26:10');
INSERT INTO sys_logininfor VALUES ('85', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:29:50');
INSERT INTO sys_logininfor VALUES ('86', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:36:09');
INSERT INTO sys_logininfor VALUES ('87', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-30 16:38:21');
INSERT INTO sys_logininfor VALUES ('88', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 11:10:36');
INSERT INTO sys_logininfor VALUES ('89', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:22:08');
INSERT INTO sys_logininfor VALUES ('90', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:22:17');
INSERT INTO sys_logininfor VALUES ('91', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:22:24');
INSERT INTO sys_logininfor VALUES ('92', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:22:39');
INSERT INTO sys_logininfor VALUES ('93', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-31 11:22:45');
INSERT INTO sys_logininfor VALUES ('94', 'jiangxiaojie', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-31 11:23:11');
INSERT INTO sys_logininfor VALUES ('95', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:24:19');
INSERT INTO sys_logininfor VALUES ('96', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-31 11:24:55');
INSERT INTO sys_logininfor VALUES ('97', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:24:58');
INSERT INTO sys_logininfor VALUES ('98', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:26:01');
INSERT INTO sys_logininfor VALUES ('99', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:27:21');
INSERT INTO sys_logininfor VALUES ('100', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:27:27');
INSERT INTO sys_logininfor VALUES ('101', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-31 11:28:56');
INSERT INTO sys_logininfor VALUES ('102', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 11:28:59');
INSERT INTO sys_logininfor VALUES ('103', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2018-07-31 11:31:45');
INSERT INTO sys_logininfor VALUES ('104', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 11:32:21');
INSERT INTO sys_logininfor VALUES ('105', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 11:36:06');
INSERT INTO sys_logininfor VALUES ('106', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2018-07-31 11:36:39');
INSERT INTO sys_logininfor VALUES ('107', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 14:02:54');
INSERT INTO sys_logininfor VALUES ('108', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 14:56:00');
INSERT INTO sys_logininfor VALUES ('109', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 14:59:27');
INSERT INTO sys_logininfor VALUES ('110', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:03:17');
INSERT INTO sys_logininfor VALUES ('111', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-07-31 15:10:44');
INSERT INTO sys_logininfor VALUES ('112', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:10:48');
INSERT INTO sys_logininfor VALUES ('113', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:12:46');
INSERT INTO sys_logininfor VALUES ('114', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:24:48');
INSERT INTO sys_logininfor VALUES ('115', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:26:36');
INSERT INTO sys_logininfor VALUES ('116', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:29:28');
INSERT INTO sys_logininfor VALUES ('117', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:43:20');
INSERT INTO sys_logininfor VALUES ('118', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 15:55:19');
INSERT INTO sys_logininfor VALUES ('119', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 16:32:34');
INSERT INTO sys_logininfor VALUES ('120', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 16:34:39');
INSERT INTO sys_logininfor VALUES ('121', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 16:36:38');
INSERT INTO sys_logininfor VALUES ('122', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 16:40:41');
INSERT INTO sys_logininfor VALUES ('123', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 16:54:37');
INSERT INTO sys_logininfor VALUES ('124', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-07-31 17:08:01');
INSERT INTO sys_logininfor VALUES ('125', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 09:51:54');
INSERT INTO sys_logininfor VALUES ('127', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 14:08:42');
INSERT INTO sys_logininfor VALUES ('128', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2018-08-01 14:20:21');
INSERT INTO sys_logininfor VALUES ('129', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 14:20:24');
INSERT INTO sys_logininfor VALUES ('130', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 15:35:18');
INSERT INTO sys_logininfor VALUES ('131', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 15:51:56');
INSERT INTO sys_logininfor VALUES ('132', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 15:54:39');
INSERT INTO sys_logininfor VALUES ('133', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 16:03:20');
INSERT INTO sys_logininfor VALUES ('134', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 16:50:38');
INSERT INTO sys_logininfor VALUES ('135', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-01 16:57:46');
INSERT INTO sys_logininfor VALUES ('136', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-06 11:05:48');
INSERT INTO sys_logininfor VALUES ('137', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-07 10:18:01');
INSERT INTO sys_logininfor VALUES ('138', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-08-15 09:46:41');
INSERT INTO sys_logininfor VALUES ('139', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-09-21 11:47:50');
INSERT INTO sys_logininfor VALUES ('140', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-17 15:54:15');
INSERT INTO sys_logininfor VALUES ('141', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-17 16:18:41');
INSERT INTO sys_logininfor VALUES ('142', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-17 16:36:53');
INSERT INTO sys_logininfor VALUES ('143', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 10:00:18');
INSERT INTO sys_logininfor VALUES ('144', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 10:43:55');
INSERT INTO sys_logininfor VALUES ('145', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 11:19:49');
INSERT INTO sys_logininfor VALUES ('146', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 11:35:10');
INSERT INTO sys_logininfor VALUES ('147', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '退出成功', '2018-10-18 11:39:53');
INSERT INTO sys_logininfor VALUES ('148', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 11:39:55');
INSERT INTO sys_logininfor VALUES ('149', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 11:42:23');
INSERT INTO sys_logininfor VALUES ('150', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 14:45:55');
INSERT INTO sys_logininfor VALUES ('151', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 16:27:25');
INSERT INTO sys_logininfor VALUES ('152', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 16:41:11');
INSERT INTO sys_logininfor VALUES ('153', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-18 17:14:53');
INSERT INTO sys_logininfor VALUES ('154', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 11:12:08');
INSERT INTO sys_logininfor VALUES ('155', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 11:24:34');
INSERT INTO sys_logininfor VALUES ('156', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 11:27:55');
INSERT INTO sys_logininfor VALUES ('157', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 11:31:39');
INSERT INTO sys_logininfor VALUES ('158', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 14:42:58');
INSERT INTO sys_logininfor VALUES ('159', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 14:45:44');
INSERT INTO sys_logininfor VALUES ('160', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 15:04:39');
INSERT INTO sys_logininfor VALUES ('161', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 15:34:35');
INSERT INTO sys_logininfor VALUES ('162', 'admin', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 17:18:19');
INSERT INTO sys_logininfor VALUES ('163', 'admin', '127.0.0.1', null, 'Chrome', 'Windows 7', '0', '登录成功', '2018-10-19 17:20:29');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1063 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu VALUES ('1', '系统管理', '0', '1', '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO sys_menu VALUES ('2', '系统监控', '0', '2', '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO sys_menu VALUES ('3', '系统工具', '0', '3', '#', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO sys_menu VALUES ('4', '账单管理', '0', '4', '#', 'M', '0', '', 'fa fa-edit', 'admin', '2018-07-27 11:34:59', 'lxl', '2018-07-27 11:35:07', '功能管理');
INSERT INTO sys_menu VALUES ('100', '用户管理', '1', '1', '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO sys_menu VALUES ('101', '角色管理', '1', '2', '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO sys_menu VALUES ('102', '菜单管理', '1', '3', '/system/menu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO sys_menu VALUES ('103', '部门管理', '1', '4', '/system/dept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO sys_menu VALUES ('104', '岗位管理', '1', '5', '/system/post', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO sys_menu VALUES ('105', '字典管理', '1', '6', '/system/dict', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO sys_menu VALUES ('106', '参数设置', '1', '7', '/system/config', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO sys_menu VALUES ('107', '通知公告', '1', '8', '/system/notice', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO sys_menu VALUES ('108', '日志管理', '1', '9', '#', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO sys_menu VALUES ('109', '在线用户', '2', '1', '/monitor/online', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO sys_menu VALUES ('110', '定时任务', '2', '2', '/monitor/job', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO sys_menu VALUES ('111', '数据监控', '2', '3', '/monitor/data', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO sys_menu VALUES ('112', '表单构建', '3', '1', '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO sys_menu VALUES ('113', '代码生成', '3', '2', '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO sys_menu VALUES ('114', '系统接口', '3', '3', '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO sys_menu VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO sys_menu VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO sys_menu VALUES ('1000', '用户查询', '100', '1', '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1001', '用户新增', '100', '2', '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1002', '用户修改', '100', '3', '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1003', '用户删除', '100', '4', '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1004', '用户保存', '100', '5', '#', 'F', '0', 'system:user:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1005', '重置密码', '100', '6', '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1006', '角色查询', '101', '1', '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1007', '角色新增', '101', '2', '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1008', '角色修改', '101', '3', '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1009', '角色删除', '101', '4', '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1010', '角色保存', '101', '5', '#', 'F', '0', 'system:role:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1011', '菜单查询', '102', '1', '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1012', '菜单新增', '102', '2', '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1013', '菜单修改', '102', '3', '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1014', '菜单删除', '102', '4', '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1015', '菜单保存', '102', '5', '#', 'F', '0', 'system:menu:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1016', '部门查询', '103', '1', '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1017', '部门新增', '103', '2', '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1018', '部门修改', '103', '3', '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1019', '部门删除', '103', '4', '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1020', '部门保存', '103', '5', '#', 'F', '0', 'system:dept:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1021', '岗位查询', '104', '1', '#', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1022', '岗位新增', '104', '2', '#', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1023', '岗位修改', '104', '3', '#', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1024', '岗位删除', '104', '4', '#', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1025', '岗位保存', '104', '5', '#', 'F', '0', 'system:post:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1026', '字典查询', '105', '1', '#', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1027', '字典新增', '105', '2', '#', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1028', '字典修改', '105', '3', '#', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1029', '字典删除', '105', '4', '#', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1030', '字典保存', '105', '5', '#', 'F', '0', 'system:dict:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1031', '参数查询', '106', '1', '#', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1032', '参数新增', '106', '2', '#', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1033', '参数修改', '106', '3', '#', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1034', '参数删除', '106', '4', '#', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1035', '参数保存', '106', '5', '#', 'F', '0', 'system:config:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1036', '公告查询', '107', '1', '#', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1037', '公告新增', '107', '2', '#', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1038', '公告修改', '107', '3', '#', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1039', '公告删除', '107', '4', '#', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1040', '公告保存', '107', '5', '#', 'F', '0', 'system:notice:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1041', '操作查询', '500', '1', '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1042', '操作删除', '500', '2', '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1043', '详细信息', '500', '3', '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1044', '登录查询', '501', '1', '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1045', '登录删除', '501', '2', '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1046', '在线查询', '109', '1', '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1047', '批量强退', '109', '2', '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1048', '单条强退', '109', '3', '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1049', '任务查询', '110', '1', '#', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1050', '任务新增', '110', '2', '#', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1051', '任务修改', '110', '3', '#', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1052', '任务删除', '110', '4', '#', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1053', '任务保存', '110', '5', '#', 'F', '0', 'monitor:job:save', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1054', '状态修改', '110', '6', '#', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1055', '生成查询', '113', '1', '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1056', '生成代码', '113', '2', '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_menu VALUES ('1057', '功能管理', '0', '1', '#', 'M', '0', '', 'fa fa-github-alt', 'admin', '2018-10-18 10:06:50', 'admin', '2018-10-18 10:46:09', '');
INSERT INTO sys_menu VALUES ('1058', '文章管理', '1057', '1', '/function/article', 'C', '0', 'function:article:view', '#', 'admin', '2018-10-19 11:13:27', 'admin', '2018-10-19 11:14:41', '');
INSERT INTO sys_menu VALUES ('1059', '文章查询', '1058', '1', '', 'F', '0', 'function:article:list', '', 'admin', '2018-10-19 11:25:45', '', null, '');
INSERT INTO sys_menu VALUES ('1060', '文章新增', '1058', '2', '', 'F', '0', 'function:article:add', '', 'admin', '2018-10-19 15:36:38', '', null, '');
INSERT INTO sys_menu VALUES ('1061', '文章删除', '1058', '3', '', 'F', '0', 'function:article:remove', '', 'admin', '2018-10-19 15:38:08', 'admin', '2018-10-19 15:45:51', '');
INSERT INTO sys_menu VALUES ('1062', '文章修改', '1058', '4', '', 'F', '0', 'function:article:edit', '', 'admin', '2018-10-19 15:38:40', 'admin', '2018-10-19 15:38:53', '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
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

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO sys_notice VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO sys_notice VALUES ('2', '不朽3', '1', '<div><div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;waitingdays=0;<br>&nbsp;&nbsp;&nbsp;&nbsp;while()<br>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;openMax();<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(check_immortal_III()==1)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;waitingdays++;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;closeMax();<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;&nbsp;&nbsp;openDota2();<br>}&nbsp;</div></div>', '0', 'admin', '2018-07-31 15:40:13', '', null, '');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO sys_oper_log VALUES ('1', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:19:32');
INSERT INTO sys_oper_log VALUES ('2', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:25:23');
INSERT INTO sys_oper_log VALUES ('3', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:26:06');
INSERT INTO sys_oper_log VALUES ('4', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:29:42');
INSERT INTO sys_oper_log VALUES ('5', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:29:44');
INSERT INTO sys_oper_log VALUES ('6', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:30:38');
INSERT INTO sys_oper_log VALUES ('7', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-07-30 14:32:42');
INSERT INTO sys_oper_log VALUES ('8', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'postId\' of \'class com.student.entity.Post\' with value \'1\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'postId\' in \'class com.student.entity.Post\'', '2018-07-30 14:47:50');
INSERT INTO sys_oper_log VALUES ('9', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', null, '{}', '1', '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'field list\'\r\n### The error may exist in file [D:\\workspace\\inventory\\springBoot-mybaties\\target\\classes\\mapper\\system\\PostMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select id, post_code, post_name, post_sort, status, create_by, create_time, remark from sys_post\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'field list\'', '2018-07-30 14:49:48');
INSERT INTO sys_oper_log VALUES ('10', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 14:50:23');
INSERT INTO sys_oper_log VALUES ('11', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 14:50:33');
INSERT INTO sys_oper_log VALUES ('12', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 14:52:16');
INSERT INTO sys_oper_log VALUES ('13', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', null, '{}', '0', null, '2018-07-30 14:55:12');
INSERT INTO sys_oper_log VALUES ('14', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 14:57:17');
INSERT INTO sys_oper_log VALUES ('15', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 15:04:28');
INSERT INTO sys_oper_log VALUES ('17', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', null, '{}', '0', null, '2018-07-30 15:07:41');
INSERT INTO sys_oper_log VALUES ('19', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 15:42:06');
INSERT INTO sys_oper_log VALUES ('20', '用户管理', '3', 'com.student.controller.UserController.save()', '1', 'admin', '研发一部', '/system/user/save', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"106\"],\"loginName\":[\"dargon\"],\"userName\":[\"dargon\"],\"password\":[\"123456\"],\"email\":[\"296569845@qq.com\"],\"phoneNumber\":[\"18324191811\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '0', null, '2018-07-30 15:42:29');
INSERT INTO sys_oper_log VALUES ('21', '用户管理', '4', 'com.student.controller.UserController.remove()', '1', 'admin', '研发一部', '/system/user/remove', '127.0.0.1', 'XX 内网IP', '{\"ids\":[\"4\"]}', '0', null, '2018-07-30 15:50:21');
INSERT INTO sys_oper_log VALUES ('22', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 15:50:24');
INSERT INTO sys_oper_log VALUES ('23', '用户管理', '3', 'com.student.controller.UserController.save()', '1', 'admin', '研发一部', '/system/user/save', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"106\"],\"loginName\":[\"jiangxiaojie\"],\"userName\":[\"jiangxiaojie\"],\"password\":[\"123456\"],\"email\":[\"296569841@qq.com\"],\"phoneNumber\":[\"13478539991\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '0', null, '2018-07-30 15:50:51');
INSERT INTO sys_oper_log VALUES ('24', '用户管理', '1', 'com.student.controller.UserController.add()', '1', 'admin', '研发一部', '/system/user/add', '127.0.0.1', null, '{}', '0', null, '2018-07-30 15:50:56');
INSERT INTO sys_oper_log VALUES ('25', '用户管理', '3', 'com.student.controller.UserController.save()', '1', 'admin', '研发一部', '/system/user/save', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"105\"],\"loginName\":[\"dargon1\"],\"userName\":[\"admin\"],\"password\":[\"123456\"],\"email\":[\"764776245@qq.com\"],\"phoneNumber\":[\"18324191814\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '0', null, '2018-07-30 15:51:26');
INSERT INTO sys_oper_log VALUES ('26', '用户管理', '4', 'com.student.controller.UserController.remove()', '1', 'admin', '研发一部', '/system/user/remove', '127.0.0.1', 'XX 内网IP', '{\"ids\":[\"6\"]}', '0', null, '2018-07-30 15:51:32');
INSERT INTO sys_oper_log VALUES ('27', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-07-30 15:51:38');
INSERT INTO sys_oper_log VALUES ('28', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-07-30 15:56:45');
INSERT INTO sys_oper_log VALUES ('29', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '1', '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'up.id\' in \'on clause\'\r\n### The error may exist in file [D:\\workspace\\inventory\\springBoot-mybaties\\target\\classes\\mapper\\system\\PostMapper.xml]\r\n### The error may involve com.student.dao.mapper.PostMapper.selectPostsByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT p.id, p.post_name, p.post_code   FROM sys_user u     LEFT JOIN sys_user_post up ON u.id = up.user_id     LEFT JOIN sys_post p ON up.id = p.id   WHERE up.user_id = ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'up.id\' in \'on clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'up.id\' in \'on clause\'', '2018-07-30 16:12:57');
INSERT INTO sys_oper_log VALUES ('30', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-07-30 16:15:35');
INSERT INTO sys_oper_log VALUES ('31', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-07-30 16:21:37');
INSERT INTO sys_oper_log VALUES ('32', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-07-30 16:22:46');
INSERT INTO sys_oper_log VALUES ('33', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 16:26:19');
INSERT INTO sys_oper_log VALUES ('34', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 16:30:00');
INSERT INTO sys_oper_log VALUES ('35', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 16:31:44');
INSERT INTO sys_oper_log VALUES ('36', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 16:36:14');
INSERT INTO sys_oper_log VALUES ('37', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-30 16:38:29');
INSERT INTO sys_oper_log VALUES ('38', '用户管理', '3', 'com.student.controller.UserController.save()', '1', 'admin', '研发一部', '/system/user/save', '127.0.0.1', null, '{\"id\":[\"5\"],\"deptId\":[\"106\"],\"userName\":[\"jiangxiaojie\"],\"email\":[\"296569841@qq.com\"],\"phoneNumber\":[\"13478539991\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1,2\"]}', '0', null, '2018-07-30 16:38:41');
INSERT INTO sys_oper_log VALUES ('39', '重置密码', '2', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd/5', '127.0.0.1', null, '{}', '0', null, '2018-07-30 16:38:51');
INSERT INTO sys_oper_log VALUES ('40', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:10:52');
INSERT INTO sys_oper_log VALUES ('41', '重置密码', '2', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:10:56');
INSERT INTO sys_oper_log VALUES ('42', '重置密码', '3', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd', '127.0.0.1', 'XX 内网IP', '{\"userId\":[\"5\"],\"loginName\":[\"jiangxiaojie\"],\"password\":[\"12345\"]}', '0', null, '2018-07-31 11:11:03');
INSERT INTO sys_oper_log VALUES ('43', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:15:41');
INSERT INTO sys_oper_log VALUES ('44', '角色管理', '1', 'com.student.controller.RoleController.add()', '1', 'admin', '研发一部', '/system/role/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:15:46');
INSERT INTO sys_oper_log VALUES ('45', '重置密码', '2', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:29:09');
INSERT INTO sys_oper_log VALUES ('46', '重置密码', '3', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd', '127.0.0.1', 'XX 内网IP', '{\"userId\":[\"5\"],\"loginName\":[\"jiangxiaojie\"],\"password\":[\"123456\"]}', '0', null, '2018-07-31 11:29:55');
INSERT INTO sys_oper_log VALUES ('47', '重置密码', '2', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:32:34');
INSERT INTO sys_oper_log VALUES ('48', '重置密码', '2', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd/5', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 11:36:16');
INSERT INTO sys_oper_log VALUES ('49', '重置密码', '3', 'com.student.controller.UserController.resetPwd()', '1', 'admin', '研发一部', '/system/user/resetPwd', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"5\"],\"loginName\":[\"jiangxiaojie\"],\"password\":[\"123456\"]}', '0', null, '2018-07-31 11:36:37');
INSERT INTO sys_oper_log VALUES ('50', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/0', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:19:21');
INSERT INTO sys_oper_log VALUES ('51', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:19:26');
INSERT INTO sys_oper_log VALUES ('52', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:19:30');
INSERT INTO sys_oper_log VALUES ('53', '部门管理', '1', 'com.student.controller.DeptController.add()', '1', 'admin', '研发一部', '/system/dept/add/100', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:19:40');
INSERT INTO sys_oper_log VALUES ('54', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:56:13');
INSERT INTO sys_oper_log VALUES ('55', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:56:17');
INSERT INTO sys_oper_log VALUES ('56', '部门管理', '2', 'com.student.controller.DeptController.edit()', '1', 'admin', '研发一部', '/system/dept/edit/101', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:56:22');
INSERT INTO sys_oper_log VALUES ('57', '部门管理', '2', 'com.student.controller.DeptController.edit()', '1', 'admin', '研发一部', '/system/dept/edit/101', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 14:59:37');
INSERT INTO sys_oper_log VALUES ('58', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-07-31 15:03:26');
INSERT INTO sys_oper_log VALUES ('59', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:03:30');
INSERT INTO sys_oper_log VALUES ('60', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/0', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:03:35');
INSERT INTO sys_oper_log VALUES ('61', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/112', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:03:40');
INSERT INTO sys_oper_log VALUES ('62', '岗位管理', '2', 'com.student.controller.PostController.edit()', '1', 'admin', '研发一部', '/system/post/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:10:59');
INSERT INTO sys_oper_log VALUES ('63', '岗位管理', '2', 'com.student.controller.PostController.edit()', '1', 'admin', '研发一部', '/system/post/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:12:58');
INSERT INTO sys_oper_log VALUES ('64', '岗位管理', '1', 'com.student.controller.PostController.add()', '1', 'admin', '研发一部', '/system/post/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:13:03');
INSERT INTO sys_oper_log VALUES ('65', '参数管理', '2', 'com.student.controller.ConfigController.edit()', '1', 'admin', '研发一部', '/system/config/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:25:17');
INSERT INTO sys_oper_log VALUES ('66', '参数管理', '1', 'com.student.controller.ConfigController.add()', '1', 'admin', '研发一部', '/system/config/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:25:20');
INSERT INTO sys_oper_log VALUES ('67', '通知公告', '1', 'com.student.controller.NoticeController.add()', '1', 'admin', '研发一部', '/system/notice/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:26:46');
INSERT INTO sys_oper_log VALUES ('68', '通知公告', '3', 'com.student.controller.NoticeController.save()', '1', 'admin', '研发一部', '/system/notice/save', '127.0.0.1', 'XX 内网IP', '{\"noticeTitle\":[\"123\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>123</p>\"],\"status\":[\"0\"]}', '1', 'Invalid bound statement (not found): com.student.dao.mapper.NoticeMapper.insertNotice', '2018-07-31 15:26:56');
INSERT INTO sys_oper_log VALUES ('69', '参数管理', '2', 'com.student.controller.ConfigController.edit()', '1', 'admin', '研发一部', '/system/config/edit/2', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:33:15');
INSERT INTO sys_oper_log VALUES ('70', '参数管理', '1', 'com.student.controller.ConfigController.add()', '1', 'admin', '研发一部', '/system/config/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:33:18');
INSERT INTO sys_oper_log VALUES ('71', '通知公告', '1', 'com.student.controller.NoticeController.add()', '1', 'admin', '研发一部', '/system/notice/add', '127.0.0.1', null, '{}', '0', null, '2018-07-31 15:33:27');
INSERT INTO sys_oper_log VALUES ('72', '通知公告', '3', 'com.student.controller.NoticeController.save()', '1', 'admin', '研发一部', '/system/notice/save', '127.0.0.1', null, '{\"noticeTitle\":[\"不朽3\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;waiti', '1', '\r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\r\n### The error may involve com.student.dao.mapper.NoticeMapper.insertNotice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_notice (     notice_title,       notice_type,       notice_content,       status,             create_by,      create_time    )values(     ?,       ?,       ?,       ?,             ?,      sysdate()   )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\n; ]; Data truncation: Data too long for column \'notice_content\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1', '2018-07-31 15:33:50');
INSERT INTO sys_oper_log VALUES ('73', '通知公告', '1', 'com.student.controller.NoticeController.add()', '1', 'admin', '研发一部', '/system/notice/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:36:28');
INSERT INTO sys_oper_log VALUES ('74', '通知公告', '3', 'com.student.controller.NoticeController.save()', '1', 'admin', '研发一部', '/system/notice/save', '127.0.0.1', 'XX 内网IP', '{\"noticeTitle\":[\"不朽3\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;waiti', '1', '\r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\r\n### The error may involve com.student.dao.mapper.NoticeMapper.insertNotice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_notice (     notice_title,       notice_type,       notice_content,       status,             create_by,      create_time    )values(     ?,       ?,       ?,       ?,             ?,      sysdate()   )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\n; ]; Data truncation: Data too long for column \'notice_content\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1', '2018-07-31 15:36:56');
INSERT INTO sys_oper_log VALUES ('75', '通知公告', '1', 'com.student.controller.NoticeController.add()', '1', 'admin', '研发一部', '/system/notice/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 15:39:39');
INSERT INTO sys_oper_log VALUES ('76', '通知公告', '3', 'com.student.controller.NoticeController.save()', '1', 'admin', '研发一部', '/system/notice/save', '127.0.0.1', 'XX 内网IP', '{\"noticeTitle\":[\"不朽3\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<div><div>&nbsp;void&nbsp;openMax(){};<br>void&nbsp;closeMax(){};<br>void&nbsp;openDota2(){};<br>void&nbsp;check_immortal_III(){};<br><br>int&nbsp;main()<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;', '0', null, '2018-07-31 15:40:14');
INSERT INTO sys_oper_log VALUES ('77', '字典类型', '1', 'com.student.controller.DictTypeController.add()', '1', 'admin', '研发一部', '/system/dict/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 16:34:54');
INSERT INTO sys_oper_log VALUES ('78', '字典类型', '2', 'com.student.controller.DictTypeController.edit()', '1', 'admin', '研发一部', '/system/dict/edit/6', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-07-31 16:40:51');
INSERT INTO sys_oper_log VALUES ('79', '登陆日志', '4', 'com.student.controller.monitor.LogininforController.remove()', '1', 'admin', '研发一部', '/monitor/logininfor/remove', '127.0.0.1', 'XX 内网IP', '{\"ids\":[\"126\"]}', '0', null, '2018-08-01 14:08:58');
INSERT INTO sys_oper_log VALUES ('80', '在线用户', '8', 'com.student.controller.monitor.UserOnlineController.batchForceLogout()', '1', 'admin', '研发一部', '/monitor/online/batchForceLogout', '127.0.0.1', 'XX 内网IP', '{\"ids[]\":[\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\",\"05f7e147-440b-4ca0-b28a-786f459addfd\"]}', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 9', '2018-08-01 14:09:24');
INSERT INTO sys_oper_log VALUES ('81', '在线用户', '8', 'com.student.controller.monitor.UserOnlineController.forceLogout()', '1', 'admin', '研发一部', '/monitor/online/forceLogout', '127.0.0.1', 'XX 内网IP', '{\"sessionId\":[\"970ffb8e-a436-4ece-a335-8e80cf1191f4\"]}', '0', null, '2018-08-01 14:21:37');
INSERT INTO sys_oper_log VALUES ('82', '在线用户', '8', 'com.student.controller.monitor.UserOnlineController.batchForceLogout()', '1', 'admin', '研发一部', '/monitor/online/batchForceLogout', '127.0.0.1', 'XX 内网IP', '{\"ids[]\":[\"970ffb8e-a436-4ece-a335-8e80cf1191f4\"]}', '0', null, '2018-08-01 14:21:50');
INSERT INTO sys_oper_log VALUES ('83', '定时任务', '2', 'com.student.controller.monitor.JobController.run()', '1', 'admin', '研发一部', '/monitor/job/run', '127.0.0.1', 'XX 内网IP', '{\"jobId\":[\"1\"]}', '0', null, '2018-08-01 15:35:32');
INSERT INTO sys_oper_log VALUES ('84', '定时任务', '2', 'com.student.controller.monitor.JobController.changeStatus()', '1', 'admin', '研发一部', '/monitor/job/changeStatus', '127.0.0.1', 'XX 内网IP', '{\"jobId\":[\"1\"],\"status\":[\"0\"]}', '0', null, '2018-08-01 15:35:55');
INSERT INTO sys_oper_log VALUES ('85', '定时任务', '2', 'com.student.controller.monitor.JobController.changeStatus()', '1', 'admin', '研发一部', '/monitor/job/changeStatus', '127.0.0.1', 'XX 内网IP', '{\"jobId\":[\"1\"],\"status\":[\"1\"]}', '0', null, '2018-08-01 15:36:44');
INSERT INTO sys_oper_log VALUES ('86', '定时任务', '2', 'com.student.controller.monitor.JobController.changeStatus()', '1', 'admin', '研发一部', '/monitor/job/changeStatus', '127.0.0.1', 'XX 内网IP', '{\"jobId\":[\"1\"],\"status\":[\"0\"]}', '0', null, '2018-08-01 15:52:10');
INSERT INTO sys_oper_log VALUES ('87', '定时任务', '2', 'com.student.controller.monitor.JobController.run()', '1', 'admin', '研发一部', '/monitor/job/run', '127.0.0.1', null, '{\"jobId\":[\"1\"]}', '0', null, '2018-08-01 15:52:24');
INSERT INTO sys_oper_log VALUES ('88', '定时任务', '2', 'com.student.controller.monitor.JobController.changeStatus()', '1', 'admin', '研发一部', '/monitor/job/changeStatus', '127.0.0.1', 'XX 内网IP', '{\"jobId\":[\"1\"],\"status\":[\"1\"]}', '0', null, '2018-08-01 15:52:37');
INSERT INTO sys_oper_log VALUES ('89', '代码生成', '10', 'com.student.controller.tool.GenController.genCode()', '1', 'admin', '研发一部', '/tool/gen/genCode/sys_user_online', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-08-01 16:50:59');
INSERT INTO sys_oper_log VALUES ('90', '代码生成', '10', 'com.student.controller.tool.GenController.genCode()', '1', 'admin', '研发一部', '/tool/gen/genCode/sys_user_online', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-08-01 16:51:41');
INSERT INTO sys_oper_log VALUES ('91', '代码生成', '10', 'com.student.controller.tool.GenController.genCode()', '1', 'admin', '研发一部', '/tool/gen/genCode/sys_user_online', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-08-01 16:53:08');
INSERT INTO sys_oper_log VALUES ('92', '代码生成', '10', 'com.student.controller.tool.GenController.genCode()', '1', 'admin', '研发一部', '/tool/gen/genCode/sys_user_online', '127.0.0.1', 'XX 内网IP', '{}', '1', '', '2018-08-01 16:53:40');
INSERT INTO sys_oper_log VALUES ('93', '代码生成', '10', 'com.student.controller.tool.GenController.genCode()', '1', 'admin', '研发一部', '/tool/gen/genCode/sys_user_online', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-08-01 16:58:03');
INSERT INTO sys_oper_log VALUES ('94', '用户管理', '6', 'com.student.controller.UserController.export()', '1', 'admin', '研发一部', '/system/user/export', '127.0.0.1', 'XX 内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"]}', '0', null, '2018-08-07 10:21:30');
INSERT INTO sys_oper_log VALUES ('95', '岗位管理', '1', 'com.student.controller.PostController.add()', '1', 'admin', '研发一部', '/system/post/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-17 15:54:39');
INSERT INTO sys_oper_log VALUES ('96', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/0', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:00:27');
INSERT INTO sys_oper_log VALUES ('97', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/0', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:01:03');
INSERT INTO sys_oper_log VALUES ('98', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/0', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:06:42');
INSERT INTO sys_oper_log VALUES ('99', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"123\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', '0', null, '2018-10-18 10:06:50');
INSERT INTO sys_oper_log VALUES ('100', '角色管理', '1', 'com.student.controller.RoleController.add()', '1', 'admin', '研发一部', '/system/role/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:07:03');
INSERT INTO sys_oper_log VALUES ('103', '角色管理', '1', 'com.student.controller.RoleController.add()', '1', 'admin', '研发一部', '/system/role/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:44:02');
INSERT INTO sys_oper_log VALUES ('104', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', null, '{\"roleName\":[\"开心管理员\"],\"roleKey\":[\"1\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"123\"],\"menuIds\":[\"\"]}', '0', null, '2018-10-18 10:44:22');
INSERT INTO sys_oper_log VALUES ('105', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1057', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:44:34');
INSERT INTO sys_oper_log VALUES ('106', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 10:44:53');
INSERT INTO sys_oper_log VALUES ('107', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1057', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:45:02');
INSERT INTO sys_oper_log VALUES ('108', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1057', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:45:59');
INSERT INTO sys_oper_log VALUES ('109', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1057\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"123\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', '0', null, '2018-10-18 10:46:09');
INSERT INTO sys_oper_log VALUES ('110', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1057', '127.0.0.1', null, '{}', '0', null, '2018-10-18 10:46:19');
INSERT INTO sys_oper_log VALUES ('111', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1057', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:46:19');
INSERT INTO sys_oper_log VALUES ('112', '用户管理', '2', 'com.student.controller.UserController.edit()', '1', 'admin', '研发一部', '/system/user/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 10:46:40');
INSERT INTO sys_oper_log VALUES ('113', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 10:46:50');
INSERT INTO sys_oper_log VALUES ('114', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/2', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:58:56');
INSERT INTO sys_oper_log VALUES ('115', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/2', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 10:59:09');
INSERT INTO sys_oper_log VALUES ('116', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:06:52');
INSERT INTO sys_oper_log VALUES ('117', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:07:03');
INSERT INTO sys_oper_log VALUES ('118', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:11:30');
INSERT INTO sys_oper_log VALUES ('119', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:11:31');
INSERT INTO sys_oper_log VALUES ('120', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:11:46');
INSERT INTO sys_oper_log VALUES ('121', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:13:33');
INSERT INTO sys_oper_log VALUES ('122', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:15:53');
INSERT INTO sys_oper_log VALUES ('123', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:19:55');
INSERT INTO sys_oper_log VALUES ('124', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,1057\"]}', '0', null, '2018-10-18 11:20:03');
INSERT INTO sys_oper_log VALUES ('125', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 11:35:19');
INSERT INTO sys_oper_log VALUES ('126', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,3,112,113,1055,1056,114,4,1057\"]}', '0', null, '2018-10-18 11:35:28');
INSERT INTO sys_oper_log VALUES ('127', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:42:59');
INSERT INTO sys_oper_log VALUES ('128', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:43:26');
INSERT INTO sys_oper_log VALUES ('129', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:47:25');
INSERT INTO sys_oper_log VALUES ('130', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:47:45');
INSERT INTO sys_oper_log VALUES ('131', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 11:48:29');
INSERT INTO sys_oper_log VALUES ('132', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 14:46:12');
INSERT INTO sys_oper_log VALUES ('133', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', null, '{\"id\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,', '0', null, '2018-10-18 14:46:43');
INSERT INTO sys_oper_log VALUES ('134', '通知公告', '2', 'com.student.controller.NoticeController.edit()', '1', 'admin', '研发一部', '/system/notice/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-18 15:00:14');
INSERT INTO sys_oper_log VALUES ('135', '字典类型', '1', 'com.student.controller.DictTypeController.add()', '1', 'admin', '研发一部', '/system/dict/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-18 16:42:31');
INSERT INTO sys_oper_log VALUES ('136', '字典类型', '3', 'com.student.controller.DictTypeController.save()', '1', 'admin', '研发一部', '/system/dict/save', '127.0.0.1', 'XX 内网IP', '{\"dictName\":[\"文章类型\"],\"dictType\":[\"article_type\"],\"status\":[\"0\"],\"remark\":[\"文章所需类型\"]}', '0', null, '2018-10-18 16:43:04');
INSERT INTO sys_oper_log VALUES ('137', '字典类型', '2', 'com.student.controller.DictTypeController.edit()', '1', 'admin', '研发一部', '/system/dict/edit/10', '127.0.0.1', null, '{}', '0', null, '2018-10-18 16:43:12');
INSERT INTO sys_oper_log VALUES ('138', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/article_type', '127.0.0.1', null, '{}', '0', null, '2018-10-18 16:43:20');
INSERT INTO sys_oper_log VALUES ('139', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1057', '127.0.0.1', null, '{}', '0', null, '2018-10-19 11:12:27');
INSERT INTO sys_oper_log VALUES ('140', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1057', '127.0.0.1', null, '{}', '0', null, '2018-10-19 11:13:12');
INSERT INTO sys_oper_log VALUES ('141', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', null, '{\"parentId\":[\"1057\"],\"menuType\":[\"C\"],\"menuName\":[\"文章管理\"],\"url\":[\"/function/article\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 11:13:27');
INSERT INTO sys_oper_log VALUES ('142', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1057', '127.0.0.1', null, '{}', '0', null, '2018-10-19 11:13:34');
INSERT INTO sys_oper_log VALUES ('143', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1058', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 11:14:26');
INSERT INTO sys_oper_log VALUES ('144', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', null, '{\"id\":[\"1058\"],\"parentId\":[\"1057\"],\"menuType\":[\"C\"],\"menuName\":[\"文章管理\"],\"url\":[\"/function/article\"],\"perms\":[\"function:article:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 11:14:41');
INSERT INTO sys_oper_log VALUES ('145', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 11:21:40');
INSERT INTO sys_oper_log VALUES ('146', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,', '0', null, '2018-10-19 11:21:47');
INSERT INTO sys_oper_log VALUES ('147', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1058', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 11:25:24');
INSERT INTO sys_oper_log VALUES ('148', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"F\"],\"menuName\":[\"文章查询\"],\"url\":[\"\"],\"perms\":[\"function:article:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 11:25:45');
INSERT INTO sys_oper_log VALUES ('149', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 11:25:56');
INSERT INTO sys_oper_log VALUES ('150', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,', '0', null, '2018-10-19 11:26:05');
INSERT INTO sys_oper_log VALUES ('151', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/article_type', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:05:29');
INSERT INTO sys_oper_log VALUES ('152', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/article_type', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:05:42');
INSERT INTO sys_oper_log VALUES ('153', '字典数据', '2', 'com.student.controller.DictDataController.edit()', '1', 'admin', '研发一部', '/system/dict/data/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:08:09');
INSERT INTO sys_oper_log VALUES ('154', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"技术文章\"],\"dictValue\":[\"0\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"文章所需类型\"]}', '0', null, '2018-10-19 15:08:24');
INSERT INTO sys_oper_log VALUES ('155', '字典类型', '2', 'com.student.controller.DictTypeController.edit()', '1', 'admin', '研发一部', '/system/dict/edit/10', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:08:32');
INSERT INTO sys_oper_log VALUES ('156', '字典类型', '3', 'com.student.controller.DictTypeController.save()', '1', 'admin', '研发一部', '/system/dict/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"10\"],\"dictName\":[\"文章类型\"],\"dictType\":[\"function_article_type\"],\"status\":[\"0\"],\"remark\":[\"文章所需类型\"]}', '0', null, '2018-10-19 15:08:39');
INSERT INTO sys_oper_log VALUES ('157', '字典类型', '1', 'com.student.controller.DictTypeController.add()', '1', 'admin', '研发一部', '/system/dict/add', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:12:02');
INSERT INTO sys_oper_log VALUES ('158', '字典类型', '3', 'com.student.controller.DictTypeController.save()', '1', 'admin', '研发一部', '/system/dict/save', '127.0.0.1', 'XX 内网IP', '{\"dictName\":[\"文章状态\"],\"dictType\":[\"function_article_status\"],\"status\":[\"0\"],\"remark\":[\"文章所需类型\"]}', '0', null, '2018-10-19 15:12:30');
INSERT INTO sys_oper_log VALUES ('159', '字典类型', '2', 'com.student.controller.DictTypeController.edit()', '1', 'admin', '研发一部', '/system/dict/edit/11', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:12:52');
INSERT INTO sys_oper_log VALUES ('160', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/function_article_status', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:15:12');
INSERT INTO sys_oper_log VALUES ('161', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"草稿\"],\"dictValue\":[\"0\"],\"dictType\":[\"function_article_status\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"文章状态所需\"]}', '0', null, '2018-10-19 15:15:52');
INSERT INTO sys_oper_log VALUES ('162', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/function_article_status', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:16:01');
INSERT INTO sys_oper_log VALUES ('163', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/function_article_status', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:16:20');
INSERT INTO sys_oper_log VALUES ('164', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"发布\"],\"dictValue\":[\"1\"],\"dictType\":[\"function_article_status\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"文章状态所需\"]}', '0', null, '2018-10-19 15:16:38');
INSERT INTO sys_oper_log VALUES ('165', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/function_article_status', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:16:41');
INSERT INTO sys_oper_log VALUES ('166', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"删除\"],\"dictValue\":[\"2\"],\"dictType\":[\"function_article_status\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"文章状态所需\"]}', '0', null, '2018-10-19 15:16:54');
INSERT INTO sys_oper_log VALUES ('167', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/article_type', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:17:06');
INSERT INTO sys_oper_log VALUES ('168', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"文学类\"],\"dictValue\":[\"1\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"文章所需类型\"]}', '0', null, '2018-10-19 15:17:28');
INSERT INTO sys_oper_log VALUES ('169', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/function_article_type', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:18:57');
INSERT INTO sys_oper_log VALUES ('170', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"文学类\"],\"dictValue\":[\"0\"],\"dictType\":[\"function_article_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"文章状态所需\"]}', '0', null, '2018-10-19 15:19:17');
INSERT INTO sys_oper_log VALUES ('171', '字典数据', '1', 'com.student.controller.DictDataController.add()', '1', 'admin', '研发一部', '/system/dict/data/add/function_article_type', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:19:24');
INSERT INTO sys_oper_log VALUES ('172', '字典数据', '3', 'com.student.controller.DictDataController.save()', '1', 'admin', '研发一部', '/system/dict/data/save', '127.0.0.1', 'XX 内网IP', '{\"dictLabel\":[\"技术类\"],\"dictValue\":[\"1\"],\"dictType\":[\"function_article_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"文章所需类型\"]}', '0', null, '2018-10-19 15:19:48');
INSERT INTO sys_oper_log VALUES ('173', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1058', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:35:10');
INSERT INTO sys_oper_log VALUES ('174', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1058', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:36:20');
INSERT INTO sys_oper_log VALUES ('175', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', null, '{\"parentId\":[\"1058\"],\"menuType\":[\"F\"],\"menuName\":[\"文章新增\"],\"url\":[\"\"],\"perms\":[\"function:article:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 15:36:40');
INSERT INTO sys_oper_log VALUES ('176', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1059', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:37:35');
INSERT INTO sys_oper_log VALUES ('177', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1058', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:37:45');
INSERT INTO sys_oper_log VALUES ('178', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"F\"],\"menuName\":[\"文章删除\"],\"url\":[\"\"],\"perms\":[\"function:article:delete\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 15:38:08');
INSERT INTO sys_oper_log VALUES ('179', '菜单管理', '1', 'com.student.controller.MenuController.add()', '1', 'admin', '研发一部', '/system/menu/add/1058', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:38:23');
INSERT INTO sys_oper_log VALUES ('180', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"F\"],\"menuName\":[\"文章修改\"],\"url\":[\"\"],\"perms\":[\"function:article:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 15:38:40');
INSERT INTO sys_oper_log VALUES ('181', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1062', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:38:50');
INSERT INTO sys_oper_log VALUES ('182', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1062\"],\"parentId\":[\"1058\"],\"menuType\":[\"F\"],\"menuName\":[\"文章修改\"],\"url\":[\"\"],\"perms\":[\"function:article:edit\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 15:38:53');
INSERT INTO sys_oper_log VALUES ('183', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:40:15');
INSERT INTO sys_oper_log VALUES ('184', '角色管理', '2', 'com.student.controller.RoleController.edit()', '1', 'admin', '研发一部', '/system/role/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:41:31');
INSERT INTO sys_oper_log VALUES ('185', '角色管理', '3', 'com.student.controller.RoleController.save()', '1', 'admin', '研发一部', '/system/role/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,', '0', null, '2018-10-19 15:41:46');
INSERT INTO sys_oper_log VALUES ('186', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:42:20');
INSERT INTO sys_oper_log VALUES ('187', '角色管理', '1', 'com.student.controller.RoleController.add()', '1', 'admin', '研发一部', '/system/role/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:42:54');
INSERT INTO sys_oper_log VALUES ('188', '部门管理', '1', 'com.student.controller.DeptController.add()', '1', 'admin', '研发一部', '/system/dept/add/100', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:42:59');
INSERT INTO sys_oper_log VALUES ('189', '角色管理', '1', 'com.student.controller.RoleController.add()', '1', 'admin', '研发一部', '/system/role/add', '127.0.0.1', null, '{}', '0', null, '2018-10-19 15:43:35');
INSERT INTO sys_oper_log VALUES ('190', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:43:40');
INSERT INTO sys_oper_log VALUES ('191', '菜单管理', '2', 'com.student.controller.MenuController.edit()', '1', 'admin', '研发一部', '/system/menu/edit/1061', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:45:45');
INSERT INTO sys_oper_log VALUES ('192', '菜单管理', '3', 'com.student.controller.MenuController.save()', '1', 'admin', '研发一部', '/system/menu/save', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1061\"],\"parentId\":[\"1058\"],\"menuType\":[\"F\"],\"menuName\":[\"文章删除\"],\"url\":[\"\"],\"perms\":[\"function:article:remove\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2018-10-19 15:45:51');
INSERT INTO sys_oper_log VALUES ('193', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:47:55');
INSERT INTO sys_oper_log VALUES ('194', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:48:39');
INSERT INTO sys_oper_log VALUES ('195', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 15:48:51');
INSERT INTO sys_oper_log VALUES ('196', '个人信息', '2', 'com.student.controller.ProfileController.edit()', '1', 'admin', '研发一部', '/system/user/profile/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:05:02');
INSERT INTO sys_oper_log VALUES ('197', '个人信息', '2', 'com.student.controller.ProfileController.avatar()', '1', 'admin', '研发一部', '/system/user/profile/avatar/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:11:22');
INSERT INTO sys_oper_log VALUES ('198', '个人信息', '2', 'com.student.controller.ProfileController.edit()', '1', 'admin', '研发一部', '/system/user/profile/edit/1', '127.0.0.1', null, '{}', '0', null, '2018-10-19 16:15:47');
INSERT INTO sys_oper_log VALUES ('199', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:17:02');
INSERT INTO sys_oper_log VALUES ('200', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:17:10');
INSERT INTO sys_oper_log VALUES ('201', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:18:10');
INSERT INTO sys_oper_log VALUES ('202', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:18:30');
INSERT INTO sys_oper_log VALUES ('203', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:30:29');
INSERT INTO sys_oper_log VALUES ('204', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:30:45');
INSERT INTO sys_oper_log VALUES ('205', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:40:11');
INSERT INTO sys_oper_log VALUES ('206', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:45:41');
INSERT INTO sys_oper_log VALUES ('207', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:47:20');
INSERT INTO sys_oper_log VALUES ('208', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:47:37');
INSERT INTO sys_oper_log VALUES ('209', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:47:51');
INSERT INTO sys_oper_log VALUES ('210', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:48:09');
INSERT INTO sys_oper_log VALUES ('211', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:49:07');
INSERT INTO sys_oper_log VALUES ('212', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:50:19');
INSERT INTO sys_oper_log VALUES ('213', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 16:52:58');
INSERT INTO sys_oper_log VALUES ('214', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:08:26');
INSERT INTO sys_oper_log VALUES ('215', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', null, '{\"title\":[\"123\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:08:45');
INSERT INTO sys_oper_log VALUES ('216', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"123\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:08:59');
INSERT INTO sys_oper_log VALUES ('217', '个人信息', '2', 'com.student.controller.ProfileController.edit()', '1', 'admin', '研发一部', '/system/user/profile/edit/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:10:29');
INSERT INTO sys_oper_log VALUES ('218', '个人信息', '2', 'com.student.controller.ProfileController.avatar()', '1', 'admin', '研发一部', '/system/user/profile/avatar/1', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:10:32');
INSERT INTO sys_oper_log VALUES ('219', '个人信息', '3', 'com.student.controller.ProfileController.updateAvatar()', '1', 'admin', '研发一部', '/system/user/profile/updateAvatar', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"]}', '0', null, '2018-10-19 17:10:49');
INSERT INTO sys_oper_log VALUES ('220', '个人信息', '2', 'com.student.controller.ProfileController.avatar()', '1', 'admin', '研发一部', '/system/user/profile/avatar/1', '127.0.0.1', null, '{}', '0', null, '2018-10-19 17:11:07');
INSERT INTO sys_oper_log VALUES ('221', '个人信息', '3', 'com.student.controller.ProfileController.updateAvatar()', '1', 'admin', '研发一部', '/system/user/profile/updateAvatar', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"]}', '0', null, '2018-10-19 17:11:11');
INSERT INTO sys_oper_log VALUES ('222', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:12:25');
INSERT INTO sys_oper_log VALUES ('223', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"123\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:12:47');
INSERT INTO sys_oper_log VALUES ('224', '个人信息', '2', 'com.student.controller.ProfileController.avatar()', '1', 'admin', '研发一部', '/system/user/profile/avatar/1', '127.0.0.1', null, '{}', '0', null, '2018-10-19 17:14:05');
INSERT INTO sys_oper_log VALUES ('225', '个人信息', '3', 'com.student.controller.ProfileController.updateAvatar()', '1', 'admin', '研发一部', '/system/user/profile/updateAvatar', '127.0.0.1', 'XX 内网IP', '{\"id\":[\"1\"]}', '0', null, '2018-10-19 17:14:11');
INSERT INTO sys_oper_log VALUES ('226', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"123\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:15:02');
INSERT INTO sys_oper_log VALUES ('227', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:18:24');
INSERT INTO sys_oper_log VALUES ('228', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"1\"],\"typeId\":[\"0\"],\"content\":[\"<p>1</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:18:41');
INSERT INTO sys_oper_log VALUES ('229', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:20:34');
INSERT INTO sys_oper_log VALUES ('230', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"1\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:20:44');
INSERT INTO sys_oper_log VALUES ('231', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"123\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:25:56');
INSERT INTO sys_oper_log VALUES ('232', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{}', '0', null, '2018-10-19 17:26:45');
INSERT INTO sys_oper_log VALUES ('233', '通知文章', '1', 'com.student.controller.function.ArticleController.add()', '1', 'admin', '研发一部', '/function/article/add', '127.0.0.1', 'XX 内网IP', '{\"title\":[\"123\"],\"typeId\":[\"0\"],\"content\":[\"<p>123</p>\"],\"files\":[\"\"],\"avatar\":[\"\"],\"status\":[\"2\"]}', '0', null, '2018-10-19 17:27:16');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
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

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO sys_post VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_post VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_post VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO sys_post VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES ('1', '管理员', 'admin', '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-10-19 15:41:46', '管理员');
INSERT INTO sys_role VALUES ('2', '普通角色', 'common', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');
INSERT INTO sys_role VALUES ('5', '开心管理员', '1', '1', '0', 'admin', '2018-10-18 10:44:22', '', null, '123');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO sys_role_menu VALUES ('1', '1');
INSERT INTO sys_role_menu VALUES ('1', '2');
INSERT INTO sys_role_menu VALUES ('1', '3');
INSERT INTO sys_role_menu VALUES ('1', '4');
INSERT INTO sys_role_menu VALUES ('1', '101');
INSERT INTO sys_role_menu VALUES ('1', '102');
INSERT INTO sys_role_menu VALUES ('1', '103');
INSERT INTO sys_role_menu VALUES ('1', '104');
INSERT INTO sys_role_menu VALUES ('1', '105');
INSERT INTO sys_role_menu VALUES ('1', '106');
INSERT INTO sys_role_menu VALUES ('1', '107');
INSERT INTO sys_role_menu VALUES ('1', '108');
INSERT INTO sys_role_menu VALUES ('1', '109');
INSERT INTO sys_role_menu VALUES ('1', '110');
INSERT INTO sys_role_menu VALUES ('1', '111');
INSERT INTO sys_role_menu VALUES ('1', '112');
INSERT INTO sys_role_menu VALUES ('1', '113');
INSERT INTO sys_role_menu VALUES ('1', '114');
INSERT INTO sys_role_menu VALUES ('1', '500');
INSERT INTO sys_role_menu VALUES ('1', '501');
INSERT INTO sys_role_menu VALUES ('1', '1001');
INSERT INTO sys_role_menu VALUES ('1', '1002');
INSERT INTO sys_role_menu VALUES ('1', '1003');
INSERT INTO sys_role_menu VALUES ('1', '1004');
INSERT INTO sys_role_menu VALUES ('1', '1005');
INSERT INTO sys_role_menu VALUES ('1', '1006');
INSERT INTO sys_role_menu VALUES ('1', '1007');
INSERT INTO sys_role_menu VALUES ('1', '1008');
INSERT INTO sys_role_menu VALUES ('1', '1009');
INSERT INTO sys_role_menu VALUES ('1', '1010');
INSERT INTO sys_role_menu VALUES ('1', '1011');
INSERT INTO sys_role_menu VALUES ('1', '1012');
INSERT INTO sys_role_menu VALUES ('1', '1013');
INSERT INTO sys_role_menu VALUES ('1', '1014');
INSERT INTO sys_role_menu VALUES ('1', '1015');
INSERT INTO sys_role_menu VALUES ('1', '1016');
INSERT INTO sys_role_menu VALUES ('1', '1017');
INSERT INTO sys_role_menu VALUES ('1', '1018');
INSERT INTO sys_role_menu VALUES ('1', '1019');
INSERT INTO sys_role_menu VALUES ('1', '1020');
INSERT INTO sys_role_menu VALUES ('1', '1021');
INSERT INTO sys_role_menu VALUES ('1', '1022');
INSERT INTO sys_role_menu VALUES ('1', '1023');
INSERT INTO sys_role_menu VALUES ('1', '1024');
INSERT INTO sys_role_menu VALUES ('1', '1025');
INSERT INTO sys_role_menu VALUES ('1', '1026');
INSERT INTO sys_role_menu VALUES ('1', '1027');
INSERT INTO sys_role_menu VALUES ('1', '1028');
INSERT INTO sys_role_menu VALUES ('1', '1029');
INSERT INTO sys_role_menu VALUES ('1', '1030');
INSERT INTO sys_role_menu VALUES ('1', '1031');
INSERT INTO sys_role_menu VALUES ('1', '1032');
INSERT INTO sys_role_menu VALUES ('1', '1033');
INSERT INTO sys_role_menu VALUES ('1', '1034');
INSERT INTO sys_role_menu VALUES ('1', '1035');
INSERT INTO sys_role_menu VALUES ('1', '1036');
INSERT INTO sys_role_menu VALUES ('1', '1037');
INSERT INTO sys_role_menu VALUES ('1', '1038');
INSERT INTO sys_role_menu VALUES ('1', '1039');
INSERT INTO sys_role_menu VALUES ('1', '1040');
INSERT INTO sys_role_menu VALUES ('1', '1041');
INSERT INTO sys_role_menu VALUES ('1', '1042');
INSERT INTO sys_role_menu VALUES ('1', '1043');
INSERT INTO sys_role_menu VALUES ('1', '1044');
INSERT INTO sys_role_menu VALUES ('1', '1045');
INSERT INTO sys_role_menu VALUES ('1', '1046');
INSERT INTO sys_role_menu VALUES ('1', '1047');
INSERT INTO sys_role_menu VALUES ('1', '1048');
INSERT INTO sys_role_menu VALUES ('1', '1049');
INSERT INTO sys_role_menu VALUES ('1', '1050');
INSERT INTO sys_role_menu VALUES ('1', '1051');
INSERT INTO sys_role_menu VALUES ('1', '1052');
INSERT INTO sys_role_menu VALUES ('1', '1053');
INSERT INTO sys_role_menu VALUES ('1', '1054');
INSERT INTO sys_role_menu VALUES ('1', '1055');
INSERT INTO sys_role_menu VALUES ('1', '1056');
INSERT INTO sys_role_menu VALUES ('1', '1057');
INSERT INTO sys_role_menu VALUES ('1', '1058');
INSERT INTO sys_role_menu VALUES ('1', '1059');
INSERT INTO sys_role_menu VALUES ('1', '1060');
INSERT INTO sys_role_menu VALUES ('1', '1061');
INSERT INTO sys_role_menu VALUES ('1', '1062');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user VALUES ('1', '106', 'admin', '蒋小姐', '00', 'jxj@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2018-10-19 17:20:30', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-10-19 17:20:29', 'jxj');
INSERT INTO sys_user VALUES ('4', '106', 'jiangxiaojie', 'dargon', '00', '296569845@qq.com', '18324191811', '0', '', 'a0f4e09c52e8b79c1068f91ac62c2b04', '95e77a', '0', '2', '', null, 'admin', '2018-07-30 15:42:29', '', '2018-07-31 11:29:55', '');
INSERT INTO sys_user VALUES ('5', '106', 'jiangxiaojie', 'jiangxiaojie', '00', '296569841@qq.com', '13478539991', '0', '', 'f3712626d1ef5a5131b11412e280d72f', '495a6d', '0', '0', '', null, 'admin', '2018-07-30 15:50:50', 'admin', '2018-07-31 11:36:32', '');

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
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

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO sys_user_online VALUES ('5b25124d-b143-4f06-9b7a-c0953121294c', 'admin', '研发一部', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', 'on_line', '2018-10-19 17:20:22', '2018-10-19 17:26:37', '1800000');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` varchar(64) NOT NULL COMMENT '用户ID',
  `post_id` varchar(64) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO sys_user_post VALUES ('1', '1');
INSERT INTO sys_user_post VALUES ('2', '2');
INSERT INTO sys_user_post VALUES ('4', '1');
INSERT INTO sys_user_post VALUES ('5', '1');
INSERT INTO sys_user_post VALUES ('5', '2');
INSERT INTO sys_user_post VALUES ('6', '4');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO sys_user_role VALUES ('1', '1');
INSERT INTO sys_user_role VALUES ('2', '2');
INSERT INTO sys_user_role VALUES ('4', '1');
INSERT INTO sys_user_role VALUES ('5', '1');
INSERT INTO sys_user_role VALUES ('6', '2');
