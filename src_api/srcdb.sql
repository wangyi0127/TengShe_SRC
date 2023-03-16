
-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$390000$Gd4IdahVppfqDje0gYvr99$So4UMdMEzeUXeE6TWkywTDg87yxP2BAs5tZ2I7IEDus=', '2023-03-14 07:51:39.335443', '1', 'admin', '', '', 'admin@qq.com', '1', '1', '2023-03-13 06:51:29.474042');

-- ----------------------------
-- Records of app_project_businesstype
-- ----------------------------
INSERT INTO `app_project_businesstype` VALUES ('1', 'WEB端');
INSERT INTO `app_project_businesstype` VALUES ('2', '移动客户端');
INSERT INTO `app_project_businesstype` VALUES ('3', 'PC端');
INSERT INTO `app_project_businesstype` VALUES ('4', '智能硬件');

-- ----------------------------
-- Records of app_project_companyinformation
-- ----------------------------
INSERT INTO `app_project_companyinformation` VALUES ('1', '上海泛微网络科技股份有限公司', '泛微数字化运营管理平台', '泛微数字化运营管理平台为组织提供从 “可信数字身份、电子化流程审批、个性化岗位信息门户、 知识文档管理、电子化签署到内外协同的业务管理” 于一体的丰富功能应用，帮助组织按需定制所需应用场景，助力组织的数字化转型。', 'https://i.3001.net/uploads/Up_imgs/20230303-a97ca27c5960ab300af2df8299e89556.png', '上海市奉贤区环城西路3006号', 'https://www.weaver.com.cn');
INSERT INTO `app_project_companyinformation` VALUES ('2', '华晨宝马汽车有限公司', '秉持BMW iFACTORY生产战略，宝马在全球推进绿色生产', '华晨宝马汽车有限公司成立于2003年5月，是宝马集团和华晨集团共同设立的合资企业。业务涵盖宝马品牌汽车在中国的研发、采购、生产、销售和售后服务。华晨宝马聚焦高质量发展，致力于成为可持续高档个人出行服务提供商，并引领中国汽车行业整个价值链的可持续发展。华晨宝马在辽宁省沈阳市建有先进的生产基地，在北京和上海设有分公司。华晨宝马旗下还拥有一家全资子公司-领悦数字信息技术有限公司，并在南京设有分公司。合资公司现有员工约23,000人，本土供应商超430家，连续16年成为沈阳最大纳税企业。2021年，华晨宝马生产了超过70万辆汽车，在中国首次成为豪华汽车产量最大的汽车制造企业。同时，宝马的销售和服务网络遍及全国，在中国拥有683个经销商服务网点，客户满意度在一众高档汽车品牌中名列前茅。', 'https://i.3001.net/uploads/Up_imgs/20230303-e10eaed6f50c218e7511c41e494f3ec9.png', '北京市朝阳区东三环北路霞光里18号佳程大厦B座25层', 'http://www.bmw-brilliance.cn/');


-- ----------------------------
-- Records of app_project_industrytype
-- ----------------------------
INSERT INTO `app_project_industrytype` VALUES ('1', '金融');
INSERT INTO `app_project_industrytype` VALUES ('2', '电商');
INSERT INTO `app_project_industrytype` VALUES ('3', '娱乐');
INSERT INTO `app_project_industrytype` VALUES ('4', '运输');
INSERT INTO `app_project_industrytype` VALUES ('5', '旅游');
INSERT INTO `app_project_industrytype` VALUES ('6', '房产');
INSERT INTO `app_project_industrytype` VALUES ('7', '制造业');
INSERT INTO `app_project_industrytype` VALUES ('8', '政企');
INSERT INTO `app_project_industrytype` VALUES ('9', '健康');
INSERT INTO `app_project_industrytype` VALUES ('10', '互联网');
INSERT INTO `app_project_industrytype` VALUES ('11', '综合');
INSERT INTO `app_project_industrytype` VALUES ('12', '其他');

