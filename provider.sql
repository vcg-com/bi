CREATE TABLE `provider` (
`id` int(11) NOT NULL AUTO_INCREMENT COMMENT '最终正式供应商ID',
`name_cn` varchar(100) DEFAULT NULL COMMENT '供应商全称（中文名）',
`user_center_id` varchar(50) DEFAULT NULL COMMENT '用户中心id',
`name_en` varchar(100) DEFAULT NULL COMMENT '供应商全称（英文名）',
`short_name` varchar(100) DEFAULT NULL COMMENT '供应商简称',
`agent_type` int(2) unsigned DEFAULT NULL COMMENT '1:机构 2:个人 3:500px',
`asset_family` int(2) DEFAULT NULL COMMENT '供应商类型1编辑类2创意类3编辑类&创意类4:公关',
`photographer_type` int(2) DEFAULT '1' COMMENT '1:供稿人 3:公司上传账号 8核心摄影师 9:买断供应商10买断摄影师 11.机构 1:供稿人 3:公司上传账号 8核心摄影师9:买断供应商 11.机构',
`photographer_tag` varchar(100) DEFAULT NULL COMMENT '供稿人标签',
`shoot_direction` varchar(100) DEFAULT NULL COMMENT '拍摄方向',
`country` varchar(50) DEFAULT NULL COMMENT '国家',
`province` varchar(50) DEFAULT NULL COMMENT '省',
`city` varchar(50) DEFAULT NULL COMMENT '市',
`live_city` varchar(100) DEFAULT NULL COMMENT '目前居住城市',
`location` varchar(500) DEFAULT NULL COMMENT '具体地点',
`company` varchar(254) DEFAULT NULL COMMENT '供应商所属公司',
`job_type` int(11) DEFAULT NULL COMMENT '从业类型 1:媒体 2:非媒体 3:个人 4:学生 5:企业 6:党政 7:传媒 8:广告营销',
`quality_rank` varchar(20) DEFAULT NULL COMMENT '供应商等级 1-A+ 2-A 3-B 4-C 5-D',
`status` int(2) DEFAULT NULL COMMENT '状态 3 开通 5冻结 6关闭 ',
`is_getty` int(2) DEFAULT '0' COMMENT '1:是getty供应商 0:不是',
`belong_teritery` int(2) DEFAULT NULL COMMENT '所属区域\r\n   亚洲1：东亚11、南亚12、西亚13、北亚14、东南亚15、中亚16 \r\n欧洲2：北欧21、西欧22、中欧23、南欧和东欧24\r\n非洲4：北非41、东非42、西非43、中非和南非44\r\n美洲3：北美31、中美32、南美33\r\n大洋洲4\r\n',
`is_native` int(2) DEFAULT '1' COMMENT '1本土2国外',
`currency` int(11) DEFAULT NULL COMMENT '货币类型1 CNY 2USD 3 EUR 4GBP 5 JPY',
`licence_pic` varchar(200) DEFAULT NULL COMMENT '营业执照照片',
`tax_pic` varchar(50) DEFAULT NULL COMMENT '税务登记照片',
`comment` varchar(3000) DEFAULT NULL COMMENT '备注',
`report_flag` varchar(255) DEFAULT NULL COMMENT '1  需要出明细报表(主要针对个人摄影师) 供应商出按摄影师名得汇总表',
`pay_flag` varchar(255) DEFAULT '0' COMMENT '支付标记  0:正常 1:暂时冻结 2:永久冻结',
`nopay_reason` varchar(1000) DEFAULT NULL COMMENT '不支付的理由',
`signature_name` varchar(200) DEFAULT NULL COMMENT '署名 供应商笔名  摄影师艺名',
`created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
`created_by` varchar(36) DEFAULT NULL,
`updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`updated_by` varchar(36) DEFAULT NULL,
`contract_version` int(2) DEFAULT NULL COMMENT '传数据用，不用维护 合同版本 0:老合同 1:新合同',
`invitate_by` varchar(300) DEFAULT NULL COMMENT '邀请人id,合同版本为3：邀人签约合同时有值',
`name_cn_zn` varchar(100) DEFAULT NULL COMMENT 'name_cn的拼音',
`is_zh` varchar(2) DEFAULT NULL COMMENT 'name_zn是否包含汉字:0 不包含汉字，1 包含汉字',
`is_gongguan` varchar(1) DEFAULT NULL COMMENT '是否公关摄影师 1 是',
`limit_price_ladder` char(1) DEFAULT '0' COMMENT '不限量合同限价等级  2 高限价 1 低限价 0 不限价',
`report_currency` int(11) DEFAULT NULL COMMENT '报告币种: 1 RMB版 2 外币版',
`tax_type` int(1) DEFAULT NULL COMMENT '纳税类型   0：非居民  1 ：居民',
`nationality` varchar(100) DEFAULT NULL COMMENT '国籍',
`birth_nationality` varchar(100) DEFAULT NULL COMMENT '出生国家',
`private_brand` int(1) DEFAULT NULL COMMENT '机构是否自有品牌  1：是  0 ：否',
PRIMARY KEY (`id`) USING BTREE,
KEY `i_user_center_id` (`user_center_id`),
KEY `i_providerName` (`name_cn`),
KEY `rds_idx_0` (`name_cn`,`photographer_type`,`agent_type`),
KEY `rds_idx_1` (`photographer_type`,`agent_type`,`user_center_id`),
KEY `rds_idx_2` (`photographer_type`,`agent_type`),
KEY `i_status` (`status`),
KEY `idx_updated_time` (`updated_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5903870 DEFAULT CHARSET=utf8mb4 COMMENT='供应商';