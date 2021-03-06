/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hsyii

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-18 20:59:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for trade_detail
-- ----------------------------
DROP TABLE IF EXISTS `trade_detail`;
CREATE TABLE `trade_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `material_code` char(16) NOT NULL,
  `material_name` varchar(30) NOT NULL,
  `material_quantity` int(10) NOT NULL,
  `unit` char(4) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `total` double(15,2) DEFAULT NULL,
  `warehouse_id` varchar(30) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `order_num` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link` (`order_num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_detail
-- ----------------------------
INSERT INTO `trade_detail` VALUES ('1', '2442', '啊', '20', '斤', '5.00', '100.00', '30', null, '1811036498');
