/*
Navicat MySQL Data Transfer

Source Server         : vagrant
Source Server Version : 50541
Source Host           : localhost:8889
Source Database       : ama

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-04-03 20:38:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for absent
-- ----------------------------
DROP TABLE IF EXISTS `absent`;
CREATE TABLE `absent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `uniform_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

-- ----------------------------
-- Records of absent
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `ic` varchar(20) DEFAULT NULL,
  `matrix` varchar(25) DEFAULT NULL,
  `uniform` varchar(50) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'syukri', '111', '222', '1', 'Pendidikan');
INSERT INTO `student` VALUES ('2', 'kamal', '444', '555', '2', 'Kejururawatan');
INSERT INTO `student` VALUES ('3', 'Manaf', '777', '888', '3', 'Kejuruteraan');

-- ----------------------------
-- Table structure for uniform
-- ----------------------------
DROP TABLE IF EXISTS `uniform`;
CREATE TABLE `uniform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

-- ----------------------------
-- Records of uniform
-- ----------------------------
INSERT INTO `uniform` VALUES ('1', 'Pengakap');
INSERT INTO `uniform` VALUES ('2', 'Bomba');
INSERT INTO `uniform` VALUES ('3', 'Polis');
INSERT INTO `uniform` VALUES ('4', 'Ambulans');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'karim', 'karim', 'karim razali', 'karim@gst.my', '0123456789', 'admin');
INSERT INTO `user` VALUES ('2', 'zarina', 'zarina', 'zarina laili', 'zarina@gst.my', '0123456789', null);
