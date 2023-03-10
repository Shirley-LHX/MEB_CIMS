/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : edums

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 10/07/2020 09:47:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NULL DEFAULT NULL COMMENT '类别号',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `del_flg` int(1) NULL DEFAULT NULL COMMENT '0表示已删除，1表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 1, '物理', 1);
INSERT INTO `category` VALUES (2, 2, '化学', 1);
INSERT INTO `category` VALUES (3, 3, '计算机', 1);
INSERT INTO `category` VALUES (4, 4, '体育', 1);
INSERT INTO `category` VALUES (5, 5, '生物', 1);
INSERT INTO `category` VALUES (6, 6, '其他', 1);

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书名',
  `ISBN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一使用07年新颁布的13位数字',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `publish_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版时间',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '类别',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片url',
  `create_time` date NULL DEFAULT NULL COMMENT '上架时间',
  `create_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上架管理员',
  `update_pre_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上一次修改信息的管理员',
  `del_flg` int(1) NULL DEFAULT NULL,
  `bor_flg` int(10) NULL DEFAULT NULL,
  `admin_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (7, '天平', '123456', '张三', '称重', '1234', '2020-07-17', 2, 'aedc4930-897e-4e2d-829e-d7fde6e580cf.jpg', '2020-07-09', 'admin', 'admin', 1, NULL, NULL);
INSERT INTO `equipment` VALUES (8, '投影仪', '666666', '王德法', '投影用', '2333333', '2020-07-17', 3, 'b252f0be-5374-4138-a449-635260286a0e.jpg', '2020-07-09', 'admin', 'admin', 1, NULL, NULL);

-- ----------------------------
-- Table structure for personnelchange
-- ----------------------------
DROP TABLE IF EXISTS `personnelchange`;
CREATE TABLE `personnelchange`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号',
  `TeacherID` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '教师ID',
  `Type` enum('调职','降职','升职','离职','入职') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异动类型',
  `PreviousTitle` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前职称',
  `PreviousWorkplace` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '前工作单位',
  `CurrentTitle` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后职称',
  `CurrentWorkplace` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后工作单位',
  `Create_time` date NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `TeacherIDfk`(`TeacherID`) USING BTREE,
  CONSTRAINT `personnelchange_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `teacherinformation` (`TeacherID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personnelchange
-- ----------------------------
INSERT INTO `personnelchange` VALUES (1, 1, '入职', '', '', '二级教师', '实验高中', '2020-07-10');
INSERT INTO `personnelchange` VALUES (42, 1, '调职', '三级教师', '实验高中', '三级教师', '新城高中', '2020-07-12');
INSERT INTO `personnelchange` VALUES (43, 10, '入职', '', '', '二级教师', '新城高中', '2020-07-10');
INSERT INTO `personnelchange` VALUES (44, 10, '升职', '三级教师', '新城高中', '二级教师', '新城高中', '2020-07-12');

-- ----------------------------
-- Table structure for stueval
-- ----------------------------
DROP TABLE IF EXISTS `stueval`;
CREATE TABLE `stueval`  (
  `id_stu` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `virtue_stu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `civicliteracy_stu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `learning_stu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `communicate_stu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attend_stu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classbehavior_stu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_stu`) USING BTREE,
  CONSTRAINT `stueval_ibfk_1` FOREIGN KEY (`id_stu`) REFERENCES `stumessage` (`id_stu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stueval
-- ----------------------------
INSERT INTO `stueval` VALUES (20201001, 'A', 'B', 'A', 'A', 'B', 'A');
INSERT INTO `stueval` VALUES (20201002, 'C', 'D', 'A', 'C', 'A', 'B');
INSERT INTO `stueval` VALUES (20201003, 'A', 'A', 'B', 'B', 'A', 'C');

-- ----------------------------
-- Table structure for stuhealth
-- ----------------------------
DROP TABLE IF EXISTS `stuhealth`;
CREATE TABLE `stuhealth`  (
  `id_stu` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `height` decimal(5, 2) NULL DEFAULT NULL,
  `weight` decimal(5, 2) NULL DEFAULT NULL,
  `disease` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_stu`) USING BTREE,
  CONSTRAINT `stuhealth_ibfk_1` FOREIGN KEY (`id_stu`) REFERENCES `stumessage` (`id_stu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stuhealth
-- ----------------------------
INSERT INTO `stuhealth` VALUES (20201001, 1.80, 48.90, '健康，无患病记录');
INSERT INTO `stuhealth` VALUES (20201002, 1.68, 50.00, '先天性红斑狼疮');
INSERT INTO `stuhealth` VALUES (20201003, 1.78, 46.90, '健康的，无患病记录');

-- ----------------------------
-- Table structure for stumessage
-- ----------------------------
DROP TABLE IF EXISTS `stumessage`;
CREATE TABLE `stumessage`  (
  `id_stu` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `name_stu` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classNum_stu` bigint(20) NULL DEFAULT NULL,
  `IDcard_stu` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterdate_stu` date NULL DEFAULT NULL,
  `gradate` date NULL DEFAULT NULL,
  `phone_stu` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_stu`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumessage
-- ----------------------------
INSERT INTO `stumessage` VALUES (20201001, '张三', 3, '100300467889078893', '第一高中', '2018-09-01', '2021-06-01', '15624378906');
INSERT INTO `stumessage` VALUES (20201002, '李四', 4, '100300467896872534', '第二高中', '2017-09-01', '2020-06-01', '19807652436');
INSERT INTO `stumessage` VALUES (20201003, '王五', 7, '100200987645350086', '第一高中', '2018-09-01', '2020-06-01', '19809872346');

-- ----------------------------
-- Table structure for stuscore
-- ----------------------------
DROP TABLE IF EXISTS `stuscore`;
CREATE TABLE `stuscore`  (
  `id_stu` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term` int(11) NOT NULL DEFAULT 1,
  `chinese` int(11) NULL DEFAULT NULL,
  `math` int(11) NULL DEFAULT NULL,
  `english` int(11) NULL DEFAULT NULL,
  `physical` int(11) NULL DEFAULT NULL,
  `chemical` int(11) NULL DEFAULT NULL,
  `biology` int(11) NULL DEFAULT NULL,
  `history` int(11) NULL DEFAULT NULL,
  `policy` int(11) NULL DEFAULT NULL,
  `geography` int(11) NULL DEFAULT NULL,
  `gym` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_stu`, `term`) USING BTREE,
  INDEX `id_stu`(`id_stu`) USING BTREE,
  CONSTRAINT `stuscore_ibfk_1` FOREIGN KEY (`id_stu`) REFERENCES `stumessage` (`id_stu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stuscore
-- ----------------------------
INSERT INTO `stuscore` VALUES (20201001, 1, 89, 78, 96, 88, 66, 90, 95, 67, 56, 100);
INSERT INTO `stuscore` VALUES (20201001, 2, 68, 97, 56, 98, 60, 70, 88, 99, 98, 97);
INSERT INTO `stuscore` VALUES (20201002, 1, 78, 98, 56, 80, 87, 89, 70, 77, 97, 89);

-- ----------------------------
-- Table structure for teacherinformation
-- ----------------------------
DROP TABLE IF EXISTS `teacherinformation`;
CREATE TABLE `teacherinformation`  (
  `TeacherID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '教师编号',
  `TeacherName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `TeacherGender` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `TeacherAge` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `TeacherIDNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `TeacherEducation` enum('大专','本科','硕士','博士') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历，有四种',
  `TeacherTeachAge` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '教龄',
  `TeachUnit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在单位（学校）',
  `TeachSubject` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授课科目',
  `Achievement` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '科研成果',
  `TitleName` enum('正高级教师','高级教师','三级教师','二级教师','一级教师') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`TeacherID`) USING BTREE,
  INDEX `TitleNamefk`(`TitleName`) USING BTREE,
  CONSTRAINT `teacherinformation_ibfk_1` FOREIGN KEY (`TitleName`) REFERENCES `title` (`TitleName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacherinformation
-- ----------------------------
INSERT INTO `teacherinformation` VALUES (1, '张三', '男', 28, '111111111111111', '本科', 5, '新城高中', '语文', '无', '三级教师');
INSERT INTO `teacherinformation` VALUES (10, '王五', '男', 35, '22222222222222', '本科', 7, '新城高中', '数学', '无', '二级教师');

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title`  (
  `TitleName` enum('正高级教师','高级教师','三级教师','二级教师','一级教师') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职称名',
  `BasicSalary` decimal(10, 2) NULL DEFAULT NULL COMMENT '基础工资/月',
  `GradeSalary` decimal(10, 2) NULL DEFAULT NULL COMMENT '薪级工资/月',
  `PerformanceSalary` decimal(10, 2) NULL DEFAULT NULL COMMENT '效绩工资/月',
  PRIMARY KEY (`TitleName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('正高级教师', 4500.00, 700.00, 800.00);
INSERT INTO `title` VALUES ('高级教师', 4000.00, 600.00, 650.00);
INSERT INTO `title` VALUES ('三级教师', 3000.00, 300.00, 300.00);
INSERT INTO `title` VALUES ('二级教师', 3200.00, 400.00, 450.00);
INSERT INTO `title` VALUES ('一级教师', 3400.00, 500.00, 500.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '要求用户名唯一，不能包含特殊字符',
  `Password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '要求密码大于6位',
  `Avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `Username`(`Username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (22, 'admin', '123456', 'ebaea925-6e25-4b8d-bcd7-ada11a00cf19.jpg', '123456@789.edu');

SET FOREIGN_KEY_CHECKS = 1;
