/*
 Navicat Premium Data Transfer

 Source Server         : oneSQL
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 127.0.0.1:3306
 Source Schema         : gzd

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 04/03/2019 20:40:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _banner
-- ----------------------------
DROP TABLE IF EXISTS `_banner`;
CREATE TABLE `_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图',
  `banner_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `banner_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '轮播图文字标题',
  `banner_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '小标题，多个用逗号(,)隔开',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _banner
-- ----------------------------
BEGIN;
INSERT INTO `_banner` VALUES (1, '/banner/1549216990373.png', '动态', 'aa,45,58,中文');
INSERT INTO `_banner` VALUES (2, '/banner/1549558100707.png', '产品', '3');
COMMIT;

-- ----------------------------
-- Table structure for _base_msg
-- ----------------------------
DROP TABLE IF EXISTS `_base_msg`;
CREATE TABLE `_base_msg` (
  `base_msg_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `base_msg_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT 'logo',
  `base_msg_f1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '版权说明1',
  `base_msg_f2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '版权说明2',
  `base_msg_f3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '版权说明3',
  `base_msg_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '电话',
  `base_msg_qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '二维码',
  `base_msg_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '邮箱',
  `base_msg_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '公司名',
  `base_msg_copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '版权',
  PRIMARY KEY (`base_msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _base_msg
-- ----------------------------
BEGIN;
INSERT INTO `_base_msg` VALUES ('ae65e5b1bc7e475cbe73d234400f6b13', '/baseMsg/2019030317550781090.png', '本网站旨在提供广州决策、尚客的项目介绍以及相关说明，不意味本公司对此介绍说说明做出了任何承诺。', '版权声明：所有图文均受著作权保护，未经允许不得使用，不得转载、摘编。', '广州市广州决策文化传播有限公司保留最终解释权。', '(020)28164153   (9:00-18:00)', '/baseMsg/2019030317424849694.jpg', '88888888@163.com', '广州决策文化传播有限公司', 'Copyright © 2016-2018  ICP 备888888号');
COMMIT;

-- ----------------------------
-- Table structure for _case_classify
-- ----------------------------
DROP TABLE IF EXISTS `_case_classify`;
CREATE TABLE `_case_classify` (
  `case_classify_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '案例分类id',
  `case_classify_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '案例分类名',
  `case_classify_name_en` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '英文',
  `case_classify_intro` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  `case_classify_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `case_classify_long_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '详细页面封面',
  PRIMARY KEY (`case_classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _case_classify
-- ----------------------------
BEGIN;
INSERT INTO `_case_classify` VALUES (1, '传', 'SDF', '啦啦啦范德萨放慢了速度；看 ', '/caseClassify/2019022217114662685.jpg', '/caseClassify/2019022217342286583.jpg');
INSERT INTO `_case_classify` VALUES (2, '中文', NULL, '史蒂夫史蒂夫', '/caseClassify/1550066264395.jpg', NULL);
INSERT INTO `_case_classify` VALUES (3, '3图标大小建议', NULL, '370x260', '/caseClassify/1550066271839.jpg', NULL);
INSERT INTO `_case_classify` VALUES (4, '4', NULL, '4', '/caseClassify/1550066278249.jpg', 'null');
INSERT INTO `_case_classify` VALUES (5, '555555555555', NULL, '55555', '/caseClassify/1550066284906.jpg', NULL);
INSERT INTO `_case_classify` VALUES (7, '7', NULL, '7', '/caseClassify/1550066307426.jpg', NULL);
INSERT INTO `_case_classify` VALUES (8, '8', NULL, '8', '/caseClassify/1550066313188.jpg', NULL);
INSERT INTO `_case_classify` VALUES (9, '9', NULL, '9', '/caseClassify/1550066318560.jpg', NULL);
INSERT INTO `_case_classify` VALUES (10, '10', NULL, '10', '/caseClassify/1550066328316.jpg', NULL);
INSERT INTO `_case_classify` VALUES (11, 'skr', NULL, 'skrrrrr', '/caseClassify/1550069042809.jpg', NULL);
INSERT INTO `_case_classify` VALUES (12, '11', NULL, '11', '/caseClassify/1550069060668.jpg', NULL);
COMMIT;

-- ----------------------------
-- Table structure for _case_gzdm
-- ----------------------------
DROP TABLE IF EXISTS `_case_gzdm`;
CREATE TABLE `_case_gzdm` (
  `case_gzdm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '案例id',
  `case_gzdm_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `case_gzdm_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '小标题',
  `case_gzdm_content` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '内容-富文本',
  `case_gzdm_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文章封面',
  `case_gzdm_read` int(11) DEFAULT NULL COMMENT '阅读量',
  `case_gzdm_create_time` datetime DEFAULT NULL COMMENT '发布时间',
  `case_gzdm_status` int(11) DEFAULT NULL COMMENT '状态(0:1-删除:启动)',
  `case_classify_id` int(11) DEFAULT NULL COMMENT '分类id',
  `customer_company_id` int(11) DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`case_gzdm_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _case_gzdm
-- ----------------------------
BEGIN;
INSERT INTO `_case_gzdm` VALUES (4, 'as', 'fsdfdsf', '<p>dsfasdfdasf</p><p><br></p><p>fdsfds</p>', '/CaseGzdm/2019022017420484881.jpg', 555, '2019-02-20 03:42:06', 1, 1, 1);
INSERT INTO `_case_gzdm` VALUES (5, 'sdfdsaf', 'dsfds', '<p>dsf</p><p><br></p><p><img src=\"/CaseGzdm/Case/2019022019420373601.jpg\" style=\"max-width:100%;\"><br></p>', '/CaseGzdm/2019030418214692272.jpg', 37, '2019-02-20 04:38:03', 1, 3, 1);
INSERT INTO `_case_gzdm` VALUES (6, 'sdfvdsf', 'fdsf', '<p>sdfsdvdfsv</p><p>fdsf</p>', '/CaseGzdm/2019022213014100454.jpg', 4, '2019-02-21 23:01:46', 1, 5, 1);
INSERT INTO `_case_gzdm` VALUES (7, '当时发生的', '史蒂夫', '<p><img src=\"/CaseGzdm/Case/2019030418103223758.png\" style=\"max-width:100%;\"><br></p><h1><font color=\"#1c487f\">415156</font></h1><div><font color=\"#1c487f\">4566</font></div><div><video src=\"/CaseGzdm/Video/2019030418110776303.mp4\" style=\"width:50%;height: 50%;\" controls=\"\" autobuffer=\"\" muted=\"\"></video></div><p><br></p>', '/CaseGzdm/2019030418102684042.png', 2, '2019-03-04 04:11:16', 1, 11, 2);
COMMIT;

-- ----------------------------
-- Table structure for _comment
-- ----------------------------
DROP TABLE IF EXISTS `_comment`;
CREATE TABLE `_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `comment_content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '留言内容',
  `comment_status` int(11) DEFAULT NULL COMMENT '(0:1-删除-启用)',
  `comment_create_time` datetime DEFAULT NULL,
  `comment_contact` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系方式',
  `comment_start` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ' ' COMMENT '方便时间',
  `comment_end` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ' ' COMMENT '方便时间',
  `comment_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户称呼',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _comment
-- ----------------------------
BEGIN;
INSERT INTO `_comment` VALUES (1, 'dsfd', 1, '2019-02-27 03:17:32', '13719090336', NULL, NULL, '1dsf');
INSERT INTO `_comment` VALUES (2, 'dsfd', 1, '2019-02-27 03:18:13', '13719090336@qq.com', NULL, NULL, '1dsf');
INSERT INTO `_comment` VALUES (3, 'fdsf', 1, '2019-02-27 08:10:21', '13719090336', '00:00:00', NULL, '123');
INSERT INTO `_comment` VALUES (4, 'sdf', 0, '2019-02-27 08:15:25', '13719096', NULL, NULL, '156s1');
INSERT INTO `_comment` VALUES (5, 'fdsf', 0, '2019-02-28 07:56:11', '1456156', '21:56:02', NULL, '12');
INSERT INTO `_comment` VALUES (6, 'sdf', 1, '2019-02-28 08:06:19', '18718714975', NULL, NULL, 'sdf');
INSERT INTO `_comment` VALUES (7, '飞机上的六块腹肌', 1, '2019-03-03 22:50:48', '13719090444', '00:00:00', '12:50:38', '123');
COMMIT;

-- ----------------------------
-- Table structure for _company_course
-- ----------------------------
DROP TABLE IF EXISTS `_company_course`;
CREATE TABLE `_company_course` (
  `company_course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司历程id',
  `company_course_content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '历程内容',
  `company_course_time` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '历程时间',
  `company_course_sort` int(11) DEFAULT NULL COMMENT '历程顺序',
  `company_course_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '历程图片',
  PRIMARY KEY (`company_course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _company_course
-- ----------------------------
BEGIN;
INSERT INTO `_company_course` VALUES (2, 'fdsfasdfdsaf', '2018-06-04', 1, '/companyCourse/2019022318282569618.jpg');
INSERT INTO `_company_course` VALUES (3, '积极哦进行地方', '2018年9月', 2, '/companyCourse/2019022515330925948.jpg');
INSERT INTO `_company_course` VALUES (4, '改一下史蒂夫是大丰收大范德萨发大厦发生大放送大方', '2017年2月', 3, '/companyCourse/2019022516022877116.png');
COMMIT;

-- ----------------------------
-- Table structure for _company_intro
-- ----------------------------
DROP TABLE IF EXISTS `_company_intro`;
CREATE TABLE `_company_intro` (
  `company_intro_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司简介id',
  `company_intro_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `company_intro_content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '简介内容',
  `company_intro_sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`company_intro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _company_intro
-- ----------------------------
BEGIN;
INSERT INTO `_company_intro` VALUES (1, '/companyIntro/2019022316530216005.jpg', '45456456145616', 3);
INSERT INTO `_company_intro` VALUES (2, '/companyIntro/2019022316543322110.jpg', '2222222\n2222', 2);
COMMIT;

-- ----------------------------
-- Table structure for _customer_company
-- ----------------------------
DROP TABLE IF EXISTS `_customer_company`;
CREATE TABLE `_customer_company` (
  `customer_company_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户公司id',
  `customer_company_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '客户公司名',
  `customer_company_name_en` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '英文公司名',
  `customer_company_status` int(255) DEFAULT NULL COMMENT '状态(0:1-禁用:启用)',
  `customer_company_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '客户形象图片',
  `customer_company_long_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '详细页面封面',
  `customer_company_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _customer_company
-- ----------------------------
BEGIN;
INSERT INTO `_customer_company` VALUES (1, '东方', 'east', 1, '/customerCompany/2019021917425582560.jpg', 'null', '2019-02-19 03:43:02');
INSERT INTO `_customer_company` VALUES (2, '笑着', 'x', 1, '/customerCompany/2019022217265558857.jpg', '/customerCompany/2019022217341049506.jpg', '2019-02-22 03:27:09');
COMMIT;

-- ----------------------------
-- Table structure for _manager
-- ----------------------------
DROP TABLE IF EXISTS `_manager`;
CREATE TABLE `_manager` (
  `manager_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'uuid' COMMENT '管理员id',
  `manager_phone` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '账号',
  `manager_pass` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `manager_status` int(11) DEFAULT '0' COMMENT '状态(0:1-删除:启动)',
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ',' COMMENT '权限id',
  `manager_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `manager_login_time` datetime DEFAULT NULL COMMENT '最近登陆时间',
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _manager
-- ----------------------------
BEGIN;
INSERT INTO `_manager` VALUES ('1', '1', '1', 1, ',1,2,3,4,5,6,7,8,9,10,', '2019-02-20 03:42:06', '2019-03-04 04:29:31');
INSERT INTO `_manager` VALUES ('1dc596310e5c422e95b7d16bf043b178', 'guangzhoujuece', 'huangweixuanzuishuai', 1, ',1,2,3,4,5,6,7,8,9,10,', '2019-03-03 01:36:30', '2019-03-03 02:17:58');
COMMIT;

-- ----------------------------
-- Table structure for _pages_info
-- ----------------------------
DROP TABLE IF EXISTS `_pages_info`;
CREATE TABLE `_pages_info` (
  `pages_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '页面介绍',
  `pages_info_title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `pages_info_title_en` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题英文翻译',
  `pages_info_img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '背景图',
  `case_classify_id` int(11) DEFAULT NULL COMMENT '案例分类id',
  PRIMARY KEY (`pages_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _pages_info
-- ----------------------------
BEGIN;
INSERT INTO `_pages_info` VALUES (1, '动态', '1920x320', '/pagesInfo/1550051495944.jpg', NULL);
INSERT INTO `_pages_info` VALUES (2, '产品', 'bb', '/pagesInfo/1550051551654.jpg', NULL);
INSERT INTO `_pages_info` VALUES (3, '合作', 'hezuo', '/pagesInfo/2019022516041795937.jpg', NULL);
INSERT INTO `_pages_info` VALUES (4, '关于', 'about', '/pagesInfo/2019022516042943436.jpg', NULL);
COMMIT;

-- ----------------------------
-- Table structure for _product
-- ----------------------------
DROP TABLE IF EXISTS `_product`;
CREATE TABLE `_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品项目',
  `product_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `product_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _product
-- ----------------------------
BEGIN;
INSERT INTO `_product` VALUES (1, '/product/1549977325476.png', '中图片png', '健身房里看见阿瑟滴哦放假');
INSERT INTO `_product` VALUES (2, '/product/1549977348164.png', 'SKR', 'jds显示一下表情');
INSERT INTO `_product` VALUES (3, '/product/1549977408094.png', '360旋转', '鼠标移动到图标可旋转');
INSERT INTO `_product` VALUES (5, '/product/1550047065498.png', '最好四个一行', 'aaa');
COMMIT;

-- ----------------------------
-- Table structure for _recruit
-- ----------------------------
DROP TABLE IF EXISTS `_recruit`;
CREATE TABLE `_recruit` (
  `recruit_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '招聘职位id',
  `recruit_title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位名称',
  `recruit_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '职位描述(;)隔开',
  `recruit_create_time` datetime DEFAULT NULL,
  `recruit_status` int(11) DEFAULT NULL COMMENT '(0:1-禁用-启用)',
  PRIMARY KEY (`recruit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _recruit
-- ----------------------------
BEGIN;
INSERT INTO `_recruit` VALUES (2, '设计', '附近的萨卡老骥伏枥;\n微积分 i 哦额忘记', '2019-02-23 03:57:08', 1);
INSERT INTO `_recruit` VALUES (3, '文员', 'sdajkfiodsajfio;\n将佛 is 大家发 i 哦;\n就哦 i 微积分 i 哦额忘记', '2019-02-25 00:59:54', 1);
COMMIT;

-- ----------------------------
-- Table structure for _role
-- ----------------------------
DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限',
  `role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _role
-- ----------------------------
BEGIN;
INSERT INTO `_role` VALUES (1, '页面内容权限');
INSERT INTO `_role` VALUES (2, '案例分类权限');
INSERT INTO `_role` VALUES (3, '案例管理权限');
INSERT INTO `_role` VALUES (4, '客户管理权限');
INSERT INTO `_role` VALUES (5, '关于我们权限');
INSERT INTO `_role` VALUES (6, '招聘权限');
INSERT INTO `_role` VALUES (7, '留言页面权限');
INSERT INTO `_role` VALUES (8, '访客记录权限');
INSERT INTO `_role` VALUES (9, '管理员操作权限');
INSERT INTO `_role` VALUES (10, '页面头尾信息');
COMMIT;

-- ----------------------------
-- Table structure for _serve
-- ----------------------------
DROP TABLE IF EXISTS `_serve`;
CREATE TABLE `_serve` (
  `serve_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务',
  `serve_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `serve_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `serve_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`serve_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _serve
-- ----------------------------
BEGIN;
INSERT INTO `_serve` VALUES (1, '人多就是力量！', '鼓励二胎政策、生男生女都一样', '/serve/1549978813333.jpg');
INSERT INTO `_serve` VALUES (2, '注意图片尺寸', '可以设置拉伸和自动裁剪-300x428', '/serve/1549980326159.jpg');
INSERT INTO `_serve` VALUES (3, 'DACHENSHIA', 'DAC', '/serve/1549980439968.jpg');
COMMIT;

-- ----------------------------
-- Table structure for _user_ip
-- ----------------------------
DROP TABLE IF EXISTS `_user_ip`;
CREATE TABLE `_user_ip` (
  `user_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `user_ip_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ip地址',
  `user_ip_create_time` datetime DEFAULT NULL COMMENT '登陆时间',
  PRIMARY KEY (`user_ip_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of _user_ip
-- ----------------------------
BEGIN;
INSERT INTO `_user_ip` VALUES (1, '香港香港XXXX电讯盈科', '219.76.161.41', '2019-03-01 01:14:58');
INSERT INTO `_user_ip` VALUES (2, '香港香港XXXX电讯盈科', '219.76.161.41', '2019-03-01 01:17:22');
INSERT INTO `_user_ip` VALUES (3, NULL, '219.76.161.41', '2019-03-01 01:47:06');
INSERT INTO `_user_ip` VALUES (4, NULL, '219.76.161.41', '2019-03-01 01:47:35');
INSERT INTO `_user_ip` VALUES (5, '香港香港XXXX电讯盈科', '219.76.161.41', '2019-03-01 01:48:26');
INSERT INTO `_user_ip` VALUES (6, NULL, '219.76.161.41', '2019-03-01 01:50:50');
INSERT INTO `_user_ip` VALUES (7, '香港香港XXXX电讯盈科', '219.76.161.41', '2019-03-01 01:51:59');
INSERT INTO `_user_ip` VALUES (8, '香港香港XXXX电讯盈科', '219.76.161.41', '2019-03-01 01:54:54');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
