/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : srcdb

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2023-03-14 16:39:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add project', '7', 'add_project');
INSERT INTO `auth_permission` VALUES ('26', 'Can change project', '7', 'change_project');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete project', '7', 'delete_project');
INSERT INTO `auth_permission` VALUES ('28', 'Can view project', '7', 'view_project');
INSERT INTO `auth_permission` VALUES ('29', 'Can add company information', '8', 'add_companyinformation');
INSERT INTO `auth_permission` VALUES ('30', 'Can change company information', '8', 'change_companyinformation');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete company information', '8', 'delete_companyinformation');
INSERT INTO `auth_permission` VALUES ('32', 'Can view company information', '8', 'view_companyinformation');
INSERT INTO `auth_permission` VALUES ('33', 'Can add project type', '9', 'add_projecttype');
INSERT INTO `auth_permission` VALUES ('34', 'Can change project type', '9', 'change_projecttype');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete project type', '9', 'delete_projecttype');
INSERT INTO `auth_permission` VALUES ('36', 'Can view project type', '9', 'view_projecttype');
INSERT INTO `auth_permission` VALUES ('37', 'Can add industry type', '10', 'add_industrytype');
INSERT INTO `auth_permission` VALUES ('38', 'Can change industry type', '10', 'change_industrytype');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete industry type', '10', 'delete_industrytype');
INSERT INTO `auth_permission` VALUES ('40', 'Can view industry type', '10', 'view_industrytype');
INSERT INTO `auth_permission` VALUES ('41', 'Can add skill requirements', '11', 'add_skillrequirements');
INSERT INTO `auth_permission` VALUES ('42', 'Can change skill requirements', '11', 'change_skillrequirements');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete skill requirements', '11', 'delete_skillrequirements');
INSERT INTO `auth_permission` VALUES ('44', 'Can view skill requirements', '11', 'view_skillrequirements');
INSERT INTO `auth_permission` VALUES ('45', 'Can add business type', '12', 'add_businesstype');
INSERT INTO `auth_permission` VALUES ('46', 'Can change business type', '12', 'change_businesstype');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete business type', '12', 'delete_businesstype');
INSERT INTO `auth_permission` VALUES ('48', 'Can view business type', '12', 'view_businesstype');
INSERT INTO `auth_permission` VALUES ('49', 'Can add reward type', '13', 'add_rewardtype');
INSERT INTO `auth_permission` VALUES ('50', 'Can change reward type', '13', 'change_rewardtype');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete reward type', '13', 'delete_rewardtype');
INSERT INTO `auth_permission` VALUES ('52', 'Can view reward type', '13', 'view_rewardtype');
INSERT INTO `auth_permission` VALUES ('53', 'Can add reward level', '14', 'add_rewardlevel');
INSERT INTO `auth_permission` VALUES ('54', 'Can change reward level', '14', 'change_rewardlevel');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete reward level', '14', 'delete_rewardlevel');
INSERT INTO `auth_permission` VALUES ('56', 'Can view reward level', '14', 'view_rewardlevel');
INSERT INTO `auth_permission` VALUES ('57', 'Can add project status', '15', 'add_projectstatus');
INSERT INTO `auth_permission` VALUES ('58', 'Can change project status', '15', 'change_projectstatus');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete project status', '15', 'delete_projectstatus');
INSERT INTO `auth_permission` VALUES ('60', 'Can view project status', '15', 'view_projectstatus');
INSERT INTO `auth_permission` VALUES ('61', 'Can add leak information', '16', 'add_leakinformation');
INSERT INTO `auth_permission` VALUES ('62', 'Can change leak information', '16', 'change_leakinformation');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete leak information', '16', 'delete_leakinformation');
INSERT INTO `auth_permission` VALUES ('64', 'Can view leak information', '16', 'view_leakinformation');
INSERT INTO `auth_permission` VALUES ('65', 'Can add leak rank', '17', 'add_leakrank');
INSERT INTO `auth_permission` VALUES ('66', 'Can change leak rank', '17', 'change_leakrank');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete leak rank', '17', 'delete_leakrank');
INSERT INTO `auth_permission` VALUES ('68', 'Can view leak rank', '17', 'view_leakrank');
INSERT INTO `auth_permission` VALUES ('69', 'Can add user', '18', 'add_user');
INSERT INTO `auth_permission` VALUES ('70', 'Can change user', '18', 'change_user');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete user', '18', 'delete_user');
INSERT INTO `auth_permission` VALUES ('72', 'Can view user', '18', 'view_user');
INSERT INTO `auth_permission` VALUES ('73', 'Can add manage user detail', '19', 'add_manageuserdetail');
INSERT INTO `auth_permission` VALUES ('74', 'Can change manage user detail', '19', 'change_manageuserdetail');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete manage user detail', '19', 'delete_manageuserdetail');
INSERT INTO `auth_permission` VALUES ('76', 'Can view manage user detail', '19', 'view_manageuserdetail');
INSERT INTO `auth_permission` VALUES ('77', 'Can add department', '20', 'add_department');
INSERT INTO `auth_permission` VALUES ('78', 'Can change department', '20', 'change_department');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete department', '20', 'delete_department');
INSERT INTO `auth_permission` VALUES ('80', 'Can view department', '20', 'view_department');
INSERT INTO `auth_permission` VALUES ('81', 'Can add user detail', '21', 'add_userdetail');
INSERT INTO `auth_permission` VALUES ('82', 'Can change user detail', '21', 'change_userdetail');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete user detail', '21', 'delete_userdetail');
INSERT INTO `auth_permission` VALUES ('84', 'Can view user detail', '21', 'view_userdetail');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$390000$Gd4IdahVppfqDje0gYvr99$So4UMdMEzeUXeE6TWkywTDg87yxP2BAs5tZ2I7IEDus=', '2023-03-14 07:51:39.335443', '1', 'admin', '', '', 'admin@qq.com', '1', '1', '2023-03-13 06:51:29.474042');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2023-03-13 06:53:04.442719', '1', 'RewardLevel object (1)', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2023-03-13 06:53:08.801014', '2', 'RewardLevel object (2)', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2023-03-13 06:53:13.699679', '3', 'RewardLevel object (3)', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2023-03-13 06:53:16.827823', '4', 'RewardLevel object (4)', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2023-03-13 06:53:20.352445', '5', 'RewardLevel object (5)', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2023-03-13 06:54:24.170196', '1', 'ProjectStatus object (1)', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2023-03-13 06:54:32.047057', '2', 'ProjectStatus object (2)', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2023-03-13 06:54:36.193259', '3', 'ProjectStatus object (3)', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2023-03-13 06:54:48.717919', '4', 'ProjectStatus object (4)', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2023-03-13 07:57:10.903114', '1', 'Project object (1)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2023-03-13 07:57:29.368866', '1', 'Project object (1)', '2', '[{\"changed\": {\"fields\": [\"Skill requirements\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2023-03-14 07:25:29.811311', '1', 'C0127', '1', '[{\"added\": {}}]', '18', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'srcmodel', 'project');
INSERT INTO `django_content_type` VALUES ('8', 'srcmodel', 'companyinformation');
INSERT INTO `django_content_type` VALUES ('9', 'srcmodel', 'projecttype');
INSERT INTO `django_content_type` VALUES ('10', 'srcmodel', 'industrytype');
INSERT INTO `django_content_type` VALUES ('11', 'srcmodel', 'skillrequirements');
INSERT INTO `django_content_type` VALUES ('12', 'srcmodel', 'businesstype');
INSERT INTO `django_content_type` VALUES ('13', 'srcmodel', 'rewardtype');
INSERT INTO `django_content_type` VALUES ('14', 'srcmodel', 'rewardlevel');
INSERT INTO `django_content_type` VALUES ('15', 'srcmodel', 'projectstatus');
INSERT INTO `django_content_type` VALUES ('16', 'srcmodel', 'leakinformation');
INSERT INTO `django_content_type` VALUES ('17', 'srcmodel', 'leakrank');
INSERT INTO `django_content_type` VALUES ('18', 'srcmodel', 'user');
INSERT INTO `django_content_type` VALUES ('19', 'srcmodel', 'manageuserdetail');
INSERT INTO `django_content_type` VALUES ('20', 'srcmodel', 'department');
INSERT INTO `django_content_type` VALUES ('21', 'srcmodel', 'userdetail');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2023-03-13 06:50:37.485324');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2023-03-13 06:50:38.688856');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2023-03-13 06:50:38.970068');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2023-03-13 06:50:38.979151');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2023-03-13 06:50:38.987181');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2023-03-13 06:50:39.153275');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2023-03-13 06:50:39.231293');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2023-03-13 06:50:39.308291');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2023-03-13 06:50:39.320293');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2023-03-13 06:50:39.382291');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2023-03-13 06:50:39.386291');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2023-03-13 06:50:39.395293');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2023-03-13 06:50:39.461326');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2023-03-13 06:50:39.524760');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2023-03-13 06:50:39.601797');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2023-03-13 06:50:39.617172');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0012_alter_user_first_name_max_length', '2023-03-13 06:50:39.695812');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2023-03-13 06:50:39.774669');
INSERT INTO `django_migrations` VALUES ('19', 'srcmodel', '0001_initial', '2023-03-13 06:50:55.320540');
INSERT INTO `django_migrations` VALUES ('20', 'srcmodel', '0002_leakinformation_project', '2023-03-13 07:03:30.979866');
INSERT INTO `django_migrations` VALUES ('21', 'srcmodel', '0003_alter_businesstype_type_name_and_more', '2023-03-14 01:50:39.290065');
INSERT INTO `django_migrations` VALUES ('22', 'srcmodel', '0004_alter_businesstype_options_and_more', '2023-03-14 01:50:39.354807');
INSERT INTO `django_migrations` VALUES ('23', 'srcmodel', '0005_alter_user_usertype', '2023-03-14 01:50:39.430185');
INSERT INTO `django_migrations` VALUES ('24', 'srcmodel', '0006_rename_create_name_user_manage_userinfo', '2023-03-14 02:17:36.290255');
INSERT INTO `django_migrations` VALUES ('25', 'srcmodel', '0007_alter_user_password', '2023-03-14 06:26:41.328959');
INSERT INTO `django_migrations` VALUES ('26', 'srcmodel', '0008_alter_user_password', '2023-03-14 07:17:40.042591');
INSERT INTO `django_migrations` VALUES ('27', 'srcmodel', '0009_alter_user_company_information_and_more', '2023-03-14 07:24:56.214992');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('bm9r59gougspylt8dcvfjsk7j4xvyl6l', '.eJxVjMsOwiAQRf-FtSHQ4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2el3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtHSD4Kp5U3Seg4FURhMCmYjAblQUhMaIVCAsxopbLgqGRFxVqdybH3B9pbN_U:1pbzRb:v4jq6UlC2X1mCbpg2mSHtyya0XzacJsKPf2mKAhFkiU', '2023-03-28 07:51:39.338410');

