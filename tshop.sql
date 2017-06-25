/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : tshop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-06-25 22:56:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `published_date` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `content` text,
  `top` tinyint(4) NOT NULL DEFAULT '0',
  `author` varchar(10) DEFAULT NULL,
  `infoFrom` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `praise` int(11) NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '0', '0', '等比例图片裁切', '2016-06-23 00:32:20', '1', '&lt;p&gt;a&lt;/p&gt;', '0', 'admin', '', '', '0', '0', 'Public/thumb/2016-06-23/576abda022cf8.jpg');
INSERT INTO `article` VALUES ('5', '0', '0', 'gwagfwa', '2016-06-23 11:57:57', '1', '&lt;p&gt;dwa&lt;/p&gt;', '0', 'admin', '', '', '0', '0', null);
INSERT INTO `article` VALUES ('6', '0', '0', '没有图片的文章', '2016-06-23 14:47:55', '1', '&lt;p&gt;内容&lt;/p&gt;', '0', 'admin', '', '', '0', '0', null);
INSERT INTO `article` VALUES ('7', '0', '0', '有图片的文章', '2016-06-23 14:48:21', '1', '&lt;p&gt;内容&lt;/p&gt;', '0', 'admin', '', '', '0', '0', 'Public/thumb/2016-06-23/576b863fdb744.jpg');
INSERT INTO `article` VALUES ('8', '7', '0', '花湖', '2016-06-15 15:37:11', '2', '&lt;p&gt;fafa&lt;/p&gt;', '1', 'admin', 'a', '花湖a', '0', '0', 'Public/thumb/2016-06-23/576b91bc35c99.jpg');
INSERT INTO `article` VALUES ('9', '0', '0', '文章', '2016-06-23 16:06:23', '3', '&lt;p&gt;ad&lt;/p&gt;', '1', 'admin', 'a.com', 'fsa', '0', '0', 'Public/thumb/2016-06-23/576b988eb2803.jpg');
INSERT INTO `article` VALUES ('10', '0', '0', '文章1', '2016-06-23 16:06:23', '3', '&lt;p&gt;ad&lt;/p&gt;', '1', 'admin', '', 'fsa', '0', '0', null);
INSERT INTO `article` VALUES ('12', '5', '0', '文章123', '2016-10-07 16:06:23', '2', '&lt;p&gt;ad1123213&lt;/p&gt;', '0', 'admin1', '', 'fsa123', '0', '0', 'Public/thumb/2016-06-23/576b9e34c042b.jpg');
INSERT INTO `article` VALUES ('13', '0', '0', '123', '2016-06-24 09:37:26', '1', '&lt;p&gt;&lt;span&gt;&lt;em&gt;&lt;strong&gt;7i7ykyuky&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160624/1466732309951088.jpg&quot; title=&quot;1466732309951088.jpg&quot; alt=&quot;669f562c11dfa9ec0a80703560d0f703918fc136.jpg&quot;/&gt;&lt;/strong&gt;&lt;/p&gt;', '0', 'admin', '', '', '0', '0', null);
INSERT INTO `article` VALUES ('14', '0', '0', '1', '2016-06-27 18:30:07', '1', '&lt;p&gt;1&lt;/p&gt;', '0', 'admin', '', '', '0', '0', null);
INSERT INTO `article` VALUES ('15', '5', '0', '测试文字', '2016-06-29 02:30:53						', '2', '&lt;p&gt;123&lt;br/&gt;&lt;/p&gt;', '1', 'admin', 'baidu.com', '测试在于', '0', '0', null);
INSERT INTO `article` VALUES ('16', '6', '0', 'fs', '2016-06-29 02:32:16						', '3', '&lt;p&gt;f&lt;/p&gt;', '1', '', '', '', '0', '0', 'Public/thumb/2016-06-29/5772c2bb565d6.jpg');

