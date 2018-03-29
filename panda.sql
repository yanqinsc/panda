/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : panda

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-03-29 23:15:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for panda_article
-- ----------------------------
DROP TABLE IF EXISTS `panda_article`;
CREATE TABLE `panda_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '文章标题',
  `author` varchar(10) NOT NULL COMMENT '作者',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图URL',
  `summary` text COMMENT '文章摘要',
  `views` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `comments` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论',
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `is_top` char(1) DEFAULT NULL COMMENT '是否置顶 0|否 1|是',
  `is_hot` char(1) DEFAULT NULL COMMENT '热点文章 0|否 1|是',
  `is_new` char(1) DEFAULT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  `comment_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_article
-- ----------------------------
INSERT INTO `panda_article` VALUES ('1', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('2', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '1', null);
INSERT INTO `panda_article` VALUES ('3', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('4', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('5', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('6', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('7', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('8', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('9', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-29 20:42:57', null, null, null, '3', null);
INSERT INTO `panda_article` VALUES ('10', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('11', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('12', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('13', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('14', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('15', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('16', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('17', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('18', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('19', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('20', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('21', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('22', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('23', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '20', '1', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('24', '细小的春天（最新）', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '19', '2', '2018-03-28 23:28:57', null, null, null, '2', null);
INSERT INTO `panda_article` VALUES ('25', '细小的春天', '小石', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522254714601&di=b0a3976233696994b6776fb04b6273d0&imgtype=0&src=http%3A%2F%2Fuploads.oh100.com%2Fallimg%2F1712%2F198-1G226143122.jpg', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。', '0', '0', '2018-03-28 23:28:57', null, null, null, '2', null);

-- ----------------------------
-- Table structure for panda_article_body
-- ----------------------------
DROP TABLE IF EXISTS `panda_article_body`;
CREATE TABLE `panda_article_body` (
  `aid` int(11) unsigned NOT NULL COMMENT '文章ID',
  `body` longtext NOT NULL COMMENT '文章正文'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_article_body
-- ----------------------------
INSERT INTO `panda_article_body` VALUES ('8', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。');
INSERT INTO `panda_article_body` VALUES ('23', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。');
INSERT INTO `panda_article_body` VALUES ('24', '春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。春天是细小的嫩芽，是细小的花蕾，是细小的雨丝，是细小的虫鸣。');

-- ----------------------------
-- Table structure for panda_category
-- ----------------------------
DROP TABLE IF EXISTS `panda_category`;
CREATE TABLE `panda_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '' COMMENT '分类名称',
  `abbreviation` varchar(255) DEFAULT '' COMMENT '描述',
  `is_nav` char(1) NOT NULL DEFAULT '0' COMMENT '是否作为导航栏频道',
  `desc` varchar(255) DEFAULT '' COMMENT '分类描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_category
-- ----------------------------
INSERT INTO `panda_category` VALUES ('1', '首页', 'home', '1', '最新文章列表');
INSERT INTO `panda_category` VALUES ('2', '佳作共赏', 'appreciate', '1', '学生优秀作文分享');
INSERT INTO `panda_category` VALUES ('3', '课程训练', 'practice', '0', '会员课程训练');

-- ----------------------------
-- Table structure for panda_class
-- ----------------------------
DROP TABLE IF EXISTS `panda_class`;
CREATE TABLE `panda_class` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `grade_id` tinyint(3) unsigned NOT NULL,
  `class_number` char(2) NOT NULL COMMENT '班级编号 例如 01',
  `name` varchar(20) DEFAULT NULL COMMENT '例如 实验， 奥数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_class
-- ----------------------------
INSERT INTO `panda_class` VALUES ('1', '1', '1', null);

-- ----------------------------
-- Table structure for panda_grade
-- ----------------------------
DROP TABLE IF EXISTS `panda_grade`;
CREATE TABLE `panda_grade` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `grade_number` char(2) NOT NULL COMMENT '年级编号 例如 18 级',
  `name` varchar(20) DEFAULT NULL COMMENT '年级名称 如 二OO八 级',
  `school_id` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_grade
-- ----------------------------
INSERT INTO `panda_grade` VALUES ('1', '20', null, '1');

-- ----------------------------
-- Table structure for panda_school
-- ----------------------------
DROP TABLE IF EXISTS `panda_school`;
CREATE TABLE `panda_school` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `shot_name` varchar(20) DEFAULT NULL COMMENT '学校简称',
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_school
-- ----------------------------
INSERT INTO `panda_school` VALUES ('1', '成都嘉祥外国语学校（达州小区）', '嘉祥(达州)', null);

-- ----------------------------
-- Table structure for panda_user
-- ----------------------------
DROP TABLE IF EXISTS `panda_user`;
CREATE TABLE `panda_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `type` char(1) NOT NULL DEFAULT '2' COMMENT '用户类型 1|学生  2|公众',
  `sex` char(1) NOT NULL DEFAULT '2' COMMENT '性别 0|男 1|女 2|未知',
  `phone` char(15) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `qq` varchar(12) DEFAULT NULL,
  `parent_ids` int(11) unsigned DEFAULT NULL COMMENT '父母的账户id',
  `class_id` char(2) NOT NULL COMMENT '班级id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_user
-- ----------------------------
INSERT INTO `panda_user` VALUES ('1', '小石', '111111', '2', '2', null, null, null, null, '1');