-- ----------------------------
-- Table structure for srcmodel_businesstype
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_businesstype`;
CREATE TABLE `srcmodel_businesstype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_businesstype
-- ----------------------------
INSERT INTO `srcmodel_businesstype` VALUES ('1', 'WEB端');
INSERT INTO `srcmodel_businesstype` VALUES ('2', '移动客户端');
INSERT INTO `srcmodel_businesstype` VALUES ('3', 'PC端');
INSERT INTO `srcmodel_businesstype` VALUES ('4', '智能硬件');

-- ----------------------------
-- Table structure for srcmodel_companyinformation
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_companyinformation`;
CREATE TABLE `srcmodel_companyinformation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(32) NOT NULL,
  `company_title` varchar(64) NOT NULL,
  `company_introduction` longtext NOT NULL,
  `logo` varchar(128) NOT NULL,
  `address` varchar(32) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_companyinformation
-- ----------------------------
INSERT INTO `srcmodel_companyinformation` VALUES ('1', '上海泛微网络科技股份有限公司', '泛微数字化运营管理平台', '泛微数字化运营管理平台为组织提供从 “可信数字身份、电子化流程审批、个性化岗位信息门户、 知识文档管理、电子化签署到内外协同的业务管理” 于一体的丰富功能应用，帮助组织按需定制所需应用场景，助力组织的数字化转型。', 'https://i.3001.net/uploads/Up_imgs/20230303-a97ca27c5960ab300af2df8299e89556.png', '上海市奉贤区环城西路3006号', 'https://www.weaver.com.cn');
INSERT INTO `srcmodel_companyinformation` VALUES ('2', '华晨宝马汽车有限公司', '秉持BMW iFACTORY生产战略，宝马在全球推进绿色生产', '华晨宝马汽车有限公司成立于2003年5月，是宝马集团和华晨集团共同设立的合资企业。业务涵盖宝马品牌汽车在中国的研发、采购、生产、销售和售后服务。华晨宝马聚焦高质量发展，致力于成为可持续高档个人出行服务提供商，并引领中国汽车行业整个价值链的可持续发展。华晨宝马在辽宁省沈阳市建有先进的生产基地，在北京和上海设有分公司。华晨宝马旗下还拥有一家全资子公司-领悦数字信息技术有限公司，并在南京设有分公司。合资公司现有员工约23,000人，本土供应商超430家，连续16年成为沈阳最大纳税企业。2021年，华晨宝马生产了超过70万辆汽车，在中国首次成为豪华汽车产量最大的汽车制造企业。同时，宝马的销售和服务网络遍及全国，在中国拥有683个经销商服务网点，客户满意度在一众高档汽车品牌中名列前茅。', 'https://i.3001.net/uploads/Up_imgs/20230303-e10eaed6f50c218e7511c41e494f3ec9.png', '北京市朝阳区东三环北路霞光里18号佳程大厦B座25层', 'http://www.bmw-brilliance.cn/');