-- ----------------------------
-- Table structure for `attr`
-- ----------------------------
DROP TABLE IF EXISTS `attr`;
CREATE TABLE `attr` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名称',
  `type_id` smallint(5) unsigned NOT NULL COMMENT '主键id',
  `attr_sel` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:唯一  1:多选',
  `attr_write` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:手工录入  1:从列表选中',
  `attr_vals` varchar(256) NOT NULL DEFAULT '' COMMENT '供多选属性设置的选取项目,例如颜色：白色,红色,绿色,多个可选值通过[逗号]分隔',
  PRIMARY KEY (`id`),
  KEY `id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='属性表';

-- ----------------------------
-- Records of attr
-- ----------------------------
INSERT INTO `attr` VALUES ('1', '出版社', '1', '0', '0', '');
INSERT INTO `attr` VALUES ('2', '价格', '1', '0', '0', '');
INSERT INTO `attr` VALUES ('3', '图书装订', '1', '1', '1', '黑白书籍,彩色');
INSERT INTO `attr` VALUES ('4', '价格', '3', '0', '0', '');
INSERT INTO `attr` VALUES ('5', '附加赠品', '3', '1', '1', '键盘,鼠标,鼠标垫');
INSERT INTO `attr` VALUES ('6', '颜色', '2', '1', '1', '红色,白色,黄色');
INSERT INTO `attr` VALUES ('7', '网络类型', '2', '1', '1', '3G,4G');
INSERT INTO `attr` VALUES ('8', '是否支持货到付款', '2', '0', '0', '');
INSERT INTO `attr` VALUES ('9', '是否支持分期付款', '2', '0', '0', '');

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '超级管理员', '1', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,0');
INSERT INTO `auth_group` VALUES ('2', '管理员', '1', '1,2,3,7,8,9,10,11,12,13,14,15,16,17,18,19,20,0');
INSERT INTO `auth_group` VALUES ('3', '编辑', '1', '1,2,3,4,5,6,7,8,9,20,0');
INSERT INTO `auth_group` VALUES ('4', '游客', '1', '16,17,18,19,20,0');
INSERT INTO `auth_group` VALUES ('5', '测试1', '1', '1,2,3,4,5,6,7,8,9,0');

-- ----------------------------
-- Table structure for `auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_access`;
CREATE TABLE `auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_access
-- ----------------------------
INSERT INTO `auth_group_access` VALUES ('1', '1');
INSERT INTO `auth_group_access` VALUES ('2', '2');
INSERT INTO `auth_group_access` VALUES ('3', '3');
INSERT INTO `auth_group_access` VALUES ('4', '4');
INSERT INTO `auth_group_access` VALUES ('5', '5');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('1', '0', '', '课程管理', 'icon-film', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('2', '1', 'Course/index', '课程列表', 'icon-film', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('3', '1', 'Course/add', '添加课程', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('4', '0', '', '分类管理', 'icon-list', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('5', '4', 'Category/index', '分类列表', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('6', '4', 'Category/add', '分类添加', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('7', '0', '', '内容管理', 'icon-edit', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('8', '7', 'Article/index', '内容列表', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('9', '7', 'Article/add', '内容添加', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('10', '0', '', '管理员管理', 'icon-key', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('11', '10', 'User/add', '管理员添加', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('12', '10', 'User/index', '管理员列表', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('13', '0', '', '菜单管理', 'icon-barcode', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('14', '13', 'Menu/index', '菜单列表', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('15', '13', 'Menu/add', '新增菜单', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('16', '0', '', '用户和组', 'icon-group', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('17', '16', 'Group/add', '新增用户组', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('18', '16', 'Group/index', '用户组列表', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('19', '16', 'User/add', '新增用户', 'icon-double-angle-right', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('30', '0', '', '商品类型管理', 'icon-food', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('29', '27', 'Goods/add', '商品添加', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('28', '27', 'Goods/index', '商品列表', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('27', '0', '', '商品管理', 'icon-food', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('31', '30', 'Type/showlist', '商品类型列表', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('32', '30', 'Type/add', '商品类型添加', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('33', '0', '', '商品属性管理', 'icon-food', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('34', '33', 'Attr/showlist', '商品属性列表', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('35', '33', 'Attr/add', '商品属性添加', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('36', '27', 'Goodscategory/showlist', '商品分类列表', '', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('37', '0', 'Order/index', '订单管理', 'icon-food', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('38', '37', 'Order/index', '订单列表', 'icon-food', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('40', '0', 'Test/index', '测试测试', 'icon-edit', '1', '1', '', '1', '0', '');
INSERT INTO `auth_rule` VALUES ('41', '40', 'Test/shangchuan', '上传文件', '', '1', '1', '', '1', '0', '');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(10) NOT NULL,
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', '前端开发', 'html', '0');
INSERT INTO `category` VALUES ('2', '0', 'HTML/CSS', 'htmlcss', '1');
INSERT INTO `category` VALUES ('3', '0', 'Javascript', 'javascript', '1');
INSERT INTO `category` VALUES ('4', '0', 'HTML5', 'html5', '1');
INSERT INTO `category` VALUES ('5', '0', '后端开发', 'be', '0');
INSERT INTO `category` VALUES ('6', '0', 'PHP', 'php', '5');
INSERT INTO `category` VALUES ('7', '0', 'Java', 'java', '5');
INSERT INTO `category` VALUES ('8', '0', 'Linux', 'linux', '5');
INSERT INTO `category` VALUES ('9', '0', 'C', 'c', '5');
INSERT INTO `category` VALUES ('10', '0', '移动开发', 'mobile', '0');
INSERT INTO `category` VALUES ('11', '0', 'Android', 'android', '10');
INSERT INTO `category` VALUES ('12', '0', 'IOS', 'ios', '10');
INSERT INTO `category` VALUES ('13', '0', 'Cocos2d-X', 'cocos2', '10');
INSERT INTO `category` VALUES ('14', '0', '数据处理', 'data', '0');
INSERT INTO `category` VALUES ('15', '0', 'MySql', 'mysql', '14');
INSERT INTO `category` VALUES ('16', '0', 'MongoDB', 'mongo', '14');
INSERT INTO `category` VALUES ('17', '0', '云计算', 'yunjisuan', '14');
INSERT INTO `category` VALUES ('18', '0', '图像处理', 'photo', '0');
INSERT INTO `category` VALUES ('19', '0', 'Photoshop', 'phpotoshop', '18');
INSERT INTO `category` VALUES ('20', '0', 'Maya', 'maya', '18');
INSERT INTO `category` VALUES ('21', '0', 'Premiere', 'premiere', '18');
INSERT INTO `category` VALUES ('22', '0', 'CSS3', 'css3', '1');
INSERT INTO `category` VALUES ('23', '0', 'jQuery', 'jquery', '1');
INSERT INTO `category` VALUES ('24', '0', 'WebApp', 'webapp', '1');
INSERT INTO `category` VALUES ('25', '0', 'Node.js', 'nodejs', '1');
INSERT INTO `category` VALUES ('26', '0', 'AngularJS', 'angularjs', '1');
INSERT INTO `category` VALUES ('27', '0', 'Bootstrap', 'bootstrap', '1');
INSERT INTO `category` VALUES ('28', '0', '前端工具', 'fetool', '1');

-- ----------------------------
-- Table structure for `consignee`
-- ----------------------------
DROP TABLE IF EXISTS `consignee`;
CREATE TABLE `consignee` (
  `cgn_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员id',
  PRIMARY KEY (`cgn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货表';

-- ----------------------------
-- Records of consignee
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `published_date` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `content` text,
  `top` tinyint(4) NOT NULL DEFAULT '2',
  `author` varchar(10) DEFAULT NULL,
  `infoFrom` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `praise` int(11) NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT NULL,
  `curr_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '6', '0', 'PHP微信公众平台开发高级篇—微信JS-SDK', '2016-07-02 15:07:28						', '1', null, '2', '', '', '', '0', '0', 'Public/thumb/2016-07-02/001.jpg', null);
INSERT INTO `course` VALUES ('2', '6', '0', ' PHP微信公众平台开发高级篇—网页授权接口', '2016-07-02 15:12:01						', '1', null, '2', '', '', '', '0', '0', 'Public/thumb/2016-07-02/57776ae379508.jpg', null);
INSERT INTO `course` VALUES ('3', '7', '0', 'Java高并发秒杀API之web层', '2016-07-02 20:13:49						', '1', null, '2', '', '', 'Java实现高并发秒杀API的第四门课！', '0', '0', 'Public/thumb/2016-07-02/5777b141a488d.jpg', null);
INSERT INTO `course` VALUES ('4', '8', '0', 'Linux达人养成计划 I', '2016-07-10 12:01:07						', '3', null, '2', '', '', 'Linux达人养成计划 I', '0', '0', 'Public/thumb/2016-07-10/5781c972875f0.jpg', null);
INSERT INTO `course` VALUES ('5', '2', '0', '网页布局基础1', '2016-07-16 00:37:42						', '1', null, '2', '', '', 'HTML网页布局基础', '0', '0', 'Public/thumb/2016-07-10/pic.jpg', null);
INSERT INTO `course` VALUES ('6', '2', '0', '锁机制', '2016-07-30 22:29:24						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('7', '2', '0', '添加课程css视频', '2016-07-30 22:37:48						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('8', '0', '0', '添加css2222', '2016-07-30 22:39:59						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('9', '2', '0', 'safsafsaf', '2016-07-30 22:40:43						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('10', '0', '0', 'fwfwaf', '2016-07-30 22:43:55						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('11', '2', '0', 'fwafwaf', '2016-07-30 22:43:59						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('12', '0', '0', '', '2016-07-30 22:44:50						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('13', '0', '0', '', '2016-07-30 22:50:18						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('14', '0', '0', '', '2016-07-30 22:53:13						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('15', '0', '0', '', '2016-07-30 22:54:20						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('16', '0', '0', 'rgrgr', '2016-07-30 22:55:18						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('17', '0', '0', 'fwafwa', '2016-07-30 22:56:49						', '1', null, '2', '', '', '', '0', '0', null, null);
INSERT INTO `course` VALUES ('18', '2', '0', '福娃发完', '2016-07-30 23:15:49						', '1', null, '2', '', '', '', '0', '0', 'Public/thumb/2016-07-30/579cc4cb4abbf.jpg', null);

-- ----------------------------
-- Table structure for `curr`
-- ----------------------------
DROP TABLE IF EXISTS `curr`;
CREATE TABLE `curr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_title` varchar(255) DEFAULT NULL,
  `class_content` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of curr
-- ----------------------------
INSERT INTO `curr` VALUES ('1', '微信js-sdk介绍', 'http://static.video.qq.com/TPout.swf?vid=e0313hf57l0&auto=0', '1');
INSERT INTO `curr` VALUES ('2', '分享接口实现一', 'http://static.video.qq.com/TPout.swf?vid=w0313ryalop&auto=0', '1');
INSERT INTO `curr` VALUES ('3', '分享接口实现二', 'http://static.video.qq.com/TPout.swf?vid=f03136q0noz&auto=0', '1');
INSERT INTO `curr` VALUES ('4', '验证分享接口以及实现选择相册接口', 'http://static.video.qq.com/TPout.swf?vid=p0313rrr65z&auto=0', '1');
INSERT INTO `curr` VALUES ('5', '网页授权接口介绍', 'http://static.video.qq.com/TPout.swf?vid=z0313qn8fqe&auto=0', '2');
INSERT INTO `curr` VALUES ('6', '基础授权代码实现', 'http://static.video.qq.com/TPout.swf?vid=e0313j3z0oo&auto=0', '2');
INSERT INTO `curr` VALUES ('7', '基础授权验证', 'http://static.video.qq.com/TPout.swf?vid=c03139rj130&auto=0', '2');
INSERT INTO `curr` VALUES ('8', '高级授权代码实现', 'http://static.video.qq.com/TPout.swf?vid=h0313bt3bqk&auto=0', '2');
INSERT INTO `curr` VALUES ('9', '高级授权验证', 'http://static.video.qq.com/TPout.swf?vid=c0313xse7te&auto=0', '2');
INSERT INTO `curr` VALUES ('10', '设计Restful接口', 'http://static.video.qq.com/TPout.swf?vid=l03138gigxz&auto=0', '3');
INSERT INTO `curr` VALUES ('11', '前端交互流程设计 ', 'http://static.video.qq.com/TPout.swf?vid=v0313wuqm2b&auto=0', '3');
INSERT INTO `curr` VALUES ('13', '使用SpringMVC理论', 'http://static.video.qq.com/TPout.swf?vid=f03139bhn1h&auto=0', '3');
INSERT INTO `curr` VALUES ('14', '整合配置SpringMVC框架', 'http://static.video.qq.com/TPout.swf?vid=p03135ulijm&auto=0', '3');
INSERT INTO `curr` VALUES ('15', 'Linux简介', 'http://static.video.qq.com/TPout.swf?vid=b031305tcnp&auto=0', '4');
INSERT INTO `curr` VALUES ('16', 'LINUX 开源软件简介', 'http://static.video.qq.com/TPout.swf?vid=m0313tho0pz&auto=0', '4');
INSERT INTO `curr` VALUES ('17', 'linux应用领域', 'http://static.video.qq.com/TPout.swf?vid=h0313bmfco4&auto=0', '4');
INSERT INTO `curr` VALUES ('18', '课程简介', '', '5');
INSERT INTO `curr` VALUES ('19', '相关知识点讲解——标准文档流、块级及行级元素等', '', '5');
INSERT INTO `curr` VALUES ('20', '盒子模型', '', '5');
INSERT INTO `curr` VALUES ('22', '自动居中—列布局', '', '5');
INSERT INTO `curr` VALUES ('23', '123', '/Public/video/646c3815e081e93992236c406.wmv', '6');
INSERT INTO `curr` VALUES ('24', '456', '/Public/video/646c3815e081e93992236c402.wmv', '6');
INSERT INTO `curr` VALUES ('25', '789', '/Public/video/646c3815e081e93992236c755.wmv', '6');
INSERT INTO `curr` VALUES ('26', 'css1', '/Public/video/819db233fcffa1175296ed246.mp4', '7');
INSERT INTO `curr` VALUES ('27', 'css2', '/Public/video/819db233fcffa1175296ed533.mp4', '7');
INSERT INTO `curr` VALUES ('28', '123', '/Public/video/819db233fcffa1175296ed231.mp4', '8');
INSERT INTO `curr` VALUES ('29', 'afsaf', '/Public/video/819db233fcffa1175296ed492.mp4', '9');
INSERT INTO `curr` VALUES ('30', '发', './Public/video/819db233fcffa1175296ed468.mp4', '18');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_name` varchar(128) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_number` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `goods_weight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品重量',
  `goods_introduce` text COMMENT '商品详情',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '品牌',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类',
  `type_id` smallint(5) unsigned NOT NULL COMMENT '类型id',
  `country` tinyint(3) unsigned NOT NULL COMMENT '商品产地',
  `is_qiang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不抢，  1：抢',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不热  1：热',
  `is_rec` tinyint(1) NOT NULL DEFAULT '0',
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  `goods_big_logo` varchar(128) NOT NULL DEFAULT '' COMMENT '图片logo大图',
  `goods_small_logo` varchar(128) NOT NULL DEFAULT '' COMMENT '图片logo小图',
  `sale_time` int(11) NOT NULL DEFAULT '0' COMMENT '商品上架时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:正常  1:删除',
  `add_time` int(11) NOT NULL COMMENT '添加商品时间',
  `update_time` int(11) NOT NULL COMMENT '修改商品时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_name` (`goods_name`),
  KEY `goods_price` (`goods_price`),
  KEY `add_time` (`add_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '人性禁岛', '998.00', '255', '102', '<p>小说</p>', '0', '1', '1', '0', '0', '0', '0', '0', './Public/Admin/Uploads/logo/2016-07-27/5798993a628d6.jpg', './Public/Admin/Uploads/logo/2016-07-27/s_5798993a628d6.jpg', '0', '0', '1469618490', '1495631846');
INSERT INTO `goods` VALUES ('2', '苹果7手机', '6500.00', '102', '1010', '&lt;p&gt;水果7手机&lt;/p&gt;', '0', '13', '2', '0', '0', '0', '0', '0', './Public/Admin/Uploads/logo/2016-07-27/57989a524aa06.jpg', './Public/Admin/Uploads/logo/2016-07-27/s_57989a524aa06.jpg', '0', '0', '1469618770', '1469618770');
INSERT INTO `goods` VALUES ('3', '', '0.00', '0', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '1495631812', '1495631812');

-- ----------------------------
-- Table structure for `goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `attr_id` smallint(5) unsigned NOT NULL COMMENT '属性id',
  `attr_value` varchar(32) NOT NULL COMMENT '商品对应属性的值',
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='商品-属性关联表';

-- ----------------------------
-- Records of goods_attr
-- ----------------------------
INSERT INTO `goods_attr` VALUES ('1', '1', '1', '人民教育出版社');
INSERT INTO `goods_attr` VALUES ('2', '1', '2', '998');
INSERT INTO `goods_attr` VALUES ('3', '1', '3', '黑白书籍');
INSERT INTO `goods_attr` VALUES ('4', '1', '3', '彩色');
INSERT INTO `goods_attr` VALUES ('5', '2', '6', '红色');
INSERT INTO `goods_attr` VALUES ('6', '2', '6', '黄色');
INSERT INTO `goods_attr` VALUES ('7', '2', '6', '白色');
INSERT INTO `goods_attr` VALUES ('8', '2', '7', '3G');
INSERT INTO `goods_attr` VALUES ('9', '2', '7', '4G');
INSERT INTO `goods_attr` VALUES ('10', '2', '8', '支持');
INSERT INTO `goods_attr` VALUES ('11', '2', '9', '支持');

-- ----------------------------
-- Table structure for `goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `goods_cat`;
CREATE TABLE `goods_cat` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `cat_id` mediumint(8) unsigned NOT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品-分类关联表';

-- ----------------------------
-- Records of goods_cat
-- ----------------------------
INSERT INTO `goods_cat` VALUES ('1', '1', '2');
INSERT INTO `goods_cat` VALUES ('2', '1', '3');
INSERT INTO `goods_cat` VALUES ('3', '2', '14');
INSERT INTO `goods_cat` VALUES ('4', '2', '16');
INSERT INTO `goods_cat` VALUES ('5', '3', '2');
INSERT INTO `goods_cat` VALUES ('6', '3', '4');

-- ----------------------------
-- Table structure for `goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(20) NOT NULL COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级分类id，顶级分类为0',
  `cate_path` varchar(32) NOT NULL DEFAULT '' COMMENT '全路径',
  `cate_level` tinyint(2) NOT NULL DEFAULT '0' COMMENT '分类等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('1', '数字商品', '0', '1', '0');
INSERT INTO `goods_category` VALUES ('2', '电子书', '1', '1-2', '1');
INSERT INTO `goods_category` VALUES ('3', '佣兵系列', '2', '1-2-3', '2');
INSERT INTO `goods_category` VALUES ('4', '励志与成功', '2', '1-2-4', '2');
INSERT INTO `goods_category` VALUES ('5', '婚恋两性', '2', '1-2-5', '2');
INSERT INTO `goods_category` VALUES ('9', '家用电器', '0', '9', '0');
INSERT INTO `goods_category` VALUES ('10', '生活电器', '9', '9-10', '1');
INSERT INTO `goods_category` VALUES ('11', '加湿器', '10', '9-10-11', '2');
INSERT INTO `goods_category` VALUES ('12', '净化器', '10', '9-10-12', '2');
INSERT INTO `goods_category` VALUES ('13', '移动数码\\手机', '0', '13', '0');
INSERT INTO `goods_category` VALUES ('14', 'iphone系列', '13', '13-14', '1');
INSERT INTO `goods_category` VALUES ('15', '华为手机', '13', '13-15', '1');
INSERT INTO `goods_category` VALUES ('16', 'iphone7', '14', '13-14-16', '2');
INSERT INTO `goods_category` VALUES ('17', 'iphone6s', '14', '13-14-17', '2');

-- ----------------------------
-- Table structure for `goods_pics`
-- ----------------------------
DROP TABLE IF EXISTS `goods_pics`;
CREATE TABLE `goods_pics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `goods_pics_b` char(128) NOT NULL COMMENT '相册大图',
  `goods_pics_m` char(128) NOT NULL COMMENT '相册中图',
  `goods_pics_s` char(128) NOT NULL COMMENT '相册小图',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品-相册关联表';

-- ----------------------------
-- Records of goods_pics
-- ----------------------------
INSERT INTO `goods_pics` VALUES ('1', '1', './Public/Admin/Uploads/pics/2016-07-27/b_5798993ad4cf6.jpg', './Public/Admin/Uploads/pics/2016-07-27/m_5798993ad4cf6.jpg', './Public/Admin/Uploads/pics/2016-07-27/s_5798993ad4cf6.jpg');
INSERT INTO `goods_pics` VALUES ('3', '2', './Public/Admin/Uploads/pics/2016-07-27/b_57989a5279036.jpg', './Public/Admin/Uploads/pics/2016-07-27/m_57989a5279036.jpg', './Public/Admin/Uploads/pics/2016-07-27/s_57989a5279036.jpg');
INSERT INTO `goods_pics` VALUES ('4', '2', './Public/Admin/Uploads/pics/2016-07-27/b_57989a527ab8e.jpg', './Public/Admin/Uploads/pics/2016-07-27/m_57989a527ab8e.jpg', './Public/Admin/Uploads/pics/2016-07-27/s_57989a527ab8e.jpg');

-- ----------------------------
-- Table structure for `goods_user`
-- ----------------------------
DROP TABLE IF EXISTS `goods_user`;
CREATE TABLE `goods_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) NOT NULL COMMENT '会员名称',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `pwd` char(32) NOT NULL COMMENT '密码',
  `openid` char(32) NOT NULL DEFAULT '' COMMENT 'qq登录的openid信息',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '男' COMMENT '性别',
  `check` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否激活, 0:未激活  1:已激活',
  `check_code` char(32) NOT NULL DEFAULT '' COMMENT '邮箱验证激活码',
  `add_time` int(11) NOT NULL COMMENT '注册时间',
  `is_del` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否删除, 0:正常  1:被删除',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of goods_user
-- ----------------------------
INSERT INTO `goods_user` VALUES ('1', '阿华', '', 'admin', '', '男', '0', '', '1469632962', '0');

-- ----------------------------
-- Table structure for `log_user`
-- ----------------------------
DROP TABLE IF EXISTS `log_user`;
CREATE TABLE `log_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_ip` varchar(30) DEFAULT NULL,
  `log_user` varchar(30) DEFAULT NULL,
  `log_time` int(11) DEFAULT NULL,
  `log_fox` varchar(100) DEFAULT NULL,
  `log_window` varchar(100) DEFAULT NULL,
  `log_duankou` int(11) DEFAULT NULL,
  `log_static` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_user
-- ----------------------------
INSERT INTO `log_user` VALUES ('1', '192.168.138.123', 'admin', '1465639248', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('2', '127.0.0.1', 'admin', '1465639634', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('3', '192.168.138.123', 'admin', '1465640385', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.10 Safar', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('4', '192.168.138.104', 'admin', '1465640687', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safa', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('5', '127.0.0.1', 'admin', '1465640753', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('6', '192.168.138.87', 'admin', '1465640768', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.10 Safar', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('7', '192.168.138.123', 'admin', '1465640858', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('8', '192.168.138.123', 'admin', '1465640894', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('9', '127.0.0.1', 'admin', '1465643053', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('10', '127.0.0.1', 'admin', '1465666095', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('11', '127.0.0.1', 'admin', '1465669487', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', 'C:Windows', '80', null);
INSERT INTO `log_user` VALUES ('12', '127.0.0.1', 'admin', '1465671522', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('13', '127.0.0.1', 'admin', '1465671667', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('14', '127.0.0.1', '', '1465672421', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('15', '127.0.0.1', 'admin', '1465672535', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('16', '127.0.0.1', 'admin', '1465672676', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('17', '127.0.0.1', '', '1465672715', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('18', '127.0.0.1', 'admin', '1465672739', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('19', '127.0.0.1', '', '1465672873', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('20', '127.0.0.1', 'admin', '1465672883', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('21', '127.0.0.1', 'admin', '1465693144', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('22', '127.0.0.1', '', '1465693172', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('23', '127.0.0.1', 'admin', '1465693182', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('24', '192.168.128.122', 'admin', '1465717808', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('25', '127.0.0.1', 'admin', '1465722194', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('26', '192.168.128.122', 'admin', '1465728576', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('27', '192.168.128.122', 'admin', '1465729233', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('28', '192.168.128.122', 'admin', '1465729880', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('29', '192.168.128.122', '', '1465730242', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('30', '192.168.128.122', '', '1465730250', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('31', '192.168.128.122', '', '1465730256', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('32', '192.168.128.122', '', '1465730264', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('33', '192.168.128.122', '', '1465730376', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('34', '192.168.128.122', '', '1465730390', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('35', '192.168.128.122', '', '1465730424', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('36', '192.168.128.122', '', '1465730445', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('37', '192.168.128.122', '', '1465730461', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('38', '192.168.128.122', '', '1465730534', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('39', '192.168.128.122', '访客', '1465730562', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('40', '192.168.128.122', 'admin', '1465730572', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('41', '192.168.128.122', 'admin', '1465731139', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('42', '192.168.128.122', 'admin', '1465731287', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('43', '192.168.128.84', 'admin', '1465733527', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('44', '127.0.0.1', 'admin', '1465736790', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('45', '127.0.0.1', 'admin', '1465737200', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('46', '127.0.0.1', '访客', '1465742025', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('47', '127.0.0.1', '访客', '1465742299', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('48', '127.0.0.1', '访客', '1465742299', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('49', '127.0.0.1', '访客', '1465742312', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('50', '127.0.0.1', '访客', '1465743263', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('51', '192.168.130.247', 'admin', '1465804468', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('52', '127.0.0.1', '访客', '1465952331', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('53', '127.0.0.1', 'admin', '1465952343', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('54', '127.0.0.1', 'admin', '1465959862', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('55', '127.0.0.1', 'admin', '1465962046', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('56', '127.0.0.1', '访客', '1465962349', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('57', '127.0.0.1', 'admin', '1465962379', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('58', '127.0.0.1', 'root', '1465962590', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('59', '127.0.0.1', 'admin', '1465973355', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('60', '192.168.128.90', 'admin', '1465975732', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('61', '127.0.0.1', '访客', '1465976583', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('62', '127.0.0.1', '访客', '1465976738', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('63', '127.0.0.1', 'admin', '1465976752', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('64', '127.0.0.1', 'root', '1465976779', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('65', '127.0.0.1', 'root', '1465976819', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('66', '127.0.0.1', 'admin', '1465979371', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('67', '127.0.0.1', 'admin', '1465985812', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('68', '127.0.0.1', 'root', '1465986010', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('69', '127.0.0.1', 'admin', '1465986647', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('70', '127.0.0.1', 'root', '1465986684', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('71', '192.168.128.91', 'admin', '1465987905', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('72', '192.168.128.91', 'admin', '1465987964', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('73', '192.168.128.91', 'admin', '1465987985', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('74', '192.168.128.91', 'root', '1465988136', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('75', '192.168.128.91', '访客', '1465988581', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('76', '192.168.128.91', 'admin', '1465988589', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('77', '192.168.128.91', 'admin', '1465989407', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('78', '192.168.128.138', '访客', '1465991597', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safar', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('79', '192.168.128.138', 'root', '1465991611', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safar', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('80', '192.168.128.62', 'root', '1465991939', 'Mozilla/5.0 (Windows NT 6.1; rv:47.0) Gecko/20100101 Firefox/47.0', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('81', '192.168.128.50', '访客', '1465992149', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('82', '192.168.128.35', '访客', '1465992153', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safar', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('83', '192.168.128.50', '访客', '1465992174', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('84', '192.168.128.35', '访客', '1465992175', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safar', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('85', '192.168.128.50', '访客', '1465992188', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('86', '192.168.128.42', '访客', '1465992196', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('87', '192.168.128.68', '访客', '1465992196', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.10 Safar', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('88', '192.168.128.50', '访客', '1465992215', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('89', '192.168.128.42', '访客', '1465992219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('90', '192.168.128.50', 'root', '1465992239', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('91', '192.168.128.35', 'root', '1465992251', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safar', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('92', '192.168.128.68', 'root', '1465992251', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.10 Safar', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('93', '192.168.128.84', '访客', '1465992286', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('94', '192.168.128.84', '访客', '1465992322', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('95', '192.168.128.84', '访客', '1465992375', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('96', '192.168.128.84', '访客', '1465992391', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('97', '192.168.128.84', '访客', '1465992410', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.3', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('98', '192.168.128.79', 'root', '1465992422', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safar', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('99', '127.0.0.1', '访客', '1465993955', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'error');
INSERT INTO `log_user` VALUES ('100', '127.0.0.1', 'admin', '1465993962', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('101', '127.0.0.1', 'admin', '1466008132', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');
INSERT INTO `log_user` VALUES ('102', '127.0.0.1', 'admin', '1466159197', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safa', 'C:Windows', '80', 'success');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_number` varchar(32) NOT NULL COMMENT '订单编号',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价格',
  `order_post` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '快递公司： 0圆通 1申通 2顺丰',
  `order_pay` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '支付方式 0支付宝 1微信  2银行卡快捷支付',
  `order_fapiao_title` enum('0','1') NOT NULL DEFAULT '0' COMMENT '发票抬头 0个人 1公司',
  `order_fapiao_company` varchar(32) NOT NULL DEFAULT '' COMMENT '公司名称',
  `order_fapiao_content` varchar(32) NOT NULL DEFAULT '' COMMENT '发票内容',
  `cgn_id` int(10) unsigned NOT NULL COMMENT 'consignee收货人地址',
  `order_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '订单状态： 0未付款、1已付款',
  `add_time` int(10) unsigned NOT NULL COMMENT '记录生成时间',
  `upd_time` int(10) unsigned NOT NULL COMMENT '记录修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `cgn_id` (`cgn_id`),
  KEY `add_time` (`add_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', 'tshop-201607300637017872', '998.00', '0', '0', '0', '', '明细', '1', '0', '1469875021', '1469875021');
INSERT INTO `order` VALUES ('2', 'tshop-201607300745183969', '998.00', '1', '1', '0', '', '明细', '2', '0', '1469879118', '1469879118');

-- ----------------------------
-- Table structure for `order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_id` int(10) unsigned NOT NULL COMMENT '订单id',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品单价',
  `goods_number` tinyint(4) NOT NULL DEFAULT '1' COMMENT '购买单个商品数量',
  `goods_total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品小计价格',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品订单关联表';

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('1', '1', '1', '998.00', '1', '998.00');
INSERT INTO `order_goods` VALUES ('2', '2', '1', '998.00', '1', '998.00');

-- ----------------------------
-- Table structure for `res_mail`
-- ----------------------------
DROP TABLE IF EXISTS `res_mail`;
CREATE TABLE `res_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `active` tinyint(4) NOT NULL DEFAULT '0' COMMENT '默认值0是未激活，1是激活',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_mail
-- ----------------------------
INSERT INTO `res_mail` VALUES ('1', '大司命', 'pwd', 'alexa456@163.com', '0');
INSERT INTO `res_mail` VALUES ('2', '沙思敏', 'wpdwa', 'alexa@1651.com', '0');
INSERT INTO `res_mail` VALUES ('3', '1', '1', '573358951@qq.com', '0');
INSERT INTO `res_mail` VALUES ('4', '娃娃', '12312', '', '0');
INSERT INTO `res_mail` VALUES ('5', 'wad', 'wad', '@.com', '0');
INSERT INTO `res_mail` VALUES ('6', '1', '1', '', '0');
INSERT INTO `res_mail` VALUES ('7', '1', '1', '', '0');
INSERT INTO `res_mail` VALUES ('8', '', '', '', '0');
INSERT INTO `res_mail` VALUES ('9', '12312', '213123', '2211017578', '0');
INSERT INTO `res_mail` VALUES ('10', 'admin', 'admin', '2211017578@qq.com', '0');
INSERT INTO `res_mail` VALUES ('11', '577123', 'sfa', '2211017578@qq.com', '1');
INSERT INTO `res_mail` VALUES ('12', 'rgerg', 'fgsdgf', '2211017578@qq.com', '1');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type_name` varchar(32) NOT NULL COMMENT '类型名称',
  `attr_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性数目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='类型表';

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '书', '0');
INSERT INTO `type` VALUES ('2', '手机', '0');
INSERT INTO `type` VALUES ('3', '电脑', '0');
INSERT INTO `type` VALUES ('4', '冰箱', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `nickname` varchar(16) DEFAULT '',
  `userpic` varchar(255) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `created_at` int(11) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `is_admin` int(10) unsigned DEFAULT '0',
  `showCat` varchar(30) DEFAULT NULL,
  `is_del` varchar(10) DEFAULT NULL,
  `is_mod` varchar(10) DEFAULT NULL,
  `last_login_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'root', '', null, '', '1467374593', '7fef6171469e80d32c0559f88b377245', '0', null, null, null, '1467374593');
INSERT INTO `user` VALUES ('2', 'admin', '', null, '', '1467374603', '7fef6171469e80d32c0559f88b377245', '0', null, null, null, '1467374603');
INSERT INTO `user` VALUES ('3', 'mod', '', null, '', '1467374614', '7fef6171469e80d32c0559f88b377245', '0', null, null, null, '1467374614');
INSERT INTO `user` VALUES ('4', 'youke', '', null, '', '1467374624', '7fef6171469e80d32c0559f88b377245', '0', null, null, null, '1467374624');
INSERT INTO `user` VALUES ('5', 'test1', '', 'Public/userPic/2016-07-16/578a10b71e0aa.jpg', '', '1468666039', '7fef6171469e80d32c0559f88b377245', '0', null, null, null, '1468666039');
