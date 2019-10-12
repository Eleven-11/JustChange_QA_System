/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : example

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-10-12 10:19:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT '' COMMENT '文章内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1.有效  2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='发布号作者表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('5', '莎士比亚', '2017-10-25 09:08:45', '2017-10-30 17:59:41', '1');
INSERT INTO `article` VALUES ('6', '亚里士多德', '2017-10-26 10:49:28', '2017-11-18 09:54:15', '1');
INSERT INTO `article` VALUES ('10', '亚历山大', '2017-10-26 14:57:45', '2017-11-08 13:28:52', '1');
INSERT INTO `article` VALUES ('11', '李白', '2017-10-26 15:23:42', '2017-10-26 15:23:42', '1');
INSERT INTO `article` VALUES ('19', '文章test2', '2017-11-18 13:37:07', '2017-11-18 13:37:11', '1');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '自定id,主要供前端展示权限列表分类排序使用.',
  `menu_code` varchar(255) DEFAULT '' COMMENT '归属菜单,前端判断并展示菜单使用,',
  `menu_name` varchar(255) DEFAULT '' COMMENT '菜单的中文释义',
  `permission_code` varchar(255) DEFAULT '' COMMENT '权限的代码/通配符,对应代码中@RequiresPermissions 的value',
  `permission_name` varchar(255) DEFAULT '' COMMENT '本权限的中文释义',
  `required_permission` tinyint(1) DEFAULT '2' COMMENT '是否本菜单必选权限, 1.必选 2非必选 通常是"列表"权限是必选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台权限表';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('11', 'wxUser', '微信用户', 'wxUser:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('12', 'wxUser', '微信用户', 'wxUser:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('13', 'wxUser', '微信用户', 'wxUser:astrict', '限制', '2');
INSERT INTO `sys_permission` VALUES ('14', 'wxUser', '微信用户', 'wxUser:follow', '关注&粉丝', '2');
INSERT INTO `sys_permission` VALUES ('15', 'wxUser', '微信用户', 'wxUser:collection', '收藏', '2');
INSERT INTO `sys_permission` VALUES ('21', 'notice', '通知推送', 'notice:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('22', 'notice', '通知推送', 'notice:send', '发送消息', '2');
INSERT INTO `sys_permission` VALUES ('23', 'notice', '通知推送', 'notice:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('31', 'banner', '滚动栏', 'banner:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('32', 'banner', '滚动栏', 'banner:add', '新增', '2');
INSERT INTO `sys_permission` VALUES ('33', 'banner', '滚动栏', 'banner:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('34', 'banner', '滚动栏', 'banner:sort', '排序', '2');
INSERT INTO `sys_permission` VALUES ('35', 'banner', '滚动栏', 'banner:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('41', 'postType', '帖子类别', 'postType:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('42', 'postType', '帖子类别', 'postType:add', '新增', '2');
INSERT INTO `sys_permission` VALUES ('43', 'postType', '帖子类别', 'postType:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('44', 'postType', '帖子类别', 'postType:sort', '排序', '2');
INSERT INTO `sys_permission` VALUES ('45', 'postType', '帖子类别', 'postType:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('51', 'postLabel', '帖子标签', 'postLabel:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('52', 'postLabel', '帖子标签', 'postType:add:list', '新增', '2');
INSERT INTO `sys_permission` VALUES ('53', 'postLabel', '帖子标签', 'postLabel:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('54', 'postLabel', '帖子标签', 'postLabel:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('61', 'noticeTemplate', '通知模版', 'noticeTemplate:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('62', 'noticeTemplate', '通知模版', 'noticeTemplate:add', '新增', '2');
INSERT INTO `sys_permission` VALUES ('63', 'noticeTemplate', '通知模版', 'noticeTemplate:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('64', 'noticeTemplate', '通知模版', 'noticeTemplate:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('71', 'top', '置顶管理', 'top:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('72', 'top', '置顶管理', 'top:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('73', 'top', '置顶管理', 'top:sort', '排序', '2');
INSERT INTO `sys_permission` VALUES ('74', 'top', '置顶管理', 'top:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('81', 'post', '帖子管理', 'post:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('82', 'post', '帖子管理', 'post:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('83', 'post', '帖子管理', 'post:top', '置顶', '2');
INSERT INTO `sys_permission` VALUES ('84', 'post', '帖子管理', 'post:shelf', '上/下架', '2');
INSERT INTO `sys_permission` VALUES ('85', 'post', '帖子管理', 'post:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('91', 'comment', '评论管理', 'comment:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('93', 'comment', '评论管理', 'comment:del', '删除', '2');
INSERT INTO `sys_permission` VALUES ('601', 'user', '用户', 'user:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('602', 'user', '用户', 'user:add', '新增', '2');
INSERT INTO `sys_permission` VALUES ('603', 'user', '用户', 'user:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('701', 'role', '角色权限', 'role:list', '列表', '1');
INSERT INTO `sys_permission` VALUES ('702', 'role', '角色权限', 'role:add', '新增', '2');
INSERT INTO `sys_permission` VALUES ('703', 'role', '角色权限', 'role:update', '修改', '2');
INSERT INTO `sys_permission` VALUES ('704', 'role', '角色权限', 'role:delete', '删除', '2');
INSERT INTO `sys_permission` VALUES ('1010', 'genderStatistics', '数据统计', 'statistics:gender:show', '性别', '1');
INSERT INTO `sys_permission` VALUES ('1020', 'postStatistics', '数据统计', 'statistics:post:show', '帖子', '1');
INSERT INTO `sys_permission` VALUES ('1030', 'resonateStatistics', '数据统计', 'statistics:follow:show', '关注', '1');
INSERT INTO `sys_permission` VALUES ('1040', 'regionStatistics', '数据统计', 'statistics:region:show', '地区', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1有效  2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '2017-11-22 16:24:34', '2017-11-22 16:24:52', '1');
INSERT INTO `sys_role` VALUES ('2', '作家', '2017-11-22 16:24:34', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role` VALUES ('3', '程序员', '2017-11-22 16:28:47', '2017-11-22 16:28:47', '1');
INSERT INTO `sys_role` VALUES ('4', '微信小程序管理员', '2019-06-20 17:35:05', '2019-06-20 17:35:12', '1');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效 1有效     2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='角色-权限关联表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '2', '101', '2017-11-22 16:26:21', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('2', '2', '102', '2017-11-22 16:26:21', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('5', '2', '602', '2017-11-22 16:28:28', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('6', '2', '601', '2017-11-22 16:28:28', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('7', '2', '603', '2017-11-22 16:28:28', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('8', '2', '703', '2017-11-22 16:28:28', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('9', '2', '701', '2017-11-22 16:28:28', '2019-06-20 18:26:50', '2');
INSERT INTO `sys_role_permission` VALUES ('10', '2', '702', '2017-11-22 16:28:28', '2019-06-20 18:26:50', '2');
INSERT INTO `sys_role_permission` VALUES ('11', '2', '704', '2017-11-22 16:28:31', '2019-06-13 16:12:25', '2');
INSERT INTO `sys_role_permission` VALUES ('12', '2', '103', '2017-11-22 16:28:31', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('13', '3', '601', '2017-11-22 16:28:47', '2017-11-22 16:28:47', '1');
INSERT INTO `sys_role_permission` VALUES ('14', '3', '701', '2017-11-22 16:28:47', '2017-11-22 16:28:47', '1');
INSERT INTO `sys_role_permission` VALUES ('15', '3', '702', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1');
INSERT INTO `sys_role_permission` VALUES ('16', '3', '704', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1');
INSERT INTO `sys_role_permission` VALUES ('17', '3', '102', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1');
INSERT INTO `sys_role_permission` VALUES ('18', '3', '101', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1');
INSERT INTO `sys_role_permission` VALUES ('19', '3', '603', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1');
INSERT INTO `sys_role_permission` VALUES ('20', '2', '704', '2019-06-13 16:12:49', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('21', '4', '801', '2019-06-20 17:37:36', '2019-06-20 17:37:36', '1');
INSERT INTO `sys_role_permission` VALUES ('22', '4', '802', '2019-06-20 17:37:36', '2019-06-20 17:37:36', '1');
INSERT INTO `sys_role_permission` VALUES ('23', '2', '801', '2019-06-20 18:27:16', '2019-08-29 14:00:46', '2');
INSERT INTO `sys_role_permission` VALUES ('24', '4', '101', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('25', '4', '102', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('26', '4', '103', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('27', '4', '601', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('28', '4', '602', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('29', '4', '603', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('30', '4', '701', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('31', '4', '702', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('32', '4', '703', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');
INSERT INTO `sys_role_permission` VALUES ('33', '4', '704', '2019-06-20 18:29:59', '2019-06-20 18:29:59', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `role_id` int(11) DEFAULT '0' COMMENT '角色ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1有效  2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8 COMMENT='运营后台用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('10003', 'admin', '123456', '超级用户23', '1', '2017-10-30 11:52:38', '2017-11-17 23:51:40', '1');
INSERT INTO `sys_user` VALUES ('10004', 'user', '123456', '莎士比亚', '3', '2017-10-30 16:13:02', '2019-06-20 18:27:03', '1');
INSERT INTO `sys_user` VALUES ('10005', 'aaa', '123456', 'abba', '1', '2017-11-15 14:02:56', '2017-11-17 23:51:42', '1');
INSERT INTO `sys_user` VALUES ('10007', 'test', '123456', '就看看列表', '3', '2017-11-22 16:29:41', '2017-11-22 16:29:41', '1');
INSERT INTO `sys_user` VALUES ('10008', 'WXADMIN', '123456', 'LINGLING', '4', '2019-06-20 17:37:08', '2019-06-20 17:37:08', '1');

-- ----------------------------
-- Table structure for t_advert_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_advert_banner`;
CREATE TABLE `t_advert_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告栏ID',
  `ADVERT_TITLE` varchar(100) DEFAULT NULL COMMENT '广告标题，今后台查看',
  `IMG_URL` varchar(255) DEFAULT NULL COMMENT '图片URL',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SORT_TIME` datetime DEFAULT NULL COMMENT '排序时间',
  `IS_DEL` tinyint(4) DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_advert_banner
-- ----------------------------
INSERT INTO `t_advert_banner` VALUES ('1', '新开楼盘', 'http://img.since0592.com/static/01.jpg', '2019-07-25 14:09:56', '2019-07-25 14:09:59', '1');
INSERT INTO `t_advert_banner` VALUES ('2', '特价楼房', 'http://img.since0592.com/static/02.jpg', '2019-07-25 14:12:28', '2019-07-25 14:09:59', '0');
INSERT INTO `t_advert_banner` VALUES ('3', '楼盘降价', 'http://img.since0592.com/static/03.jpg', '2019-07-25 14:14:14', '2019-07-25 14:10:00', '0');
INSERT INTO `t_advert_banner` VALUES ('4', '倒数第二张', 'http://img.since0592.com/static/06.jpg', '2019-07-25 14:46:31', '2019-07-25 14:10:00', '0');
INSERT INTO `t_advert_banner` VALUES ('5', '最后一张', 'http://img.since0592.com/static/05.jpg', '2019-07-31 10:37:52', '2019-07-25 14:10:01', '0');
INSERT INTO `t_advert_banner` VALUES ('6', '倒数第二张', 'http://img.since0592.com/static/04.jpg', '2019-07-31 10:54:55', '2019-07-25 14:09:59', '1');
INSERT INTO `t_advert_banner` VALUES ('8', '假的', 'http://img.since0592.com/static/42b01483e0384ba28356733bf07b9654.jpg', '2019-08-09 15:56:25', '2019-07-25 14:10:00', '0');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `POST_ID` int(11) NOT NULL COMMENT '帖子ID',
  `START_ID` varchar(128) NOT NULL COMMENT '发起评论人的ID',
  `RECEIVE_ID` varchar(128) DEFAULT NULL COMMENT '接收人ID',
  `CONTENT` text CHARACTER SET utf8mb4 NOT NULL COMMENT '文本内容',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('34', '20', '4c23311a9e3441c9885bb4e79f3f9dbc', '', '哈哈哈哈哈', '2019-08-30 18:23:41', '0');
INSERT INTO `t_comment` VALUES ('35', '20', '4c23311a9e3441c9885bb4e79f3f9dbc', '', '歇歇', '2019-08-30 18:24:09', '0');
INSERT INTO `t_comment` VALUES ('36', '20', '4c23311a9e3441c9885bb4e79f3f9dbc', '', '哈哈', '2019-08-31 12:17:33', '0');
INSERT INTO `t_comment` VALUES ('37', '21', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '', '猜猜我是谁', '2019-09-04 11:05:14', '0');
INSERT INTO `t_comment` VALUES ('38', '34', '9f8602df-7d62-4acd-b921-c523106ed28a', '', 'hxbxbx', '2019-09-09 23:37:26', '1');
INSERT INTO `t_comment` VALUES ('39', '34', '9f8602df-7d62-4acd-b921-c523106ed28a', '', '如果满行了怎么办？如果满行了怎么如果满行了怎么如果满行了怎么办？？？', '2019-09-09 23:38:11', '1');
INSERT INTO `t_comment` VALUES ('40', '37', '4c23311a9e3441c9885bb4e79f3f9dbc', '', '哈哈哈哈', '2019-09-10 20:25:46', '0');
INSERT INTO `t_comment` VALUES ('41', '38', 'f6a1bac7f5e345feb6da0737171f5e2b', '', '评论测试', '2019-10-08 11:47:47', '0');
INSERT INTO `t_comment` VALUES ('42', '44', '2761e95f94974c46b438e857f55b92cb', '', '首页地图跳转', '2019-10-08 15:56:39', '0');
INSERT INTO `t_comment` VALUES ('43', '44', '2761e95f94974c46b438e857f55b92cb', '', '?', '2019-10-08 15:56:48', '0');

-- ----------------------------
-- Table structure for t_label
-- ----------------------------
DROP TABLE IF EXISTS `t_label`;
CREATE TABLE `t_label` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POST_ID` int(11) NOT NULL,
  `LABEL_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_label
-- ----------------------------
INSERT INTO `t_label` VALUES ('439', '20', '242');
INSERT INTO `t_label` VALUES ('440', '20', '247');
INSERT INTO `t_label` VALUES ('441', '20', '253');
INSERT INTO `t_label` VALUES ('442', '20', '258');
INSERT INTO `t_label` VALUES ('443', '20', '263');
INSERT INTO `t_label` VALUES ('444', '21', '240');
INSERT INTO `t_label` VALUES ('445', '21', '245');
INSERT INTO `t_label` VALUES ('446', '21', '246');
INSERT INTO `t_label` VALUES ('447', '21', '251');
INSERT INTO `t_label` VALUES ('448', '21', '220');
INSERT INTO `t_label` VALUES ('449', '21', '221');
INSERT INTO `t_label` VALUES ('450', '21', '223');
INSERT INTO `t_label` VALUES ('451', '21', '322');
INSERT INTO `t_label` VALUES ('452', '21', '323');
INSERT INTO `t_label` VALUES ('453', '21', '324');
INSERT INTO `t_label` VALUES ('454', '21', '325');
INSERT INTO `t_label` VALUES ('455', '21', '328');
INSERT INTO `t_label` VALUES ('456', '21', '329');
INSERT INTO `t_label` VALUES ('457', '21', '330');
INSERT INTO `t_label` VALUES ('458', '21', '332');
INSERT INTO `t_label` VALUES ('459', '21', '333');
INSERT INTO `t_label` VALUES ('460', '21', '334');
INSERT INTO `t_label` VALUES ('461', '21', '335');
INSERT INTO `t_label` VALUES ('462', '21', '340');
INSERT INTO `t_label` VALUES ('463', '21', '343');
INSERT INTO `t_label` VALUES ('464', '21', '345');
INSERT INTO `t_label` VALUES ('465', '21', '346');
INSERT INTO `t_label` VALUES ('466', '21', '347');
INSERT INTO `t_label` VALUES ('467', '21', '348');
INSERT INTO `t_label` VALUES ('468', '21', '349');
INSERT INTO `t_label` VALUES ('469', '21', '350');
INSERT INTO `t_label` VALUES ('470', '21', '326');
INSERT INTO `t_label` VALUES ('471', '21', '327');
INSERT INTO `t_label` VALUES ('472', '21', '331');
INSERT INTO `t_label` VALUES ('473', '21', '336');
INSERT INTO `t_label` VALUES ('474', '21', '337');
INSERT INTO `t_label` VALUES ('475', '21', '338');
INSERT INTO `t_label` VALUES ('476', '21', '339');
INSERT INTO `t_label` VALUES ('477', '21', '341');
INSERT INTO `t_label` VALUES ('478', '21', '342');
INSERT INTO `t_label` VALUES ('479', '21', '344');
INSERT INTO `t_label` VALUES ('480', '22', '240');
INSERT INTO `t_label` VALUES ('481', '22', '323');
INSERT INTO `t_label` VALUES ('482', '22', '329');
INSERT INTO `t_label` VALUES ('483', '22', '347');
INSERT INTO `t_label` VALUES ('484', '23', '259');
INSERT INTO `t_label` VALUES ('485', '23', '14');
INSERT INTO `t_label` VALUES ('486', '23', '259');
INSERT INTO `t_label` VALUES ('487', '23', '261');
INSERT INTO `t_label` VALUES ('488', '23', '324');
INSERT INTO `t_label` VALUES ('489', '23', '325');
INSERT INTO `t_label` VALUES ('490', '23', '332');
INSERT INTO `t_label` VALUES ('491', '23', '340');
INSERT INTO `t_label` VALUES ('492', '23', '350');
INSERT INTO `t_label` VALUES ('493', '23', '326');
INSERT INTO `t_label` VALUES ('494', '23', '344');
INSERT INTO `t_label` VALUES ('495', '24', '16');
INSERT INTO `t_label` VALUES ('496', '24', '242');
INSERT INTO `t_label` VALUES ('497', '24', '243');
INSERT INTO `t_label` VALUES ('498', '24', '244');
INSERT INTO `t_label` VALUES ('499', '24', '16');
INSERT INTO `t_label` VALUES ('500', '24', '242');
INSERT INTO `t_label` VALUES ('501', '24', '244');
INSERT INTO `t_label` VALUES ('502', '24', '323');
INSERT INTO `t_label` VALUES ('503', '24', '324');
INSERT INTO `t_label` VALUES ('504', '24', '325');
INSERT INTO `t_label` VALUES ('505', '24', '332');
INSERT INTO `t_label` VALUES ('506', '24', '350');
INSERT INTO `t_label` VALUES ('507', '24', '331');
INSERT INTO `t_label` VALUES ('508', '24', '344');
INSERT INTO `t_label` VALUES ('509', '25', '16');
INSERT INTO `t_label` VALUES ('510', '25', '241');
INSERT INTO `t_label` VALUES ('511', '25', '242');
INSERT INTO `t_label` VALUES ('512', '25', '243');
INSERT INTO `t_label` VALUES ('513', '25', '15');
INSERT INTO `t_label` VALUES ('514', '25', '241');
INSERT INTO `t_label` VALUES ('515', '25', '242');
INSERT INTO `t_label` VALUES ('516', '25', '243');
INSERT INTO `t_label` VALUES ('517', '25', '324');
INSERT INTO `t_label` VALUES ('518', '25', '325');
INSERT INTO `t_label` VALUES ('519', '25', '332');
INSERT INTO `t_label` VALUES ('520', '25', '349');
INSERT INTO `t_label` VALUES ('521', '25', '350');
INSERT INTO `t_label` VALUES ('522', '25', '326');
INSERT INTO `t_label` VALUES ('523', '25', '331');
INSERT INTO `t_label` VALUES ('524', '26', '15');
INSERT INTO `t_label` VALUES ('525', '26', '240');
INSERT INTO `t_label` VALUES ('526', '26', '241');
INSERT INTO `t_label` VALUES ('527', '26', '242');
INSERT INTO `t_label` VALUES ('528', '26', '324');
INSERT INTO `t_label` VALUES ('529', '26', '325');
INSERT INTO `t_label` VALUES ('530', '26', '345');
INSERT INTO `t_label` VALUES ('531', '26', '350');
INSERT INTO `t_label` VALUES ('532', '26', '336');
INSERT INTO `t_label` VALUES ('533', '26', '342');
INSERT INTO `t_label` VALUES ('534', '27', '14');
INSERT INTO `t_label` VALUES ('535', '27', '259');
INSERT INTO `t_label` VALUES ('536', '27', '324');
INSERT INTO `t_label` VALUES ('537', '27', '325');
INSERT INTO `t_label` VALUES ('538', '27', '332');
INSERT INTO `t_label` VALUES ('539', '27', '340');
INSERT INTO `t_label` VALUES ('540', '27', '349');
INSERT INTO `t_label` VALUES ('541', '27', '350');
INSERT INTO `t_label` VALUES ('542', '27', '326');
INSERT INTO `t_label` VALUES ('543', '27', '327');
INSERT INTO `t_label` VALUES ('544', '27', '331');
INSERT INTO `t_label` VALUES ('545', '27', '336');
INSERT INTO `t_label` VALUES ('546', '28', '377');
INSERT INTO `t_label` VALUES ('547', '28', '381');
INSERT INTO `t_label` VALUES ('548', '28', '329');
INSERT INTO `t_label` VALUES ('549', '28', '332');
INSERT INTO `t_label` VALUES ('550', '28', '326');
INSERT INTO `t_label` VALUES ('551', '28', '327');
INSERT INTO `t_label` VALUES ('552', '29', '377');
INSERT INTO `t_label` VALUES ('553', '29', '378');
INSERT INTO `t_label` VALUES ('554', '30', '377');
INSERT INTO `t_label` VALUES ('555', '30', '378');
INSERT INTO `t_label` VALUES ('556', '30', '329');
INSERT INTO `t_label` VALUES ('557', '30', '332');
INSERT INTO `t_label` VALUES ('558', '30', '326');
INSERT INTO `t_label` VALUES ('559', '30', '327');
INSERT INTO `t_label` VALUES ('560', '31', '377');
INSERT INTO `t_label` VALUES ('561', '31', '378');
INSERT INTO `t_label` VALUES ('562', '31', '329');
INSERT INTO `t_label` VALUES ('563', '31', '332');
INSERT INTO `t_label` VALUES ('564', '31', '326');
INSERT INTO `t_label` VALUES ('565', '31', '327');
INSERT INTO `t_label` VALUES ('566', '31', '16');
INSERT INTO `t_label` VALUES ('567', '31', '248');
INSERT INTO `t_label` VALUES ('568', '32', '377');
INSERT INTO `t_label` VALUES ('569', '32', '378');
INSERT INTO `t_label` VALUES ('570', '32', '329');
INSERT INTO `t_label` VALUES ('571', '32', '332');
INSERT INTO `t_label` VALUES ('572', '32', '326');
INSERT INTO `t_label` VALUES ('573', '32', '327');
INSERT INTO `t_label` VALUES ('574', '32', '16');
INSERT INTO `t_label` VALUES ('575', '32', '248');
INSERT INTO `t_label` VALUES ('576', '33', '328');
INSERT INTO `t_label` VALUES ('577', '33', '329');
INSERT INTO `t_label` VALUES ('578', '33', '330');
INSERT INTO `t_label` VALUES ('579', '33', '334');
INSERT INTO `t_label` VALUES ('580', '33', '335');
INSERT INTO `t_label` VALUES ('581', '33', '14');
INSERT INTO `t_label` VALUES ('582', '33', '15');
INSERT INTO `t_label` VALUES ('583', '33', '16');
INSERT INTO `t_label` VALUES ('584', '33', '17');
INSERT INTO `t_label` VALUES ('585', '33', '18');
INSERT INTO `t_label` VALUES ('586', '33', '377');
INSERT INTO `t_label` VALUES ('587', '33', '378');
INSERT INTO `t_label` VALUES ('588', '33', '379');
INSERT INTO `t_label` VALUES ('589', '34', '328');
INSERT INTO `t_label` VALUES ('590', '34', '329');
INSERT INTO `t_label` VALUES ('591', '34', '330');
INSERT INTO `t_label` VALUES ('592', '34', '334');
INSERT INTO `t_label` VALUES ('593', '34', '335');
INSERT INTO `t_label` VALUES ('594', '34', '14');
INSERT INTO `t_label` VALUES ('595', '34', '15');
INSERT INTO `t_label` VALUES ('596', '34', '16');
INSERT INTO `t_label` VALUES ('597', '34', '17');
INSERT INTO `t_label` VALUES ('598', '34', '18');
INSERT INTO `t_label` VALUES ('599', '34', '377');
INSERT INTO `t_label` VALUES ('600', '34', '378');
INSERT INTO `t_label` VALUES ('601', '34', '379');
INSERT INTO `t_label` VALUES ('603', '36', '257');
INSERT INTO `t_label` VALUES ('604', '37', '243');
INSERT INTO `t_label` VALUES ('605', '37', '248');
INSERT INTO `t_label` VALUES ('606', '37', '253');
INSERT INTO `t_label` VALUES ('607', '37', '259');
INSERT INTO `t_label` VALUES ('608', '37', '378');
INSERT INTO `t_label` VALUES ('609', '37', '379');
INSERT INTO `t_label` VALUES ('610', '37', '380');
INSERT INTO `t_label` VALUES ('611', '38', '324');
INSERT INTO `t_label` VALUES ('612', '38', '330');
INSERT INTO `t_label` VALUES ('613', '38', '335');
INSERT INTO `t_label` VALUES ('614', '38', '340');
INSERT INTO `t_label` VALUES ('615', '38', '243');
INSERT INTO `t_label` VALUES ('616', '38', '248');
INSERT INTO `t_label` VALUES ('617', '38', '253');
INSERT INTO `t_label` VALUES ('618', '38', '259');
INSERT INTO `t_label` VALUES ('619', '38', '378');
INSERT INTO `t_label` VALUES ('620', '38', '379');
INSERT INTO `t_label` VALUES ('621', '38', '380');
INSERT INTO `t_label` VALUES ('622', '39', '242');
INSERT INTO `t_label` VALUES ('623', '39', '252');
INSERT INTO `t_label` VALUES ('624', '39', '379');
INSERT INTO `t_label` VALUES ('625', '39', '381');
INSERT INTO `t_label` VALUES ('626', '40', '324');
INSERT INTO `t_label` VALUES ('627', '40', '325');
INSERT INTO `t_label` VALUES ('628', '40', '332');
INSERT INTO `t_label` VALUES ('629', '40', '340');
INSERT INTO `t_label` VALUES ('630', '40', '258');
INSERT INTO `t_label` VALUES ('631', '40', '260');
INSERT INTO `t_label` VALUES ('632', '40', '378');
INSERT INTO `t_label` VALUES ('633', '40', '385');
INSERT INTO `t_label` VALUES ('634', '41', '322');
INSERT INTO `t_label` VALUES ('635', '41', '323');
INSERT INTO `t_label` VALUES ('636', '41', '324');
INSERT INTO `t_label` VALUES ('637', '41', '325');
INSERT INTO `t_label` VALUES ('638', '41', '328');
INSERT INTO `t_label` VALUES ('639', '41', '329');
INSERT INTO `t_label` VALUES ('640', '41', '330');
INSERT INTO `t_label` VALUES ('641', '41', '332');
INSERT INTO `t_label` VALUES ('642', '41', '333');
INSERT INTO `t_label` VALUES ('643', '41', '334');
INSERT INTO `t_label` VALUES ('644', '41', '335');
INSERT INTO `t_label` VALUES ('645', '41', '340');
INSERT INTO `t_label` VALUES ('646', '41', '343');
INSERT INTO `t_label` VALUES ('647', '41', '345');
INSERT INTO `t_label` VALUES ('648', '41', '346');
INSERT INTO `t_label` VALUES ('649', '41', '347');
INSERT INTO `t_label` VALUES ('650', '41', '348');
INSERT INTO `t_label` VALUES ('651', '41', '349');
INSERT INTO `t_label` VALUES ('652', '41', '350');
INSERT INTO `t_label` VALUES ('653', '41', '326');
INSERT INTO `t_label` VALUES ('654', '41', '327');
INSERT INTO `t_label` VALUES ('655', '41', '331');
INSERT INTO `t_label` VALUES ('656', '41', '336');
INSERT INTO `t_label` VALUES ('657', '41', '337');
INSERT INTO `t_label` VALUES ('658', '41', '338');
INSERT INTO `t_label` VALUES ('659', '41', '339');
INSERT INTO `t_label` VALUES ('660', '41', '341');
INSERT INTO `t_label` VALUES ('661', '41', '342');
INSERT INTO `t_label` VALUES ('662', '41', '344');
INSERT INTO `t_label` VALUES ('663', '41', '14');
INSERT INTO `t_label` VALUES ('664', '41', '16');
INSERT INTO `t_label` VALUES ('665', '41', '18');
INSERT INTO `t_label` VALUES ('666', '41', '19');
INSERT INTO `t_label` VALUES ('667', '41', '240');
INSERT INTO `t_label` VALUES ('668', '41', '244');
INSERT INTO `t_label` VALUES ('669', '41', '253');
INSERT INTO `t_label` VALUES ('670', '41', '263');
INSERT INTO `t_label` VALUES ('671', '41', '265');
INSERT INTO `t_label` VALUES ('672', '41', '266');
INSERT INTO `t_label` VALUES ('673', '41', '392');
INSERT INTO `t_label` VALUES ('674', '41', '394');
INSERT INTO `t_label` VALUES ('675', '41', '397');
INSERT INTO `t_label` VALUES ('676', '41', '400');
INSERT INTO `t_label` VALUES ('677', '42', '322');
INSERT INTO `t_label` VALUES ('678', '42', '323');
INSERT INTO `t_label` VALUES ('679', '42', '324');
INSERT INTO `t_label` VALUES ('680', '42', '325');
INSERT INTO `t_label` VALUES ('681', '42', '328');
INSERT INTO `t_label` VALUES ('682', '42', '329');
INSERT INTO `t_label` VALUES ('683', '42', '330');
INSERT INTO `t_label` VALUES ('684', '42', '332');
INSERT INTO `t_label` VALUES ('685', '42', '333');
INSERT INTO `t_label` VALUES ('686', '42', '334');
INSERT INTO `t_label` VALUES ('687', '42', '335');
INSERT INTO `t_label` VALUES ('688', '42', '340');
INSERT INTO `t_label` VALUES ('689', '42', '343');
INSERT INTO `t_label` VALUES ('690', '42', '345');
INSERT INTO `t_label` VALUES ('691', '42', '346');
INSERT INTO `t_label` VALUES ('692', '42', '347');
INSERT INTO `t_label` VALUES ('693', '42', '348');
INSERT INTO `t_label` VALUES ('694', '42', '349');
INSERT INTO `t_label` VALUES ('695', '42', '350');
INSERT INTO `t_label` VALUES ('696', '42', '326');
INSERT INTO `t_label` VALUES ('697', '42', '327');
INSERT INTO `t_label` VALUES ('698', '42', '331');
INSERT INTO `t_label` VALUES ('699', '42', '336');
INSERT INTO `t_label` VALUES ('700', '42', '337');
INSERT INTO `t_label` VALUES ('701', '42', '338');
INSERT INTO `t_label` VALUES ('702', '42', '339');
INSERT INTO `t_label` VALUES ('703', '42', '341');
INSERT INTO `t_label` VALUES ('704', '42', '342');
INSERT INTO `t_label` VALUES ('705', '42', '344');
INSERT INTO `t_label` VALUES ('706', '42', '14');
INSERT INTO `t_label` VALUES ('707', '42', '16');
INSERT INTO `t_label` VALUES ('708', '42', '18');
INSERT INTO `t_label` VALUES ('709', '42', '19');
INSERT INTO `t_label` VALUES ('710', '42', '240');
INSERT INTO `t_label` VALUES ('711', '42', '244');
INSERT INTO `t_label` VALUES ('712', '42', '253');
INSERT INTO `t_label` VALUES ('713', '42', '263');
INSERT INTO `t_label` VALUES ('714', '42', '265');
INSERT INTO `t_label` VALUES ('715', '42', '266');
INSERT INTO `t_label` VALUES ('716', '42', '392');
INSERT INTO `t_label` VALUES ('717', '42', '394');
INSERT INTO `t_label` VALUES ('718', '42', '397');
INSERT INTO `t_label` VALUES ('719', '42', '400');
INSERT INTO `t_label` VALUES ('720', '43', '322');
INSERT INTO `t_label` VALUES ('721', '43', '323');
INSERT INTO `t_label` VALUES ('722', '43', '324');
INSERT INTO `t_label` VALUES ('723', '43', '325');
INSERT INTO `t_label` VALUES ('724', '43', '328');
INSERT INTO `t_label` VALUES ('725', '43', '329');
INSERT INTO `t_label` VALUES ('726', '43', '330');
INSERT INTO `t_label` VALUES ('727', '43', '332');
INSERT INTO `t_label` VALUES ('728', '43', '333');
INSERT INTO `t_label` VALUES ('729', '43', '334');
INSERT INTO `t_label` VALUES ('730', '43', '340');
INSERT INTO `t_label` VALUES ('731', '43', '343');
INSERT INTO `t_label` VALUES ('732', '43', '345');
INSERT INTO `t_label` VALUES ('733', '43', '346');
INSERT INTO `t_label` VALUES ('734', '43', '347');
INSERT INTO `t_label` VALUES ('735', '43', '348');
INSERT INTO `t_label` VALUES ('736', '43', '349');
INSERT INTO `t_label` VALUES ('737', '43', '326');
INSERT INTO `t_label` VALUES ('738', '43', '327');
INSERT INTO `t_label` VALUES ('739', '43', '331');
INSERT INTO `t_label` VALUES ('740', '43', '336');
INSERT INTO `t_label` VALUES ('741', '43', '337');
INSERT INTO `t_label` VALUES ('742', '43', '338');
INSERT INTO `t_label` VALUES ('743', '43', '339');
INSERT INTO `t_label` VALUES ('744', '43', '342');
INSERT INTO `t_label` VALUES ('745', '43', '344');
INSERT INTO `t_label` VALUES ('746', '43', '14');
INSERT INTO `t_label` VALUES ('747', '43', '16');
INSERT INTO `t_label` VALUES ('748', '43', '18');
INSERT INTO `t_label` VALUES ('749', '43', '19');
INSERT INTO `t_label` VALUES ('750', '43', '240');
INSERT INTO `t_label` VALUES ('751', '43', '244');
INSERT INTO `t_label` VALUES ('752', '43', '253');
INSERT INTO `t_label` VALUES ('753', '43', '263');
INSERT INTO `t_label` VALUES ('754', '43', '265');
INSERT INTO `t_label` VALUES ('755', '43', '266');
INSERT INTO `t_label` VALUES ('756', '43', '392');
INSERT INTO `t_label` VALUES ('757', '43', '394');
INSERT INTO `t_label` VALUES ('758', '43', '397');
INSERT INTO `t_label` VALUES ('759', '43', '400');
INSERT INTO `t_label` VALUES ('760', '44', '322');
INSERT INTO `t_label` VALUES ('761', '44', '323');
INSERT INTO `t_label` VALUES ('762', '44', '324');
INSERT INTO `t_label` VALUES ('763', '44', '325');
INSERT INTO `t_label` VALUES ('764', '44', '328');
INSERT INTO `t_label` VALUES ('765', '44', '332');
INSERT INTO `t_label` VALUES ('766', '44', '333');
INSERT INTO `t_label` VALUES ('767', '44', '334');
INSERT INTO `t_label` VALUES ('768', '44', '335');
INSERT INTO `t_label` VALUES ('769', '44', '340');
INSERT INTO `t_label` VALUES ('770', '44', '343');
INSERT INTO `t_label` VALUES ('771', '44', '345');
INSERT INTO `t_label` VALUES ('772', '44', '346');
INSERT INTO `t_label` VALUES ('773', '44', '347');
INSERT INTO `t_label` VALUES ('774', '44', '348');
INSERT INTO `t_label` VALUES ('775', '44', '349');
INSERT INTO `t_label` VALUES ('776', '44', '350');
INSERT INTO `t_label` VALUES ('777', '44', '326');
INSERT INTO `t_label` VALUES ('778', '44', '327');
INSERT INTO `t_label` VALUES ('779', '44', '331');
INSERT INTO `t_label` VALUES ('780', '44', '336');
INSERT INTO `t_label` VALUES ('781', '44', '337');
INSERT INTO `t_label` VALUES ('782', '44', '338');
INSERT INTO `t_label` VALUES ('783', '44', '339');
INSERT INTO `t_label` VALUES ('784', '44', '342');
INSERT INTO `t_label` VALUES ('785', '44', '344');
INSERT INTO `t_label` VALUES ('786', '44', '14');
INSERT INTO `t_label` VALUES ('787', '44', '18');
INSERT INTO `t_label` VALUES ('788', '44', '263');
INSERT INTO `t_label` VALUES ('789', '44', '266');
INSERT INTO `t_label` VALUES ('790', '44', '378');
INSERT INTO `t_label` VALUES ('791', '44', '382');
INSERT INTO `t_label` VALUES ('792', '44', '401');
INSERT INTO `t_label` VALUES ('793', '44', '403');
INSERT INTO `t_label` VALUES ('794', '45', '328');
INSERT INTO `t_label` VALUES ('795', '45', '330');
INSERT INTO `t_label` VALUES ('796', '45', '340');
INSERT INTO `t_label` VALUES ('797', '45', '336');
INSERT INTO `t_label` VALUES ('798', '45', '338');
INSERT INTO `t_label` VALUES ('799', '45', '15');
INSERT INTO `t_label` VALUES ('800', '45', '17');
INSERT INTO `t_label` VALUES ('801', '45', '248');
INSERT INTO `t_label` VALUES ('802', '45', '253');
INSERT INTO `t_label` VALUES ('803', '45', '257');
INSERT INTO `t_label` VALUES ('804', '45', '378');
INSERT INTO `t_label` VALUES ('805', '45', '385');

-- ----------------------------
-- Table structure for t_navigation
-- ----------------------------
DROP TABLE IF EXISTS `t_navigation`;
CREATE TABLE `t_navigation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航栏ID',
  `TITLE` varchar(50) NOT NULL COMMENT '标签文本',
  `MAX_TOP_NUM` int(11) NOT NULL COMMENT '最大置顶数量',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_navigation
-- ----------------------------
INSERT INTO `t_navigation` VALUES ('1', '人气', '0', '2019-07-29 10:36:56', '0');
INSERT INTO `t_navigation` VALUES ('2', '地铁周边', '0', '2019-07-29 10:37:16', '0');
INSERT INTO `t_navigation` VALUES ('3', '商圈附近', '0', '2019-08-01 15:01:30', '0');
INSERT INTO `t_navigation` VALUES ('4', '推荐', '0', '2019-08-16 10:28:14', '0');
INSERT INTO `t_navigation` VALUES ('5', '月租短租', '0', '2019-08-16 10:29:03', '0');

-- ----------------------------
-- Table structure for t_navigation_top
-- ----------------------------
DROP TABLE IF EXISTS `t_navigation_top`;
CREATE TABLE `t_navigation_top` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '置顶表ID',
  `NAVIGATION_ID` int(11) NOT NULL COMMENT '导航栏ID',
  `POST_ID` int(11) NOT NULL COMMENT '帖子ID',
  `SORT_TIME` datetime NOT NULL COMMENT '排序时间，用来排序使用',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_navigation_top
-- ----------------------------

-- ----------------------------
-- Table structure for t_post_base
-- ----------------------------
DROP TABLE IF EXISTS `t_post_base`;
CREATE TABLE `t_post_base` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `IS_TOP` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否置顶，默认0不是，1是',
  `USER_ID` varchar(128) NOT NULL COMMENT '发帖人ID',
  `TYPE_ID` int(11) NOT NULL COMMENT '帖子类型ID',
  `CONTENT` text CHARACTER SET utf8mb4 NOT NULL COMMENT '帖子文本',
  `MIN_PRICE` varchar(10) DEFAULT NULL COMMENT '最小价格',
  `MAX_PRICE` varchar(10) DEFAULT NULL COMMENT '最大价格',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '电话',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址文本',
  `LABELS` varchar(255) DEFAULT NULL COMMENT '标签集合',
  `TOTAL_BROWSE` int(11) NOT NULL DEFAULT '0' COMMENT '真实浏览量',
  `TOTAL_RESONATE` int(11) NOT NULL DEFAULT '0' COMMENT '真实点赞数量',
  `DEV_BROWSE` int(11) NOT NULL DEFAULT '0' COMMENT '偏移的浏览量，后台可以修改的地方',
  `DEV_RESONATE` int(11) NOT NULL DEFAULT '0' COMMENT '偏移的点赞量，后台可以修改的地方',
  `ACTIVE_TIME` datetime NOT NULL COMMENT '活跃时间，作为排序的依据',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_LOWER_SHELF` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否下架，0上架，1下架',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  `TOTAL_COLLECTION` int(11) NOT NULL DEFAULT '0',
  `TOTAL_COMMENTS` int(11) NOT NULL DEFAULT '0',
  `FEE` tinyint(4) NOT NULL DEFAULT '0',
  `IS_SUB` int(10) NOT NULL DEFAULT '0' COMMENT '是否为地铁周边，不是为0，是为1',
  `IS_MALL` int(10) NOT NULL DEFAULT '0' COMMENT '是否为商圈附近，不是为0，是为1',
  `CHECK_IN_TIME` datetime DEFAULT NULL,
  `CHECK_OUT_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_post_base
-- ----------------------------
INSERT INTO `t_post_base` VALUES ('20', '0', '4c23311a9e3441c9885bb4e79f3f9dbc', '7', '哈哈哈哈哈', '1400', null, '18059336464', '厦门市集美区凤岐西路', '242,247,253,258,263', '11', '1', '0', '0', '2019-09-09 15:21:20', '2019-08-30 18:23:33', '0', '0', '3', '3', '1', '0', '1', null, null);
INSERT INTO `t_post_base` VALUES ('21', '0', '0e882d97f3be466794a368e877d6bc90', '7', 'sdasdasdsdasdasd', '1300', null, '18059936675', '福州市鼓楼区鼓屏路181-5号', '240,245,246,251,220,221,223,322,323,324,325,328,329,330,332,333,334,335,340,343,345,346,347,348,349,350,326,327,331,336,337,338,339,341,342,344', '13', '1', '0', '0', '2019-09-04 11:05:14', '2019-08-31 15:40:56', '0', '0', '1', '1', '1', '1', '1', null, null);
INSERT INTO `t_post_base` VALUES ('22', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '7', '我也不知道该写点什么', '250', null, '15387524575', '厦门市集美区岑东路168号', '240,323,329,347', '3', '0', '0', '0', '2019-09-04 13:33:24', '2019-09-04 13:33:24', '0', '1', '0', '0', '0', '0', '1', null, null);
INSERT INTO `t_post_base` VALUES ('23', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试图片上传顺序及上次发帖记录', '250', null, '18649618752', '厦门市集美区凤岐西路', '259,14,259,261,324,325,332,340,350,326,344', '3', '0', '0', '0', '2019-09-05 13:08:49', '2019-09-05 13:08:49', '0', '1', '0', '0', '1', '0', '1', '2019-09-08 00:00:00', '2019-10-30 00:00:00');
INSERT INTO `t_post_base` VALUES ('24', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试发帖记录是否保留', '250', null, '15387524575', '厦门市集美区岑东路168号', '16,242,243,244,16,242,244,323,324,325,332,350,331,344', '1', '0', '0', '0', '2019-09-05 13:16:42', '2019-09-05 13:16:42', '0', '1', '0', '0', '1', '0', '1', '2019-09-06 00:00:00', '2019-10-16 00:00:00');
INSERT INTO `t_post_base` VALUES ('25', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试发帖后本地记录是否生效', '250', null, '15387524575', '厦门市集美区岑东路168号', '16,241,242,243,15,241,242,243,324,325,332,349,350,326,331', '0', '0', '0', '0', '2019-09-05 13:27:17', '2019-09-05 13:27:17', '0', '1', '0', '0', '1', '0', '1', '2019-09-06 00:00:00', '2019-10-16 00:00:00');
INSERT INTO `t_post_base` VALUES ('26', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试发帖记录是否保存', '250', null, '15387524575', '厦门市集美区岑东路168号', '15,240,241,242,324,325,345,350,336,342', '0', '0', '0', '0', '2019-09-05 13:33:21', '2019-09-05 13:33:21', '0', '1', '0', '0', '1', '0', '1', '2019-09-06 00:00:00', '2019-10-10 00:00:00');
INSERT INTO `t_post_base` VALUES ('27', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试上次发帖内容的加载', '6666', null, '15387524575', '厦门市集美区凤岐西路', '14,259,324,325,332,340,349,350,326,327,331,336', '0', '0', '0', '0', '2019-09-05 19:23:46', '2019-09-05 19:23:46', '0', '1', '0', '0', '1', '0', '1', '2019-09-06 00:00:00', '2019-10-30 00:00:00');
INSERT INTO `t_post_base` VALUES ('33', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试标签加载是否正确', '250', null, '15387524575', '厦门市集美区岑东路168号', '328,329,330,334,335,14,15,16,17,18,377,378,379', '4', '0', '0', '0', '2019-09-09 14:50:00', '2019-09-09 14:50:00', '0', '0', '0', '0', '1', '1', '1', '2019-09-09 00:00:00', '2019-12-09 00:00:00');
INSERT INTO `t_post_base` VALUES ('34', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试标签加载是否正确2', '250', null, '15387524575', '厦门市集美区岑东路168号', '328,329,330,334,335,14,15,16,17,18,377,378,379', '5', '0', '0', '0', '2019-09-09 23:38:11', '2019-09-09 14:50:48', '0', '1', '0', '2', '1', '1', '1', '2019-09-09 00:00:00', '2019-12-09 00:00:00');
INSERT INTO `t_post_base` VALUES ('36', '0', '9f8602df-7d62-4acd-b921-c523106ed28a', '7', '来租房', '2000', null, '13124518724', 'NaN', '257', '0', '0', '0', '0', '2019-09-10 18:02:19', '2019-09-10 18:02:19', '0', '0', '0', '0', '1', '0', '1', null, null);
INSERT INTO `t_post_base` VALUES ('37', '0', '4c23311a9e3441c9885bb4e79f3f9dbc', '7', '测试1', '1200', null, '18059936675', '厦门市集美区集美大道', '243,248,253,259,378,379,380', '2', '1', '0', '0', '2019-09-10 20:25:46', '2019-09-10 20:21:13', '0', '0', '1', '1', '1', '1', '1', null, null);
INSERT INTO `t_post_base` VALUES ('38', '0', '4c23311a9e3441c9885bb4e79f3f9dbc', '7', '测试1', '1200', null, '18059936675', '厦门市集美区集美大道', '324,330,335,340,243,248,253,259,378,379,380', '7', '1', '0', '0', '2019-10-08 15:05:45', '2019-09-10 20:23:23', '0', '0', '2', '1', '1', '1', '1', null, null);
INSERT INTO `t_post_base` VALUES ('39', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试读取历史记录是标签页记住选项', '520', null, '15387524575', '厦门市集美区岑东路168号', '242,252,379,381', '1', '0', '0', '0', '2019-09-25 10:17:58', '2019-09-25 10:17:58', '0', '1', '0', '0', '1', '1', '1', '2019-09-25 00:00:00', '2019-12-25 00:00:00');
INSERT INTO `t_post_base` VALUES ('40', '0', 'f9c9edf1-fb89-48a5-81b4-e92f0b0e89b1', '4', '测试读取发帖记录时标签页能否记住加载的选择', '8848', null, '15960205747', '厦门市集美区岑东路168号', '324,325,332,340,258,260,378,385', '1', '0', '0', '0', '2019-09-30 09:49:16', '2019-09-30 09:49:16', '0', '0', '0', '0', '1', '1', '1', '2019-09-30 00:00:00', '2019-12-30 00:00:00');
INSERT INTO `t_post_base` VALUES ('41', '0', '2761e95f94974c46b438e857f55b92cb', '5', '原图发布调整', '1888', null, '13888888888', '福建省厦门市思明区金榜路与嘉禾路交叉口', '322,323,324,325,328,329,330,332,333,334,335,340,343,345,346,347,348,349,350,326,327,331,336,337,338,339,341,342,344,14,16,18,19,240,244,253,263,265,266,392,394,397,400', '1', '0', '0', '0', '2019-10-08 15:28:50', '2019-10-08 15:28:50', '0', '0', '1', '0', '1', '1', '1', null, null);
INSERT INTO `t_post_base` VALUES ('42', '0', '2761e95f94974c46b438e857f55b92cb', '5', '原图发布调整', '1888', null, '13888888888', '福建省厦门市思明区金榜路与嘉禾路交叉口', '322,323,324,325,328,329,330,332,333,334,335,340,343,345,346,347,348,349,350,326,327,331,336,337,338,339,341,342,344,14,16,18,19,240,244,253,263,265,266,392,394,397,400', '2', '0', '0', '0', '2019-10-08 15:34:30', '2019-10-08 15:34:30', '0', '0', '1', '0', '1', '1', '1', null, null);
INSERT INTO `t_post_base` VALUES ('43', '0', '2761e95f94974c46b438e857f55b92cb', '5', '帅康磊什么事重点出口此刻看戏小师妹说你纤细超级电视那次的困难都想看看你那东西啃下自身假戏真做阿布迪斯看着你的可私信看下面就像那些即将为您现场检查宣布电缆线看手机刺激的金额都觉得你我有事呢', '1888', null, '13888888888', '福建省厦门市思明区金榜路与嘉禾路交叉口', '322,323,324,325,328,329,330,332,333,334,340,343,345,346,347,348,349,326,327,331,336,337,338,339,342,344,14,16,18,19,240,244,253,263,265,266,392,394,397,400', '3', '0', '0', '0', '2019-10-08 15:35:32', '2019-10-08 15:35:32', '0', '0', '1', '0', '1', '1', '1', null, null);
INSERT INTO `t_post_base` VALUES ('44', '0', '2761e95f94974c46b438e857f55b92cb', '4', '业主直租 特惠 婚房出租', '1888', null, '88888888888', '福建省厦门市思明区厦禾路840号之1金榜大厦', '322,323,324,325,328,332,333,334,335,340,343,345,346,347,348,349,350,326,327,331,336,337,338,339,342,344,14,18,263,266,378,382,401,403', '5', '2', '0', '0', '2019-10-12 10:13:07', '2019-10-08 15:53:53', '0', '0', '1', '2', '1', '1', '1', '2019-10-09 00:00:00', '2019-11-29 00:00:00');
INSERT INTO `t_post_base` VALUES ('45', '0', 'f6a1bac7f5e345feb6da0737171f5e2b', '4', '测试私信', '800', null, '15387524575', '厦门市集美区凤岐西路', '328,330,340,336,338,15,17,248,253,257,378,385', '5', '0', '0', '0', '2019-10-08 16:01:27', '2019-10-08 16:01:27', '0', '0', '1', '0', '0', '1', '1', '2019-10-08 00:00:00', '2019-11-08 00:00:00');

-- ----------------------------
-- Table structure for t_post_label
-- ----------------------------
DROP TABLE IF EXISTS `t_post_label`;
CREATE TABLE `t_post_label` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签表ID',
  `PARENT_ID` int(11) NOT NULL COMMENT '标签的父ID',
  `CONTENT` varchar(50) NOT NULL COMMENT '标签内容',
  `TYPE` tinyint(4) NOT NULL DEFAULT '0',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  `TYPE_IMG_URL` varchar(255) DEFAULT NULL,
  `SIZE` int(11) NOT NULL DEFAULT '0' COMMENT '标签字号，默认最小0，往上一级1，最大一级为2',
  `FIX_SHOW` int(11) NOT NULL DEFAULT '0' COMMENT '在小程序上是否固定显示，默认0不显示，1固定显示，2为用户动态显示标签',
  `TYPE_IMG_URL_GREY` varchar(255) DEFAULT NULL,
  `ENGLISH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_post_label
-- ----------------------------
INSERT INTO `t_post_label` VALUES ('1', '0', '家用设备', '0', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('2', '0', '热门商圈', '0', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('3', '0', '地铁周边', '0', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('14', '2', '集美区', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('15', '2', '思明区', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('16', '2', '湖里区', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('17', '2', '海沧区', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('18', '2', '翔安区', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('19', '2', '同安区', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('20', '3', '1号线', '3', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('240', '16', 'SM', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('241', '15', '万象城', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('242', '16', '五缘湾', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('243', '15', '会展中心', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('244', '16', '保税区', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('245', '15', '厦大白城', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('246', '14', '厦门北', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('247', '19', '同安', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('248', '15', '宝龙一城', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('249', '15', '思北', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('250', '15', '文灶', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('251', '14', '杏林', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('252', '17', '海沧', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('253', '16', '湖里高新技术', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('254', '15', '火车站', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('255', '16', '瑞景', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('256', '18', '翔安', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('257', '15', '莲坂', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('258', '15', '观音山', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('259', '14', '软三', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('260', '15', '软二', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('261', '14', '集美嘉庚', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('262', '16', '高崎机场', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('263', '16', '江头台湾街', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('264', '16', '火炬园', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('265', '15', '悦享中心', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('266', '16', '东渡', '2', '0', null, '0', '1', null, null);
INSERT INTO `t_post_label` VALUES ('267', '1', '室内设备', '1', '0', '0', '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('268', '1', '室外设备', '1', '0', '0', '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('322', '267', '电视', '1', '0', 'http://img.since0592.com/static/equip/tv.png', '0', '0', 'http://img.since0592.com/static/equip/tv1.png', null);
INSERT INTO `t_post_label` VALUES ('323', '267', '独立阳台', '1', '0', 'http://img.since0592.com/static/equip/balcony.png', '0', '0', 'http://img.since0592.com/static/equip/balcony1.png', null);
INSERT INTO `t_post_label` VALUES ('324', '267', '独立卫生间', '1', '0', 'http://img.since0592.com/static/equip/bathroom.png', '0', '1', 'http://img.since0592.com/static/equip/bathroom1.png', null);
INSERT INTO `t_post_label` VALUES ('325', '267', '床', '1', '0', 'http://img.since0592.com/static/equip/bed.png', '0', '1', 'http://img.since0592.com/static/equip/bed1.png', null);
INSERT INTO `t_post_label` VALUES ('326', '268', 'BRT', '1', '0', 'http://img.since0592.com/static/equip/brt.png', '0', '1', 'http://img.since0592.com/static/equip/brt1.png', null);
INSERT INTO `t_post_label` VALUES ('327', '268', '公交', '1', '0', 'http://img.since0592.com/static/equip/bus.png', '0', '2', 'http://img.since0592.com/static/equip/bus1.png', null);
INSERT INTO `t_post_label` VALUES ('328', '267', '民用水电', '1', '0', 'http://img.since0592.com/static/equip/Civilwater.png', '0', '1', 'http://img.since0592.com/static/equip/Civilwater1.png', null);
INSERT INTO `t_post_label` VALUES ('329', '267', '商用水电', '1', '0', 'http://img.since0592.com/static/equip/Commercialhydropower.png', '0', '1', 'http://img.since0592.com/static/equip/Commercialhydropower1.png', null);
INSERT INTO `t_post_label` VALUES ('330', '267', '沙发', '1', '0', 'http://img.since0592.com/static/equip/couch.png', '0', '1', 'http://img.since0592.com/static/equip/couch1.png', null);
INSERT INTO `t_post_label` VALUES ('331', '268', '快递代收', '1', '0', 'http://img.since0592.com/static/equip/delivery.png', '0', '1', 'http://img.since0592.com/static/equip/delivery1.png', null);
INSERT INTO `t_post_label` VALUES ('332', '267', '书桌', '1', '0', 'http://img.since0592.com/static/equip/desk.png', '0', '1', 'http://img.since0592.com/static/equip/desk1.png', null);
INSERT INTO `t_post_label` VALUES ('333', '267', '电梯', '1', '0', 'http://img.since0592.com/static/equip/elevator.png', '0', '1', 'http://img.since0592.com/static/equip/elevator1.png', null);
INSERT INTO `t_post_label` VALUES ('334', '267', '暖气', '1', '0', 'http://img.since0592.com/static/equip/heating.png', '0', '1', 'http://img.since0592.com/static/equip/heating1.png', null);
INSERT INTO `t_post_label` VALUES ('335', '267', '油烟机', '1', '0', 'http://img.since0592.com/static/equip/hood.png', '0', '1', 'http://img.since0592.com/static/equip/hood1.png', null);
INSERT INTO `t_post_label` VALUES ('336', '268', '行李寄存', '1', '0', 'http://img.since0592.com/static/equip/luggage.png', '0', '1', 'http://img.since0592.com/static/equip/luggage1.png', null);
INSERT INTO `t_post_label` VALUES ('337', '268', '24小时监控', '1', '0', 'http://img.since0592.com/static/equip/minitor.png', '0', '1', 'http://img.since0592.com/static/equip/minitor1.png', null);
INSERT INTO `t_post_label` VALUES ('338', '268', '停车场', '1', '0', 'http://img.since0592.com/static/equip/parking.png', '0', '1', 'http://img.since0592.com/static/equip/parking1.png', null);
INSERT INTO `t_post_label` VALUES ('339', '268', '物业', '1', '0', 'http://img.since0592.com/static/equip/property.png', '0', '1', 'http://img.since0592.com/static/equip/property1.png', null);
INSERT INTO `t_post_label` VALUES ('340', '267', '冰箱', '1', '0', 'http://img.since0592.com/static/equip/ref.png', '0', '1', 'http://img.since0592.com/static/equip/ref1.png', null);
INSERT INTO `t_post_label` VALUES ('341', '268', '智能门锁', '1', '0', 'http://img.since0592.com/static/equip/smartLock.png', '0', '1', 'http://img.since0592.com/static/equip/smartLock1.png', null);
INSERT INTO `t_post_label` VALUES ('342', '268', '便利店', '1', '0', 'http://img.since0592.com/static/equip/store.png', '0', '1', 'http://img.since0592.com/static/equip/store1.png', null);
INSERT INTO `t_post_label` VALUES ('343', '267', '灶台', '1', '0', 'http://img.since0592.com/static/equip/stove.png', '0', '1', 'http://img.since0592.com/static/equip/stove1.png', null);
INSERT INTO `t_post_label` VALUES ('344', '268', '地铁', '1', '0', 'http://img.since0592.com/static/equip/sub.png', '0', '1', 'http://img.since0592.com/static/equip/sub1.png', null);
INSERT INTO `t_post_label` VALUES ('345', '267', '茶几', '1', '0', 'http://img.since0592.com/static/equip/teatable.png', '0', '1', 'http://img.since0592.com/static/equip/teatable1.png', null);
INSERT INTO `t_post_label` VALUES ('346', '267', '衣柜', '1', '0', 'http://img.since0592.com/static/equip/wardrobe.png', '0', '1', 'http://img.since0592.com/static/equip/wardrobe1.png', null);
INSERT INTO `t_post_label` VALUES ('347', '267', '洗衣机', '1', '0', 'http://img.since0592.com/static/equip/washer.png', '0', '1', 'http://img.since0592.com/static/equip/washer1.png', null);
INSERT INTO `t_post_label` VALUES ('348', '267', '电热水器', '1', '0', 'http://img.since0592.com/static/equip/waterHeater.png', '0', '1', 'http://img.since0592.com/static/equip/waterHeater1.png', null);
INSERT INTO `t_post_label` VALUES ('349', '267', '宽带', '1', '0', 'http://img.since0592.com/static/equip/wireless.png', '0', '1', 'http://img.since0592.com/static/equip/wireless1.png', null);
INSERT INTO `t_post_label` VALUES ('350', '267', '空调', '1', '0', 'http://img.since0592.com/static/equip/ac.png', '0', '1', 'http://img.since0592.com/static/equip/ac1.png', null);
INSERT INTO `t_post_label` VALUES ('351', '15', 'JFC', '2', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('376', '3', '2号线', '3', '0', null, '0', '0', null, null);
INSERT INTO `t_post_label` VALUES ('377', '20', '岩内', '3', '0', null, '0', '1', null, 'Yannei');
INSERT INTO `t_post_label` VALUES ('378', '20', '厦门北站', '3', '0', null, '0', '1', null, 'Xiamen North Railway Staion');
INSERT INTO `t_post_label` VALUES ('379', '20', '天水路', '3', '0', null, '0', '1', null, 'Tianshui Rd');
INSERT INTO `t_post_label` VALUES ('380', '20', '集美大道', '3', '0', null, '0', '1', null, 'Jimei Blvd');
INSERT INTO `t_post_label` VALUES ('381', '20', '集美软件园', '3', '0', null, '0', '1', null, 'Jimei Software Park');
INSERT INTO `t_post_label` VALUES ('382', '20', '诚毅广场', '3', '0', null, '0', '1', null, 'Chengyi Plaza');
INSERT INTO `t_post_label` VALUES ('383', '20', '官任', '3', '0', null, '0', '1', null, 'Guanren');
INSERT INTO `t_post_label` VALUES ('384', '20', '杏锦路', '3', '0', null, '0', '1', null, 'Xingjin Rd');
INSERT INTO `t_post_label` VALUES ('385', '20', '园博园', '3', '0', null, '0', '1', null, 'Horticulture Expo Garden');
INSERT INTO `t_post_label` VALUES ('386', '20', '杏林村站', '3', '0', null, '0', '1', null, 'Xinglin Village');
INSERT INTO `t_post_label` VALUES ('387', '20', '集美学村', '3', '0', null, '0', '1', null, 'Jimei School Village');
INSERT INTO `t_post_label` VALUES ('388', '20', '高崎', '3', '0', null, '0', '1', null, 'Gaoqi');
INSERT INTO `t_post_label` VALUES ('389', '20', '殿前', '3', '0', null, '0', '1', null, 'Dianqian');
INSERT INTO `t_post_label` VALUES ('390', '20', '火炬园', '3', '0', null, '0', '1', null, 'Torch Hi-tech Park');
INSERT INTO `t_post_label` VALUES ('391', '20', '塘边', '3', '0', null, '0', '1', null, 'Tangbian');
INSERT INTO `t_post_label` VALUES ('392', '20', '乌石浦', '3', '0', null, '0', '1', null, 'Wushipu');
INSERT INTO `t_post_label` VALUES ('393', '20', '吕厝', '3', '0', null, '0', '1', null, 'Lvcuo');
INSERT INTO `t_post_label` VALUES ('394', '20', '莲花路口', '3', '0', null, '0', '1', null, 'Lianhua Intersection');
INSERT INTO `t_post_label` VALUES ('395', '20', '莲坂', '3', '0', null, '0', '1', null, 'Lianban');
INSERT INTO `t_post_label` VALUES ('396', '20', '湖滨东路', '3', '0', null, '0', '1', null, 'Hubin East Rd');
INSERT INTO `t_post_label` VALUES ('397', '20', '文灶站', '3', '0', null, '0', '1', null, 'Wenzao');
INSERT INTO `t_post_label` VALUES ('398', '20', '将军祠', '3', '0', null, '0', '1', null, 'Jiangjunci');
INSERT INTO `t_post_label` VALUES ('399', '20', '中山公园', '3', '0', null, '0', '1', null, 'Zhongshan Park');
INSERT INTO `t_post_label` VALUES ('400', '20', '镇海路', '3', '0', null, '0', '1', null, 'Zhenhai Rd');
INSERT INTO `t_post_label` VALUES ('401', '376', '五缘湾', '3', '0', null, '0', '1', null, 'Wuyuan Bay');
INSERT INTO `t_post_label` VALUES ('402', '376', '钟宅', '3', '0', null, '0', '1', null, 'Zhongzhai');
INSERT INTO `t_post_label` VALUES ('403', '376', '湿地公园', '3', '0', null, '0', '1', null, 'Wetland Park');
INSERT INTO `t_post_label` VALUES ('404', '376', '五通', '3', '0', null, '0', '1', null, 'Wutong');

-- ----------------------------
-- Table structure for t_post_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_post_picture`;
CREATE TABLE `t_post_picture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `POST_ID` int(11) NOT NULL COMMENT '帖子ID',
  `IMG_URL` varchar(500) NOT NULL COMMENT '图片URL',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `SORT` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_post_picture
-- ----------------------------
INSERT INTO `t_post_picture` VALUES ('1', '22', 'http://img.since0592.com/static/8e53cbfe026341b7ad46ce3e3dab29f7.jpg', '2019-09-04 13:33:24', '1');
INSERT INTO `t_post_picture` VALUES ('2', '23', 'http://img.since0592.com/static/2e88f31c976d4826a0a69881e5700c07.jpg', '2019-09-05 13:08:49', '1');
INSERT INTO `t_post_picture` VALUES ('3', '23', 'http://img.since0592.com/static/06014d5423c34b2298960afb909ce4c8.jpg', '2019-09-05 13:08:49', '2');
INSERT INTO `t_post_picture` VALUES ('4', '23', 'http://img.since0592.com/static/93e3849796074737a25eeadc54f4a5a2.jpg', '2019-09-05 13:08:49', '3');
INSERT INTO `t_post_picture` VALUES ('5', '23', 'http://img.since0592.com/static/f4d876881cd54a66900f98bb73fdd63d.jpg', '2019-09-05 13:08:49', '4');
INSERT INTO `t_post_picture` VALUES ('6', '23', 'http://img.since0592.com/static/e49d7802c5574c1d9884223f26b0714a.jpg', '2019-09-05 13:08:49', '5');
INSERT INTO `t_post_picture` VALUES ('7', '23', 'http://img.since0592.com/static/5ab3fde319b74ac1a0b60eb310754647.jpg', '2019-09-05 13:08:49', '6');
INSERT INTO `t_post_picture` VALUES ('8', '23', 'http://img.since0592.com/static/47758d6ed45044599b93f140e3924da7.jpg', '2019-09-05 13:08:49', '7');
INSERT INTO `t_post_picture` VALUES ('9', '24', 'http://img.since0592.com/static/0d92dfe7c0d64a84973e3c83046f21fc.jpg', '2019-09-05 13:16:43', '1');
INSERT INTO `t_post_picture` VALUES ('10', '25', 'http://img.since0592.com/static/3868bebf98b340e084924e19726b71bd.jpg', '2019-09-05 13:27:17', '1');
INSERT INTO `t_post_picture` VALUES ('11', '26', 'http://img.since0592.com/static/473370ddd5f54014b95cf4062b81ad78.jpg', '2019-09-05 13:33:21', '1');
INSERT INTO `t_post_picture` VALUES ('12', '27', 'http://img.since0592.com/static/53532f5f830b44108e09420b7b911346.jpg', '2019-09-05 19:23:46', '1');
INSERT INTO `t_post_picture` VALUES ('13', '27', 'http://img.since0592.com/static/a9f9f5960981443980a77f43d2994de1.jpg', '2019-09-05 19:23:46', '2');
INSERT INTO `t_post_picture` VALUES ('17', '33', 'http://img.since0592.com/static/460fd8f2276b4cefbea481fbf14910ea.jpg', '2019-09-09 14:50:00', '1');
INSERT INTO `t_post_picture` VALUES ('18', '34', 'http://img.since0592.com/static/460fd8f2276b4cefbea481fbf14910ea.jpg', '2019-09-09 14:50:48', '1');
INSERT INTO `t_post_picture` VALUES ('19', '34', 'http://img.since0592.com/static/ecb062e959c14438b17d46e3c4b8177f.jpg', '2019-09-09 14:50:48', '2');
INSERT INTO `t_post_picture` VALUES ('20', '36', 'http://img.since0592.com/static/93076a18be1b40a9b263d19adf64b021.jpg', '2019-09-10 18:02:19', '1');
INSERT INTO `t_post_picture` VALUES ('21', '36', 'http://img.since0592.com/static/4d94b41e3099499c9b3c6cd2d498891a.jpg', '2019-09-10 18:02:19', '2');
INSERT INTO `t_post_picture` VALUES ('22', '37', 'http://img.since0592.com/static/e7c0e335a9154715844f24bc32048f45.jpg', '2019-09-10 20:21:13', '1');
INSERT INTO `t_post_picture` VALUES ('23', '37', 'http://img.since0592.com/static/e0b603fc45504f32b3cfdad4d1a65696.jpg', '2019-09-10 20:21:13', '2');
INSERT INTO `t_post_picture` VALUES ('24', '37', 'http://img.since0592.com/static/10ae2a63b3b04fb6b55f6862d6c3f427.jpg', '2019-09-10 20:21:13', '3');
INSERT INTO `t_post_picture` VALUES ('25', '37', 'http://img.since0592.com/static/1f5089940941424284868941d2153d6e.jpg', '2019-09-10 20:21:13', '4');
INSERT INTO `t_post_picture` VALUES ('26', '37', 'http://img.since0592.com/static/78b106cacf5e41a38a533abd700020c6.jpg', '2019-09-10 20:21:13', '5');
INSERT INTO `t_post_picture` VALUES ('27', '37', 'http://img.since0592.com/static/5a152641509148bea7c7c41a24313bc0.jpg', '2019-09-10 20:21:13', '6');
INSERT INTO `t_post_picture` VALUES ('28', '37', 'http://img.since0592.com/static/aec1c2ef1b0540639fa20c6f9efdf2ac.jpg', '2019-09-10 20:21:13', '7');
INSERT INTO `t_post_picture` VALUES ('29', '37', 'http://img.since0592.com/static/111c76417a93461c9137e8841463f4eb.jpg', '2019-09-10 20:21:13', '8');
INSERT INTO `t_post_picture` VALUES ('30', '37', 'http://img.since0592.com/static/51e75f09b13b4c92b06337c0c81d74b2.jpg', '2019-09-10 20:21:13', '9');
INSERT INTO `t_post_picture` VALUES ('31', '38', 'http://img.since0592.com/static/e7c0e335a9154715844f24bc32048f45.jpg', '2019-09-10 20:23:23', '1');
INSERT INTO `t_post_picture` VALUES ('32', '38', 'http://img.since0592.com/static/e0b603fc45504f32b3cfdad4d1a65696.jpg', '2019-09-10 20:23:23', '2');
INSERT INTO `t_post_picture` VALUES ('33', '38', 'http://img.since0592.com/static/10ae2a63b3b04fb6b55f6862d6c3f427.jpg', '2019-09-10 20:23:23', '3');
INSERT INTO `t_post_picture` VALUES ('34', '38', 'http://img.since0592.com/static/1f5089940941424284868941d2153d6e.jpg', '2019-09-10 20:23:23', '4');
INSERT INTO `t_post_picture` VALUES ('35', '38', 'http://img.since0592.com/static/78b106cacf5e41a38a533abd700020c6.jpg', '2019-09-10 20:23:23', '5');
INSERT INTO `t_post_picture` VALUES ('36', '38', 'http://img.since0592.com/static/5a152641509148bea7c7c41a24313bc0.jpg', '2019-09-10 20:23:23', '6');
INSERT INTO `t_post_picture` VALUES ('37', '38', 'http://img.since0592.com/static/aec1c2ef1b0540639fa20c6f9efdf2ac.jpg', '2019-09-10 20:23:23', '7');
INSERT INTO `t_post_picture` VALUES ('38', '38', 'http://img.since0592.com/static/111c76417a93461c9137e8841463f4eb.jpg', '2019-09-10 20:23:23', '8');
INSERT INTO `t_post_picture` VALUES ('39', '38', 'http://img.since0592.com/static/51e75f09b13b4c92b06337c0c81d74b2.jpg', '2019-09-10 20:23:23', '9');
INSERT INTO `t_post_picture` VALUES ('40', '39', 'http://img.since0592.com/static/75c2fe8018a8462792c60a86a9f1df5b.png', '2019-09-25 10:17:58', '1');
INSERT INTO `t_post_picture` VALUES ('41', '40', 'http://img.since0592.com/static/776996157618434682e7712169bc34f9.png', '2019-09-30 09:49:16', '1');
INSERT INTO `t_post_picture` VALUES ('42', '41', 'http://img.since0592.com/static/54fd2037c2304e6791e771565b88ecba.jpg', '2019-10-08 15:28:50', '1');
INSERT INTO `t_post_picture` VALUES ('43', '41', 'http://img.since0592.com/static/deede821903e4b52ab4fc9f2a250720e.jpg', '2019-10-08 15:28:50', '2');
INSERT INTO `t_post_picture` VALUES ('44', '41', 'http://img.since0592.com/static/cb6f3181cd3a4efeb971163ead6ea4d5.jpg', '2019-10-08 15:28:50', '3');
INSERT INTO `t_post_picture` VALUES ('45', '41', 'http://img.since0592.com/static/d34031d84b0e4080883cd7c1b562a3de.jpg', '2019-10-08 15:28:50', '4');
INSERT INTO `t_post_picture` VALUES ('46', '41', 'http://img.since0592.com/static/da26c78c91e549318cc3856cfb66b360.jpg', '2019-10-08 15:28:50', '5');
INSERT INTO `t_post_picture` VALUES ('47', '41', 'http://img.since0592.com/static/f630cbd3acf34e45b57580e777f8f1bf.jpg', '2019-10-08 15:28:50', '6');
INSERT INTO `t_post_picture` VALUES ('48', '41', 'http://img.since0592.com/static/83cfb779321846729c8f723e3d86830f.jpg', '2019-10-08 15:28:50', '7');
INSERT INTO `t_post_picture` VALUES ('49', '41', 'http://img.since0592.com/static/edbcb26782fd478f8181d9116188ee39.jpg', '2019-10-08 15:28:50', '8');
INSERT INTO `t_post_picture` VALUES ('50', '41', 'http://img.since0592.com/static/b775c661c8ff40af8c33d32da01226c6.jpg', '2019-10-08 15:28:50', '9');
INSERT INTO `t_post_picture` VALUES ('51', '42', 'http://img.since0592.com/static/54fd2037c2304e6791e771565b88ecba.jpg', '2019-10-08 15:34:30', '1');
INSERT INTO `t_post_picture` VALUES ('52', '42', 'http://img.since0592.com/static/deede821903e4b52ab4fc9f2a250720e.jpg', '2019-10-08 15:34:30', '2');
INSERT INTO `t_post_picture` VALUES ('53', '42', 'http://img.since0592.com/static/cb6f3181cd3a4efeb971163ead6ea4d5.jpg', '2019-10-08 15:34:30', '3');
INSERT INTO `t_post_picture` VALUES ('54', '42', 'http://img.since0592.com/static/d34031d84b0e4080883cd7c1b562a3de.jpg', '2019-10-08 15:34:30', '4');
INSERT INTO `t_post_picture` VALUES ('55', '42', 'http://img.since0592.com/static/da26c78c91e549318cc3856cfb66b360.jpg', '2019-10-08 15:34:30', '5');
INSERT INTO `t_post_picture` VALUES ('56', '42', 'http://img.since0592.com/static/f630cbd3acf34e45b57580e777f8f1bf.jpg', '2019-10-08 15:34:30', '6');
INSERT INTO `t_post_picture` VALUES ('57', '42', 'http://img.since0592.com/static/83cfb779321846729c8f723e3d86830f.jpg', '2019-10-08 15:34:30', '7');
INSERT INTO `t_post_picture` VALUES ('58', '42', 'http://img.since0592.com/static/edbcb26782fd478f8181d9116188ee39.jpg', '2019-10-08 15:34:30', '8');
INSERT INTO `t_post_picture` VALUES ('59', '42', 'http://img.since0592.com/static/b775c661c8ff40af8c33d32da01226c6.jpg', '2019-10-08 15:34:30', '9');
INSERT INTO `t_post_picture` VALUES ('60', '43', 'http://img.since0592.com/static/54fd2037c2304e6791e771565b88ecba.jpg', '2019-10-08 15:35:32', '1');
INSERT INTO `t_post_picture` VALUES ('61', '43', 'http://img.since0592.com/static/deede821903e4b52ab4fc9f2a250720e.jpg', '2019-10-08 15:35:32', '2');
INSERT INTO `t_post_picture` VALUES ('62', '43', 'http://img.since0592.com/static/cb6f3181cd3a4efeb971163ead6ea4d5.jpg', '2019-10-08 15:35:32', '3');
INSERT INTO `t_post_picture` VALUES ('63', '43', 'http://img.since0592.com/static/d34031d84b0e4080883cd7c1b562a3de.jpg', '2019-10-08 15:35:32', '4');
INSERT INTO `t_post_picture` VALUES ('64', '43', 'http://img.since0592.com/static/da26c78c91e549318cc3856cfb66b360.jpg', '2019-10-08 15:35:32', '5');
INSERT INTO `t_post_picture` VALUES ('65', '43', 'http://img.since0592.com/static/f630cbd3acf34e45b57580e777f8f1bf.jpg', '2019-10-08 15:35:32', '6');
INSERT INTO `t_post_picture` VALUES ('66', '43', 'http://img.since0592.com/static/83cfb779321846729c8f723e3d86830f.jpg', '2019-10-08 15:35:32', '7');
INSERT INTO `t_post_picture` VALUES ('67', '43', 'http://img.since0592.com/static/edbcb26782fd478f8181d9116188ee39.jpg', '2019-10-08 15:35:32', '8');
INSERT INTO `t_post_picture` VALUES ('68', '43', 'http://img.since0592.com/static/b775c661c8ff40af8c33d32da01226c6.jpg', '2019-10-08 15:35:32', '9');
INSERT INTO `t_post_picture` VALUES ('69', '44', 'http://img.since0592.com/static/26d5d421f4b54bc48934b9e61b0a994f.jpg', '2019-10-08 15:53:53', '1');
INSERT INTO `t_post_picture` VALUES ('70', '44', 'http://img.since0592.com/static/208e4565b2ab4c14a444912cddd80240.jpg', '2019-10-08 15:53:53', '2');
INSERT INTO `t_post_picture` VALUES ('71', '44', 'http://img.since0592.com/static/d28a6ad0ccb445eeb6499c4cf17f8905.jpg', '2019-10-08 15:53:53', '3');
INSERT INTO `t_post_picture` VALUES ('72', '44', 'http://img.since0592.com/static/057f8e9b4eba4f40b6157183e8a4ebdf.jpg', '2019-10-08 15:53:53', '4');
INSERT INTO `t_post_picture` VALUES ('73', '44', 'http://img.since0592.com/static/ee71048334684c1e8ff36caa12b380bd.jpg', '2019-10-08 15:53:53', '5');
INSERT INTO `t_post_picture` VALUES ('74', '44', 'http://img.since0592.com/static/f809e3e0c42844519c032f9240f8a029.jpg', '2019-10-08 15:53:53', '6');
INSERT INTO `t_post_picture` VALUES ('75', '44', 'http://img.since0592.com/static/4c81ea9f332c430f9988a3764cec14b8.jpg', '2019-10-08 15:53:53', '7');
INSERT INTO `t_post_picture` VALUES ('76', '44', 'http://img.since0592.com/static/5f3a4fdde30d481781dcee9c1b96b00c.jpg', '2019-10-08 15:53:53', '8');
INSERT INTO `t_post_picture` VALUES ('77', '44', 'http://img.since0592.com/static/4534d1027e7646509da8f86db4bb8141.jpg', '2019-10-08 15:53:53', '9');
INSERT INTO `t_post_picture` VALUES ('78', '45', 'http://img.since0592.com/static/a371a83c79684baebc1a8bf97c964c26.jpg', '2019-10-08 16:01:27', '1');

-- ----------------------------
-- Table structure for t_post_region
-- ----------------------------
DROP TABLE IF EXISTS `t_post_region`;
CREATE TABLE `t_post_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REGION` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_post_region
-- ----------------------------
INSERT INTO `t_post_region` VALUES ('1', '集美区', '2019-08-04 21:08:42');
INSERT INTO `t_post_region` VALUES ('2', '海沧区', '2019-08-04 21:11:28');
INSERT INTO `t_post_region` VALUES ('3', '思明区', '2019-08-04 21:11:45');
INSERT INTO `t_post_region` VALUES ('4', '湖里区', '2019-08-04 21:11:56');
INSERT INTO `t_post_region` VALUES ('5', '翔安区', '2019-08-04 21:12:16');
INSERT INTO `t_post_region` VALUES ('6', '同安区', '2019-08-04 21:12:28');

-- ----------------------------
-- Table structure for t_post_type
-- ----------------------------
DROP TABLE IF EXISTS `t_post_type`;
CREATE TABLE `t_post_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子类型ID',
  `TYPE_IMTG_URL` varchar(255) NOT NULL COMMENT '类型图片URL',
  `TYPE_NAME` varchar(50) NOT NULL COMMENT '类型名',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `SORT_TIME` datetime NOT NULL,
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_post_type
-- ----------------------------
INSERT INTO `t_post_type` VALUES ('1', 'http://img.since0592.com/static/img/tack.png', '办公转让', '2019-07-02 11:10:22', '2019-07-18 09:31:23', '0');
INSERT INTO `t_post_type` VALUES ('2', 'http://img.since0592.com/static/img/brand.png', '品牌优选', '2019-07-01 11:11:04', '2019-07-18 09:26:59', '0');
INSERT INTO `t_post_type` VALUES ('3', 'http://img.since0592.com/static/img/rents.png', '业主直租', '2019-07-01 11:11:06', '2019-07-17 15:55:40', '0');
INSERT INTO `t_post_type` VALUES ('4', 'http://img.since0592.com/static/img/tack2.png', '月租短租', '2019-07-12 17:35:35', '2019-07-23 14:06:12', '0');
INSERT INTO `t_post_type` VALUES ('5', 'http://img.since0592.com/static/img/Sublet.png', '转租', '2019-07-17 15:55:40', '2019-07-01 11:11:06', '0');
INSERT INTO `t_post_type` VALUES ('6', 'http://img.since0592.com/static/img/cotenancy.png', '合租', '2019-07-18 09:26:59', '2019-07-02 11:10:22', '0');
INSERT INTO `t_post_type` VALUES ('7', 'http://img.since0592.com/static/img/Renting.png', '求租', '2019-07-18 09:31:23', '2019-07-01 11:11:04', '0');
INSERT INTO `t_post_type` VALUES ('8', 'http://img.since0592.com/static/img/rent.png', '整租', '2019-07-23 14:06:12', '2019-07-12 17:35:35', '0');

-- ----------------------------
-- Table structure for t_report_record
-- ----------------------------
DROP TABLE IF EXISTS `t_report_record`;
CREATE TABLE `t_report_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报记录ID',
  `USER_ID` varchar(128) NOT NULL COMMENT '举报人ID',
  `TARGET_ID` int(11) NOT NULL COMMENT '举报的帖子ID',
  `CREATE_TIME` datetime NOT NULL COMMENT '举报时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  `IS_IDLE` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否闲置，0闲置，1已处理',
  `TARGET_TYPE` varchar(255) DEFAULT NULL COMMENT '举报对象类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report_record
-- ----------------------------
INSERT INTO `t_report_record` VALUES ('1', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '20', '2019-09-04 10:29:59', '0', '0', 'post');
INSERT INTO `t_report_record` VALUES ('2', 'f6a1bac7f5e345feb6da0737171f5e2b', '38', '2019-10-08 11:48:30', '0', '0', 'post');
INSERT INTO `t_report_record` VALUES ('3', '2761e95f94974c46b438e857f55b92cb', '41', '2019-10-08 15:29:26', '0', '0', 'post');
INSERT INTO `t_report_record` VALUES ('4', 'f6a1bac7f5e345feb6da0737171f5e2b', '45', '2019-10-09 09:30:47', '0', '0', 'post');

-- ----------------------------
-- Table structure for t_sys_information
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_information`;
CREATE TABLE `t_sys_information` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统消息ID',
  `TARGET_ID` varchar(128) NOT NULL COMMENT '发送对象的ID，单发为用户ID，群发为system_info',
  `CONTENT` text NOT NULL COMMENT '消息文本内容',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_information
-- ----------------------------
INSERT INTO `t_sys_information` VALUES ('1', 'system_info', '系统通知，群发', '2019-08-06 09:41:11', '0');
INSERT INTO `t_sys_information` VALUES ('2', 'cc55c04ef440408394eff56afb604d42', '厦门市气象台2019年08月02日12时00分继续发布雷电黄色预警信号:预计未来6小时我市部分镇街及沿海仍有雷电活动,局地伴有短时强降水和6-8级大风。请注意防范。(预警信息来源:国家预警信息发布中心)', '2019-08-29 13:45:34', '0');

-- ----------------------------
-- Table structure for t_sys_template
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_template`;
CREATE TABLE `t_sys_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统模版ID',
  `TITLE` varchar(255) NOT NULL COMMENT '模版标题',
  `CONTENT` text NOT NULL COMMENT '模版文本',
  `IS_GUIDE` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为引导标示，0不是，1是',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0为否，1为是',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_template
-- ----------------------------
INSERT INTO `t_sys_template` VALUES ('1', '系统维护公告', '系统将于明日（2019-08-03）凌晨1点进行维护，届时用户可能无法使用本系统，给您造成的不便请谅解', '0', '0');
INSERT INTO `t_sys_template` VALUES ('2', '用户禁言公告', '近期有大量用户因不当发言被禁言，请大家合法上网冲浪维护社区良好环境', '0', '0');
INSERT INTO `t_sys_template` VALUES ('3', '天气', '厦门市气象台2019年08月02日12时00分继续发布雷电黄色预警信号:预计未来6小时我市部分镇街及沿海仍有雷电活动,局地伴有短时强降水和6-8级大风。请注意防范。(预警信息来源:国家预警信息发布中心)', '0', '0');
INSERT INTO `t_sys_template` VALUES ('4', '长文本测试', '送神是早上五点钟，送到我住的这个村大概是上午十一点。我想早点起，但是一激动就失眠了，睁开眼睛已经八点过了。躺在床上，想怕是神都送了两个村了。\r \r 吃了早饭，就去在村里转。今天村里有活动的，好多人就是来参加这个活动的。一个乡村博物馆今天开幕。一座老房子改的博物馆，在村里开阔处靠溪水边。\r \r 走进村。好多穿着打扮都很时髦的人，一看就是城里人的人，往村里走。我也是，还戴着一顶草礼帽，瓜兮兮的。\r \r 进村有两条路：一条，有一棵很大很大的苦楮树，八百年，树根包着一个小庙，庙纪念这个村最老的祖先；另一条，是一棵很大很大的红豆杉树，不晓得是多少年。是我见过最大的红豆杉。来到这个村，经过它大概五六次了，每次经过都在内心对它行礼。摘下草礼帽。\r \r 人越来越多。碰到熟人，我很成熟地和人家打招呼，聊两句大人龙门阵。甚至还给不熟悉的朋友相互介绍。活动正式开始，活动组织者和村县领导们站前排，一个当地电视台的主持人开始拿着话筒开始讲话。她的高跟鞋估计有十厘米以上，笔直地站在碎石地上，双腿丁字形分开，一口播音普通话。她一开口，就说自己就是这个村里长大的，这句话让我蛮吃惊的。\r \r 领导发言，是个四十来岁的男人，第一句话，父老乡亲们好，各位来宾好。我们相聚一堂，为了文化传承和振兴。很奇怪的，我也跟着热烈鼓掌。我从小就这样，什么时候都希望不冷场。喜欢热热闹闹的。\r \r 老乡们来了不少，开幕现场提供非常精致的点心。那点心比城里不少点心都精致。大家都在吃。还有啤酒、草药汤和杨梅汁提供。装水的杯杯也很精致。我小时候要有机会参加这样的活动，估计会把这个杯杯藏起来，偷走。\r \r 放纪录片的小房间黑乎乎的，摆着竹椅子。人多，几乎都是进来看两眼就走了。我一直坐着从头看到尾，片子拍得好，村子安静的样子拍出来了的。村里的狗儿、鸭子、公鸡母鸡小鸡都有，还有小羊都有。好多俯拍的镜头，环山碧绿，村子被捧在中间。非常神秘非常遥远的样子。而我就坐在这里。\r \r 始终留神听外面的动静，我怕错过神。终于，听见外面有鞭炮声了。急忙跑出去，又说，还没有走拢。\r \r 村口有卖凉粉的，是绿色的凉粉，用草榨汁做的。片子里有介绍，说是当地特色，叫“青草豆腐”。我说来一碗，问卖凉粉的大姐：这是“青草豆腐”么？大姐羞涩地笑了笑：嗯，我们就叫绿豆腐。你加辣不加？我点头：加，多加。\r \r 绿豆腐蛮爽口的，还加了大头菜颗颗，酸浆。我端着一边走一边吃。突然鞭炮又响起来了，大家都往村头涌过去。我急得赶紧吃两口绿豆腐，碗里少些，端着走也可以不荡出来。大家都站在路两边，往前面张望。我挤在当中，护着绿豆腐。\r \r 举着旗子的人走过来了，有小娃娃，也有老太太，他们是打头的。一个举着旗子的小男娃娃，对着人群笑嘻嘻举起了中指，我身边站着的另一个小男娃娃立刻也对他举起来中指。他们笑嘻嘻地相互比着中指。抗旗子这个事情肯定让人不好意思嘛！举着旗子就和平时看上去不一样了嘛。举旗子的村人大家都神态平静自若，大人们也不停地和人群里的熟人打着招呼。\r \r 一个男人举着一把香从苦楮树小庙走出来，对着苦楮树行礼，他行完礼打算把香插在树下的香炉里，一个拿着长镜头相机的城里人对他说：哎呀你慢点，你能不能再行一次礼。男人不好意思地笑了，但是他配合着又行了一次礼，脸上挂着尴尬的笑。\r \r 他行完礼，从楼梯走下来，准备点烟花，烟花早放好了，信子排得长长的，他抬头看了一眼送神队伍，蹲下去就点。嗖！嗖！啪！烟花在白天显不出艳丽，但有了烟花，神就要正式进村了。\r \r 举着“令”牌的人过来了，后面是一排“回避”，红地黑字的牌子举得高高的，前面走着穿着麻裙的巫师，他嘴里念念有词。我激动地满脸通红，为了掩盖激动，又吃了一口绿豆腐。\r \r 神的轿子抬过来了，红色的流苏和塑料花装饰着小木轿，隐隐能看见里面是一尊白脸的男神，穿着官服戴着官帽。我呆呆看着那木雕的神脸，面目俊俏，唇红齿白。第二乘轿子又过来了，也是一尊男神，白脸，长着长胡子，细长的丹凤眼。第三尊是黑面，男神，威武，穿盔甲。走最后的一尊，是个女神，我一看见女神，觉得非常非常亲切，觉得女娃娃也能坐在轿子里真好。女娃娃也能那么受人尊重真好。女神雕得最美，坐在轿子里非常尊严，我突然就要哭了。端着绿豆腐，不知道如何是好，左右都是人，我不好意思让人家看见我要哭。\r \r 突然看见老九在那大苦楮树下站着，也在张望，我立刻向他走过去。他也看见我了，叫我：你去哪里了，我找你半天！我没有说话，端着豆腐，非常严肃地走过去，眼睛红着，刚走过去就对他说：我想哭。就哇一声哭了，上气不接下气，他很吃惊：怎么了，有人欺负你么。我哭得脸皮发烫，把绿豆腐递给他：没、没有，我就是看见神了。', '1', '0');

-- ----------------------------
-- Table structure for t_user_browse
-- ----------------------------
DROP TABLE IF EXISTS `t_user_browse`;
CREATE TABLE `t_user_browse` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '浏览记录ID',
  `USER_ID` varchar(128) NOT NULL COMMENT '用户ID',
  `POST_ID` int(11) NOT NULL COMMENT '帖子ID',
  `CREATE_TIME` datetime NOT NULL COMMENT '浏览时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `index` (`USER_ID`,`POST_ID`,`CREATE_TIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1070 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_browse
-- ----------------------------
INSERT INTO `t_user_browse` VALUES ('992', '0e882d97f3be466794a368e877d6bc90', '18', '2019-08-30 17:38:31', '0');
INSERT INTO `t_user_browse` VALUES ('993', '54d9030c-dd0d-42b0-80e5-5f298a4682c7', '18', '2019-08-30 14:10:39', '0');
INSERT INTO `t_user_browse` VALUES ('994', '0e882d97f3be466794a368e877d6bc90', '19', '2019-08-30 15:34:05', '0');
INSERT INTO `t_user_browse` VALUES ('995', '075b26a69ae84cbcae283cb813bd2085', '18', '2019-08-30 17:38:01', '0');
INSERT INTO `t_user_browse` VALUES ('996', 'e4050bf4-ba62-42f3-85a7-92d2996ef207', '18', '2019-08-30 17:41:38', '0');
INSERT INTO `t_user_browse` VALUES ('997', '4c23311a9e3441c9885bb4e79f3f9dbc', '20', '2019-08-30 18:24:10', '0');
INSERT INTO `t_user_browse` VALUES ('998', '4c23311a9e3441c9885bb4e79f3f9dbc', '20', '2019-08-31 12:16:28', '0');
INSERT INTO `t_user_browse` VALUES ('999', '218fe87d-db6b-48ce-a408-83287e51b7e8', '20', '2019-08-31 15:30:42', '0');
INSERT INTO `t_user_browse` VALUES ('1000', '0e882d97f3be466794a368e877d6bc90', '20', '2019-08-31 15:36:03', '0');
INSERT INTO `t_user_browse` VALUES ('1001', '0e882d97f3be466794a368e877d6bc90', '21', '2019-08-31 16:58:38', '0');
INSERT INTO `t_user_browse` VALUES ('1002', '4c23311a9e3441c9885bb4e79f3f9dbc', '21', '2019-08-31 15:53:22', '0');
INSERT INTO `t_user_browse` VALUES ('1003', '0e882d97f3be466794a368e877d6bc90', '21', '2019-09-01 11:48:12', '0');
INSERT INTO `t_user_browse` VALUES ('1004', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '20', '2019-09-04 11:11:19', '0');
INSERT INTO `t_user_browse` VALUES ('1005', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '21', '2019-09-04 12:53:35', '0');
INSERT INTO `t_user_browse` VALUES ('1006', '44630af1-3ad1-4f3d-9c7e-823e68da38f9', '21', '2019-09-04 12:45:29', '0');
INSERT INTO `t_user_browse` VALUES ('1007', 'f6a1bac7f5e345feb6da0737171f5e2b', '21', '2019-09-04 13:37:14', '0');
INSERT INTO `t_user_browse` VALUES ('1008', 'f6a1bac7f5e345feb6da0737171f5e2b', '20', '2019-09-04 13:27:48', '0');
INSERT INTO `t_user_browse` VALUES ('1009', 'f6a1bac7f5e345feb6da0737171f5e2b', '22', '2019-09-04 13:33:28', '0');
INSERT INTO `t_user_browse` VALUES ('1010', '4c23311a9e3441c9885bb4e79f3f9dbc', '22', '2019-09-04 13:37:48', '0');
INSERT INTO `t_user_browse` VALUES ('1011', '4c23311a9e3441c9885bb4e79f3f9dbc', '21', '2019-09-04 13:36:58', '0');
INSERT INTO `t_user_browse` VALUES ('1012', 'f6a1bac7f5e345feb6da0737171f5e2b', '24', '2019-09-05 13:18:35', '0');
INSERT INTO `t_user_browse` VALUES ('1013', 'f6a1bac7f5e345feb6da0737171f5e2b', '22', '2019-09-05 13:20:24', '0');
INSERT INTO `t_user_browse` VALUES ('1014', 'f6a1bac7f5e345feb6da0737171f5e2b', '23', '2019-09-05 13:20:32', '0');
INSERT INTO `t_user_browse` VALUES ('1015', 'f6a1bac7f5e345feb6da0737171f5e2b', '23', '2019-09-06 18:04:50', '0');
INSERT INTO `t_user_browse` VALUES ('1016', 'f6a1bac7f5e345feb6da0737171f5e2b', '23', '2019-09-09 08:35:38', '0');
INSERT INTO `t_user_browse` VALUES ('1017', 'f6a1bac7f5e345feb6da0737171f5e2b', '28', '2019-09-09 11:05:37', '0');
INSERT INTO `t_user_browse` VALUES ('1018', 'f6a1bac7f5e345feb6da0737171f5e2b', '21', '2019-09-09 11:08:09', '0');
INSERT INTO `t_user_browse` VALUES ('1019', 'f6a1bac7f5e345feb6da0737171f5e2b', '20', '2019-09-09 11:09:35', '0');
INSERT INTO `t_user_browse` VALUES ('1020', 'f6a1bac7f5e345feb6da0737171f5e2b', '29', '2019-09-09 12:34:12', '0');
INSERT INTO `t_user_browse` VALUES ('1021', '4c23311a9e3441c9885bb4e79f3f9dbc', '29', '2019-09-09 11:16:57', '0');
INSERT INTO `t_user_browse` VALUES ('1022', '4c23311a9e3441c9885bb4e79f3f9dbc', '21', '2019-09-09 11:17:03', '0');
INSERT INTO `t_user_browse` VALUES ('1023', 'f6a1bac7f5e345feb6da0737171f5e2b', '30', '2019-09-09 12:31:06', '0');
INSERT INTO `t_user_browse` VALUES ('1024', 'f6a1bac7f5e345feb6da0737171f5e2b', '31', '2019-09-09 13:15:01', '0');
INSERT INTO `t_user_browse` VALUES ('1025', 'f6a1bac7f5e345feb6da0737171f5e2b', '32', '2019-09-09 13:30:30', '0');
INSERT INTO `t_user_browse` VALUES ('1026', 'f6a1bac7f5e345feb6da0737171f5e2b', '33', '2019-09-09 15:14:40', '0');
INSERT INTO `t_user_browse` VALUES ('1027', 'f6a1bac7f5e345feb6da0737171f5e2b', '34', '2019-09-09 15:21:39', '0');
INSERT INTO `t_user_browse` VALUES ('1028', '4c23311a9e3441c9885bb4e79f3f9dbc', '20', '2019-09-09 15:21:25', '0');
INSERT INTO `t_user_browse` VALUES ('1029', '9f8602df-7d62-4acd-b921-c523106ed28a', '20', '2019-09-09 23:36:51', '0');
INSERT INTO `t_user_browse` VALUES ('1030', 'f6a1bac7f5e345feb6da0737171f5e2b', '34', '2019-09-10 11:24:36', '0');
INSERT INTO `t_user_browse` VALUES ('1031', 'f27cc768-dc5f-4226-b20a-7eb916a7e5f7', '21', '2019-09-10 12:08:05', '0');
INSERT INTO `t_user_browse` VALUES ('1032', '4c23311a9e3441c9885bb4e79f3f9dbc', '34', '2019-09-10 20:16:26', '0');
INSERT INTO `t_user_browse` VALUES ('1033', '4c23311a9e3441c9885bb4e79f3f9dbc', '33', '2019-09-10 20:10:15', '0');
INSERT INTO `t_user_browse` VALUES ('1034', '4c23311a9e3441c9885bb4e79f3f9dbc', '37', '2019-09-10 20:27:33', '0');
INSERT INTO `t_user_browse` VALUES ('1035', '4c23311a9e3441c9885bb4e79f3f9dbc', '38', '2019-09-10 20:23:27', '0');
INSERT INTO `t_user_browse` VALUES ('1036', '', '34', '2019-09-10 20:33:49', '0');
INSERT INTO `t_user_browse` VALUES ('1037', '567a6322-3e6f-44cd-9f32-eef678e1971c', '38', '2019-09-10 20:37:02', '0');
INSERT INTO `t_user_browse` VALUES ('1038', 'f6a1bac7f5e345feb6da0737171f5e2b', '38', '2019-09-11 09:40:46', '0');
INSERT INTO `t_user_browse` VALUES ('1039', 'f6a1bac7f5e345feb6da0737171f5e2b', '39', '2019-09-25 10:19:10', '0');
INSERT INTO `t_user_browse` VALUES ('1040', 'f9c9edf1-fb89-48a5-81b4-e92f0b0e89b1', '40', '2019-09-30 09:49:18', '0');
INSERT INTO `t_user_browse` VALUES ('1041', 'f9c9edf1-fb89-48a5-81b4-e92f0b0e89b1', '38', '2019-09-30 10:02:06', '0');
INSERT INTO `t_user_browse` VALUES ('1042', 'f27cc768-dc5f-4226-b20a-7eb916a7e5f7', '33', '2019-10-08 09:46:35', '0');
INSERT INTO `t_user_browse` VALUES ('1043', 'f6a1bac7f5e345feb6da0737171f5e2b', '34', '2019-10-08 11:16:43', '0');
INSERT INTO `t_user_browse` VALUES ('1044', 'f6a1bac7f5e345feb6da0737171f5e2b', '38', '2019-10-08 11:48:04', '0');
INSERT INTO `t_user_browse` VALUES ('1045', 'f6a1bac7f5e345feb6da0737171f5e2b', '33', '2019-10-08 15:03:53', '0');
INSERT INTO `t_user_browse` VALUES ('1046', 'f6a1bac7f5e345feb6da0737171f5e2b', '21', '2019-10-08 15:04:00', '0');
INSERT INTO `t_user_browse` VALUES ('1047', 'f6a1bac7f5e345feb6da0737171f5e2b', '20', '2019-10-08 15:04:06', '0');
INSERT INTO `t_user_browse` VALUES ('1048', '2761e95f94974c46b438e857f55b92cb', '41', '2019-10-08 15:34:04', '0');
INSERT INTO `t_user_browse` VALUES ('1049', '2761e95f94974c46b438e857f55b92cb', '42', '2019-10-08 15:34:33', '0');
INSERT INTO `t_user_browse` VALUES ('1050', '2761e95f94974c46b438e857f55b92cb', '43', '2019-10-08 15:35:34', '0');
INSERT INTO `t_user_browse` VALUES ('1051', '2761e95f94974c46b438e857f55b92cb', '44', '2019-10-08 17:19:48', '0');
INSERT INTO `t_user_browse` VALUES ('1052', '2761e95f94974c46b438e857f55b92cb', '38', '2019-10-08 15:59:59', '0');
INSERT INTO `t_user_browse` VALUES ('1053', 'f6a1bac7f5e345feb6da0737171f5e2b', '45', '2019-10-08 16:03:01', '0');
INSERT INTO `t_user_browse` VALUES ('1054', 'f6a1bac7f5e345feb6da0737171f5e2b', '44', '2019-10-08 17:42:43', '0');
INSERT INTO `t_user_browse` VALUES ('1055', 'f6a1bac7f5e345feb6da0737171f5e2b', '44', '2019-10-09 09:25:31', '0');
INSERT INTO `t_user_browse` VALUES ('1056', 'f6a1bac7f5e345feb6da0737171f5e2b', '45', '2019-10-09 09:30:43', '0');
INSERT INTO `t_user_browse` VALUES ('1057', 'f6a1bac7f5e345feb6da0737171f5e2b', '43', '2019-10-09 14:24:26', '0');
INSERT INTO `t_user_browse` VALUES ('1058', '4c23311a9e3441c9885bb4e79f3f9dbc', '45', '2019-10-09 16:39:00', '0');
INSERT INTO `t_user_browse` VALUES ('1059', '4c23311a9e3441c9885bb4e79f3f9dbc', '44', '2019-10-09 17:08:08', '0');
INSERT INTO `t_user_browse` VALUES ('1060', '4c23311a9e3441c9885bb4e79f3f9dbc', '42', '2019-10-09 17:08:47', '0');
INSERT INTO `t_user_browse` VALUES ('1061', '4c23311a9e3441c9885bb4e79f3f9dbc', '20', '2019-10-09 17:09:22', '0');
INSERT INTO `t_user_browse` VALUES ('1062', 'f6a1bac7f5e345feb6da0737171f5e2b', '44', '2019-10-10 12:45:37', '0');
INSERT INTO `t_user_browse` VALUES ('1063', 'f6a1bac7f5e345feb6da0737171f5e2b', '45', '2019-10-10 12:47:41', '0');
INSERT INTO `t_user_browse` VALUES ('1064', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '21', '2019-10-11 21:44:19', '0');
INSERT INTO `t_user_browse` VALUES ('1065', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '45', '2019-10-11 22:11:59', '0');
INSERT INTO `t_user_browse` VALUES ('1066', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '43', '2019-10-11 22:07:02', '0');
INSERT INTO `t_user_browse` VALUES ('1067', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '38', '2019-10-12 09:07:12', '0');
INSERT INTO `t_user_browse` VALUES ('1068', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '37', '2019-10-12 09:07:25', '0');
INSERT INTO `t_user_browse` VALUES ('1069', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '21', '2019-10-12 09:09:26', '0');

-- ----------------------------
-- Table structure for t_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_user_collection`;
CREATE TABLE `t_user_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏主键ID',
  `USER_ID` varchar(128) NOT NULL,
  `POST_ID` int(11) NOT NULL COMMENT '帖子ID',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '收藏状态，0启用，1删除',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `SORT_TIME` datetime NOT NULL COMMENT '排序时间 ',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_collection
-- ----------------------------
INSERT INTO `t_user_collection` VALUES ('56', '0e882d97f3be466794a368e877d6bc90', '18', '0', '2019-08-30 13:55:18', '2019-08-30 13:55:18');
INSERT INTO `t_user_collection` VALUES ('57', '4c23311a9e3441c9885bb4e79f3f9dbc', '18', '0', '2019-08-30 14:06:01', '2019-08-30 14:06:01');
INSERT INTO `t_user_collection` VALUES ('58', '4c23311a9e3441c9885bb4e79f3f9dbc', '20', '0', '2019-08-30 18:23:57', '2019-08-30 18:23:57');
INSERT INTO `t_user_collection` VALUES ('59', '0e882d97f3be466794a368e877d6bc90', '20', '0', '2019-08-31 15:34:59', '2019-08-31 15:34:59');
INSERT INTO `t_user_collection` VALUES ('60', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '21', '1', '2019-09-03 18:29:18', '2019-09-03 18:29:18');
INSERT INTO `t_user_collection` VALUES ('61', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '20', '1', '2019-09-04 08:23:52', '2019-09-04 08:23:52');
INSERT INTO `t_user_collection` VALUES ('62', '4c23311a9e3441c9885bb4e79f3f9dbc', '37', '0', '2019-09-10 20:23:02', '2019-09-10 20:23:02');
INSERT INTO `t_user_collection` VALUES ('63', 'f6a1bac7f5e345feb6da0737171f5e2b', '38', '0', '2019-10-08 11:46:15', '2019-10-08 11:46:15');
INSERT INTO `t_user_collection` VALUES ('64', '2761e95f94974c46b438e857f55b92cb', '38', '0', '2019-10-08 15:59:44', '2019-10-08 15:59:44');
INSERT INTO `t_user_collection` VALUES ('65', 'f6a1bac7f5e345feb6da0737171f5e2b', '42', '1', '2019-10-09 09:44:24', '2019-10-09 09:44:24');
INSERT INTO `t_user_collection` VALUES ('66', 'f6a1bac7f5e345feb6da0737171f5e2b', '41', '1', '2019-10-09 15:09:02', '2019-10-09 15:09:02');
INSERT INTO `t_user_collection` VALUES ('67', 'f6a1bac7f5e345feb6da0737171f5e2b', '43', '1', '2019-10-09 16:53:59', '2019-10-09 16:53:59');
INSERT INTO `t_user_collection` VALUES ('68', 'f6a1bac7f5e345feb6da0737171f5e2b', '44', '0', '2019-10-10 12:45:31', '2019-10-10 12:45:31');
INSERT INTO `t_user_collection` VALUES ('69', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '45', '1', '2019-10-11 21:40:31', '2019-10-11 21:40:31');

-- ----------------------------
-- Table structure for t_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `t_user_follow`;
CREATE TABLE `t_user_follow` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注ID',
  `FOLLOW_ID` varchar(128) NOT NULL COMMENT '关注的用户ID',
  `FAN_ID` varchar(128) NOT NULL COMMENT '粉丝ID',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '关注状态，0启用，1解除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_follow
-- ----------------------------
INSERT INTO `t_user_follow` VALUES ('1', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '2019-10-08 13:25:01', '0');
INSERT INTO `t_user_follow` VALUES ('2', 'f6a1bac7f5e345feb6da0737171f5e2b', '2761e95f94974c46b438e857f55b92cb', '2019-10-08 16:02:44', '0');

-- ----------------------------
-- Table structure for t_user_information
-- ----------------------------
DROP TABLE IF EXISTS `t_user_information`;
CREATE TABLE `t_user_information` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户消息ID',
  `START_ID` varchar(128) NOT NULL COMMENT '发送者ID',
  `RECEIVE_ID` varchar(128) NOT NULL COMMENT '接收者ID',
  `CONTENT` text NOT NULL COMMENT '消息文本',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_information
-- ----------------------------
INSERT INTO `t_user_information` VALUES ('1', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '111', '2019-09-04 13:33:53', '0');
INSERT INTO `t_user_information` VALUES ('2', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '4545', '2019-09-04 13:34:45', '0');
INSERT INTO `t_user_information` VALUES ('3', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '哈哈哈', '2019-09-09 11:17:30', '0');
INSERT INTO `t_user_information` VALUES ('4', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '哈哈哈', '2019-09-10 20:24:14', '0');
INSERT INTO `t_user_information` VALUES ('5', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '你好呀', '2019-10-08 09:50:41', '0');
INSERT INTO `t_user_information` VALUES ('6', '4c23311a9e3441c9885bb4e79f3f9dbc', 'f6a1bac7f5e345feb6da0737171f5e2b', '1111', '2019-10-08 09:53:52', '0');
INSERT INTO `t_user_information` VALUES ('7', 'f6a1bac7f5e345feb6da0737171f5e2b', '4c23311a9e3441c9885bb4e79f3f9dbc', '{\"msg\":\"请求处理异常，请稍后再试\",\"code\":\"400\",\"info\":{\"errorLocation\":\"org.springframework.web.multipart.MultipartException: Failed to parse multipart servlet request; nested exception is java.io.IOException: The temporary upload location [C:\\\\Users\\\\Administrator\\\\AppData\\\\Local\\\\Temp\\\\2\\\\tomcat.5201720812907835232.8080\\\\work\\\\Tomcat\\\\localhost\\\\ROOT] is not valid    错误位置:StandardMultipartHttpServletRequest.java:123\"}}', '2019-10-08 13:28:26', '0');
INSERT INTO `t_user_information` VALUES ('8', 'f6a1bac7f5e345feb6da0737171f5e2b', '4c23311a9e3441c9885bb4e79f3f9dbc', '能收到信息么', '2019-10-08 13:54:42', '0');
INSERT INTO `t_user_information` VALUES ('9', '2761e95f94974c46b438e857f55b92cb', '4c23311a9e3441c9885bb4e79f3f9dbc', '你好', '2019-10-08 15:59:18', '0');

-- ----------------------------
-- Table structure for t_user_operation_restrict
-- ----------------------------
DROP TABLE IF EXISTS `t_user_operation_restrict`;
CREATE TABLE `t_user_operation_restrict` (
  `USER_ID` varchar(128) NOT NULL COMMENT '用户唯一标示',
  `REPORT_NUM` int(11) NOT NULL DEFAULT '3' COMMENT '日最大举报次数',
  `PUBLISH_NUM` int(11) NOT NULL DEFAULT '5' COMMENT '日最大发布次数',
  `RESTRICT_STATE` tinyint(4) NOT NULL DEFAULT '0' COMMENT '限制状态，0不限制，1限制',
  `RESTRICT_END_TIME` datetime NOT NULL COMMENT '限制结束时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_operation_restrict
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_resonate
-- ----------------------------
DROP TABLE IF EXISTS `t_user_resonate`;
CREATE TABLE `t_user_resonate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '点赞表主键',
  `TYPE` int(11) NOT NULL COMMENT '点赞类型',
  `TARGET_ID` varchar(128) NOT NULL COMMENT '点赞的目标id',
  `USER_ID` varchar(128) NOT NULL COMMENT '点赞用户的ID',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态，0启用，1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_resonate
-- ----------------------------
INSERT INTO `t_user_resonate` VALUES ('158', '1', '20', '4c23311a9e3441c9885bb4e79f3f9dbc', '2019-08-31 12:17:12', '0');
INSERT INTO `t_user_resonate` VALUES ('159', '1', '21', '4c23311a9e3441c9885bb4e79f3f9dbc', '2019-08-31 15:53:20', '0');
INSERT INTO `t_user_resonate` VALUES ('160', '1', '20', 'fe080666-88f7-4b5c-96e9-b2b3dc550ada', '2019-09-03 18:32:19', '1');
INSERT INTO `t_user_resonate` VALUES ('161', '1', '37', '4c23311a9e3441c9885bb4e79f3f9dbc', '2019-09-10 20:25:38', '0');
INSERT INTO `t_user_resonate` VALUES ('162', '1', '38', 'f6a1bac7f5e345feb6da0737171f5e2b', '2019-10-08 15:05:45', '0');
INSERT INTO `t_user_resonate` VALUES ('163', '1', '44', '2761e95f94974c46b438e857f55b92cb', '2019-10-08 15:56:20', '0');
INSERT INTO `t_user_resonate` VALUES ('164', '1', '44', '81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '2019-10-12 10:13:07', '0');

-- ----------------------------
-- Table structure for t_visitor
-- ----------------------------
DROP TABLE IF EXISTS `t_visitor`;
CREATE TABLE `t_visitor` (
  `USER_ID` varchar(255) NOT NULL COMMENT '系统用户唯一标示',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_visitor
-- ----------------------------
INSERT INTO `t_visitor` VALUES ('0f57ceff-93e5-48c4-9099-6dbeddbcb004', '2019-10-08 09:00:37');
INSERT INTO `t_visitor` VALUES ('18673c18-cf35-4779-88cb-cb6d000f9e02', '2019-09-01 11:02:38');
INSERT INTO `t_visitor` VALUES ('1c016125-9004-46cc-86b6-4d9bd37f8a06', '2019-09-30 21:41:15');
INSERT INTO `t_visitor` VALUES ('218fe87d-db6b-48ce-a408-83287e51b7e8', '2019-08-30 18:06:53');
INSERT INTO `t_visitor` VALUES ('306ab4cc-0e4e-46ee-bdc7-c89eca232dd9', '2019-09-03 18:10:00');
INSERT INTO `t_visitor` VALUES ('3f4ae843-3fe5-47f3-8779-13d1465f6b30', '2019-08-31 15:49:17');
INSERT INTO `t_visitor` VALUES ('44630af1-3ad1-4f3d-9c7e-823e68da38f9', '2019-09-04 12:45:08');
INSERT INTO `t_visitor` VALUES ('538593c3-f0aa-41e1-bfcb-573973029f7f', '2019-09-02 17:35:16');
INSERT INTO `t_visitor` VALUES ('54d9030c-dd0d-42b0-80e5-5f298a4682c7', '2019-08-30 14:03:48');
INSERT INTO `t_visitor` VALUES ('567a6322-3e6f-44cd-9f32-eef678e1971c', '2019-09-10 20:36:34');
INSERT INTO `t_visitor` VALUES ('7c871e7e-e558-4761-8c03-a5adc2f4ee46', '2019-08-30 17:53:43');
INSERT INTO `t_visitor` VALUES ('81ba77f3-2be2-4d90-80a1-447c3962df16', '2019-08-30 13:52:03');
INSERT INTO `t_visitor` VALUES ('81e4d4fe-a2fb-4a32-9fe2-707f03a89e73', '2019-10-11 17:59:26');
INSERT INTO `t_visitor` VALUES ('880e26ad-bb38-40ad-8b01-dc245c85dd4c', '2019-10-12 09:30:25');
INSERT INTO `t_visitor` VALUES ('ab4611fd-d4c8-4f81-a4e6-ac191602f3ac', '2019-10-08 09:49:04');
INSERT INTO `t_visitor` VALUES ('ac04bc63-4daf-43f4-9a4d-caa4bee3a66c', '2019-08-30 17:56:02');
INSERT INTO `t_visitor` VALUES ('e4050bf4-ba62-42f3-85a7-92d2996ef207', '2019-08-30 17:38:46');
INSERT INTO `t_visitor` VALUES ('e7ee6923-9625-4c46-b00a-8a3e0f2f4878', '2019-09-02 17:45:22');
INSERT INTO `t_visitor` VALUES ('f27cc768-dc5f-4226-b20a-7eb916a7e5f7', '2019-09-06 17:34:51');
INSERT INTO `t_visitor` VALUES ('f3dd6827-0ebf-4dc9-9871-0c1e02ca28dd', '2019-09-04 13:24:50');
INSERT INTO `t_visitor` VALUES ('f4593448-c139-4acf-8691-d6000afb566f', '2019-09-03 17:54:36');
INSERT INTO `t_visitor` VALUES ('f9c9edf1-fb89-48a5-81b4-e92f0b0e89b1', '2019-09-30 09:32:01');
INSERT INTO `t_visitor` VALUES ('fe080666-88f7-4b5c-96e9-b2b3dc550ada', '2019-09-03 18:23:06');

-- ----------------------------
-- Table structure for t_wx_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_permission`;
CREATE TABLE `t_wx_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_type` int(11) NOT NULL DEFAULT '0',
  `permission_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_wx_permission
-- ----------------------------
INSERT INTO `t_wx_permission` VALUES ('1', '0', 'wx:follow:userList');
INSERT INTO `t_wx_permission` VALUES ('2', '0', 'wx:follow:fansList');
INSERT INTO `t_wx_permission` VALUES ('3', '0', 'wx:comment:del');
INSERT INTO `t_wx_permission` VALUES ('4', '0', 'wx:comment:list');
INSERT INTO `t_wx_permission` VALUES ('5', '0', 'wx:post:del');
INSERT INTO `t_wx_permission` VALUES ('6', '0', 'wx:browse:postList');
INSERT INTO `t_wx_permission` VALUES ('7', '0', 'wx:browse:userList');
INSERT INTO `t_wx_permission` VALUES ('8', '0', 'wx:collection:list');
INSERT INTO `t_wx_permission` VALUES ('9', '0', 'wx:user:update');
INSERT INTO `t_wx_permission` VALUES ('10', '0', 'wx:follow:update');
INSERT INTO `t_wx_permission` VALUES ('11', '0', 'wx:post:update');
INSERT INTO `t_wx_permission` VALUES ('12', '0', 'wx:post:info');
INSERT INTO `t_wx_permission` VALUES ('13', '0', 'wx:like:userList');
INSERT INTO `t_wx_permission` VALUES ('14', '0', 'wx:like:postList');
INSERT INTO `t_wx_permission` VALUES ('15', '0', 'wx:report:add');
INSERT INTO `t_wx_permission` VALUES ('16', '1', 'wx:comment:add');
INSERT INTO `t_wx_permission` VALUES ('17', '1', 'wx:post:add');
INSERT INTO `t_wx_permission` VALUES ('18', '1', 'wx:collection:add');
INSERT INTO `t_wx_permission` VALUES ('19', '1', 'wx:post:shelf');

-- ----------------------------
-- Table structure for t_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_user`;
CREATE TABLE `t_wx_user` (
  `USER_ID` varchar(128) NOT NULL COMMENT '系统用户ID',
  `OPEN_ID` varchar(128) NOT NULL COMMENT '微信openId',
  `UNION_ID` varchar(128) NOT NULL COMMENT '微信唯一标示',
  `WX_AVATAR_URL` varchar(255) NOT NULL COMMENT '微信用户头像',
  `WX_NICK_NAME` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '微信名称',
  `WX_GENDER` int(10) NOT NULL DEFAULT '1' COMMENT '微信性别,男性为1',
  `WX_CITY` varchar(100) DEFAULT NULL COMMENT '市',
  `WX_PROVINCE` varchar(100) DEFAULT NULL COMMENT '省',
  `WX_COUNTRY` varchar(100) DEFAULT NULL COMMENT '国家',
  `DEV_FANS` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝偏移量',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `IS_DEL` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  `SUMMARY` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wx_user
-- ----------------------------
INSERT INTO `t_wx_user` VALUES ('0e882d97f3be466794a368e877d6bc90', 'owmp45NxQ25uh0Q10Zt9qOp9fMXQ', 'o-xzPwMuSxACBPRZ5pDjA7FLpXhw', 'https://wx.qlogo.cn/mmopen/vi_32/InNUIN15cVtnWLicic7A2EXibkv5x3C3dDBCal0P542uybT18q9mWd9P4q9nzjia0icWAMNEVVachFYT3HESLzPo8RA/132', '噬云', '0', null, '', null, '0', '2019-08-30 13:54:03', '2019-08-30 13:54:03', '0', null);
INSERT INTO `t_wx_user` VALUES ('2761e95f94974c46b438e857f55b92cb', 'owmp45DMikwnr2SEx1C5Aq_KjIs4', 'o-xzPwIkxZC-pe4za_NOucz_ihSg', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqAQibMIJsiad0onZFNmjxfF9eibKTKYHtib0J0aX1tqIyBahf3MIxBsNofWfKVP6zEiar31Zq4Hz0UwFw/132', '皮格马利翁效应', '1', null, '中国', null, '0', '2019-10-08 15:22:24', '2019-10-08 15:22:24', '0', null);
INSERT INTO `t_wx_user` VALUES ('4c23311a9e3441c9885bb4e79f3f9dbc', 'owmp45Gpjybfn15q-frEEE9KZ_wI', 'o-xzPwGV4lpJUZvsaB9ki2laPO5I', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epYB4Piaurngh31L1GyMJhQor4tYUNAic4lGhbZJZxicM6rINbiaicyo3nO6gW7Q4icuAuXIrWvr7H1M3gg/132', '平凡?', '1', null, '中国', null, '0', '2019-08-30 14:05:39', '2019-08-30 14:05:39', '0', null);
INSERT INTO `t_wx_user` VALUES ('f6a1bac7f5e345feb6da0737171f5e2b', 'owmp45LvrAjcfSPPVf16htxHGmp0', 'o-xzPwDchHpL5JNel34fgdSyVgZg', 'https://wx.qlogo.cn/mmopen/vi_32/lyFAqR0AcYbVtGIy2mgicj1QTVMs52ib4JH6CSHS6tTgsqrFbLock28pYCleck8N0X9L9f9ichODHhQSZwMPlLg3w/132', '华', '1', null, '中国', null, '0', '2019-09-03 18:20:10', '2019-09-03 18:20:10', '0', '我是一个大傻逼');
