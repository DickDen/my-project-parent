/*
Navicat MySQL Data Transfer

Source Server         : 10.144.35.244
Source Server Version : 50617
Source Host           : 10.144.35.244:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-11-03 14:19:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for only_one_user
-- ----------------------------
DROP TABLE IF EXISTS `only_one_user`;
CREATE TABLE `only_one_user` (
  `phone` varchar(20) NOT NULL COMMENT '用户登录的手机号',
  `utr` varchar(255) NOT NULL COMMENT '用户登录生成的随机字符串,',
  `syzt` varchar(10) NOT NULL COMMENT '使用状态，Y：可用，N：删除状态，不可用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of only_one_user
-- ----------------------------
INSERT INTO `only_one_user` VALUES ('18636967836', 'Fm8YXsHD', 'Y');

-- ----------------------------
-- Table structure for pm_base_data
-- ----------------------------
DROP TABLE IF EXISTS `pm_base_data`;
CREATE TABLE `pm_base_data` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dicKey` varchar(255) NOT NULL COMMENT '键',
  `dicValue` varchar(255) NOT NULL COMMENT '值',
  `dicType` varchar(255) NOT NULL COMMENT '类型描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_base_data
-- ----------------------------
INSERT INTO `pm_base_data` VALUES ('1', 'sendmail', 'qiaowentao@yolo24.com', 'mailserver');
INSERT INTO `pm_base_data` VALUES ('2', 'username', 'qiaowentao', 'mailserver');
INSERT INTO `pm_base_data` VALUES ('3', 'password', 'xiaoqiao.1931', 'mailserver');
INSERT INTO `pm_base_data` VALUES ('4', 'host', 'mail.yolo24.com', 'mailserver');

-- ----------------------------
-- Table structure for send_record
-- ----------------------------
DROP TABLE IF EXISTS `send_record`;
CREATE TABLE `send_record` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL COMMENT '发送信息类型',
  `content` varchar(255) NOT NULL COMMENT '发送信息内容',
  `status` tinyint(4) NOT NULL COMMENT '发送信息状态:  0 - 失败; 1 - 成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of send_record
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL COMMENT '用户注册手机号，也即登录账号',
  `salt` varchar(40) NOT NULL COMMENT '盐值',
  `password` varchar(400) NOT NULL COMMENT '用户密码，不为空',
  `nicheng` varchar(40) DEFAULT NULL COMMENT '昵称，不为空',
  `sex` tinyint(4) DEFAULT NULL COMMENT '0为男，1为女',
  `money` decimal(20,3) DEFAULT '0.000' COMMENT '账户余额',
  `updtime` varchar(100) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `createtime` varchar(100) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `syzt` varchar(10) NOT NULL COMMENT '使用状态，Y：可用，N：删除状态，不可用',
  `username` varchar(40) DEFAULT NULL COMMENT '登录用户名',
  `address` varchar(200) DEFAULT NULL COMMENT '地址信息',
  `email` varchar(40) NOT NULL COMMENT '邮箱',
  `qq` varchar(30) DEFAULT NULL COMMENT '用户qq号',
  `yaoqingma` varchar(20) NOT NULL COMMENT '关联邀请码',
  PRIMARY KEY (`id`,`phone`),
  UNIQUE KEY `uq_phone` (`phone`),
  KEY `yaoqingma` (`yaoqingma`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18636967836', 'PCx60Yve4yvKEVRy', 'f0ff4d62975a4ea7582040e3fb1a33662748cc65', null, null, '0.000', '2016-08-24 18:38:26', '2016-08-24 18:38:26', 'Y', null, null, 'qwt311@126.com', null, '1561561');
INSERT INTO `user` VALUES ('2', '18636967833', 'RBMB2HdUKYmlQZxo', 'e8f8f046cacebb38df01c27f9efeec3739a2f12d', null, null, '0.000', '2016-08-26 15:23:14', '2016-08-26 15:23:14', 'Y', null, null, 'qwt311@126.co', null, '1561561');

-- ----------------------------
-- Table structure for yqminfo
-- ----------------------------
DROP TABLE IF EXISTS `yqminfo`;
CREATE TABLE `yqminfo` (
  `phone` varchar(20) NOT NULL COMMENT '营销人员的手机号',
  `yaoqingma` varchar(20) NOT NULL COMMENT '邀请码',
  `usecount` bigint(250) NOT NULL DEFAULT '0' COMMENT '被引用的次数',
  `zzzt` varchar(10) NOT NULL COMMENT '员工在职状态，Y：在职，邀请码可用，N：员工离职，邀请码不可用',
  KEY `yaoqingma` (`yaoqingma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqminfo
-- ----------------------------
INSERT INTO `yqminfo` VALUES ('18636967836', '1561561', '2', 'Y');
