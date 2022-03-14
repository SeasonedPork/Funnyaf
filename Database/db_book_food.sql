/*
Navicat MySQL Data Transfer

Source Server         : 订餐系统
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : db_book_food

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-02-06 14:03:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ib_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ib_menu`;
CREATE TABLE `ib_menu` (
  `menu_id` int(4) NOT NULL AUTO_INCREMENT,
  `menu_name` char(255) NOT NULL,
  `menu_price` int(16) NOT NULL,
  `menu_pic_addr` char(255) NOT NULL,
  `menu_type_id` int(4) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_menu
-- ----------------------------
INSERT INTO `ib_menu` VALUES ('1', '剁椒鱼头', '15', 'res/pic/剁椒鱼头.jpg', '2');
INSERT INTO `ib_menu` VALUES ('2', '红烧肉', '16', 'res/pic/红烧肉.jpg', '2');
INSERT INTO `ib_menu` VALUES ('3', '香芹香干肉丝', '12', 'res/pic/香芹香干肉丝.jpg', '2');
INSERT INTO `ib_menu` VALUES ('4', '蒜蓉菠菜', '10', 'res/pic/蒜蓉菠菜.jpg', '2');
INSERT INTO `ib_menu` VALUES ('5', '米饭', '2', 'res/pic/米饭.jpg', '3');
INSERT INTO `ib_menu` VALUES ('6', '青椒牛肉', '16', 'res/pic/青椒牛肉.jpg', '2');
INSERT INTO `ib_menu` VALUES ('7', '凉瓜炒蛋', '12', 'res/pic/凉瓜炒蛋.jpg', '2');
INSERT INTO `ib_menu` VALUES ('8', '凉拌三丝', '12', 'res/pic/凉拌三丝.jpg', '4');
INSERT INTO `ib_menu` VALUES ('11', '馒头', '1', 'res/pic/馒头.jpg', '3');
INSERT INTO `ib_menu` VALUES ('12', '面条', '3', 'res/pic/面条.jpg', '3');
INSERT INTO `ib_menu` VALUES ('13', '圆葱涝汁拌鱼皮', '12', 'res/pic/圆葱涝汁拌鱼皮.jpg', '4');
INSERT INTO `ib_menu` VALUES ('14', '青瓜凉拌猪舌', '15', 'res/pic/青瓜凉拌猪舌.jpg', '4');
INSERT INTO `ib_menu` VALUES ('15', '凉拌秋葵', '14', 'res/pic/凉拌秋葵.jpg', '4');
INSERT INTO `ib_menu` VALUES ('16', '肉夹馍', '8', 'res/pic/肉夹馍.jpg', '3');

-- ----------------------------
-- Table structure for `ib_menu_type`
-- ----------------------------
DROP TABLE IF EXISTS `ib_menu_type`;
CREATE TABLE `ib_menu_type` (
  `menu_type_id` int(4) NOT NULL AUTO_INCREMENT,
  `menu_type_name` char(255) NOT NULL,
  PRIMARY KEY (`menu_type_id`),
  KEY `menu_type_name` (`menu_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_menu_type
-- ----------------------------
INSERT INTO `ib_menu_type` VALUES ('3', '主食');
INSERT INTO `ib_menu_type` VALUES ('1', '其它');
INSERT INTO `ib_menu_type` VALUES ('4', '凉菜');
INSERT INTO `ib_menu_type` VALUES ('2', '炒菜');

-- ----------------------------
-- Table structure for `ib_option`
-- ----------------------------
DROP TABLE IF EXISTS `ib_option`;
CREATE TABLE `ib_option` (
  `option_id` int(4) NOT NULL AUTO_INCREMENT,
  `option_name` char(255) NOT NULL,
  `option_value` char(255) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_option
-- ----------------------------
INSERT INTO `ib_option` VALUES ('1', 'title', '我的快餐小店');
INSERT INTO `ib_option` VALUES ('2', 'idx_menu_lines', '10');
INSERT INTO `ib_option` VALUES ('3', 'tbl_page_lines', '10');

-- ----------------------------
-- Table structure for `ib_order`
-- ----------------------------
DROP TABLE IF EXISTS `ib_order`;
CREATE TABLE `ib_order` (
  `order_id` int(16) NOT NULL AUTO_INCREMENT,
  `order_user_name` char(255) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_admin_name` char(255) NOT NULL,
  `order_accept` int(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_order
-- ----------------------------
INSERT INTO `ib_order` VALUES ('5', 'weigy', '2015-06-21 16:33:32', 'admin', '1');
INSERT INTO `ib_order` VALUES ('6', 'llqqxf', '2018-06-20 16:23:05', 'admin', '1');
INSERT INTO `ib_order` VALUES ('8', 'llqqxf', '2018-06-21 16:38:42', '', '0');

-- ----------------------------
-- Table structure for `ib_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ib_order_detail`;
CREATE TABLE `ib_order_detail` (
  `detail_id` int(16) NOT NULL AUTO_INCREMENT,
  `detail_order_id` int(16) NOT NULL,
  `detail_menu_name` char(255) NOT NULL,
  `detail_menu_price` int(16) NOT NULL,
  `detail_amount` int(16) NOT NULL,
  `detail_remark` char(255) NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_order_detail
-- ----------------------------
INSERT INTO `ib_order_detail` VALUES ('9', '5', '蒜蓉菠菜', '10', '1', '');
INSERT INTO `ib_order_detail` VALUES ('10', '5', '米饭', '2', '1', '');
INSERT INTO `ib_order_detail` VALUES ('11', '6', '米饭', '2', '1', '多盛点。');
INSERT INTO `ib_order_detail` VALUES ('12', '6', '香芹香干肉丝', '12', '2', '多放肉。');
INSERT INTO `ib_order_detail` VALUES ('13', '6', '蒜蓉菠菜', '10', '1', '');
INSERT INTO `ib_order_detail` VALUES ('14', '6', '青椒牛肉', '16', '1', '');
INSERT INTO `ib_order_detail` VALUES ('18', '8', '馒头', '1', '1', '');
INSERT INTO `ib_order_detail` VALUES ('19', '8', '肉夹馍', '8', '1', '多放点肉');
INSERT INTO `ib_order_detail` VALUES ('20', '8', '圆葱涝汁拌鱼皮', '12', '1', '');
INSERT INTO `ib_order_detail` VALUES ('21', '8', '青瓜凉拌猪舌', '15', '1', '多放点醋');
INSERT INTO `ib_order_detail` VALUES ('22', '8', '剁椒鱼头', '15', '1', '鱼要大');

-- ----------------------------
-- Table structure for `ib_shopping`
-- ----------------------------
DROP TABLE IF EXISTS `ib_shopping`;
CREATE TABLE `ib_shopping` (
  `shopping_id` int(16) NOT NULL AUTO_INCREMENT,
  `shopping_user_name` char(255) NOT NULL,
  `shopping_menu_name` char(255) NOT NULL,
  `shopping_menu_price` int(16) NOT NULL,
  `shopping_amount` int(16) NOT NULL,
  `shopping_remark` char(255) NOT NULL,
  PRIMARY KEY (`shopping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_shopping
-- ----------------------------

-- ----------------------------
-- Table structure for `ib_user`
-- ----------------------------
DROP TABLE IF EXISTS `ib_user`;
CREATE TABLE `ib_user` (
  `user_id` int(16) NOT NULL AUTO_INCREMENT,
  `user_name` char(255) NOT NULL,
  `user_passwd` char(255) NOT NULL,
  `user_auth` enum('admin','customer') NOT NULL,
  `user_tel` char(255) NOT NULL,
  `user_addr` char(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_user
-- ----------------------------
INSERT INTO `ib_user` VALUES ('1', 'admin', 'admin', 'admin', '12345678901', '山东济南');