-- ----------------------------
-- Table structure for srcmodel_department
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_department`;
CREATE TABLE `srcmodel_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_department
-- ----------------------------

-- ----------------------------
-- Table structure for srcmodel_industrytype
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_industrytype`;
CREATE TABLE `srcmodel_industrytype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_industrytype
-- ----------------------------
INSERT INTO `srcmodel_industrytype` VALUES ('1', '金融');
INSERT INTO `srcmodel_industrytype` VALUES ('2', '电商');
INSERT INTO `srcmodel_industrytype` VALUES ('3', '娱乐');
INSERT INTO `srcmodel_industrytype` VALUES ('4', '运输');
INSERT INTO `srcmodel_industrytype` VALUES ('5', '旅游');
INSERT INTO `srcmodel_industrytype` VALUES ('6', '房产');
INSERT INTO `srcmodel_industrytype` VALUES ('7', '制造业');
INSERT INTO `srcmodel_industrytype` VALUES ('8', '政企');
INSERT INTO `srcmodel_industrytype` VALUES ('9', '健康');
INSERT INTO `srcmodel_industrytype` VALUES ('10', '互联网');
INSERT INTO `srcmodel_industrytype` VALUES ('11', '综合');
INSERT INTO `srcmodel_industrytype` VALUES ('12', '其他');

