/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : question_answer

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-10-12 11:01:15
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
-- Table structure for t_activity
-- ----------------------------
DROP TABLE IF EXISTS `t_activity`;
CREATE TABLE `t_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程活动表主键',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `activity_name` varchar(32) NOT NULL COMMENT '活动名称',
  `activity_picture` varchar(255) DEFAULT NULL COMMENT '活动图片地址',
  `register_start_time` datetime NOT NULL COMMENT '报名开始时间',
  `register_end_time` datetime NOT NULL COMMENT '报名结束时间',
  `start_time` datetime NOT NULL COMMENT '开课时间',
  `amount` int(11) NOT NULL COMMENT '人数',
  `question_bank_id` int(11) DEFAULT NULL COMMENT '题库主键',
  `is_rec` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为推荐课程，0否，1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_activity
-- ----------------------------

-- ----------------------------
-- Table structure for t_activity_item
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_item`;
CREATE TABLE `t_activity_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动明细表主键',
  `activity_id` int(11) NOT NULL,
  `sub_activity` varchar(32) NOT NULL COMMENT '活动日程内容',
  `question_bank_section_id` int(11) NOT NULL COMMENT '当天题库章节id',
  `activity_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_activity_item
-- ----------------------------

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '滚动栏id',
  `banner_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '名称',
  `banner_picture` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '滚动栏图片地址',
  `banner_link` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '滚动栏链接',
  `sort_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '排序时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('1', '111', '13213', '5456', '2019-10-11 15:21:27', '0');

-- ----------------------------
-- Table structure for t_course_base
-- ----------------------------
DROP TABLE IF EXISTS `t_course_base`;
CREATE TABLE `t_course_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程表主键',
  `course_name` varchar(32) NOT NULL COMMENT '课程名称',
  `course_type` int(11) DEFAULT NULL COMMENT '课程类别',
  `course_picture` varchar(255) NOT NULL COMMENT '课程图片',
  `summary` text NOT NULL COMMENT '课程介绍',
  `state` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '状态',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_course_base
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_type
-- ----------------------------
DROP TABLE IF EXISTS `t_course_type`;
CREATE TABLE `t_course_type` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '课程类别id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_course_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_examination_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_examination_paper`;
CREATE TABLE `t_examination_paper` (
  `id` int(11) NOT NULL COMMENT '题库章节表主键',
  `question_bank_id` int(11) NOT NULL COMMENT '题库id',
  `examination_name` varchar(32) NOT NULL COMMENT '试卷名称',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1是0否 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_examination_paper
-- ----------------------------

-- ----------------------------
-- Table structure for t_examination_question
-- ----------------------------
DROP TABLE IF EXISTS `t_examination_question`;
CREATE TABLE `t_examination_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '章节题目表主键',
  `examination_paper_id` int(11) NOT NULL COMMENT '考卷id',
  `question_id` int(11) NOT NULL COMMENT '题目id',
  `score` int(4) NOT NULL COMMENT '题目分值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_examination_question
-- ----------------------------

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目表主键',
  `question_content` varchar(255) NOT NULL COMMENT '问题内容',
  `type` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '题目类型',
  `is_multi_option` int(11) NOT NULL COMMENT '是否为多选题，1是0否',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，1是，0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_question
-- ----------------------------

-- ----------------------------
-- Table structure for t_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `t_question_bank`;
CREATE TABLE `t_question_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题库表主键',
  `question_bank_name` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '题库名称',
  `state` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '题库状态',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_question_bank
-- ----------------------------

-- ----------------------------
-- Table structure for t_question_label
-- ----------------------------
DROP TABLE IF EXISTS `t_question_label`;
CREATE TABLE `t_question_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目标签表主键',
  `question_id` int(11) NOT NULL COMMENT '题目id',
  `label_content` varchar(255) NOT NULL COMMENT '题目标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_question_label
-- ----------------------------

-- ----------------------------
-- Table structure for t_question_option
-- ----------------------------
DROP TABLE IF EXISTS `t_question_option`;
CREATE TABLE `t_question_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目分值表主键',
  `question_id` int(11) NOT NULL COMMENT '题目id',
  `option_sort` varchar(5) NOT NULL COMMENT '选项顺序',
  `option_content` varchar(128) CHARACTER SET utf8mb4 NOT NULL COMMENT '选项内容',
  `is_multi_option` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否多选，1是0否',
  `is_correct` int(11) NOT NULL DEFAULT '0' COMMENT '是否为正确选项,1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_question_option
-- ----------------------------

-- ----------------------------
-- Table structure for t_startup_page
-- ----------------------------
DROP TABLE IF EXISTS `t_startup_page`;
CREATE TABLE `t_startup_page` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '启动页主键',
  `startup_page_url` varchar(255) NOT NULL COMMENT '页面图片地址',
  `sort_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '排序时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1是0否 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_startup_page
-- ----------------------------

-- ----------------------------
-- Table structure for t_system_introduce
-- ----------------------------
DROP TABLE IF EXISTS `t_system_introduce`;
CREATE TABLE `t_system_introduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程体系介绍',
  `system_introduce_picture` varchar(255) NOT NULL COMMENT '体系介绍图片',
  `introduct_content` varchar(255) NOT NULL COMMENT '课程体系简介',
  `first_column` varchar(10) DEFAULT NULL COMMENT '介绍要点',
  `first_column_content` varchar(255) DEFAULT NULL COMMENT '介绍要点详情',
  `second_column` varchar(10) DEFAULT NULL,
  `second_column_content` varchar(255) DEFAULT NULL,
  `final_column` varchar(10) DEFAULT NULL,
  `final_column_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_system_introduce
-- ----------------------------

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL,
  `course_type_name` varchar(32) NOT NULL COMMENT '课程类型',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_user_answer`;
CREATE TABLE `t_user_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `question_bank_section_id` int(11) NOT NULL COMMENT '题库章节id',
  `question_id` int(11) NOT NULL COMMENT '题目id',
  `option_id` int(11) NOT NULL COMMENT '选项id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_answer
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_attend
-- ----------------------------
DROP TABLE IF EXISTS `t_user_attend`;
CREATE TABLE `t_user_attend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '签到表主键',
  `user_id` varchar(128) NOT NULL COMMENT '用户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '签到时间',
  `is_attend` int(11) NOT NULL DEFAULT '1' COMMENT '是否签到，1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_attend
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_register
-- ----------------------------
DROP TABLE IF EXISTS `t_user_register`;
CREATE TABLE `t_user_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `activity_id` int(11) NOT NULL COMMENT '课程活动id',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `real_name` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '真实姓名',
  `mobile_phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  `state` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_register
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_score
-- ----------------------------
DROP TABLE IF EXISTS `t_user_score`;
CREATE TABLE `t_user_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128) NOT NULL,
  `examination_paper_id` int(11) NOT NULL COMMENT '题库章节id',
  `score` int(4) NOT NULL COMMENT '答题总分',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_user`;
CREATE TABLE `t_wx_user` (
  `user_id` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '系统用户ID',
  `open_id` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '微信openId',
  `union_id` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '微信唯一标示',
  `wx_avatar_url` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '微信用户头像',
  `wx_nick_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '微信名称',
  `wx_gender` int(10) NOT NULL DEFAULT '1' COMMENT '微信性别,男性为1',
  `wx_city` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '市',
  `wx_province` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '省',
  `wx_country` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '国家',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0正常，1删除',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_wx_user
-- ----------------------------
