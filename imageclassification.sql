/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : imageclassification

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-03 21:57:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_account` varchar(15) NOT NULL,
  `a_pwd` varchar(20) NOT NULL,
  `a_addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `a_updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `a_account` (`a_account`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123456', '123456', '2019-11-26 09:57:16', '2019-11-29 19:20:00');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_l_id` int(11) DEFAULT NULL,
  `i_name` varchar(100) NOT NULL,
  `i_path` varchar(255) NOT NULL,
  `i_addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `i_updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`i_id`),
  KEY `fk_image_label` (`i_l_id`),
  CONSTRAINT `fk_image_label` FOREIGN KEY (`i_l_id`) REFERENCES `label` (`l_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('20', '1', 'basichouse_HMCA723A_01.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_01.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('21', '1', 'basichouse_HMCA723A_02.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_02.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('22', '1', 'basichouse_HMCA723A_03.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_03.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('23', '1', 'basichouse_HMCA723A_04.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_04.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('24', '1', 'basichouse_HMCA723A_05.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_05.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('25', '1', 'basichouse_HMCA723A_06.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_06.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('26', '1', 'basichouse_HMCA723A_07.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_07.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('27', '1', 'basichouse_HMCA723A_08.jpg', 'upload/basichouse_HMCA723A/basichouse_HMCA723A_08.jpg', '2019-12-03 21:39:30', '2019-12-03 21:39:30');
INSERT INTO `image` VALUES ('28', '2', 'basichouse_HMJP226C_01.jpg', 'upload/basichouse_HMJP226C/basichouse_HMJP226C_01.jpg', '2019-12-03 21:40:21', '2019-12-03 21:41:09');
INSERT INTO `image` VALUES ('29', '2', 'basichouse_HMJP226C_02.jpg', 'upload/basichouse_HMJP226C/basichouse_HMJP226C_02.jpg', '2019-12-03 21:40:22', '2019-12-03 21:41:12');
INSERT INTO `image` VALUES ('30', '2', 'basichouse_HMJP226C_03.jpg', 'upload/basichouse_HMJP226C/basichouse_HMJP226C_03.jpg', '2019-12-03 21:40:22', '2019-12-03 21:41:13');
INSERT INTO `image` VALUES ('31', '2', 'basichouse_HMJP226C_04.jpg', 'upload/basichouse_HMJP226C/basichouse_HMJP226C_04.jpg', '2019-12-03 21:40:22', '2019-12-03 21:41:14');
INSERT INTO `image` VALUES ('32', '2', 'basichouse_HMJP226C_05.jpg', 'upload/basichouse_HMJP226C/basichouse_HMJP226C_05.jpg', '2019-12-03 21:40:22', '2019-12-03 21:42:07');
INSERT INTO `image` VALUES ('33', '2', 'basichouse_HMJP226C_06.jpg', 'upload/basichouse_HMJP226C/basichouse_HMJP226C_06.jpg', '2019-12-03 21:40:22', '2019-12-03 21:41:17');
INSERT INTO `image` VALUES ('34', '3', 'jackjones_212408029_1.jpg', 'upload/jackjones_212408029/jackjones_212408029_1.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('35', '3', 'jackjones_212408029_2.jpg', 'upload/jackjones_212408029/jackjones_212408029_2.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('36', '3', 'jackjones_212408029_3.jpg', 'upload/jackjones_212408029/jackjones_212408029_3.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('37', '3', 'jackjones_212408029_4.jpg', 'upload/jackjones_212408029/jackjones_212408029_4.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('38', '3', 'jackjones_212408029_5.jpg', 'upload/jackjones_212408029/jackjones_212408029_5.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('39', '3', 'jackjones_212408029_6.jpg', 'upload/jackjones_212408029/jackjones_212408029_6.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('40', '3', 'jackjones_212408029_7.jpg', 'upload/jackjones_212408029/jackjones_212408029_7.jpg', '2019-12-03 21:42:01', '2019-12-03 21:42:01');
INSERT INTO `image` VALUES ('41', '4', 'jackjones_212427006_1.jpg', 'upload/jackjones_212427006/jackjones_212427006_1.jpg', '2019-12-03 21:42:39', '2019-12-03 21:42:52');
INSERT INTO `image` VALUES ('42', '4', 'jackjones_212427006_2.jpg', 'upload/jackjones_212427006/jackjones_212427006_2.jpg', '2019-12-03 21:42:39', '2019-12-03 21:42:53');
INSERT INTO `image` VALUES ('43', '4', 'jackjones_212427006_3.jpg', 'upload/jackjones_212427006/jackjones_212427006_3.jpg', '2019-12-03 21:42:39', '2019-12-03 21:42:54');
INSERT INTO `image` VALUES ('44', '4', 'jackjones_212427006_4.jpg', 'upload/jackjones_212427006/jackjones_212427006_4.jpg', '2019-12-03 21:42:39', '2019-12-03 21:42:55');
INSERT INTO `image` VALUES ('45', '4', 'jackjones_212427006_5.jpg', 'upload/jackjones_212427006/jackjones_212427006_5.jpg', '2019-12-03 21:42:39', '2019-12-03 21:42:55');
INSERT INTO `image` VALUES ('46', '4', 'jackjones_212427006_6.jpg', 'upload/jackjones_212427006/jackjones_212427006_6.jpg', '2019-12-03 21:42:40', '2019-12-03 21:42:56');
INSERT INTO `image` VALUES ('47', '4', 'jackjones_212427006_7.jpg', 'upload/jackjones_212427006/jackjones_212427006_7.jpg', '2019-12-03 21:42:40', '2019-12-03 21:43:01');
INSERT INTO `image` VALUES ('48', '5', 'jackjones_212427017_1.jpg', 'upload/jackjones_212427017/jackjones_212427017_1.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('49', '5', 'jackjones_212427017_2.jpg', 'upload/jackjones_212427017/jackjones_212427017_2.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('50', '5', 'jackjones_212427017_3.jpg', 'upload/jackjones_212427017/jackjones_212427017_3.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('51', '5', 'jackjones_212427017_4.jpg', 'upload/jackjones_212427017/jackjones_212427017_4.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('52', '5', 'jackjones_212427017_5.jpg', 'upload/jackjones_212427017/jackjones_212427017_5.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('53', '5', 'jackjones_212427017_6.jpg', 'upload/jackjones_212427017/jackjones_212427017_6.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('54', '5', 'jackjones_212427017_7.jpg', 'upload/jackjones_212427017/jackjones_212427017_7.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('55', '5', 'jackjones_212427017_8.jpg', 'upload/jackjones_212427017/jackjones_212427017_8.jpg', '2019-12-03 21:43:29', '2019-12-03 21:43:29');
INSERT INTO `image` VALUES ('56', '6', 'jackjones_212427019_1.jpg', 'upload/jackjones_212427019/jackjones_212427019_1.jpg', '2019-12-03 21:44:19', '2019-12-03 21:44:19');
INSERT INTO `image` VALUES ('57', '6', 'jackjones_212427019_2.jpg', 'upload/jackjones_212427019/jackjones_212427019_2.jpg', '2019-12-03 21:44:19', '2019-12-03 21:44:19');
INSERT INTO `image` VALUES ('58', '6', 'jackjones_212427019_3.jpg', 'upload/jackjones_212427019/jackjones_212427019_3.jpg', '2019-12-03 21:44:19', '2019-12-03 21:44:19');
INSERT INTO `image` VALUES ('59', '6', 'jackjones_212427019_4.jpg', 'upload/jackjones_212427019/jackjones_212427019_4.jpg', '2019-12-03 21:44:19', '2019-12-03 21:44:19');
INSERT INTO `image` VALUES ('60', '6', 'jackjones_212427019_5.jpg', 'upload/jackjones_212427019/jackjones_212427019_5.jpg', '2019-12-03 21:44:19', '2019-12-03 21:44:19');
INSERT INTO `image` VALUES ('61', '6', 'jackjones_212427019_6.jpg', 'upload/jackjones_212427019/jackjones_212427019_6.jpg', '2019-12-03 21:44:19', '2019-12-03 21:44:19');
INSERT INTO `image` VALUES ('62', '7', 'jackjones_212427021_1.jpg', 'upload/jackjones_212427021/jackjones_212427021_1.jpg', '2019-12-03 21:44:57', '2019-12-03 21:44:57');
INSERT INTO `image` VALUES ('63', '7', 'jackjones_212427021_2.jpg', 'upload/jackjones_212427021/jackjones_212427021_2.jpg', '2019-12-03 21:44:57', '2019-12-03 21:44:57');
INSERT INTO `image` VALUES ('64', '7', 'jackjones_212427021_3.jpg', 'upload/jackjones_212427021/jackjones_212427021_3.jpg', '2019-12-03 21:44:57', '2019-12-03 21:44:57');
INSERT INTO `image` VALUES ('65', '7', 'jackjones_212427021_4.jpg', 'upload/jackjones_212427021/jackjones_212427021_4.jpg', '2019-12-03 21:44:57', '2019-12-03 21:44:57');
INSERT INTO `image` VALUES ('66', '7', 'jackjones_212427021_5.jpg', 'upload/jackjones_212427021/jackjones_212427021_5.jpg', '2019-12-03 21:44:57', '2019-12-03 21:44:57');
INSERT INTO `image` VALUES ('67', '7', 'jackjones_212427021_6.jpg', 'upload/jackjones_212427021/jackjones_212427021_6.jpg', '2019-12-03 21:44:57', '2019-12-03 21:44:57');
INSERT INTO `image` VALUES ('68', '8', 'jackjones_213427006_1.jpg', 'upload/jackjones_213427006/jackjones_213427006_1.jpg', '2019-12-03 21:45:42', '2019-12-03 21:45:42');
INSERT INTO `image` VALUES ('69', '8', 'jackjones_213427006_2.jpg', 'upload/jackjones_213427006/jackjones_213427006_2.jpg', '2019-12-03 21:45:42', '2019-12-03 21:45:42');
INSERT INTO `image` VALUES ('70', '8', 'jackjones_213427006_3.jpg', 'upload/jackjones_213427006/jackjones_213427006_3.jpg', '2019-12-03 21:45:42', '2019-12-03 21:45:42');
INSERT INTO `image` VALUES ('71', '8', 'jackjones_213427006_4.jpg', 'upload/jackjones_213427006/jackjones_213427006_4.jpg', '2019-12-03 21:45:42', '2019-12-03 21:45:42');
INSERT INTO `image` VALUES ('72', '8', 'jackjones_213427006_5.jpg', 'upload/jackjones_213427006/jackjones_213427006_5.jpg', '2019-12-03 21:45:43', '2019-12-03 21:45:43');
INSERT INTO `image` VALUES ('73', '8', 'jackjones_213427006_6.jpg', 'upload/jackjones_213427006/jackjones_213427006_6.jpg', '2019-12-03 21:45:43', '2019-12-03 21:45:43');
INSERT INTO `image` VALUES ('74', '8', 'jackjones_213427006_7.jpg', 'upload/jackjones_213427006/jackjones_213427006_7.jpg', '2019-12-03 21:45:43', '2019-12-03 21:45:43');
INSERT INTO `image` VALUES ('75', '9', 'only_113327003_01.jpg', 'upload/only_113327003/only_113327003_01.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('76', '9', 'only_113327003_02.jpg', 'upload/only_113327003/only_113327003_02.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('77', '9', 'only_113327003_03.jpg', 'upload/only_113327003/only_113327003_03.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('78', '9', 'only_113327003_04.jpg', 'upload/only_113327003/only_113327003_04.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('79', '9', 'only_113327003_05.jpg', 'upload/only_113327003/only_113327003_05.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('80', '9', 'only_113327003_06.jpg', 'upload/only_113327003/only_113327003_06.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('81', '9', 'only_113327003_07.jpg', 'upload/only_113327003/only_113327003_07.jpg', '2019-12-03 21:46:35', '2019-12-03 21:46:35');
INSERT INTO `image` VALUES ('82', '10', 'only_113327005_01.jpg', 'upload/only_113327005/only_113327005_01.jpg', '2019-12-03 21:47:49', '2019-12-03 21:47:49');
INSERT INTO `image` VALUES ('83', '10', 'only_113327005_02.jpg', 'upload/only_113327005/only_113327005_02.jpg', '2019-12-03 21:47:49', '2019-12-03 21:47:49');
INSERT INTO `image` VALUES ('84', '10', 'only_113327005_03.jpg', 'upload/only_113327005/only_113327005_03.jpg', '2019-12-03 21:47:49', '2019-12-03 21:47:49');
INSERT INTO `image` VALUES ('85', '10', 'only_113327005_04.jpg', 'upload/only_113327005/only_113327005_04.jpg', '2019-12-03 21:47:49', '2019-12-03 21:47:49');
INSERT INTO `image` VALUES ('86', '10', 'only_113327005_05.jpg', 'upload/only_113327005/only_113327005_05.jpg', '2019-12-03 21:47:49', '2019-12-03 21:47:49');
INSERT INTO `image` VALUES ('87', '10', 'only_113327005_06.jpg', 'upload/only_113327005/only_113327005_06.jpg', '2019-12-03 21:47:50', '2019-12-03 21:47:50');
INSERT INTO `image` VALUES ('88', '11', 'only_113327021_01.jpg', 'upload/only_113327021/only_113327021_01.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('89', '11', 'only_113327021_02.jpg', 'upload/only_113327021/only_113327021_02.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('90', '11', 'only_113327021_03.jpg', 'upload/only_113327021/only_113327021_03.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('91', '11', 'only_113327021_04.jpg', 'upload/only_113327021/only_113327021_04.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('92', '11', 'only_113327021_05.jpg', 'upload/only_113327021/only_113327021_05.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('93', '11', 'only_113327021_06.jpg', 'upload/only_113327021/only_113327021_06.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('94', '11', 'only_113327021_07.jpg', 'upload/only_113327021/only_113327021_07.jpg', '2019-12-03 21:48:36', '2019-12-03 21:48:36');
INSERT INTO `image` VALUES ('95', '12', 'only_113427003_01.jpg', 'upload/only_113427003/only_113427003_01.jpg', '2019-12-03 21:49:02', '2019-12-03 21:49:02');
INSERT INTO `image` VALUES ('96', '12', 'only_113427003_02.jpg', 'upload/only_113427003/only_113427003_02.jpg', '2019-12-03 21:49:02', '2019-12-03 21:49:02');
INSERT INTO `image` VALUES ('97', '12', 'only_113427003_03.jpg', 'upload/only_113427003/only_113427003_03.jpg', '2019-12-03 21:49:02', '2019-12-03 21:49:02');
INSERT INTO `image` VALUES ('98', '12', 'only_113427003_04.jpg', 'upload/only_113427003/only_113427003_04.jpg', '2019-12-03 21:49:02', '2019-12-03 21:49:02');
INSERT INTO `image` VALUES ('99', '12', 'only_113427003_05.jpg', 'upload/only_113427003/only_113427003_05.jpg', '2019-12-03 21:49:02', '2019-12-03 21:49:02');
INSERT INTO `image` VALUES ('100', '12', 'only_113427003_06.jpg', 'upload/only_113427003/only_113427003_06.jpg', '2019-12-03 21:49:02', '2019-12-03 21:49:02');
INSERT INTO `image` VALUES ('101', '13', 'selected_412427014_01.jpg', 'upload/selected_412427014/selected_412427014_01.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('102', '13', 'selected_412427014_02.jpg', 'upload/selected_412427014/selected_412427014_02.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('103', '13', 'selected_412427014_03.jpg', 'upload/selected_412427014/selected_412427014_03.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('104', '13', 'selected_412427014_04.jpg', 'upload/selected_412427014/selected_412427014_04.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('105', '13', 'selected_412427014_05.jpg', 'upload/selected_412427014/selected_412427014_05.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('106', '13', 'selected_412427014_06.jpg', 'upload/selected_412427014/selected_412427014_06.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('107', '13', 'selected_412427014_07.jpg', 'upload/selected_412427014/selected_412427014_07.jpg', '2019-12-03 21:49:23', '2019-12-03 21:49:23');
INSERT INTO `image` VALUES ('108', '14', 'selected_412427040_01.jpg', 'upload/selected_412427040/selected_412427040_01.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('109', '14', 'selected_412427040_02.jpg', 'upload/selected_412427040/selected_412427040_02.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('110', '14', 'selected_412427040_03.jpg', 'upload/selected_412427040/selected_412427040_03.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('111', '14', 'selected_412427040_04.jpg', 'upload/selected_412427040/selected_412427040_04.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('112', '14', 'selected_412427040_05.jpg', 'upload/selected_412427040/selected_412427040_05.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('113', '14', 'selected_412427040_06.jpg', 'upload/selected_412427040/selected_412427040_06.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('114', '14', 'selected_412427040_07.jpg', 'upload/selected_412427040/selected_412427040_07.jpg', '2019-12-03 21:50:17', '2019-12-03 21:50:17');
INSERT INTO `image` VALUES ('115', '15', 'selected_412427048_01.jpg', 'upload/selected_412427048/selected_412427048_01.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('116', '15', 'selected_412427048_02.jpg', 'upload/selected_412427048/selected_412427048_02.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('117', '15', 'selected_412427048_03.jpg', 'upload/selected_412427048/selected_412427048_03.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('118', '15', 'selected_412427048_04.jpg', 'upload/selected_412427048/selected_412427048_04.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('119', '15', 'selected_412427048_05.jpg', 'upload/selected_412427048/selected_412427048_05.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('120', '15', 'selected_412427048_06.jpg', 'upload/selected_412427048/selected_412427048_06.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('121', '15', 'selected_412427048_07.jpg', 'upload/selected_412427048/selected_412427048_07.jpg', '2019-12-03 21:50:34', '2019-12-03 21:50:34');
INSERT INTO `image` VALUES ('122', '16', 'veromode_312427014_01.jpg', 'upload/veromode_312427014/veromode_312427014_01.jpg', '2019-12-03 21:50:53', '2019-12-03 21:50:53');
INSERT INTO `image` VALUES ('123', '16', 'veromode_312427014_02.jpg', 'upload/veromode_312427014/veromode_312427014_02.jpg', '2019-12-03 21:50:53', '2019-12-03 21:50:53');
INSERT INTO `image` VALUES ('124', '16', 'veromode_312427014_03.jpg', 'upload/veromode_312427014/veromode_312427014_03.jpg', '2019-12-03 21:50:53', '2019-12-03 21:50:53');
INSERT INTO `image` VALUES ('125', '16', 'veromode_312427014_04.jpg', 'upload/veromode_312427014/veromode_312427014_04.jpg', '2019-12-03 21:50:53', '2019-12-03 21:50:53');
INSERT INTO `image` VALUES ('126', '16', 'veromode_312427014_05.jpg', 'upload/veromode_312427014/veromode_312427014_05.jpg', '2019-12-03 21:50:53', '2019-12-03 21:50:53');
INSERT INTO `image` VALUES ('127', '16', 'veromode_312427014_06.jpg', 'upload/veromode_312427014/veromode_312427014_06.jpg', '2019-12-03 21:50:53', '2019-12-03 21:50:53');
INSERT INTO `image` VALUES ('128', '17', 'veromode_313327003_01.jpg', 'upload/veromode_313327003/veromode_313327003_01.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('129', '17', 'veromode_313327003_02.jpg', 'upload/veromode_313327003/veromode_313327003_02.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('130', '17', 'veromode_313327003_03.jpg', 'upload/veromode_313327003/veromode_313327003_03.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('131', '17', 'veromode_313327003_04.jpg', 'upload/veromode_313327003/veromode_313327003_04.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('132', '17', 'veromode_313327003_05.jpg', 'upload/veromode_313327003/veromode_313327003_05.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('133', '17', 'veromode_313327003_06.jpg', 'upload/veromode_313327003/veromode_313327003_06.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('134', '17', 'veromode_313327003_07.jpg', 'upload/veromode_313327003/veromode_313327003_07.jpg', '2019-12-03 21:51:15', '2019-12-03 21:51:15');
INSERT INTO `image` VALUES ('135', '18', 'veromode_313427011_01.jpg', 'upload/veromode_313427011/veromode_313427011_01.jpg', '2019-12-03 21:52:31', '2019-12-03 21:52:31');
INSERT INTO `image` VALUES ('136', '18', 'veromode_313427011_02.jpg', 'upload/veromode_313427011/veromode_313427011_02.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('137', '18', 'veromode_313427011_03.jpg', 'upload/veromode_313427011/veromode_313427011_03.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('138', '18', 'veromode_313427011_04.jpg', 'upload/veromode_313427011/veromode_313427011_04.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('139', '18', 'veromode_313427011_05.jpg', 'upload/veromode_313427011/veromode_313427011_05.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('140', '18', 'veromode_313427011_06.jpg', 'upload/veromode_313427011/veromode_313427011_06.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('141', '18', 'veromode_313427011_07.jpg', 'upload/veromode_313427011/veromode_313427011_07.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('142', '18', 'veromode_313427011_08.jpg', 'upload/veromode_313427011/veromode_313427011_08.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('143', '18', 'veromode_313427011_09.jpg', 'upload/veromode_313427011/veromode_313427011_09.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:32');
INSERT INTO `image` VALUES ('144', '18', 'veromode_313427011_19.jpg', 'upload/veromode_313427011/veromode_313427011_19.jpg', '2019-12-03 21:52:32', '2019-12-03 21:52:53');
INSERT INTO `image` VALUES ('145', '19', 'veromode_313427012_01.jpg', 'upload/veromode_313427012/veromode_313427012_01.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('146', '19', 'veromode_313427012_02.jpg', 'upload/veromode_313427012/veromode_313427012_02.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('147', '19', 'veromode_313427012_03.jpg', 'upload/veromode_313427012/veromode_313427012_03.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('148', '19', 'veromode_313427012_04.jpg', 'upload/veromode_313427012/veromode_313427012_04.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('149', '19', 'veromode_313427012_05.jpg', 'upload/veromode_313427012/veromode_313427012_05.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('150', '19', 'veromode_313427012_06.jpg', 'upload/veromode_313427012/veromode_313427012_06.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('151', '19', 'veromode_313427012_07.jpg', 'upload/veromode_313427012/veromode_313427012_07.jpg', '2019-12-03 21:53:24', '2019-12-03 21:53:24');
INSERT INTO `image` VALUES ('152', '20', 'zara_0693_329_1.jpg', 'upload/zara_0693_329/zara_0693_329_1.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('153', '20', 'zara_0693_329_2.jpg', 'upload/zara_0693_329/zara_0693_329_2.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('154', '20', 'zara_0693_329_3.jpg', 'upload/zara_0693_329/zara_0693_329_3.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('155', '20', 'zara_0693_329_4.jpg', 'upload/zara_0693_329/zara_0693_329_4.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('156', '20', 'zara_0693_329_5.jpg', 'upload/zara_0693_329/zara_0693_329_5.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('157', '20', 'zara_0693_329_6.jpg', 'upload/zara_0693_329/zara_0693_329_6.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('158', '20', 'zara_0693_329_7.jpg', 'upload/zara_0693_329/zara_0693_329_7.jpg', '2019-12-03 21:53:56', '2019-12-03 21:53:56');
INSERT INTO `image` VALUES ('159', '21', 'zara_0706_304_1.jpg', 'upload/zara_0706_304/zara_0706_304_1.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('160', '21', 'zara_0706_304_2.jpg', 'upload/zara_0706_304/zara_0706_304_2.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('161', '21', 'zara_0706_304_3.jpg', 'upload/zara_0706_304/zara_0706_304_3.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('162', '21', 'zara_0706_304_4.jpg', 'upload/zara_0706_304/zara_0706_304_4.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('163', '21', 'zara_0706_304_5.jpg', 'upload/zara_0706_304/zara_0706_304_5.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('164', '21', 'zara_0706_304_6.jpg', 'upload/zara_0706_304/zara_0706_304_6.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('165', '21', 'zara_0706_304_7.jpg', 'upload/zara_0706_304/zara_0706_304_7.jpg', '2019-12-03 21:54:23', '2019-12-03 21:54:23');
INSERT INTO `image` VALUES ('166', '22', 'zara_0706_319_1.jpg', 'upload/zara_0706_319/zara_0706_319_1.jpg', '2019-12-03 21:54:43', '2019-12-03 21:54:43');
INSERT INTO `image` VALUES ('167', '22', 'zara_0706_319_2.jpg', 'upload/zara_0706_319/zara_0706_319_2.jpg', '2019-12-03 21:54:43', '2019-12-03 21:54:43');
INSERT INTO `image` VALUES ('168', '22', 'zara_0706_319_3.jpg', 'upload/zara_0706_319/zara_0706_319_3.jpg', '2019-12-03 21:54:43', '2019-12-03 21:54:43');
INSERT INTO `image` VALUES ('169', '22', 'zara_0706_319_4.jpg', 'upload/zara_0706_319/zara_0706_319_4.jpg', '2019-12-03 21:54:43', '2019-12-03 21:54:43');
INSERT INTO `image` VALUES ('170', '22', 'zara_0706_319_5.jpg', 'upload/zara_0706_319/zara_0706_319_5.jpg', '2019-12-03 21:54:43', '2019-12-03 21:54:43');
INSERT INTO `image` VALUES ('171', '22', 'zara_0706_319_6.jpg', 'upload/zara_0706_319/zara_0706_319_6.jpg', '2019-12-03 21:54:43', '2019-12-03 21:54:43');
INSERT INTO `image` VALUES ('172', '23', 'zara_0706_326_1.jpg', 'upload/zara_0706_326/zara_0706_326_1.jpg', '2019-12-03 21:54:59', '2019-12-03 21:54:59');
INSERT INTO `image` VALUES ('173', '23', 'zara_0706_326_2.jpg', 'upload/zara_0706_326/zara_0706_326_2.jpg', '2019-12-03 21:54:59', '2019-12-03 21:54:59');
INSERT INTO `image` VALUES ('174', '23', 'zara_0706_326_3.jpg', 'upload/zara_0706_326/zara_0706_326_3.jpg', '2019-12-03 21:54:59', '2019-12-03 21:54:59');
INSERT INTO `image` VALUES ('175', '23', 'zara_0706_326_4.jpg', 'upload/zara_0706_326/zara_0706_326_4.jpg', '2019-12-03 21:55:00', '2019-12-03 21:55:00');
INSERT INTO `image` VALUES ('176', '23', 'zara_0706_326_5.jpg', 'upload/zara_0706_326/zara_0706_326_5.jpg', '2019-12-03 21:55:00', '2019-12-03 21:55:00');
INSERT INTO `image` VALUES ('177', '23', 'zara_0706_326_6.jpg', 'upload/zara_0706_326/zara_0706_326_6.jpg', '2019-12-03 21:55:00', '2019-12-03 21:55:00');
INSERT INTO `image` VALUES ('178', '23', 'zara_0706_326_7.jpg', 'upload/zara_0706_326/zara_0706_326_7.jpg', '2019-12-03 21:55:00', '2019-12-03 21:55:00');
INSERT INTO `image` VALUES ('179', '24', 'zara_1608_303_1.jpg', 'upload/zara_1608_303/zara_1608_303_1.jpg', '2019-12-03 21:55:16', '2019-12-03 21:55:16');
INSERT INTO `image` VALUES ('180', '24', 'zara_1608_303_2.jpg', 'upload/zara_1608_303/zara_1608_303_2.jpg', '2019-12-03 21:55:17', '2019-12-03 21:55:17');
INSERT INTO `image` VALUES ('181', '24', 'zara_1608_303_3.jpg', 'upload/zara_1608_303/zara_1608_303_3.jpg', '2019-12-03 21:55:17', '2019-12-03 21:55:17');
INSERT INTO `image` VALUES ('182', '24', 'zara_1608_303_4.jpg', 'upload/zara_1608_303/zara_1608_303_4.jpg', '2019-12-03 21:55:17', '2019-12-03 21:55:17');
INSERT INTO `image` VALUES ('183', '24', 'zara_1608_303_5.jpg', 'upload/zara_1608_303/zara_1608_303_5.jpg', '2019-12-03 21:55:17', '2019-12-03 21:55:17');
INSERT INTO `image` VALUES ('184', '25', 'zara_6096_451_1.jpg', 'upload/zara_6096_451/zara_6096_451_1.jpg', '2019-12-03 21:55:31', '2019-12-03 21:55:31');
INSERT INTO `image` VALUES ('185', '25', 'zara_6096_451_2.jpg', 'upload/zara_6096_451/zara_6096_451_2.jpg', '2019-12-03 21:55:31', '2019-12-03 21:55:31');
INSERT INTO `image` VALUES ('186', '25', 'zara_6096_451_3.jpg', 'upload/zara_6096_451/zara_6096_451_3.jpg', '2019-12-03 21:55:31', '2019-12-03 21:55:31');
INSERT INTO `image` VALUES ('187', '25', 'zara_6096_451_4.jpg', 'upload/zara_6096_451/zara_6096_451_4.jpg', '2019-12-03 21:55:31', '2019-12-03 21:55:31');
INSERT INTO `image` VALUES ('188', '25', 'zara_6096_451_5.jpg', 'upload/zara_6096_451/zara_6096_451_5.jpg', '2019-12-03 21:55:31', '2019-12-03 21:55:31');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(50) NOT NULL,
  `l_addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `l_updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`l_id`),
  UNIQUE KEY `l_name` (`l_name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('1', 'basichouse_HMCA723A', '2019-11-26 12:05:59', '2019-12-03 09:52:45');
INSERT INTO `label` VALUES ('2', 'basichouse_HMJP226C', '2019-11-29 19:20:12', '2019-12-03 09:53:02');
INSERT INTO `label` VALUES ('3', 'jackjones_212408029', '2019-11-29 19:20:17', '2019-12-03 09:53:16');
INSERT INTO `label` VALUES ('4', 'jackjones_212427006', '2019-11-29 19:43:27', '2019-12-03 09:53:25');
INSERT INTO `label` VALUES ('5', 'jackjones_212427017', '2019-12-03 09:28:08', '2019-12-03 09:53:28');
INSERT INTO `label` VALUES ('6', 'jackjones_212427019', '2019-12-03 09:28:11', '2019-12-03 09:53:45');
INSERT INTO `label` VALUES ('7', 'jackjones_212427021', '2019-12-03 09:28:14', '2019-12-03 09:53:54');
INSERT INTO `label` VALUES ('8', 'jackjones_213427006', '2019-12-03 09:28:16', '2019-12-03 09:53:57');
INSERT INTO `label` VALUES ('9', 'only_113327003', '2019-12-03 09:28:18', '2019-12-03 09:54:50');
INSERT INTO `label` VALUES ('10', 'only_113327005', '2019-12-03 09:28:22', '2019-12-03 09:54:59');
INSERT INTO `label` VALUES ('11', 'only_113327021', '2019-12-03 09:28:25', '2019-12-03 09:55:08');
INSERT INTO `label` VALUES ('12', 'only_113427003', '2019-12-03 09:28:28', '2019-12-03 09:55:09');
INSERT INTO `label` VALUES ('13', 'selected_412427014', '2019-12-03 09:28:30', '2019-12-03 09:55:20');
INSERT INTO `label` VALUES ('14', 'selected_412427040', '2019-12-03 09:55:45', '2019-12-03 09:55:45');
INSERT INTO `label` VALUES ('15', 'selected_412427048', '2019-12-03 09:55:54', '2019-12-03 09:55:54');
INSERT INTO `label` VALUES ('16', 'veromode_312427014', '2019-12-03 09:55:58', '2019-12-03 09:55:58');
INSERT INTO `label` VALUES ('17', 'veromode_313327003', '2019-12-03 09:56:29', '2019-12-03 09:56:29');
INSERT INTO `label` VALUES ('18', 'veromode_313427011', '2019-12-03 09:56:41', '2019-12-03 09:56:41');
INSERT INTO `label` VALUES ('19', 'veromode_313427012', '2019-12-03 09:56:54', '2019-12-03 09:56:54');
INSERT INTO `label` VALUES ('20', 'zara_0693_329', '2019-12-03 09:57:01', '2019-12-03 09:57:01');
INSERT INTO `label` VALUES ('21', 'zara_0706_304', '2019-12-03 09:57:05', '2019-12-03 09:57:05');
INSERT INTO `label` VALUES ('22', 'zara_0706_319', '2019-12-03 09:57:11', '2019-12-03 09:57:11');
INSERT INTO `label` VALUES ('23', 'zara_0706_326', '2019-12-03 09:57:17', '2019-12-03 09:57:17');
INSERT INTO `label` VALUES ('24', 'zara_1608_303', '2019-12-03 09:57:23', '2019-12-03 09:57:23');
INSERT INTO `label` VALUES ('25', 'zara_6096_451', '2019-12-03 09:57:26', '2019-12-03 09:57:26');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_account` varchar(12) NOT NULL,
  `u_pwd` varchar(20) NOT NULL DEFAULT '123456',
  `u_email` varchar(50) NOT NULL,
  `u_addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '12', '123456', '1016767', '2019-11-27 17:41:26', '2019-11-27 17:41:26');
INSERT INTO `user` VALUES ('2', '201721130058', '123456', '1016767058@qq.com', '2019-11-29 19:41:34', '2019-11-29 19:41:34');
INSERT INTO `user` VALUES ('3', 'test', 'test', 'test', '2019-11-30 19:51:01', '2019-11-30 19:51:01');
INSERT INTO `user` VALUES ('4', 'test', 'test', 'test@qq.com', '2019-11-30 19:51:26', '2019-11-30 19:51:26');
