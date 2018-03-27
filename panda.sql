/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : panda

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-03-28 07:42:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for panda_category
-- ----------------------------
DROP TABLE IF EXISTS `panda_category`;
CREATE TABLE `panda_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '' COMMENT '分类名称',
  `abbreviation` varchar(255) DEFAULT '' COMMENT '描述',
  `desc` varchar(255) DEFAULT '' COMMENT '分类描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of panda_category
-- ----------------------------
INSERT INTO `panda_category` VALUES ('1', '首页', 'home', '最新文章列表');
INSERT INTO `panda_category` VALUES ('2', '佳作共赏', 'appreciate', '学生优秀作文分享');

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