-- ----------------------------
-- Table structure for srcmodel_leakinformation
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_leakinformation`;
CREATE TABLE `srcmodel_leakinformation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `leak_id` varchar(32) NOT NULL,
  `leak_name` varchar(32) NOT NULL,
  `leak_describe` longtext NOT NULL,
  `leak_scope` varchar(32) NOT NULL,
  `leak_harm` varchar(64) NOT NULL,
  `repair_comments` varchar(64) NOT NULL,
  `leak_status` varchar(32) NOT NULL,
  `leak_reward` int(11) NOT NULL,
  `create_data` date NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `leak_rank_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `srcmodel_leakinformation_author_id_57ff659d` (`author_id`),
  KEY `srcmodel_leakinformation_leak_rank_id_d7115d28` (`leak_rank_id`),
  KEY `srcmodel_leakinformation_project_id_ef383a21` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_leakinformation
-- ----------------------------

-- ----------------------------
-- Table structure for srcmodel_leakrank
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_leakrank`;
CREATE TABLE `srcmodel_leakrank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_leakrank
-- ----------------------------

-- ----------------------------
-- Table structure for srcmodel_manageuserdetail
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_manageuserdetail`;
CREATE TABLE `srcmodel_manageuserdetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sex` smallint(6) NOT NULL,
  `birthday` date NOT NULL,
  `entry_data` date NOT NULL,
  `department_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `srcmodel_manageuserdetail_department_id_642e5ff6` (`department_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_manageuserdetail
-- ----------------------------

-- ----------------------------
-- Table structure for srcmodel_project
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_project`;
CREATE TABLE `srcmodel_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(32) NOT NULL,
  `project_name` varchar(32) NOT NULL,
  `project_details` longtext NOT NULL,
  `create_data` date NOT NULL,
  `start_data` date NOT NULL,
  `end_data` date NOT NULL,
  `business_type_id` bigint(20) NOT NULL,
  `company_information_id` bigint(20) NOT NULL,
  `industry_type_id` bigint(20) NOT NULL,
  `project_status_id` bigint(20) NOT NULL,
  `project_type_id` bigint(20) NOT NULL,
  `reward_level_id` bigint(20) NOT NULL,
  `reward_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `srcmodel_project_business_type_id_fba1a67a` (`business_type_id`),
  KEY `srcmodel_project_company_information_id_6c9322cf` (`company_information_id`),
  KEY `srcmodel_project_industry_type_id_0bed0688` (`industry_type_id`),
  KEY `srcmodel_project_project_status_id_bab6db15` (`project_status_id`),
  KEY `srcmodel_project_project_type_id_89dde3f3` (`project_type_id`),
  KEY `srcmodel_project_reward_level_id_5c0c05cb` (`reward_level_id`),
  KEY `srcmodel_project_reward_type_id_ee952013` (`reward_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_project
