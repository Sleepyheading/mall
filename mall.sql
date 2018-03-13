/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-03-13 16:29:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mall_address
-- ----------------------------
DROP TABLE IF EXISTS `mall_address`;
CREATE TABLE `mall_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(200) COLLATE utf8_bin NOT NULL,
  `phone` int(13) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `adress_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_address
-- ----------------------------
INSERT INTO `mall_address` VALUES ('5', 'c', '0', '0', '0', 'a', '2');
INSERT INTO `mall_address` VALUES ('6', 'd', '0', '-1', '1', 'b', '1');
INSERT INTO `mall_address` VALUES ('7', 'cd', '0', '-1', '0', 'dc', '1');
INSERT INTO `mall_address` VALUES ('8', '', '0', '-1', '0', '', '1');
INSERT INTO `mall_address` VALUES ('9', 'c', '0', '-1', '0', 'a', '1');
INSERT INTO `mall_address` VALUES ('10', '12313', '12313', '-1', '0', 'ab', '1');
INSERT INTO `mall_address` VALUES ('11', '北京省北京县北京村86号', '2147483647', '-1', '1', '刘加磊', '1');
INSERT INTO `mall_address` VALUES ('12', 'c', '0', '-1', '0', ' a', '1');
INSERT INTO `mall_address` VALUES ('13', 'a', '0', '-1', '0', 'b', '1');
INSERT INTO `mall_address` VALUES ('14', 's', '0', '-1', '0', 'b', '1');
INSERT INTO `mall_address` VALUES ('15', 's', '0', '-1', '0', 'd', '1');
INSERT INTO `mall_address` VALUES ('16', 'd', '0', '-1', '0', 'a', '1');
INSERT INTO `mall_address` VALUES ('17', 'ca', '0', '-1', '0', 'b', '1');
INSERT INTO `mall_address` VALUES ('18', 'c', '0', '-1', '0', 'b', '1');
INSERT INTO `mall_address` VALUES ('19', 'adsad', '0', '-1', '0', 'asd', '1');
INSERT INTO `mall_address` VALUES ('20', 'dsadsa', '0', '-1', '0', 'dasdsad', '1');
INSERT INTO `mall_address` VALUES ('21', '北京北京北京北京北京北京', '2147483647', '-1', '1', '刘磊', '1');
INSERT INTO `mall_address` VALUES ('22', 'aaa', '0', '-1', '0', 'a', '1');
INSERT INTO `mall_address` VALUES ('23', 'b', '0', '-1', '0', 'bbb', '1');
INSERT INTO `mall_address` VALUES ('24', 'aa', '0', '-1', '0', 'aaa', '1');
INSERT INTO `mall_address` VALUES ('25', '131313', '13131313', '-1', '0', 'asdasd', '1');
INSERT INTO `mall_address` VALUES ('26', 'dsadsa', '0', '-1', '0', '1dasdasd', '1');
INSERT INTO `mall_address` VALUES ('27', '北京省朝阳区三十六号', '2147483647', '-1', '1', '刘磊', '1');
INSERT INTO `mall_address` VALUES ('28', '111', '1234567890', '-1', '1', '31313', '1');
INSERT INTO `mall_address` VALUES ('29', 'c', '1313131313', '0', '0', ' a', '1');
INSERT INTO `mall_address` VALUES ('30', '北京省五环内天安门广场', '2147483647', '0', '1', '刘磊', '1');
INSERT INTO `mall_address` VALUES ('31', '2', '2', '-1', '1', '2', '12');
INSERT INTO `mall_address` VALUES ('32', '33', '3', '0', '1', '3', '12');
INSERT INTO `mall_address` VALUES ('33', '广东省汕头市龙湖区', '2147483647', '0', '0', '张三', '12');

-- ----------------------------
-- Table structure for mall_admin
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin`;
CREATE TABLE `mall_admin` (
  `admin_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(32) COLLATE utf8_bin NOT NULL,
  `lastloginip` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `realname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_admin
-- ----------------------------
INSERT INTO `mall_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, '1514371159', '超级管理员', '1');
INSERT INTO `mall_admin` VALUES ('2', 'aaa', '4124bc0a9335c27f086f24ba207a4912', null, null, 'aaa', '-1');
INSERT INTO `mall_admin` VALUES ('3', 'asdsad', 'e93ccf5ffc90eefcc0bdb81f87d25d1a', null, null, 'dasda', '-1');

