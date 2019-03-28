CREATE TABLE `sys_task_manager` (
  `id` int(5) NOT NULL,
  `product_name` varchar(100)   COMMENT '项目管理',
  `task_description` varchar(100)   COMMENT ' 任务描述',
  `workload` varchar(100)   COMMENT '工作量',
  `house_address` int(2)   COMMENT '房屋住址',
  `phone` int(1)   COMMENT '电话号码',
  `finish_date` datetime COMMENT '完成时间' ,
  `create_date` datetime  ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='任务管理';

CREATE TABLE `sys_team_manager` (
      `id` int(5) NOT NULL,
      `user_name` varchar(100)   COMMENT '用户名',
      `sex` varchar(100)   COMMENT ' 性别',
      `phone` varchar(100)   COMMENT '电话',
      `address` int(2)   COMMENT '地址',
      `product_id` int(1)   COMMENT '项目id',
      `create_date` datetime  ,
      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='团队人员管理';

CREATE TABLE `sys_storage` (
      `id` int(5) NOT NULL,
      `user_name` varchar(100)  COMMENT '入库人',
      `materials_name` varchar(2)  COMMENT ' 材料名称',
      `unit` varchar(100)   COMMENT '单位',
      `num` int(1)   COMMENT '数量',
      `product_id` int(1)   COMMENT '项目id',
      `create_date` datetime ,
      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='入库管理';

CREATE TABLE `sys_stock` (
       `id` int(5) NOT NULL,
       `materials_name` varchar(100)   COMMENT '材料名称',
       `procurement_date` datetime   COMMENT ' 采购日期',
       `unit` varchar(100)   COMMENT '单位',
       `num` int   COMMENT '数量',
       `unit_price` double   COMMENT '单价',
       `create_date` datetime DEFAULT NULL,
       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='库存管理';


CREATE TABLE `sys_procurement_manager` (
       `id` int(5) NOT NULL,
       `procurement_name` varchar(100)   COMMENT '采购人',
       `materials_name` varchar(100)   COMMENT '材料名称',
       `procurement_date` datetime   COMMENT ' 采购日期',
       `unit` varchar(100)   COMMENT '单位',
       `num` int   COMMENT '数量',
       `unit_price` double   COMMENT '单价',
       `create_date` datetime DEFAULT NULL,
       `update_time` datetime DEFAULT NULL,
       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='采购管理';