-- ----------------------------
INSERT INTO `srcmodel_project` VALUES ('1', 'SRC-2023-1009', '泛微安全应急响应中心（WEAVERSRC）', '漏洞奖励计划\r\n    ¥10000-¥20000严重\r\n    ¥3000-¥5000高危\r\n    ¥500-¥1000 中危\r\n    ¥10-¥100 低危\r\nSRC简介\r\n 2019.10.14，泛微安全应急响应中心（WEAVERSRC）正式上线。泛微与漏洞盒子平台携手共建互联网安全新生态。\r\n\r\n声明\r\n在漏洞未修复前，我们希望您不要公开和传播。我们承诺：对每一份报告，都会有专门的安全人员进行评、跟进并及时反馈最新的处理结果，并且我们会按照“漏洞奖励计划”对您的付出表示感谢。\r\n\r\n漏洞规则\r\n白帽子提交漏洞前，请仔细阅读以下规则：\r\n因系统维护升级，暂时停止接收以下资产：\r\nhttps://weaversrc.vulbox.com/news/detail-549\r\nWEAVERSRC漏洞奖励计划：\r\nhttps://weaversrc.vulbox.com/news/detail-548\r\n\r\n漏洞积分\r\nWEAVERSRC漏洞积分默认按照漏洞盒子平台B类厂商计算。非核心业务或边缘系统漏洞将按C类厂商积分计算。具体积分计算详见帮助中心[漏洞盒子积分系统]章节：https://www.vulbox.com/faq/?id=103\r\nWEAVERSRC每月白帽子及团队排行依据为白帽子提交泛微SRC漏洞对应积分。提交泛微漏洞积分同时会计算到漏洞盒子赛季排行中。\r\n\r\n资产\r\nhttps://src.e-cology.com.cn/\r\nhttps://src.e-cology.com.cn:8443/\r\nhttps://src.e-cology.com.cn:9444/\r\nhttps://src.e-cology.com.cn:9443/\r\nhttps://src.e-cology.com.cn:7443/\r\nsrc.e-cology.com.cn:5222\r\nhttp://bimpeo.e-office.cn:8080/', '2023-03-13', '2023-03-14', '2023-03-31', '1', '1', '10', '1', '3', '5', '1');

-- ----------------------------
-- Table structure for srcmodel_projectstatus
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_projectstatus`;
CREATE TABLE `srcmodel_projectstatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_projectstatus
-- ----------------------------
INSERT INTO `srcmodel_projectstatus` VALUES ('1', '待审核');
INSERT INTO `srcmodel_projectstatus` VALUES ('2', '未开始');
INSERT INTO `srcmodel_projectstatus` VALUES ('3', '进行中');
INSERT INTO `srcmodel_projectstatus` VALUES ('4', '已结束');

-- ----------------------------
-- Table structure for srcmodel_projecttype
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_projecttype`;
CREATE TABLE `srcmodel_projecttype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_projecttype
-- ----------------------------
INSERT INTO `srcmodel_projecttype` VALUES ('1', '普通项目');
INSERT INTO `srcmodel_projecttype` VALUES ('2', '高级项目');
INSERT INTO `srcmodel_projecttype` VALUES ('3', '企业src');
INSERT INTO `srcmodel_projecttype` VALUES ('4', '攻防渗透');
INSERT INTO `srcmodel_projecttype` VALUES ('5', '兼职测试');

-- ----------------------------
-- Table structure for srcmodel_project_skill_requirements
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_project_skill_requirements`;
CREATE TABLE `srcmodel_project_skill_requirements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) NOT NULL,
  `skillrequirements_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `srcmodel_project_skill_r_project_id_skillrequirem_6a77cf31_uniq` (`project_id`,`skillrequirements_id`),
  KEY `srcmodel_project_skill_requirements_project_id_ddd0dc0f` (`project_id`),
  KEY `srcmodel_project_skill_requ_skillrequirements_id_b4578d2a` (`skillrequirements_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_project_skill_requirements