-- ----------------------------
-- Records of app_project_project
-- ----------------------------
INSERT INTO `app_project_project` VALUES ('1', 'SRC-2023-1009', '泛微安全应急响应中心（WEAVERSRC）', '漏洞奖励计划\r\n    ¥10000-¥20000严重\r\n    ¥3000-¥5000高危\r\n    ¥500-¥1000 中危\r\n    ¥10-¥100 低危\r\nSRC简介\r\n 2019.10.14，泛微安全应急响应中心（WEAVERSRC）正式上线。泛微与漏洞盒子平台携手共建互联网安全新生态。\r\n\r\n声明\r\n在漏洞未修复前，我们希望您不要公开和传播。我们承诺：对每一份报告，都会有专门的安全人员进行评、跟进并及时反馈最新的处理结果，并且我们会按照“漏洞奖励计划”对您的付出表示感谢。\r\n\r\n漏洞规则\r\n白帽子提交漏洞前，请仔细阅读以下规则：\r\n因系统维护升级，暂时停止接收以下资产：\r\nhttps://weaversrc.vulbox.com/news/detail-549\r\nWEAVERSRC漏洞奖励计划：\r\nhttps://weaversrc.vulbox.com/news/detail-548\r\n\r\n漏洞积分\r\nWEAVERSRC漏洞积分默认按照漏洞盒子平台B类厂商计算。非核心业务或边缘系统漏洞将按C类厂商积分计算。具体积分计算详见帮助中心[漏洞盒子积分系统]章节：https://www.vulbox.com/faq/?id=103\r\nWEAVERSRC每月白帽子及团队排行依据为白帽子提交泛微SRC漏洞对应积分。提交泛微漏洞积分同时会计算到漏洞盒子赛季排行中。\r\n\r\n资产\r\nhttps://src.e-cology.com.cn/\r\nhttps://src.e-cology.com.cn:8443/\r\nhttps://src.e-cology.com.cn:9444/\r\nhttps://src.e-cology.com.cn:9443/\r\nhttps://src.e-cology.com.cn:7443/\r\nsrc.e-cology.com.cn:5222\r\nhttp://bimpeo.e-office.cn:8080/', '2023-03-13', '2023-03-14', '2023-03-31', '1', '1', '10', '1', '3', '5', '1');

-- ----------------------------
-- Records of app_project_projectstatus
-- ----------------------------
INSERT INTO `app_project_projectstatus` VALUES ('1', '待审核');
INSERT INTO `app_project_projectstatus` VALUES ('2', '未开始');
INSERT INTO `app_project_projectstatus` VALUES ('3', '进行中');
INSERT INTO `app_project_projectstatus` VALUES ('4', '已结束');

-- ----------------------------
-- Records of app_project_projecttype
-- ----------------------------
INSERT INTO `app_project_projecttype` VALUES ('1', '普通项目');
INSERT INTO `app_project_projecttype` VALUES ('2', '高级项目');
INSERT INTO `app_project_projecttype` VALUES ('3', '企业src');
INSERT INTO `app_project_projecttype` VALUES ('4', '攻防渗透');
INSERT INTO `app_project_projecttype` VALUES ('5', '兼职测试');

-- ----------------------------
-- Records of app_project_project_skill_requirements
-- ----------------------------
INSERT INTO `app_project_project_skill_requirements` VALUES ('2', '1', '16');

-- ----------------------------
-- Records of app_project_rewardlevel
-- ----------------------------
INSERT INTO `app_project_rewardlevel` VALUES ('1', '1级');
INSERT INTO `app_project_rewardlevel` VALUES ('2', '2级');
INSERT INTO `app_project_rewardlevel` VALUES ('3', '3级');
INSERT INTO `app_project_rewardlevel` VALUES ('4', '4级');
INSERT INTO `app_project_rewardlevel` VALUES ('5', '5级');

-- ----------------------------
-- Records of app_project_rewardtype
-- ----------------------------
INSERT INTO `app_project_rewardtype` VALUES ('1', '现金');
INSERT INTO `app_project_rewardtype` VALUES ('2', '代金券');
INSERT INTO `app_project_rewardtype` VALUES ('3', '积分');

-- ----------------------------
-- Records of app_project_skillrequirements
-- ----------------------------
INSERT INTO `app_project_skillrequirements` VALUES ('1', 'web传统漏洞');
INSERT INTO `app_project_skillrequirements` VALUES ('2', 'APP安全漏洞');
INSERT INTO `app_project_skillrequirements` VALUES ('3', '逻辑漏洞');
INSERT INTO `app_project_skillrequirements` VALUES ('4', '情报/信息收集');
INSERT INTO `app_project_skillrequirements` VALUES ('5', '内网渗透');
INSERT INTO `app_project_skillrequirements` VALUES ('6', '云安全');
INSERT INTO `app_project_skillrequirements` VALUES ('7', '代码审计');
INSERT INTO `app_project_skillrequirements` VALUES ('8', '逆向破解');
INSERT INTO `app_project_skillrequirements` VALUES ('9', 'API测试');
INSERT INTO `app_project_skillrequirements` VALUES ('10', '反序列化');
INSERT INTO `app_project_skillrequirements` VALUES ('11', '二进制分析');
INSERT INTO `app_project_skillrequirements` VALUES ('12', 'C/S端测试');
INSERT INTO `app_project_skillrequirements` VALUES ('13', 'IOT测试');
INSERT INTO `app_project_skillrequirements` VALUES ('14', '安全开发');
INSERT INTO `app_project_skillrequirements` VALUES ('15', '应急溯源');
INSERT INTO `app_project_skillrequirements` VALUES ('16', 'CTF');
INSERT INTO `app_project_skillrequirements` VALUES ('17', '其他');

-- ----------------------------
-- Records of app_project_user
-- ----------------------------
INSERT INTO `app_project_user` VALUES ('1', 'C0127', '1476098078@qq.com', '18383123083', 'pbkdf2_sha256$390000$OaB4HXPX8vp2Y8y0XEtism$2Uv22ViPzEXYXgBxkveGzpCBeAXrDrPU8hvG0t18svk=', '1', '1', null, null);