-- ----------------------------
-- Table structure for mall_cart
-- ----------------------------
DROP TABLE IF EXISTS `mall_cart`;
CREATE TABLE `mall_cart` (
  `cart_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint(8) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `product_num` int(8) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_cart
-- ----------------------------
INSERT INTO `mall_cart` VALUES ('17', '13', '1', '5');
INSERT INTO `mall_cart` VALUES ('18', '20', '1', '7');
INSERT INTO `mall_cart` VALUES ('19', '16', '1', '1');
INSERT INTO `mall_cart` VALUES ('20', '15', '1', '1');

-- ----------------------------
-- Table structure for mall_class
-- ----------------------------
DROP TABLE IF EXISTS `mall_class`;
CREATE TABLE `mall_class` (
  `class_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(40) COLLATE utf8_bin NOT NULL,
  `partent_id` smallint(6) NOT NULL,
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_class
-- ----------------------------
INSERT INTO `mall_class` VALUES ('40', '家用电器', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('41', '手机', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('42', '电脑', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('43', '办公', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('44', '男装', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('45', '女装', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('46', '个护化妆', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('47', '汽车用品', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('48', '玩具乐器', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('49', '食品', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('50', '苹果', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('51', '三星', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('52', 'aaa', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('53', 'asdsad', '0', '0', '-1');
INSERT INTO `mall_class` VALUES ('54', '小米', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('55', '联想', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('56', '魅族', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('57', 'vivo', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('58', '华为', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('59', 'oppo', '41', '0', '1');
INSERT INTO `mall_class` VALUES ('60', '饮料', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('61', '奶制品', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('62', '零食', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('63', '饼干', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('64', '原装进口', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('65', '茗茶', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('66', '速食', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('67', '坚果蜜饯', '49', '0', '1');
INSERT INTO `mall_class` VALUES ('68', '冰箱', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('69', '空调', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('70', '电视', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('71', '电脑', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('72', '洗衣机', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('73', '吸尘器', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('74', '照明电器', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('75', '影音娱乐', '40', '0', '1');
INSERT INTO `mall_class` VALUES ('76', '吉他', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('77', '钢琴', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('78', '遥控电动', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('79', '尤克里里', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('80', '口琴', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('81', '乐器配件', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('82', '公仔', '48', '0', '1');
INSERT INTO `mall_class` VALUES ('85', '机油', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('86', '车载音响', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('87', '美容清洗', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('88', '安全自驾', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('89', '热卖单品', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('90', '维修保养', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('91', '车载电器', '47', '0', '1');
INSERT INTO `mall_class` VALUES ('92', '香水', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('93', '洗护沐浴', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('94', '美丽彩妆', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('95', '口腔护理', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('96', '男士护理', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('97', '清洁用品', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('98', '热门功效', '46', '0', '1');
INSERT INTO `mall_class` VALUES ('99', '裙装', '45', '0', '1');
INSERT INTO `mall_class` VALUES ('100', '衣服', '45', '0', '1');
INSERT INTO `mall_class` VALUES ('101', '休闲裤', '45', '0', '1');
INSERT INTO `mall_class` VALUES ('102', '女鞋', '45', '0', '1');
INSERT INTO `mall_class` VALUES ('103', '特色品类', '45', '0', '1');
INSERT INTO `mall_class` VALUES ('104', '女帽', '45', '0', '1');
INSERT INTO `mall_class` VALUES ('105', '男鞋', '44', '0', '1');
INSERT INTO `mall_class` VALUES ('106', '衣服', '44', '0', '1');
INSERT INTO `mall_class` VALUES ('107', '帽子', '44', '0', '1');
INSERT INTO `mall_class` VALUES ('108', '休闲裤', '44', '0', '1');
INSERT INTO `mall_class` VALUES ('109', '运动户外', '44', '0', '1');
INSERT INTO `mall_class` VALUES ('110', '潮流名牌', '44', '0', '1');
INSERT INTO `mall_class` VALUES ('111', '神舟', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('112', '联想', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('113', '宏碁', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('114', '苹果', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('115', '华硕', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('116', '外星人', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('117', '惠普', '42', '0', '1');
INSERT INTO `mall_class` VALUES ('118', '电脑配件', '43', '0', '1');
INSERT INTO `mall_class` VALUES ('119', '优盘', '43', '0', '1');
INSERT INTO `mall_class` VALUES ('120', '摄影机', '43', '0', '1');
INSERT INTO `mall_class` VALUES ('121', '照相机', '43', '0', '1');
INSERT INTO `mall_class` VALUES ('122', '文具', '43', '0', '1');
INSERT INTO `mall_class` VALUES ('123', '外设配件', '43', '0', '1');
INSERT INTO `mall_class` VALUES ('124', '家居', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('125', '医疗保健', '0', '0', '1');
INSERT INTO `mall_class` VALUES ('126', '213', '125', '0', '-1');

-- ----------------------------
-- Table structure for mall_menu
-- ----------------------------
DROP TABLE IF EXISTS `mall_menu`;
CREATE TABLE `mall_menu` (
  `menu_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` varchar(20) COLLATE utf8_bin NOT NULL,
  `c` varchar(20) COLLATE utf8_bin NOT NULL,
  `f` varchar(20) COLLATE utf8_bin NOT NULL,
  `data` varchar(100) COLLATE utf8_bin NOT NULL,
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_menu
-- ----------------------------
INSERT INTO `mall_menu` VALUES ('1', '菜单管理', '0', 'admin', 'menu', 'index', '', '0', '1', '1');
INSERT INTO `mall_menu` VALUES ('16', '订单管理', '0', 'admin', 'order', 'index', '', '0', '1', '1');
INSERT INTO `mall_menu` VALUES ('18', '商品管理', '0', 'admin', 'product', 'index', '', '0', '1', '1');
INSERT INTO `mall_menu` VALUES ('19', '用户管理', '0', 'admin', 'adminUser', 'index', '', '0', '1', '1');
INSERT INTO `mall_menu` VALUES ('20', '基本管理', '0', 'admin', 'basic', 'index', '', '0', '1', '0');
INSERT INTO `mall_menu` VALUES ('21', ' sad', '0', 'asd', 'asdasd', 'sad', '', '0', '-1', '1');
INSERT INTO `mall_menu` VALUES ('22', ' sad', '0', 'asd', 'asdasd', 'sad', '', '0', '-1', '0');
INSERT INTO `mall_menu` VALUES ('23', '商品分类', '0', 'admin', 'classify', 'index', '', '0', '1', '1');
INSERT INTO `mall_menu` VALUES ('24', '', '0', '', '', '', '', '0', '-1', '0');
INSERT INTO `mall_menu` VALUES ('25', 'a', '0', 'a', 'a', 'a', '', '0', '-1', '1');

-- ----------------------------
-- Table structure for mall_op
-- ----------------------------
DROP TABLE IF EXISTS `mall_op`;
CREATE TABLE `mall_op` (
  `op_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `product_id` mediumint(8) NOT NULL,
  `order_id` mediumint(8) NOT NULL,
  `product_num` int(8) NOT NULL,
  PRIMARY KEY (`op_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_op
-- ----------------------------
INSERT INTO `mall_op` VALUES ('18', '16', '42', '1');
INSERT INTO `mall_op` VALUES ('19', '14', '43', '1');
INSERT INTO `mall_op` VALUES ('20', '29', '44', '3');
INSERT INTO `mall_op` VALUES ('21', '33', '45', '1');
INSERT INTO `mall_op` VALUES ('22', '16', '46', '1');
INSERT INTO `mall_op` VALUES ('23', '16', '47', '1');
INSERT INTO `mall_op` VALUES ('24', '16', '48', '1');
INSERT INTO `mall_op` VALUES ('25', '13', '49', '3');
INSERT INTO `mall_op` VALUES ('26', '16', '50', '1');
INSERT INTO `mall_op` VALUES ('27', '15', '51', '1');
INSERT INTO `mall_op` VALUES ('28', '13', '52', '1');
INSERT INTO `mall_op` VALUES ('29', '12', '52', '1');
INSERT INTO `mall_op` VALUES ('30', '16', '53', '4');
INSERT INTO `mall_op` VALUES ('31', '40', '54', '14');
INSERT INTO `mall_op` VALUES ('32', '256', '55', '1');

-- ----------------------------
-- Table structure for mall_order
-- ----------------------------
DROP TABLE IF EXISTS `mall_order`;
CREATE TABLE `mall_order` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int(8) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `order_price` int(11) NOT NULL,
  `order_time` int(11) NOT NULL,
  `order_send` tinyint(1) NOT NULL,
  `order_get` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_order
-- ----------------------------
INSERT INTO `mall_order` VALUES ('42', '30', '1', '1790', '1471868790', '0', '0', '-1');
INSERT INTO `mall_order` VALUES ('43', '30', '1', '1396', '1471873450', '0', '0', '-1');
INSERT INTO `mall_order` VALUES ('44', '30', '1', '774', '1471873663', '1', '1', '-1');
INSERT INTO `mall_order` VALUES ('45', '30', '1', '268', '1471888516', '0', '0', '-1');
INSERT INTO `mall_order` VALUES ('46', '30', '1', '1790', '1471888689', '0', '0', '-1');
INSERT INTO `mall_order` VALUES ('47', '30', '1', '1790', '1471888730', '0', '0', '-1');
INSERT INTO `mall_order` VALUES ('48', '30', '1', '1790', '1471894768', '1', '1', '0');
INSERT INTO `mall_order` VALUES ('49', '30', '1', '14097', '1471981663', '0', '0', '0');
INSERT INTO `mall_order` VALUES ('50', '30', '1', '1790', '1471981810', '0', '0', '0');
INSERT INTO `mall_order` VALUES ('51', '29', '1', '2099', '1472085991', '0', '0', '0');
INSERT INTO `mall_order` VALUES ('52', '31', '12', '9998', '1472088207', '0', '0', '0');
INSERT INTO `mall_order` VALUES ('53', '31', '12', '7160', '1472089685', '1', '0', '0');
INSERT INTO `mall_order` VALUES ('54', '32', '12', '5460', '1472117788', '1', '0', '0');
INSERT INTO `mall_order` VALUES ('55', '32', '12', '2099', '1472154412', '1', '0', '0');

-- ----------------------------
-- Table structure for mall_product
-- ----------------------------
DROP TABLE IF EXISTS `mall_product`;
CREATE TABLE `mall_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` mediumint(8) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` int(4) NOT NULL,
  `info` varchar(500) COLLATE utf8_bin NOT NULL,
  `count` int(6) NOT NULL,
  `shelf` tinyint(1) NOT NULL DEFAULT '1',
  `img` varchar(200) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_time` int(10) NOT NULL,
  `sell` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1207 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_product
-- ----------------------------
INSERT INTO `mall_product` VALUES ('1', '50', 'asdasd', '13', 'asdad', '14', '1', '/upload/2016/08/12/57acbc64de950.png', '-1', '1470938220', '50');
INSERT INTO `mall_product` VALUES ('2', '50', 'as', '3', 'dasdsdad', '13', '1', '/upload/2016/08/12/57ace5f04f3ac.png', '-1', '1470948855', '50');
INSERT INTO `mall_product` VALUES ('3', '50', '13131', '3131', 'adasd', '13131', '1', '/upload/2016/08/12/57ace6021659c.png', '-1', '1470948868', '50');
INSERT INTO `mall_product` VALUES ('4', '51', '3131', '3131', '131313', '13131', '1', '/upload/2016/08/12/57ace60e88efd.png', '-1', '1470948881', '50');
INSERT INTO `mall_product` VALUES ('5', '50', '1313', '131', '13131313', '3131', '1', '/upload/2016/08/12/57ace61b704af.png', '-1', '1470948894', '50');
INSERT INTO `mall_product` VALUES ('6', '50', '3131', '3131', '1313131313', '131313', '1', '/upload/2016/08/12/57ace629038ca.png', '-1', '1470948908', '50');
INSERT INTO `mall_product` VALUES ('7', '50', '苹果6s', '6560', '苹果6s', '100', '1', '/upload/2016/08/12/57ad8f7f3075e.jpg', '-1', '1470992268', '50');
INSERT INTO `mall_product` VALUES ('8', '50', '苹果6s', '6560', '苹果6s', '100', '1', '/upload/2016/08/12/57ad8f7f3075e.jpg', '-1', '1470995023', '50');
INSERT INTO `mall_product` VALUES ('9', '55', '联想 乐檬3 （K32C36）16GB 金色', '499', '<img src=\"/upload/2016/08/12/57ada0ef8bc8d.jpg\" alt=\"\" />', '0', '1', '/upload/2016/08/12/57ada22f539ed.jpg', '1', '1470995049', '55');
INSERT INTO `mall_product` VALUES ('10', '54', '小米 Note 全网通 黑色 ', '1299', '<img src=\"/upload/2016/08/14/57afb294d51a8.jpg\" alt=\"\" />', '499', '1', '/upload/2016/08/14/57afb25ad9992.jpg', '1', '1471132319', '52');
INSERT INTO `mall_product` VALUES ('11', '56', '魅族 魅蓝note3 全网通公开版 16GB ', '899', '<img src=\"/upload/2016/08/14/57afb952aea19.jpg\" alt=\"\" />', '390', '1', '/upload/2016/08/14/57afb93ec3867.jpg', '1', '1471134038', '50');
INSERT INTO `mall_product` VALUES ('12', '50', 'Apple iPhone 6s (A1700) 64G 金色 ', '5299', '<img src=\"/upload/2016/08/14/57afb9af7873e.jpg\" alt=\"\" />', '19', '1', '/upload/2016/08/14/57afb994d10a8.jpg', '1', '1471134132', '16');
INSERT INTO `mall_product` VALUES ('13', '68', '美的（Midea）BCD-655WKPZM(E)', '4699', '<img src=\"/upload/2016/08/14/57afba502d57a.jpg\" alt=\"\" />', '65', '1', '/upload/2016/08/14/57afba47707fd.jpg', '1', '1471134291', '55');
INSERT INTO `mall_product` VALUES ('14', '68', '美的(Midea) BCD-206TM(E) 206升', '1396', '<img src=\"/upload/2016/08/14/57afbacdcf355.jpg\" alt=\"\" />', '33', '1', '/upload/2016/08/14/57afba9ba6809.jpg', '1', '1471134417', '25');
INSERT INTO `mall_product` VALUES ('15', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '39', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471134521', '62');
INSERT INTO `mall_product` VALUES ('16', '75', '漫步者（EDIFIER）S2000MKII', '1790', '<img src=\"/upload/2016/08/14/57afbb8a87113.jpg\" alt=\"\" />', '3', '1', '/upload/2016/08/14/57afbb8087d95.jpg', '1', '1471134605', '60');
INSERT INTO `mall_product` VALUES ('17', '112', '联想(Lenovo)小新700电竞版', '4799', '<img src=\"/upload/2016/08/14/57afbbd201b1a.jpg\" alt=\"\" />', '41', '1', '/upload/2016/08/14/57afbbc9dc220.jpg', '1', '1471134677', '50');
INSERT INTO `mall_product` VALUES ('18', '113', '宏碁（acer）暗影骑士 VN7 V Nitro ', '4999', '<img src=\"/upload/2016/08/14/57afbc2d70377.jpg\" alt=\"\" />', '52', '1', '/upload/2016/08/14/57afbc24108b4.jpg', '1', '1471134770', '50');
INSERT INTO `mall_product` VALUES ('19', '111', '神舟（HASEE） 战神Z6-SL7D1 ', '5199', '<img src=\"/upload/2016/08/14/57afbca0df724.jpg\" alt=\"\" />', '112', '1', '/upload/2016/08/14/57afbc8b35897.jpg', '1', '1471134885', '50');
INSERT INTO `mall_product` VALUES ('20', '115', '华硕(ASUS) 思聪本 X205 ', '1899', '<img src=\"/upload/2016/08/14/57afbd06a010b.jpg\" alt=\"\" />', '13', '1', '/upload/2016/08/14/57afbced0c642.jpg', '1', '1471134988', '50');
INSERT INTO `mall_product` VALUES ('21', '118', '闪迪(SanDisk) Z410系列 240G 固态硬盘', '399', '<img src=\"/upload/2016/08/14/57afbd66368d4.jpg\" alt=\"\" />', '213', '1', '/upload/2016/08/14/57afbd569cfb9.jpg', '1', '1471135087', '50');
INSERT INTO `mall_product` VALUES ('22', '118', '索泰（ZOTAC）Geforce GTX 1070', '3199', '<img src=\"/upload/2016/08/14/57afbdeab1eed.jpg\" alt=\"\" />', '119', '1', '/upload/2016/08/14/57afbdda3a94a.jpg', '1', '1471135215', '52');
INSERT INTO `mall_product` VALUES ('23', '121', '佳能（Canon）PowerShot SX710 HS', '1799', '<img src=\"/upload/2016/08/14/57b01d9d9f7d5.png\" alt=\"\" />', '54', '1', '/upload/2016/08/14/57b01d94cae37.jpg', '1', '1471159716', '50');
INSERT INTO `mall_product` VALUES ('24', '119', '金士顿（Kingston）DT 100G3', '59', '<img src=\"/upload/2016/08/14/57b01df765bdc.jpg\" alt=\"\" />', '44', '1', '/upload/2016/08/14/57b01ded72c06.jpg', '1', '1471159801', '50');
INSERT INTO `mall_product` VALUES ('25', '105', '竞帕（JINGPA）男鞋网布鞋2016夏季', '198', '<img src=\"/upload/2016/08/14/57b01e7f60106.jpg\" alt=\"\" />', '54', '1', '/upload/2016/08/14/57b01e663f679.jpg', '1', '1471159938', '50');
INSERT INTO `mall_product` VALUES ('26', '106', '吉约蒙（G·MONS）西服套装男修身', '598', '<img src=\"/upload/2016/08/14/57b01edc68017.jpg\" alt=\"\" />', '51', '1', '/upload/2016/08/14/57b01ecc0baf7.jpg', '1', '1471160032', '50');
INSERT INTO `mall_product` VALUES ('27', '108', 'Gap纯棉复古水洗直筒牛仔裤|男装', '499', '<img src=\"/upload/2016/08/14/57b01f2cafdb5.jpg\" alt=\"\" />', '65', '1', '/upload/2016/08/14/57b01f17e406c.jpg', '1', '1471160111', '50');
INSERT INTO `mall_product` VALUES ('28', '107', '霂末 夏季款 韩版潮男女士情侣款', '19', '<img src=\"/upload/2016/08/14/57b01f812578b.jpg\" alt=\"\" />', '222', '1', '/upload/2016/08/14/57b01f776e3a5.jpg', '1', '1471160199', '50');
INSERT INTO `mall_product` VALUES ('29', '99', 'AINUOER.MY2016夏装新款女装蕾丝裙', '258', '<img src=\"/upload/2016/08/14/57b01fecc2f3b.jpg\" alt=\"\" />', '31', '1', '/upload/2016/08/14/57b01fdb1908a.jpg', '1', '1471160304', '53');
INSERT INTO `mall_product` VALUES ('30', '102', 'U&X高跟鞋 女2016新款', '168', '<img src=\"/upload/2016/08/14/57b0204aea5d0.jpg\" alt=\"\" />', '64', '1', '/upload/2016/08/14/57b0203e82db1.jpg', '1', '1471160399', '50');
INSERT INTO `mall_product` VALUES ('31', '104', 'GREATMAY 遮阳帽子女', '59', '<img src=\"/upload/2016/08/14/57b0209683531.jpg\" alt=\"\" />', '65', '1', '/upload/2016/08/14/57b020858092b.jpg', '1', '1471160474', '50');
INSERT INTO `mall_product` VALUES ('32', '100', '圆领短袖针织T恤女短袖', '240', '<img src=\"/upload/2016/08/14/57b021108f937.jpg\" alt=\"\" />', '23', '1', '/upload/2016/08/14/57b02102075fe.jpg', '1', '1471160596', '50');
INSERT INTO `mall_product` VALUES ('33', '92', '范思哲 (VERSACE )臻挚粉钻女士', '268', '<img src=\"/upload/2016/08/14/57b02179b0442.jpg\" alt=\"\" />', '17', '1', '/upload/2016/08/14/57b0216e5ec64.jpg', '1', '1471160701', '528');
INSERT INTO `mall_product` VALUES ('34', '95', '佳洁士 CREST 超细柔韧系列', '25', '<img src=\"/upload/2016/08/14/57b021d314999.jpg\" alt=\"\" />', '64', '1', '/upload/2016/08/14/57b021c486a14.jpg', '1', '1471160793', '50');
INSERT INTO `mall_product` VALUES ('35', '93', '力士(LUX)沐浴露', '39', '&nbsp;&nbsp;', '23', '1', '/upload/2016/08/14/57b0223904b1b.jpg', '1', '1471160891', '50');
INSERT INTO `mall_product` VALUES ('36', '94', '欧莱雅（LOREAL）', '209', '<img src=\"/upload/2016/08/14/57b0228760bff.jpg\" alt=\"\" />', '55', '1', '/upload/2016/08/14/57b0226f8c761.jpg', '1', '1471160970', '50');
INSERT INTO `mall_product` VALUES ('37', '91', '凯立德(CARELAND)K370', '299', '<img src=\"/upload/2016/08/14/57b02336e7092.jpg\" alt=\"\" />', '4', '1', '/upload/2016/08/14/57b023021758a.jpg', '1', '1471161146', '50');
INSERT INTO `mall_product` VALUES ('38', '87', '保赐利(botny)B-1810粘胶去除剂', '12', '<img src=\"/upload/2016/08/14/57b0238b48d65.jpg\" alt=\"\" />', '162', '1', '/upload/2016/08/14/57b0237aa86d3.jpg', '1', '1471161230', '266');
INSERT INTO `mall_product` VALUES ('39', '90', '米其林轮胎 205/55R16 ', '569', '&nbsp;', '14', '1', '/upload/2016/08/14/57b023fc3a896.jpg', '1', '1471161345', '50');
INSERT INTO `mall_product` VALUES ('40', '90', '固特异轮胎 195/65R15', '390', '&nbsp;', '0', '1', '/upload/2016/08/14/57b024283ecec.jpg', '1', '1471161386', '64');
INSERT INTO `mall_product` VALUES ('41', '77', '普鲁特娜UP121钢琴 ', '16288', '<img src=\"/upload/2016/08/14/57b02492dd71f.jpg\" alt=\"\" />', '4', '1', '/upload/2016/08/14/57b0248933342.jpg', '1', '1471161493', '50');
INSERT INTO `mall_product` VALUES ('42', '76', '朗声LANGSHENG吉他', '538', '<img src=\"/upload/2016/08/14/57b024ec40a02.jpg\" alt=\"\" />', '65', '1', '/upload/2016/08/14/57b024df4c5f7.jpg', '1', '1471161585', '50');
INSERT INTO `mall_product` VALUES ('43', '79', 'TOTORO全桃花芯木夏威夷尤克里里', '198', '<img src=\"/upload/2016/08/14/57b0252ea0d89.jpg\" alt=\"\" />', '34', '1', '/upload/2016/08/14/57b025222e4ac.jpg', '1', '1471161649', '50');
INSERT INTO `mall_product` VALUES ('44', '80', '天鹅24孔C调复音银色口琴', '69', '&nbsp;', '34', '1', '/upload/2016/08/14/57b025619c9e9.jpg', '1', '1471161700', '50');
INSERT INTO `mall_product` VALUES ('45', '61', '蒙牛 纯甄 常温酸牛奶 200g*24 家庭装', '92', '<img src=\"/upload/2016/08/14/57b025a8cae57.jpg\" alt=\"\" />', '45', '1', '/upload/2016/08/14/57b025a1eae92.jpg', '1', '1471161771', '50');
INSERT INTO `mall_product` VALUES ('46', '67', '蒙牛 纯甄 常温酸牛奶 200g*24 家庭装', '39', '<img src=\"/upload/2016/08/14/57b025e2c6061.jpg\" alt=\"\" />', '55', '1', '/upload/2016/08/14/57b025da0ee2e.jpg', '1', '1471161833', '50');
INSERT INTO `mall_product` VALUES ('47', '65', '润虎 茶叶 乌龙茶 安溪铁观音', '99', '<img src=\"/upload/2016/08/14/57b0262c576b0.jpg\" alt=\"\" />', '65', '1', '/upload/2016/08/14/57b02622ee764.jpg', '1', '1471161903', '50');
INSERT INTO `mall_product` VALUES ('48', '64', '泰国进口脆海苔海苔卷 ', '59', '<img src=\"/upload/2016/08/14/57b0267fa90a5.jpg\" alt=\"\" />', '555', '1', '/upload/2016/08/14/57b0266b752a4.jpg', '1', '1471161992', '50');
INSERT INTO `mall_product` VALUES ('49', '58', '华为 Mate 8 3GB+32GB版', '4999', '<img src=\"/upload/2016/08/15/57b1b513e44eb.jpg\" alt=\"\" />', '65', '1', '/upload/2016/08/15/57b1b50d97947.jpg', '1', '1471264071', '25');
INSERT INTO `mall_product` VALUES ('50', '70', '长虹（CHANGHONG）60G3 60英寸双模式', '4999', '<img src=\"/upload/2016/08/24/57bc929101496.jpg\" alt=\"\" />', '144', '1', '/upload/2016/08/24/57bc92417509f.jpg', '1', '1471976084', '0');
INSERT INTO `mall_product` VALUES ('51', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('52', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('53', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('54', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('55', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('56', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('57', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980026', '10');
INSERT INTO `mall_product` VALUES ('58', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('59', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('60', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('61', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('62', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('63', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('64', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('65', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('66', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980027', '10');
INSERT INTO `mall_product` VALUES ('67', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('68', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('69', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('70', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('71', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('72', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('73', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('74', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('75', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('76', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('77', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('78', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('79', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('80', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('81', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('82', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980028', '10');
INSERT INTO `mall_product` VALUES ('83', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('84', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('85', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('86', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('87', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('88', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('89', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('90', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('91', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('92', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('93', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('94', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('95', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980029', '10');
INSERT INTO `mall_product` VALUES ('96', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('97', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('98', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('99', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('100', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('101', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('102', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('103', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('104', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('105', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('106', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('107', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('108', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('109', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('110', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('111', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980030', '10');
INSERT INTO `mall_product` VALUES ('112', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('113', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('114', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('115', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('116', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('117', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('118', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('119', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('120', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('121', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('122', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('123', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('124', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('125', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('126', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('127', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980031', '10');
INSERT INTO `mall_product` VALUES ('128', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('129', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('130', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('131', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('132', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('133', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('134', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('135', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('136', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('137', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('138', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('139', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('140', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('141', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('142', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980032', '10');
INSERT INTO `mall_product` VALUES ('143', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('144', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('145', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('146', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('147', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('148', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('149', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('150', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('151', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('152', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('153', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('154', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980033', '10');
INSERT INTO `mall_product` VALUES ('155', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('156', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('157', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('158', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('159', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('160', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('161', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('162', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('163', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('164', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('165', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('166', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('167', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('168', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('169', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('170', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980034', '10');
INSERT INTO `mall_product` VALUES ('171', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('172', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('173', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('174', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('175', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('176', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('177', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('178', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('179', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('180', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('181', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('182', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('183', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('184', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('185', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('186', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('187', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('188', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980035', '10');
INSERT INTO `mall_product` VALUES ('189', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('190', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('191', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('192', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('193', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('194', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('195', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('196', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('197', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('198', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('199', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('200', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('201', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('202', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('203', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('204', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('205', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980036', '10');
INSERT INTO `mall_product` VALUES ('206', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('207', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('208', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('209', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('210', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('211', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('212', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('213', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980037', '10');
INSERT INTO `mall_product` VALUES ('214', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('215', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('216', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('217', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('218', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('219', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('220', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('221', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('222', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980038', '10');
INSERT INTO `mall_product` VALUES ('223', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('224', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('225', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('226', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('227', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('228', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('229', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('230', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('231', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('232', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('233', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('234', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('235', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('236', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('237', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('238', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980039', '10');
INSERT INTO `mall_product` VALUES ('239', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('240', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('241', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('242', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('243', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('244', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('245', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('246', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('247', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('248', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('249', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('250', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('251', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('252', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('253', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('254', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('255', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '10');
INSERT INTO `mall_product` VALUES ('256', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '39', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980040', '11');
INSERT INTO `mall_product` VALUES ('257', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('258', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('259', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('260', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('261', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('262', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('263', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('264', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('265', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('266', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('267', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('268', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('269', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('270', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('271', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('272', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('273', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('274', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980041', '10');
INSERT INTO `mall_product` VALUES ('275', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('276', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('277', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('278', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('279', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('280', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('281', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('282', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('283', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('284', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('285', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('286', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('287', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('288', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('289', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('290', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980042', '10');
INSERT INTO `mall_product` VALUES ('291', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('292', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('293', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('294', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('295', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('296', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('297', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('298', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('299', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('300', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('301', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('302', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('303', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('304', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('305', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('306', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('307', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980043', '10');
INSERT INTO `mall_product` VALUES ('308', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('309', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('310', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('311', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('312', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('313', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('314', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('315', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('316', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('317', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('318', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980044', '10');
INSERT INTO `mall_product` VALUES ('319', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('320', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('321', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('322', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('323', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('324', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('325', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('326', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('327', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('328', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('329', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('330', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('331', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('332', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('333', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('334', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('335', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('336', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980045', '10');
INSERT INTO `mall_product` VALUES ('337', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('338', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('339', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('340', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('341', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('342', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('343', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('344', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('345', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('346', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('347', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('348', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('349', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('350', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('351', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('352', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('353', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('354', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980046', '10');
INSERT INTO `mall_product` VALUES ('355', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('356', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('357', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('358', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('359', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('360', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('361', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('362', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('363', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('364', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('365', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('366', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('367', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('368', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('369', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('370', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('371', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980047', '10');
INSERT INTO `mall_product` VALUES ('372', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('373', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('374', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('375', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('376', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('377', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('378', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('379', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('380', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('381', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('382', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('383', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('384', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('385', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('386', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('387', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980048', '10');
INSERT INTO `mall_product` VALUES ('388', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('389', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('390', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('391', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('392', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('393', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('394', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('395', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('396', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('397', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('398', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('399', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('400', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('401', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980049', '10');
INSERT INTO `mall_product` VALUES ('402', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('403', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('404', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('405', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('406', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('407', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('408', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('409', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('410', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('411', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('412', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('413', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('414', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980050', '10');
INSERT INTO `mall_product` VALUES ('415', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('416', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('417', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('418', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('419', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('420', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('421', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('422', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('423', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('424', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('425', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('426', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('427', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('428', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('429', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('430', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('431', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('432', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980051', '10');
INSERT INTO `mall_product` VALUES ('433', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('434', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('435', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('436', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('437', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('438', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('439', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('440', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('441', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('442', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('443', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('444', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('445', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('446', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('447', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('448', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('449', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980052', '10');
INSERT INTO `mall_product` VALUES ('450', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('451', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('452', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('453', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('454', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('455', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('456', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('457', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('458', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('459', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('460', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('461', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980053', '10');
INSERT INTO `mall_product` VALUES ('462', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('463', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('464', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('465', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('466', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('467', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('468', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('469', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('470', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('471', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('472', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('473', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('474', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980054', '10');
INSERT INTO `mall_product` VALUES ('475', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('476', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('477', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('478', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('479', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('480', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('481', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('482', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('483', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('484', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('485', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('486', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('487', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('488', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('489', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('490', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980055', '10');
INSERT INTO `mall_product` VALUES ('491', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('492', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('493', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('494', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('495', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('496', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('497', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('498', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980056', '10');
INSERT INTO `mall_product` VALUES ('499', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980112', '10');
INSERT INTO `mall_product` VALUES ('500', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980112', '10');
INSERT INTO `mall_product` VALUES ('501', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980112', '10');
INSERT INTO `mall_product` VALUES ('502', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980112', '10');
INSERT INTO `mall_product` VALUES ('503', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980112', '10');
INSERT INTO `mall_product` VALUES ('504', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980112', '10');
INSERT INTO `mall_product` VALUES ('505', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('506', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('507', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('508', '50', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('509', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('510', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('511', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('512', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('513', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('514', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('515', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('516', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('517', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('518', '51', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980113', '10');
INSERT INTO `mall_product` VALUES ('519', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('520', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('521', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('522', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('523', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('524', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('525', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('526', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('527', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('528', '52', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('529', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('530', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('531', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('532', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('533', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('534', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('535', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980114', '10');
INSERT INTO `mall_product` VALUES ('536', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('537', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('538', '54', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('539', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('540', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('541', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('542', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('543', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('544', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('545', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('546', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('547', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('548', '55', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('549', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('550', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('551', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('552', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('553', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980115', '10');
INSERT INTO `mall_product` VALUES ('554', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('555', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('556', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('557', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('558', '56', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('559', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('560', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('561', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('562', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('563', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('564', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('565', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('566', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980116', '10');
INSERT INTO `mall_product` VALUES ('567', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('568', '57', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('569', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('570', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('571', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('572', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('573', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('574', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('575', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('576', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('577', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('578', '58', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('579', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('580', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('581', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980117', '10');
INSERT INTO `mall_product` VALUES ('582', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('583', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('584', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('585', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('586', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('587', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('588', '59', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('589', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('590', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('591', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('592', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('593', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('594', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('595', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('596', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980118', '10');
INSERT INTO `mall_product` VALUES ('597', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('598', '60', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('599', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('600', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('601', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('602', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('603', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('604', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('605', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('606', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('607', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('608', '61', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('609', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('610', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('611', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('612', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980119', '10');
INSERT INTO `mall_product` VALUES ('613', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('614', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('615', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('616', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('617', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('618', '62', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('619', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('620', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('621', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('622', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('623', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('624', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('625', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('626', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('627', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980120', '10');
INSERT INTO `mall_product` VALUES ('628', '63', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('629', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('630', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('631', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('632', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('633', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('634', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('635', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('636', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('637', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('638', '64', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('639', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('640', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('641', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('642', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980121', '10');
INSERT INTO `mall_product` VALUES ('643', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('644', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('645', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('646', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('647', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('648', '65', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('649', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('650', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('651', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('652', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('653', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('654', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('655', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('656', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('657', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('658', '66', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980122', '10');
INSERT INTO `mall_product` VALUES ('659', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('660', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('661', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('662', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('663', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('664', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('665', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('666', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('667', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('668', '67', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('669', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('670', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980123', '10');
INSERT INTO `mall_product` VALUES ('671', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('672', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('673', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('674', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('675', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('676', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('677', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('678', '68', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('679', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('680', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980124', '10');
INSERT INTO `mall_product` VALUES ('681', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980125', '10');
INSERT INTO `mall_product` VALUES ('682', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980125', '10');
INSERT INTO `mall_product` VALUES ('683', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980125', '10');
INSERT INTO `mall_product` VALUES ('684', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980125', '10');
INSERT INTO `mall_product` VALUES ('685', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('686', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('687', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('688', '69', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('689', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('690', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('691', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('692', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('693', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('694', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('695', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('696', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('697', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('698', '70', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980126', '10');
INSERT INTO `mall_product` VALUES ('699', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('700', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('701', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('702', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('703', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('704', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('705', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('706', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('707', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('708', '71', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('709', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('710', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('711', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('712', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('713', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('714', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('715', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('716', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980127', '10');
INSERT INTO `mall_product` VALUES ('717', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('718', '72', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('719', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('720', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('721', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('722', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('723', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('724', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('725', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('726', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('727', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('728', '73', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('729', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('730', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('731', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('732', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('733', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('734', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980128', '10');
INSERT INTO `mall_product` VALUES ('735', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('736', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('737', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('738', '74', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('739', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('740', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('741', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('742', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('743', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('744', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('745', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980129', '10');
INSERT INTO `mall_product` VALUES ('746', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('747', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('748', '75', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('749', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('750', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('751', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('752', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('753', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('754', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('755', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('756', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('757', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('758', '76', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('759', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('760', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('761', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980130', '10');
INSERT INTO `mall_product` VALUES ('762', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('763', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('764', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('765', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('766', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('767', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('768', '77', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('769', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('770', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('771', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('772', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('773', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('774', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('775', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('776', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('777', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980131', '10');
INSERT INTO `mall_product` VALUES ('778', '78', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('779', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('780', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('781', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('782', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('783', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('784', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('785', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('786', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('787', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('788', '79', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('789', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('790', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('791', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('792', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('793', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('794', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980132', '10');
INSERT INTO `mall_product` VALUES ('795', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('796', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('797', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('798', '80', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('799', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('800', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('801', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('802', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('803', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('804', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('805', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('806', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('807', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('808', '81', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('809', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('810', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('811', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('812', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('813', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980133', '10');
INSERT INTO `mall_product` VALUES ('814', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('815', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('816', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('817', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('818', '82', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('819', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('820', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('821', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('822', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('823', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('824', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980134', '10');
INSERT INTO `mall_product` VALUES ('825', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('826', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('827', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('828', '85', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('829', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('830', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('831', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('832', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('833', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('834', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('835', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('836', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('837', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980135', '10');
INSERT INTO `mall_product` VALUES ('838', '86', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('839', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('840', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('841', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('842', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('843', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('844', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('845', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('846', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('847', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('848', '87', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('849', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('850', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('851', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('852', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('853', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('854', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980136', '10');
INSERT INTO `mall_product` VALUES ('855', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('856', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('857', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('858', '88', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('859', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('860', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('861', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('862', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('863', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('864', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('865', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('866', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('867', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('868', '89', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('869', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('870', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980137', '10');
INSERT INTO `mall_product` VALUES ('871', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('872', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('873', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('874', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('875', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('876', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('877', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('878', '90', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('879', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('880', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('881', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('882', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('883', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('884', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('885', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('886', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('887', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980138', '10');
INSERT INTO `mall_product` VALUES ('888', '91', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('889', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('890', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('891', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('892', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('893', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('894', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('895', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('896', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('897', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('898', '92', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('899', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('900', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('901', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('902', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980139', '10');
INSERT INTO `mall_product` VALUES ('903', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('904', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('905', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('906', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('907', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('908', '93', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('909', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('910', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('911', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('912', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('913', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('914', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980140', '10');
INSERT INTO `mall_product` VALUES ('915', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('916', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('917', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('918', '94', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('919', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('920', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('921', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980141', '10');
INSERT INTO `mall_product` VALUES ('922', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980142', '10');
INSERT INTO `mall_product` VALUES ('923', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980142', '10');
INSERT INTO `mall_product` VALUES ('924', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980142', '10');
INSERT INTO `mall_product` VALUES ('925', '95', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980142', '10');
INSERT INTO `mall_product` VALUES ('926', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('927', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('928', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('929', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('930', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('931', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('932', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('933', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('934', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980971', '10');
INSERT INTO `mall_product` VALUES ('935', '96', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('936', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('937', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('938', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('939', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('940', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('941', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('942', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('943', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('944', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('945', '97', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('946', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('947', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980972', '10');
INSERT INTO `mall_product` VALUES ('948', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('949', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('950', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('951', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('952', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('953', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('954', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('955', '98', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('956', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('957', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('958', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('959', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('960', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('961', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('962', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('963', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('964', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980973', '10');
INSERT INTO `mall_product` VALUES ('965', '99', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('966', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('967', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('968', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('969', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('970', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('971', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('972', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('973', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('974', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('975', '100', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('976', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('977', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('978', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('979', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('980', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('981', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('982', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('983', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980974', '10');
INSERT INTO `mall_product` VALUES ('984', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('985', '101', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('986', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('987', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('988', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('989', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('990', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('991', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('992', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('993', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('994', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('995', '102', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('996', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('997', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('998', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('999', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('1000', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980975', '10');
INSERT INTO `mall_product` VALUES ('1001', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1002', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1003', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1004', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1005', '103', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1006', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1007', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1008', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1009', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980976', '10');
INSERT INTO `mall_product` VALUES ('1010', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1011', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1012', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1013', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1014', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1015', '104', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1016', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1017', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1018', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1019', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1020', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1021', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1022', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1023', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1024', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1025', '105', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1026', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980977', '10');
INSERT INTO `mall_product` VALUES ('1027', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1028', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1029', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1030', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1031', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1032', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1033', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1034', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1035', '106', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1036', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1037', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1038', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1039', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1040', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1041', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980978', '10');
INSERT INTO `mall_product` VALUES ('1042', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1043', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1044', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1045', '107', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1046', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1047', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1048', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1049', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1050', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1051', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1052', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1053', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1054', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1055', '108', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1056', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1057', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980979', '10');
INSERT INTO `mall_product` VALUES ('1058', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1059', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1060', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1061', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1062', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1063', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1064', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1065', '109', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1066', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1067', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1068', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1069', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1070', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1071', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1072', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1073', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1074', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980980', '10');
INSERT INTO `mall_product` VALUES ('1075', '110', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1076', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1077', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1078', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1079', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1080', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1081', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1082', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1083', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1084', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1085', '111', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1086', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1087', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1088', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1089', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1090', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1091', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980981', '10');
INSERT INTO `mall_product` VALUES ('1092', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1093', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1094', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1095', '112', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1096', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1097', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1098', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1099', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1100', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1101', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1102', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1103', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1104', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1105', '113', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1106', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1107', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980982', '10');
INSERT INTO `mall_product` VALUES ('1108', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1109', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1110', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1111', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1112', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1113', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1114', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1115', '114', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1116', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1117', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1118', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1119', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1120', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980983', '10');
INSERT INTO `mall_product` VALUES ('1121', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1122', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1123', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1124', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1125', '115', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1126', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1127', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1128', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1129', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1130', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1131', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1132', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1133', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1134', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1135', '116', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1136', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1137', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1138', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980984', '10');
INSERT INTO `mall_product` VALUES ('1139', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1140', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1141', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1142', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1143', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1144', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1145', '117', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1146', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1147', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1148', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1149', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1150', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1151', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1152', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1153', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980985', '10');
INSERT INTO `mall_product` VALUES ('1154', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1155', '118', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1156', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1157', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1158', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1159', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1160', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1161', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1162', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1163', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1164', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1165', '119', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1166', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1167', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1168', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1169', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1170', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1171', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980986', '10');
INSERT INTO `mall_product` VALUES ('1172', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1173', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1174', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1175', '120', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1176', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1177', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1178', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1179', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1180', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1181', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1182', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1183', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1184', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1185', '121', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1186', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1187', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1188', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980987', '10');
INSERT INTO `mall_product` VALUES ('1189', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1190', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1191', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1192', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1193', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1194', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1195', '122', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1196', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1197', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1198', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1199', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1200', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1201', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1202', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1203', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1204', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1205', '123', '小米（MI）L48M3-AF 48英寸', '2099', '<img src=\"/upload/2016/08/14/57afbb3690c75.jpg\" alt=\"\" />', '40', '1', '/upload/2016/08/14/57afbb2d09aea.jpg', '1', '1471980988', '10');
INSERT INTO `mall_product` VALUES ('1206', '68', '1', '1', '1', '1', '1', '/upload/2016/08/26/57bf40e5ef9ce.jpg', '-1', '1472151783', '0');

-- ----------------------------
-- Table structure for mall_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_user`;
CREATE TABLE `mall_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(32) COLLATE utf8_bin NOT NULL,
  `phone` varchar(13) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `lastloginip` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mall_user
-- ----------------------------
INSERT INTO `mall_user` VALUES ('1', 'admin@qq.com', '21232f297a57a5a743894a0e4a801fc3', null, null, null, '1515836916', '1');
INSERT INTO `mall_user` VALUES ('10', '1', '6512bd43d9caa6e02c990b0a82652dca', null, null, null, null, '1');
INSERT INTO `mall_user` VALUES ('11', 'a', '0cc175b9c0f1b6a831c399e269772661', null, null, null, '1471988797', '1');
INSERT INTO `mall_user` VALUES ('12', '2', 'c81e728d9d4c2f636f067f89cc14862c', null, null, null, '1473852671', '1');
INSERT INTO `mall_user` VALUES ('13', '568089002@qq.com', '4c89b08f00dfebbf84dc43825261cfc3', null, null, null, '1472086642', '1');
INSERT INTO `mall_user` VALUES ('14', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', null, null, null, null, '1');
INSERT INTO `mall_user` VALUES ('15', '1@163.com', 'b0baee9d279d34fa1dfd71aadb908c3f', null, null, null, null, '1');
INSERT INTO `mall_user` VALUES ('16', 'aa568089002', '4c89b08f00dfebbf84dc43825261cfc3', null, null, null, '1514039217', '1');
