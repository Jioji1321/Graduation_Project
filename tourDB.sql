/*
 Navicat Premium Data Transfer

 Source Server         : mysql_localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost
 Source Database       : tourDB

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : utf-8

 Date: 05/10/2018 10:30:25 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `admin`
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1', 'root'), ('20170001', '111111');
COMMIT;

-- ----------------------------
--  Table structure for `book_info`
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `book_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '关键字',
  `author` varchar(50) NOT NULL COMMENT '旅游项目名',
  `publish` text NOT NULL COMMENT '链接',
  `ISBN` varchar(13) NOT NULL COMMENT '省份',
  `introduction` text COMMENT '所在城市',
  `language` varchar(10) NOT NULL COMMENT '项目简介',
  `price` decimal(10,2) NOT NULL COMMENT '人均价格',
  `pubdate` date DEFAULT NULL COMMENT '上架日期',
  `class_id` int(11) DEFAULT NULL COMMENT '分类',
  `pressmark` int(11) DEFAULT NULL COMMENT '0',
  `state` smallint(6) DEFAULT NULL COMMENT '0',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `book_info`
-- ----------------------------
BEGIN;
INSERT INTO `book_info` VALUES ('180510001', '东方明珠', '上海东方明珠', 'http://www.orientalpearltower.com/', '上海', '上海', '上海东方明珠', '210.00', '2018-05-10', '1', '0', '0'), ('180510002', '滴水湖', '上海临港滴水湖', 'http://you.ctrip.com/travels/shanghai2/2915287.html', '上海', '上海', '上海临港滴水湖', '0.00', '2018-05-10', '1', '0', '0'), ('180510003', '迪士尼', '上海迪士尼', 'https://www.shanghaidisneyresort.com/', '上海', '上海', '上海迪士尼', '380.00', '2018-05-10', '1', '0', '0'), ('180510004', '西栅', '乌镇西栅', 'http://www.wuzhen.com.cn/', '浙江', '桐乡', '桐乡乌镇西栅', '120.00', '2018-05-10', '0', '0', '0'), ('199479477', '礐石风景区', '汕头礐石风景区', 'http://you.ctrip.com/sight/shantou215/17812.html', '广东', '汕头', '汕头礐石风景区', '10.00', '2018-05-10', '0', '0', '0'), ('504103313', '顾村公园', '上海顾村公园', 'http://gcgy.baoshan.sh.cn/', '上海', '上海', '上海顾村公园', '45.00', '2018-05-10', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `reader_card`
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card` (
  `reader_id` int(11) NOT NULL COMMENT '登录用户名',
  `name` varchar(16) NOT NULL,
  `passwd` varchar(15) NOT NULL DEFAULT '111111',
  `card_state` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`reader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `reader_card`
-- ----------------------------
BEGIN;
INSERT INTO `reader_card` VALUES ('180510097', '王五', '111111', '1'), ('180510098', '张三', '111111', '1'), ('180510099', '张三', '123456', '1');
COMMIT;

-- ----------------------------
--  Table structure for `reader_info`
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info` (
  `reader_id` int(11) NOT NULL COMMENT '登录用户名',
  `name` varchar(16) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telcode` varchar(11) NOT NULL,
  PRIMARY KEY (`reader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `reader_info`
-- ----------------------------
BEGIN;
INSERT INTO `reader_info` VALUES ('180510097', '王五', ' 男', '1995-10-01', '上海闵行区', '13050000001'), ('180510098', '张三', '男', '2018-05-10', '上海市浦东新区', '13050000003'), ('180510099', '李四', '男', '2018-05-10', '上海市徐汇区', '13050000001');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
