/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : studen_mybatis

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-24 17:27:20
*/

SET FOREIGN_KEY_CHECKS=0;
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
  `dict_code` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
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
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

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

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

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
INSERT INTO sys_job VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

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
) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu VALUES ('1', '系统管理', '0', '1', '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO sys_menu VALUES ('2', '系统监控', '0', '2', '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO sys_menu VALUES ('3', '系统工具', '0', '3', '#', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
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

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(2) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(500) NOT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO sys_notice VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
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
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`post_id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES ('1', '管理员', 'admin', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO sys_role VALUES ('2', '普通角色', 'common', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

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
INSERT INTO sys_role_menu VALUES ('1', '100');
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
INSERT INTO sys_role_menu VALUES ('1', '1000');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user VALUES ('1', '106', 'admin', '蒋小姐', '00', 'jxj@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2018-07-24 17:25:18', 'admin', '2018-03-16 11:33:00', 'jxj', '2018-07-24 17:25:17', 'jxj');
INSERT INTO sys_user VALUES ('2', '108', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
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
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO sys_user_online VALUES ('ad29da97-b025-47d8-9613-b445aef23ca9', 'admin', '研发一部', '127.0.0.1', 'XX 内网IP', 'Chrome', 'Windows 7', 'on_line', '2018-07-24 17:25:13', '2018-07-24 17:25:18', '1800000');

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