-- ----------------------------
INSERT INTO `srcmodel_project_skill_requirements` VALUES ('2', '1', '16');

-- ----------------------------
-- Table structure for srcmodel_rewardlevel
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_rewardlevel`;
CREATE TABLE `srcmodel_rewardlevel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_rewardlevel
-- ----------------------------
INSERT INTO `srcmodel_rewardlevel` VALUES ('1', '1级');
INSERT INTO `srcmodel_rewardlevel` VALUES ('2', '2级');
INSERT INTO `srcmodel_rewardlevel` VALUES ('3', '3级');
INSERT INTO `srcmodel_rewardlevel` VALUES ('4', '4级');
INSERT INTO `srcmodel_rewardlevel` VALUES ('5', '5级');

-- ----------------------------
-- Table structure for srcmodel_rewardtype
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_rewardtype`;
CREATE TABLE `srcmodel_rewardtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_rewardtype
-- ----------------------------
INSERT INTO `srcmodel_rewardtype` VALUES ('1', '现金');
INSERT INTO `srcmodel_rewardtype` VALUES ('2', '代金券');
INSERT INTO `srcmodel_rewardtype` VALUES ('3', '积分');

-- ----------------------------
-- Table structure for srcmodel_skillrequirements
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_skillrequirements`;
CREATE TABLE `srcmodel_skillrequirements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_skillrequirements
-- ----------------------------
INSERT INTO `srcmodel_skillrequirements` VALUES ('1', 'web传统漏洞');
INSERT INTO `srcmodel_skillrequirements` VALUES ('2', 'APP安全漏洞');
INSERT INTO `srcmodel_skillrequirements` VALUES ('3', '逻辑漏洞');
INSERT INTO `srcmodel_skillrequirements` VALUES ('4', '情报/信息收集');
INSERT INTO `srcmodel_skillrequirements` VALUES ('5', '内网渗透');
INSERT INTO `srcmodel_skillrequirements` VALUES ('6', '云安全');
INSERT INTO `srcmodel_skillrequirements` VALUES ('7', '代码审计');
INSERT INTO `srcmodel_skillrequirements` VALUES ('8', '逆向破解');
INSERT INTO `srcmodel_skillrequirements` VALUES ('9', 'API测试');
INSERT INTO `srcmodel_skillrequirements` VALUES ('10', '反序列化');
INSERT INTO `srcmodel_skillrequirements` VALUES ('11', '二进制分析');
INSERT INTO `srcmodel_skillrequirements` VALUES ('12', 'C/S端测试');
INSERT INTO `srcmodel_skillrequirements` VALUES ('13', 'IOT测试');
INSERT INTO `srcmodel_skillrequirements` VALUES ('14', '安全开发');
INSERT INTO `srcmodel_skillrequirements` VALUES ('15', '应急溯源');
INSERT INTO `srcmodel_skillrequirements` VALUES ('16', 'CTF');
INSERT INTO `srcmodel_skillrequirements` VALUES ('17', '其他');

-- ----------------------------
-- Table structure for srcmodel_user
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_user`;
CREATE TABLE `srcmodel_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `password` varchar(512) NOT NULL,
  `usertype` smallint(6) NOT NULL,
  `company_information_id` bigint(20) DEFAULT NULL,
  `manage_userinfo_id` bigint(20) DEFAULT NULL,
  `user_detail_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_detail_id` (`user_detail_id`),
  UNIQUE KEY `create_name_id` (`manage_userinfo_id`),
  UNIQUE KEY `company_information_id` (`company_information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_user
-- ----------------------------
INSERT INTO `srcmodel_user` VALUES ('1', 'C0127', '1476098078@qq.com', '18383123083', 'pbkdf2_sha256$390000$OaB4HXPX8vp2Y8y0XEtism$2Uv22ViPzEXYXgBxkveGzpCBeAXrDrPU8hvG0t18svk=', '1', '1', null, null);

-- ----------------------------
-- Table structure for srcmodel_userdetail
-- ----------------------------
DROP TABLE IF EXISTS `srcmodel_userdetail`;
CREATE TABLE `srcmodel_userdetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sex` smallint(6) NOT NULL,
  `birthday` date NOT NULL,
  `diploma` varchar(32) NOT NULL,
  `occupation` varchar(32) NOT NULL,
  `introduce` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srcmodel_userdetail
-- ----------------------------
