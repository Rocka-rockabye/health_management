/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : health-management

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 10/05/2024 10:47:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户名',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '性别：M为男性，F为女性',
  `age` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电话',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '郑小俊', 'M', '32', '123124123', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (4, '郑老师', 'M', '22', '12312512512', '1234', 'ROLE_TEACHER');
INSERT INTO `admin` VALUES (5, 'admin', 'M', '22', '1231241241', 'zhengjiajun.qq', 'ROLE_ADMIN');
INSERT INTO `admin` VALUES (6, '张三', 'M', '23', '18011823456', '1234', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (9, '李四', 'M', '20', '12312515125', '123456', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (10, '钱嘉伦', 'M', '45', '172-5182-1867', '1zRXcNhKUS', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (11, '阎秀英', 'F', '32', '142-4488-7331', 'hT00e8XnOD', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (12, '于云熙', 'F', '12', '21-526-8248', 'jyONjFX15q', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (13, '侯震南', 'M', '25', '21-7003-2183', 'OhYXFlv0r4', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (14, '韦震南', 'M', '45', '10-639-9313', 'DRobkVoZnu', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (15, '陶嘉伦', 'M', '26', '188-6775-8777', 'zVt2wRgy2z', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (16, '沈璐', 'F', '54', '182-6800-2562', 'nzRxNgI6OT', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (17, '胡子韬', 'M', '64', '178-2878-0637', 'Dw0I69mcEA', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (18, '程睿', 'M', '66', '152-0612-6033', 'ZUx8GISELn', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (19, '傅宇宁', 'M', '11', '171-4128-6024', 'bkryO3SrJn', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (20, '陶震南', 'M', '53', '21-1212-5649', 'u2GH62p8iX', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (21, '吴嘉伦', 'M', '31', '769-797-3863', 'Y6RRkP0F9k', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (22, '卢睿', 'M', '12', '755-582-7661', 'X4BwzIjbCG', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (23, '钱宇宁', 'M', '24', '181-0903-8343', 'io8J52GH8M', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (24, '高嘉伦', 'M', '62', '769-093-9997', '7sVmx8YuPL', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (25, '范晓明', 'M', '36', '156-2363-6786', 'oFCBeDHgry', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (26, '严睿', 'M', '35', '10-3028-2771', 'dFRIC2PVN4', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (27, '秦子韬', 'M', '36', '189-3147-0586', 'qCfDM8rb1W', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (28, '尹秀英', 'F', '64', '163-4749-3723', 'SFrRVQUpWt', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (29, '余岚', 'F', '24', '186-1385-9009', 'E9XdJmSfc1', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (30, '田致远', 'M', '23', '158-1675-8236', '0RpquOuSFH', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (31, '常宇宁', 'M', '22', '21-851-9431', 'h0oHVs1Ubs', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (32, '向嘉伦', 'M', '54', '20-423-6345', 'dMpRJD72FD', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (33, '郑云熙', 'M', '34', '20-904-6155', 'RlqkSwbGkO', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (34, '顾子韬', 'M', '35', '20-660-0106', 'h00ufKkWGa', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (35, '谭詩涵', 'F', '31', '142-1810-2494', 'EHwdWBVyA8', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (36, '杨杰宏', 'M', '34', '162-3646-3189', 'LAHx3311N5', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (37, '郭宇宁', 'M', '54', '20-3050-0989', 'aYgkj1AAQ2', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (38, '田宇宁', 'M', '65', '760-6991-0606', 'Or0hkqokjt', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (39, '余云熙', 'M', '55', '20-118-8079', '28Df18MbwZ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (40, '黎震南', 'M', '65', '760-364-3095', '1ZdRUhu59p', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (41, '胡子韬', 'M', '52', '769-5560-7831', 'oCbZRJo1bp', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (42, '朱子韬', 'M', '33', '131-7821-7464', 'HhhcnWhvBu', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (43, '吴岚', 'F', '55', '20-3546-3994', 'ah4yP9rmeR', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (44, '孟詩涵', 'F', '32', '20-240-6358', 'GwZ7qYYT37', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (45, '汤詩涵', 'F', '51', '192-8753-7636', 'Jzr0I28i3W', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (46, '顾子异', 'M', '12', '150-3547-0436', 'i30hMEdo4j', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (47, '赵杰宏', 'M', '16', '755-626-7046', '7VdunGM7yI', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (48, '陈云熙', 'M', '61', '28-361-3848', 'PWQlXkklRi', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (49, '严璐', 'F', '33', '20-2502-7083', 'fSGJdlznag', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (50, '黄杰宏', 'M', '33', '191-6340-8197', 'P6Us8u4TqZ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (51, '彭杰宏', 'M', '12', '769-876-9089', '14DYmoF7Ci', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (52, '向晓明', 'M', '64', '755-145-9249', 'nfoFIIIAeA', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (53, '孔詩涵', 'F', '66', '161-4081-3488', 'CgcOf4Z0hM', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (54, '萧杰宏', 'M', '21', '20-140-4123', '6KvGiaTxx5', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (55, '曹震南', 'M', '12', '28-151-9353', 'O7f85Lik8W', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (56, '钟睿', 'M', '42', '10-756-5049', 'sxDDMT0OUJ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (57, '叶晓明', 'M', '54', '199-4805-8606', 'dEY1KlJjrr', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (58, '魏秀英', 'F', '24', '769-5532-7986', 'KcRGukEDvX', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (59, '石子异', 'M', '61', '28-0973-5543', 'LTNQV2La73', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (60, '吴詩涵', 'F', '24', '143-3462-7277', 'ZR3MYVYGxP', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (61, '周詩涵', 'F', '43', '10-3470-3217', 'AWBYwPU8B2', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (62, '苏嘉伦', 'M', '32', '198-2144-4045', 'TTGd7PKJ8p', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (63, '赵子异', 'M', '51', '194-7816-1066', 'nzVWqK4PF0', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (64, '谭子异', 'M', '15', '10-938-5280', 'NpW5OY9mbz', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (65, '陶杰宏', 'M', '42', '148-7901-0581', 'QTMpzTCvBz', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (66, '孟子韬', 'M', '42', '760-907-3264', 'UcMnESq7Tt', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (67, '于安琪', 'F', '21', '10-070-1605', 'nQCnNQS3Yt', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (68, '赵晓明', 'M', '13', '163-8690-5431', 'sW3uBwj397', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (69, '戴子异', 'M', '34', '152-0465-4765', 'WF70szzTnQ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (70, '冯子异', 'M', '63', '137-2074-6877', 'TYhtT1lI9f', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (71, '郑璐', 'F', '63', '198-7393-6337', 'cpouJX4M2F', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (72, '潘子韬', 'M', '24', '173-3015-3751', 'inOw7QRC9Z', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (73, '高晓明', 'M', '56', '760-8892-4104', 'Ug6yfe8r7T', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (74, '贾杰宏', 'M', '23', '21-3165-8705', 'Tv1SEpTaSw', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (75, '邵杰宏', 'M', '46', '20-516-1581', 'XQ3mwClopJ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (76, '周杰宏', 'M', '56', '760-8899-2279', '1eJf1OFmL0', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (77, '邱子韬', 'M', '64', '187-2082-0990', 'rWLVQHtiP2', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (78, '郑震南', 'M', '56', '156-7678-3579', 'pDz7CLwpSv', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (79, '范震南', 'M', '15', '760-2791-8057', 'N0ksA3epZF', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (80, '曹璐', 'F', '55', '20-186-5131', 'fBBf6uXVvf', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (81, '萧岚', 'F', '53', '160-1220-2265', 'Cp4rll8QOn', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (82, '严睿', 'M', '66', '141-4993-2219', 'i6ADVMokHG', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (83, '罗詩涵', 'F', '36', '180-3163-7790', 'f4uESN4VRa', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (84, '卢宇宁', 'M', '21', '182-9265-6672', '7NKgNgoB24', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (85, '董晓明', 'M', '63', '20-5121-0891', 'FDE0aUUJ5q', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (86, '冯震南', 'M', '62', '145-8988-5503', 'wieSfnI4UW', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (87, '常子异', 'M', '36', '146-7780-8764', 'rOoTnWgQ02', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (88, '徐致远', 'M', '24', '760-8426-2042', '1rLYtK6QQQ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (89, '侯詩涵', 'F', '16', '192-1088-6310', 'Rb7mSlFgvK', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (90, '朱安琪', 'F', '15', '136-9492-6842', 'dusDwOWdnp', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (91, '梁安琪', 'F', '65', '21-105-1257', 'pQn7nNB6GE', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (92, '吕宇宁', 'M', '45', '193-0886-6747', '4zCqVof2qN', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (93, '韦致远', 'M', '33', '172-6965-5153', 'sJJ4mi58hL', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (94, '汤子韬', 'M', '14', '180-9789-1489', 'wCFv5330Qq', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (95, '马嘉伦', 'M', '23', '185-3410-5216', 'f9GcmHSl8M', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (96, '罗睿', 'M', '56', '167-4782-6390', 'cgZ2PigPPl', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (97, '汪晓明', 'M', '51', '133-1820-6563', 'Z0Dc0BqSiZ', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (98, '吴宇宁', 'M', '21', '186-2503-7433', 'RYfhFgZlfU', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (99, '汪秀英', 'F', '56', '134-2123-2707', 'bzVDkSseTl', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (100, '邱嘉伦', 'M', '12', '755-9247-8198', 'BeNpDU9aCM', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (101, '廖秀英', 'F', '25', '139-7359-6865', 'ulXFpcOdcz', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (102, '曹震南', 'M', '14', '196-4727-8875', 'eYSXpKjFIA', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (103, '贾岚', 'F', '45', '28-403-7062', '3iAlqIssQo', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (104, '魏宇宁', 'M', '51', '10-0545-2334', 'W8GBsdpNvU', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (105, '魏詩涵', 'F', '31', '769-618-7292', 'PBlXs8jnhY', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (106, '孟詩涵', 'F', '23', '162-3900-7940', 'Gq1InnKciC', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (107, '任杰宏', 'M', '15', '21-5541-5733', 'aUMx4YpHIs', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (108, '吕震南', 'M', '45', '769-146-4144', 'TF7rTljsbh', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (109, '傅嘉伦', 'M', '45', '21-420-0723', 'a819ipqlu7', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (111, '王五', 'M', '15', '12321512412', '123456', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (112, '小三', 'M', '11', '1231243124', '123456', 'ROLE_TEACHER');
INSERT INTO `admin` VALUES (114, '郑大俊', 'M', '12', '123123', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (115, '老刘', 'M', '1', '111', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (117, '郑小俊1', 'M', '11', '123123123', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (118, '郑大俊1', 'F', '1', '12', '123', 'ROLE_TEACHER');
INSERT INTO `admin` VALUES (128, 'asd', 'F', '32', '123123123', '123', 'ROLE_TEACHER');
INSERT INTO `admin` VALUES (129, 'qwe', 'F', '22', '123213123', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (140, 'xiaoming', 'M', '22', '13232323213', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (141, 'test', 'F', '22', 'adasdasd', '123', 'ROLE_STUDENT');
INSERT INTO `admin` VALUES (142, 'wqe', 'F', '', '', '123456', 'ROLE_TEACHER');

-- ----------------------------
-- Table structure for audit
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userId` int NULL DEFAULT NULL COMMENT '用户ID',
  `studentId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学号',
  `majorClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '专业班级',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核意见',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '审核表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES (1, 1, '202010620100', '大数据1', '审核不通过', '未写明班级', '2024-03-13 19:39:13');
INSERT INTO `audit` VALUES (2, 6, '202010620101', '大数据B2班', '审核通过', '无', '2024-03-14 09:57:53');
INSERT INTO `audit` VALUES (3, 115, '20201231203', '土木工程', '审核通过', '无', '2024-04-17 16:03:42');
INSERT INTO `audit` VALUES (8, 117, '312', '312', '审核不通过', '信息不完整', '2024-04-17 16:18:22');
INSERT INTO `audit` VALUES (9, 117, '11111', '11111', '审核不通过', '信息不完整', '2024-04-17 16:18:37');
INSERT INTO `audit` VALUES (11, 118, '123123', '12312312', '审核不通过', '请正确填写信息！', '2024-04-17 17:05:54');
INSERT INTO `audit` VALUES (13, 114, '123123', '123123', '审核不通过', '请正确填写信息！', '2024-04-17 18:17:25');
INSERT INTO `audit` VALUES (15, 1, '111111111111', 'asd', '审核不通过', '请正确填写信息！', '2024-04-18 17:51:26');
INSERT INTO `audit` VALUES (16, 1, '121212121212', '123', '审核不通过', '请正确填写信息！', '2024-04-18 18:15:45');
INSERT INTO `audit` VALUES (17, 1, '123456789101', '啊大苏打', '审核不通过', '请正确填写信息！', '2024-04-19 16:56:24');
INSERT INTO `audit` VALUES (19, 129, '123123123123', 'adsasd', '审核不通过', '班级信息错误！', '2024-04-25 17:37:35');
INSERT INTO `audit` VALUES (43, 140, '202010620152', '大数据B1班', '审核通过', '无', '2024-05-08 14:17:06');
INSERT INTO `audit` VALUES (44, 141, '202010620153', '大数据B2班', '审核通过', 'sadas', '2024-05-08 14:33:27');

-- ----------------------------
-- Table structure for checkgroup
-- ----------------------------
DROP TABLE IF EXISTS `checkgroup`;
CREATE TABLE `checkgroup`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查组编码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查组名称',
  `helpCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '助记码',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '适用性别',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查组说明',
  `attention` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '注意事项',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '检查组信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of checkgroup
-- ----------------------------
INSERT INTO `checkgroup` VALUES (25, '0001', '一般检查', 'YBJC', '0', '一般检查', '无');
INSERT INTO `checkgroup` VALUES (26, '0002', '视力色觉', 'SLSJ', '0', '视力色觉', '');
INSERT INTO `checkgroup` VALUES (27, '0003', '血常规', 'XCG', '0', '血常规', '');
INSERT INTO `checkgroup` VALUES (28, '0004', '尿常规', 'NCG', '0', '尿常规', '');
INSERT INTO `checkgroup` VALUES (29, '0005', '肝功三项', 'GGSX', '0', '肝功三项', '');
INSERT INTO `checkgroup` VALUES (30, '0006', '肾功三项', 'NGSX', '0', '肾功三项', '');
INSERT INTO `checkgroup` VALUES (31, '0007', '血脂四项', 'XZSX', '0', '血脂四项', '');
INSERT INTO `checkgroup` VALUES (32, '0008', '心肌酶三项', 'XJMSX', '0', '心肌酶三项', '');
INSERT INTO `checkgroup` VALUES (33, '0009', '甲功三项', 'JGSX', '0', '甲功三项', '');
INSERT INTO `checkgroup` VALUES (34, '0010', '子宫附件彩超', 'ZGFJCC', '2', '子宫附件彩超', '');
INSERT INTO `checkgroup` VALUES (35, '0011', '胆红素三项', 'DHSSX', '0', '胆红素三项', '');
INSERT INTO `checkgroup` VALUES (38, '0012', '血常规', 'XCG', '0', '血常规', '无');
INSERT INTO `checkgroup` VALUES (39, '0013', '排泄物', 'PXW', '0', '排泄物', '无');
INSERT INTO `checkgroup` VALUES (40, '0001', '一般检查', 'YBJC', '0', '一般检查', '无');
INSERT INTO `checkgroup` VALUES (41, '0002', '视力色觉', 'SLSJ', '0', '视力色觉', '');
INSERT INTO `checkgroup` VALUES (47, '0008', '心肌酶三项', 'XJMSX', '0', '心肌酶三项', '');
INSERT INTO `checkgroup` VALUES (48, '0009', '甲功三项', 'JGSX', '0', '甲功三项', '');
INSERT INTO `checkgroup` VALUES (49, '0010', '子宫附件彩超', 'ZGFJCC', '2', '子宫附件彩超', '');
INSERT INTO `checkgroup` VALUES (50, '0011', '胆红素三项', 'DHSSX', '0', '胆红素三项', '');
INSERT INTO `checkgroup` VALUES (51, '0012', '血常规', 'XCG', '0', '血常规', '无');

-- ----------------------------
-- Table structure for checkitem
-- ----------------------------
DROP TABLE IF EXISTS `checkitem`;
CREATE TABLE `checkitem`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查项编码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查项名称',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '适用性别，0表示不限，1表示男，2表示女',
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '适用年龄',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查价格',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查类型分为检查(1)和检验(2)两种类型',
  `attention` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '注意事项',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '检查项说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 618 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '检查项信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of checkitem
-- ----------------------------
INSERT INTO `checkitem` VALUES (479, '0016', '平均红细胞血红蛋白含量', '0', '0-100', '10.0', '2', '', '平均红细胞血红蛋白含量');
INSERT INTO `checkitem` VALUES (480, '0017', '平均红细胞血红蛋白浓度', '0', '0-100', '10.0', '2', '', '平均红细胞血红蛋白浓度');
INSERT INTO `checkitem` VALUES (481, '0018', '红细胞分布宽度-变异系数', '0', '0-100', '10.0', '2', '', '红细胞分布宽度-变异系数');
INSERT INTO `checkitem` VALUES (482, '0019', '血小板计数', '0', '0-100', '10.0', '2', '', '血小板计数');
INSERT INTO `checkitem` VALUES (483, '0020', '平均血小板体积', '0', '0-100', '10.0', '2', '', '平均血小板体积');
INSERT INTO `checkitem` VALUES (484, '0021', '血小板分布宽度', '0', '0-100', '10.0', '2', '', '血小板分布宽度');
INSERT INTO `checkitem` VALUES (485, '0022', '淋巴细胞百分比', '0', '0-100', '10.0', '2', '', '淋巴细胞百分比');
INSERT INTO `checkitem` VALUES (486, '0023', '中间细胞百分比', '0', '0-100', '10.0', '2', '', '中间细胞百分比');
INSERT INTO `checkitem` VALUES (487, '0024', '中性粒细胞百分比', '0', '0-100', '10.0', '2', '', '中性粒细胞百分比');
INSERT INTO `checkitem` VALUES (488, '0025', '淋巴细胞绝对值', '0', '0-100', '10.0', '2', '', '淋巴细胞绝对值');
INSERT INTO `checkitem` VALUES (489, '0026', '中间细胞绝对值', '0', '0-100', '10.0', '2', '', '中间细胞绝对值');
INSERT INTO `checkitem` VALUES (490, '0027', '中性粒细胞绝对值', '0', '0-100', '10.0', '2', '', '中性粒细胞绝对值');
INSERT INTO `checkitem` VALUES (491, '0028', '红细胞分布宽度-标准差', '0', '0-100', '10.0', '2', '', '红细胞分布宽度-标准差');
INSERT INTO `checkitem` VALUES (492, '0029', '血小板压积', '0', '0-100', '10.0', '2', '', '血小板压积');
INSERT INTO `checkitem` VALUES (493, '0030', '尿比重', '0', '0-100', '10.0', '2', '', '尿比重');
INSERT INTO `checkitem` VALUES (494, '0031', '尿酸碱度', '0', '0-100', '10.0', '2', '', '尿酸碱度');
INSERT INTO `checkitem` VALUES (495, '0032', '尿白细胞', '0', '0-100', '10.0', '2', '', '尿白细胞');
INSERT INTO `checkitem` VALUES (496, '0033', '尿亚硝酸盐', '0', '0-100', '10.0', '2', '', '尿亚硝酸盐');
INSERT INTO `checkitem` VALUES (497, '0034', '尿蛋白质', '0', '0-100', '10.0', '2', '', '尿蛋白质');
INSERT INTO `checkitem` VALUES (498, '0035', '尿糖', '0', '0-100', '10.0', '2', '', '尿糖');
INSERT INTO `checkitem` VALUES (499, '0036', '尿酮体', '0', '0-100', '10.0', '2', '', '尿酮体');
INSERT INTO `checkitem` VALUES (500, '0037', '尿胆原', '0', '0-100', '10.0', '2', '', '尿胆原');
INSERT INTO `checkitem` VALUES (501, '0038', '尿胆红素', '0', '0-100', '10.0', '2', '', '尿胆红素');
INSERT INTO `checkitem` VALUES (502, '0039', '尿隐血', '0', '0-100', '10.0', '2', '', '尿隐血');
INSERT INTO `checkitem` VALUES (503, '0040', '尿镜检红细胞', '0', '0-100', '10.0', '2', '', '尿镜检红细胞');
INSERT INTO `checkitem` VALUES (504, '0041', '尿镜检白细胞', '0', '0-100', '10.0', '2', '', '尿镜检白细胞');
INSERT INTO `checkitem` VALUES (505, '0042', '上皮细胞', '0', '0-100', '10.0', '2', '', '上皮细胞');
INSERT INTO `checkitem` VALUES (506, '0043', '无机盐类', '0', '0-100', '10.0', '2', '', '无机盐类');
INSERT INTO `checkitem` VALUES (507, '0044', '尿镜检蛋白定性', '0', '0-100', '10.0', '2', '', '尿镜检蛋白定性');
INSERT INTO `checkitem` VALUES (508, '0045', '丙氨酸氨基转移酶', '0', '0-100', '10.0', '2', '', '丙氨酸氨基转移酶');
INSERT INTO `checkitem` VALUES (509, '0046', '天门冬氨酸氨基转移酶', '0', '0-100', '10.0', '2', '', '天门冬氨酸氨基转移酶');
INSERT INTO `checkitem` VALUES (510, '0047', 'Y-谷氨酰转移酶', '0', '0-100', '10.0', '2', '', 'Y-谷氨酰转移酶');
INSERT INTO `checkitem` VALUES (511, '0048', '尿素', '0', '0-100', '10.0', '2', '', '尿素');
INSERT INTO `checkitem` VALUES (512, '0049', '肌酐', '0', '0-100', '10.0', '2', '', '肌酐');
INSERT INTO `checkitem` VALUES (513, '0050', '尿酸', '0', '0-100', '10.0', '2', '', '尿酸');
INSERT INTO `checkitem` VALUES (514, '0051', '总胆固醇', '0', '0-100', '10.0', '2', '', '总胆固醇');
INSERT INTO `checkitem` VALUES (515, '0052', '甘油三酯', '0', '0-100', '10.0', '2', '', '甘油三酯');
INSERT INTO `checkitem` VALUES (516, '0053', '高密度脂蛋白胆固醇', '0', '0-100', '10.0', '2', '', '高密度脂蛋白胆固醇');
INSERT INTO `checkitem` VALUES (517, '0054', '低密度脂蛋白胆固醇', '0', '0-100', '10.0', '2', '', '低密度脂蛋白胆固醇');
INSERT INTO `checkitem` VALUES (518, '0055', '磷酸肌酸激酶', '0', '0-100', '10.0', '2', '', '磷酸肌酸激酶');
INSERT INTO `checkitem` VALUES (519, '0056', '磷酸肌酸激酶同工酶', '0', '0-100', '10.0', '2', '', '磷酸肌酸激酶同工酶');
INSERT INTO `checkitem` VALUES (520, '0057', '乳酸脱氢酶', '0', '0-100', '10.0', '2', '', '乳酸脱氢酶');
INSERT INTO `checkitem` VALUES (521, '0058', '三碘甲状腺原氨酸', '0', '0-100', '10.0', '2', '', '三碘甲状腺原氨酸');
INSERT INTO `checkitem` VALUES (522, '0059', '甲状腺素', '0', '0-100', '10.0', '2', '', '甲状腺素');
INSERT INTO `checkitem` VALUES (523, '0060', '促甲状腺激素', '0', '0-100', '10.0', '2', '', '促甲状腺激素');
INSERT INTO `checkitem` VALUES (524, '0061', '子宫', '2', '0-100', '10.0', '2', '', '子宫');
INSERT INTO `checkitem` VALUES (525, '0062', '附件', '2', '0-100', '10.0', '2', '', '附件');
INSERT INTO `checkitem` VALUES (537, '0003', '体重指数', '0', '0-100', '5.0', '1', '无', '体重指数');
INSERT INTO `checkitem` VALUES (538, '0004', '收缩压', '0', '0-100', '5.0', '1', '无', '收缩压');
INSERT INTO `checkitem` VALUES (539, '0005', '舒张压', '0', '0-100', '5.0', '1', '无', '舒张压');
INSERT INTO `checkitem` VALUES (540, '0006', '裸视力（右）', '0', '0-100', '5.0', '1', '无', '裸视力（右）');
INSERT INTO `checkitem` VALUES (541, '0007', '裸视力（左）', '0', '0-100', '5.0', '1', '无', '裸视力（左）');
INSERT INTO `checkitem` VALUES (542, '0008', '矫正视力（右）', '0', '0-100', '5.0', '1', '无', '矫正视力（右）');
INSERT INTO `checkitem` VALUES (543, '0009', '矫正视力（左）', '0', '0-100', '5.0', '1', '无', '矫正视力（左）');
INSERT INTO `checkitem` VALUES (544, '0010', '色觉', '0', '0-100', '5.0', '1', '无', '色觉');
INSERT INTO `checkitem` VALUES (545, '0011', '白细胞计数', '0', '0-100', '10.0', '2', '无', '白细胞计数');
INSERT INTO `checkitem` VALUES (546, '0012', '红细胞计数', '0', '0-100', '10.0', '2', '', '红细胞计数');
INSERT INTO `checkitem` VALUES (547, '0013', '血红蛋白', '0', '0-100', '10.0', '2', '', '血红蛋白');
INSERT INTO `checkitem` VALUES (548, '0014', '红细胞压积', '0', '0-100', '10.0', '2', '', '红细胞压积');
INSERT INTO `checkitem` VALUES (549, '0015', '平均红细胞体积', '0', '0-100', '10.0', '2', '', '平均红细胞体积');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作内容',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电脑ip',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 834 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (11, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:50:17');
INSERT INTO `log` VALUES (12, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:50:42');
INSERT INTO `log` VALUES (13, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:50:52');
INSERT INTO `log` VALUES (14, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:51:09');
INSERT INTO `log` VALUES (15, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:51:19');
INSERT INTO `log` VALUES (16, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:52:14');
INSERT INTO `log` VALUES (17, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:52:56');
INSERT INTO `log` VALUES (18, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:53:32');
INSERT INTO `log` VALUES (19, '删除套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:53:50');
INSERT INTO `log` VALUES (20, '删除套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:53:59');
INSERT INTO `log` VALUES (21, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:54:08');
INSERT INTO `log` VALUES (22, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:54:16');
INSERT INTO `log` VALUES (23, '删除预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:54:33');
INSERT INTO `log` VALUES (24, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:54:52');
INSERT INTO `log` VALUES (25, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:54:53');
INSERT INTO `log` VALUES (26, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:55:20');
INSERT INTO `log` VALUES (27, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:56:09');
INSERT INTO `log` VALUES (28, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:56:24');
INSERT INTO `log` VALUES (29, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:56:55');
INSERT INTO `log` VALUES (30, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:57:12');
INSERT INTO `log` VALUES (31, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-18 22:57:21');
INSERT INTO `log` VALUES (37, '更新日志操作', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 09:50:19');
INSERT INTO `log` VALUES (38, '更新日志操作', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 09:58:59');
INSERT INTO `log` VALUES (110, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 17:47:37');
INSERT INTO `log` VALUES (111, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:25:55');
INSERT INTO `log` VALUES (112, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:28');
INSERT INTO `log` VALUES (113, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:41');
INSERT INTO `log` VALUES (114, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:47');
INSERT INTO `log` VALUES (115, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:49');
INSERT INTO `log` VALUES (116, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:52');
INSERT INTO `log` VALUES (117, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:54');
INSERT INTO `log` VALUES (118, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-19 18:42:59');
INSERT INTO `log` VALUES (122, '更新用户信息', '127.0.0.1', 'admin', '2024-03-20 11:31:04');
INSERT INTO `log` VALUES (123, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:36:28');
INSERT INTO `log` VALUES (125, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:53:41');
INSERT INTO `log` VALUES (126, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:53:59');
INSERT INTO `log` VALUES (127, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:56:22');
INSERT INTO `log` VALUES (128, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:57:35');
INSERT INTO `log` VALUES (129, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:59:24');
INSERT INTO `log` VALUES (130, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 11:59:31');
INSERT INTO `log` VALUES (131, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:00:43');
INSERT INTO `log` VALUES (133, '更新预定信息', '0:0:0:0:0:0:0:1', '张三', '2024-03-20 12:01:20');
INSERT INTO `log` VALUES (134, '更新预定信息', '0:0:0:0:0:0:0:1', '张三', '2024-03-20 12:01:21');
INSERT INTO `log` VALUES (135, '更新预定信息', '0:0:0:0:0:0:0:1', '张三', '2024-03-20 12:01:21');
INSERT INTO `log` VALUES (136, '更新预定信息', '0:0:0:0:0:0:0:1', '张三', '2024-03-20 12:01:22');
INSERT INTO `log` VALUES (137, '更新预定信息', '0:0:0:0:0:0:0:1', '张三', '2024-03-20 12:01:22');
INSERT INTO `log` VALUES (140, '更新预定信息', '0:0:0:0:0:0:0:1', '郑老师', '2024-03-20 12:08:04');
INSERT INTO `log` VALUES (141, '更新预定信息', '0:0:0:0:0:0:0:1', '郑老师', '2024-03-20 12:08:04');
INSERT INTO `log` VALUES (142, '更新预定信息', '0:0:0:0:0:0:0:1', '郑老师', '2024-03-20 12:08:04');
INSERT INTO `log` VALUES (143, '更新预定信息', '0:0:0:0:0:0:0:1', '郑老师', '2024-03-20 12:08:05');
INSERT INTO `log` VALUES (144, '更新预定信息', '0:0:0:0:0:0:0:1', '郑老师', '2024-03-20 12:08:05');
INSERT INTO `log` VALUES (146, '更新预定信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-03-20 12:08:33');
INSERT INTO `log` VALUES (147, '更新预定信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-03-20 12:08:34');
INSERT INTO `log` VALUES (148, '更新预定信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-03-20 12:08:34');
INSERT INTO `log` VALUES (149, '更新预定信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-03-20 12:08:35');
INSERT INTO `log` VALUES (151, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:08:54');
INSERT INTO `log` VALUES (152, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:08:56');
INSERT INTO `log` VALUES (153, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:08:58');
INSERT INTO `log` VALUES (154, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:01');
INSERT INTO `log` VALUES (155, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:03');
INSERT INTO `log` VALUES (156, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:06');
INSERT INTO `log` VALUES (157, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:08');
INSERT INTO `log` VALUES (158, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:10');
INSERT INTO `log` VALUES (159, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:13');
INSERT INTO `log` VALUES (160, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:15');
INSERT INTO `log` VALUES (161, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:18');
INSERT INTO `log` VALUES (162, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:20');
INSERT INTO `log` VALUES (163, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:22');
INSERT INTO `log` VALUES (164, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 12:09:25');
INSERT INTO `log` VALUES (165, '删除预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 13:31:59');
INSERT INTO `log` VALUES (166, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 13:33:44');
INSERT INTO `log` VALUES (167, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-03-20 13:33:59');
INSERT INTO `log` VALUES (209, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:16:12');
INSERT INTO `log` VALUES (211, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:49:41');
INSERT INTO `log` VALUES (212, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:52:01');
INSERT INTO `log` VALUES (213, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:52:39');
INSERT INTO `log` VALUES (214, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:53:00');
INSERT INTO `log` VALUES (215, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:53:13');
INSERT INTO `log` VALUES (216, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:53:20');
INSERT INTO `log` VALUES (217, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:54:17');
INSERT INTO `log` VALUES (218, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:54:27');
INSERT INTO `log` VALUES (219, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:55:31');
INSERT INTO `log` VALUES (220, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:55:54');
INSERT INTO `log` VALUES (221, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:56:02');
INSERT INTO `log` VALUES (222, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:56:35');
INSERT INTO `log` VALUES (223, '更新预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:57:09');
INSERT INTO `log` VALUES (224, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:57:26');
INSERT INTO `log` VALUES (225, '删除套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:57:44');
INSERT INTO `log` VALUES (226, '更新套餐分类信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:58:00');
INSERT INTO `log` VALUES (227, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:58:17');
INSERT INTO `log` VALUES (228, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 10:58:40');
INSERT INTO `log` VALUES (244, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 11:23:13');
INSERT INTO `log` VALUES (245, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 11:23:58');
INSERT INTO `log` VALUES (246, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 11:24:08');
INSERT INTO `log` VALUES (249, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 11:34:08');
INSERT INTO `log` VALUES (253, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-03 11:41:00');
INSERT INTO `log` VALUES (258, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-08 15:35:05');
INSERT INTO `log` VALUES (259, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-08 16:07:50');
INSERT INTO `log` VALUES (260, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-08 16:11:23');
INSERT INTO `log` VALUES (261, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-08 16:12:00');
INSERT INTO `log` VALUES (262, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-08 16:14:36');
INSERT INTO `log` VALUES (263, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-08 17:06:49');
INSERT INTO `log` VALUES (264, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-08 17:33:35');
INSERT INTO `log` VALUES (265, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-08 17:37:10');
INSERT INTO `log` VALUES (266, '更新预定结果信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-08 18:02:31');
INSERT INTO `log` VALUES (267, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 09:17:44');
INSERT INTO `log` VALUES (270, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 09:24:13');
INSERT INTO `log` VALUES (271, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 09:26:53');
INSERT INTO `log` VALUES (272, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 09:30:55');
INSERT INTO `log` VALUES (273, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 09:38:49');
INSERT INTO `log` VALUES (274, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 09:38:55');
INSERT INTO `log` VALUES (275, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 14:17:12');
INSERT INTO `log` VALUES (276, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 14:23:07');
INSERT INTO `log` VALUES (277, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-09 15:15:43');
INSERT INTO `log` VALUES (278, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-12 16:07:45');
INSERT INTO `log` VALUES (279, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-12 16:35:25');
INSERT INTO `log` VALUES (280, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-12 16:36:05');
INSERT INTO `log` VALUES (282, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-12 16:55:55');
INSERT INTO `log` VALUES (284, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:31:47');
INSERT INTO `log` VALUES (285, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:33:02');
INSERT INTO `log` VALUES (286, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:48:17');
INSERT INTO `log` VALUES (287, '批量导出套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:49:58');
INSERT INTO `log` VALUES (288, '批量导出套餐预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:51:17');
INSERT INTO `log` VALUES (289, '批量导出预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:52:43');
INSERT INTO `log` VALUES (290, '批量导出检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:53:41');
INSERT INTO `log` VALUES (291, '批量导出检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 10:54:27');
INSERT INTO `log` VALUES (294, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-15 14:08:43');
INSERT INTO `log` VALUES (295, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-16 16:30:48');
INSERT INTO `log` VALUES (296, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 15:49:08');
INSERT INTO `log` VALUES (299, '登录该平台', '0:0:0:0:0:0:0:1', '老刘', '2024-04-17 16:03:13');
INSERT INTO `log` VALUES (300, '更新审核信息', '0:0:0:0:0:0:0:1', '老刘', '2024-04-17 16:03:43');
INSERT INTO `log` VALUES (301, '更新审核信息', '0:0:0:0:0:0:0:1', '老刘', '2024-04-17 16:03:51');
INSERT INTO `log` VALUES (302, '更新审核信息', '0:0:0:0:0:0:0:1', '老刘', '2024-04-17 16:04:01');
INSERT INTO `log` VALUES (303, '删除审核信息', '0:0:0:0:0:0:0:1', '老刘', '2024-04-17 16:04:20');
INSERT INTO `log` VALUES (304, '批量导出检查项信息', '0:0:0:0:0:0:0:1', '老刘', '2024-04-17 16:04:42');
INSERT INTO `log` VALUES (306, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:08:15');
INSERT INTO `log` VALUES (307, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:08:31');
INSERT INTO `log` VALUES (308, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:08:38');
INSERT INTO `log` VALUES (309, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:08:48');
INSERT INTO `log` VALUES (310, '删除审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:08:50');
INSERT INTO `log` VALUES (311, '批量导出检查项信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:09:12');
INSERT INTO `log` VALUES (312, '更新预定结果信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:10:10');
INSERT INTO `log` VALUES (313, '更新预定结果信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:10:11');
INSERT INTO `log` VALUES (315, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:11:14');
INSERT INTO `log` VALUES (316, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:11:28');
INSERT INTO `log` VALUES (317, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:11:45');
INSERT INTO `log` VALUES (318, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:11:51');
INSERT INTO `log` VALUES (319, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:11:55');
INSERT INTO `log` VALUES (320, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:12:05');
INSERT INTO `log` VALUES (321, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:12:32');
INSERT INTO `log` VALUES (322, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:12:34');
INSERT INTO `log` VALUES (323, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:12:42');
INSERT INTO `log` VALUES (324, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:12:58');
INSERT INTO `log` VALUES (325, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:13:02');
INSERT INTO `log` VALUES (326, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:13:14');
INSERT INTO `log` VALUES (327, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:13:16');
INSERT INTO `log` VALUES (328, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:13:27');
INSERT INTO `log` VALUES (329, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:13:38');
INSERT INTO `log` VALUES (330, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-17 16:14:16');
INSERT INTO `log` VALUES (331, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:14:43');
INSERT INTO `log` VALUES (332, '删除审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:16:02');
INSERT INTO `log` VALUES (334, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:18:04');
INSERT INTO `log` VALUES (335, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:18:14');
INSERT INTO `log` VALUES (336, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:18:22');
INSERT INTO `log` VALUES (337, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:18:25');
INSERT INTO `log` VALUES (338, '删除审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:18:27');
INSERT INTO `log` VALUES (339, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:18:38');
INSERT INTO `log` VALUES (340, '更新预定结果信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:19:18');
INSERT INTO `log` VALUES (341, '更新预定结果信息', '0:0:0:0:0:0:0:1', '郑小俊1', '2024-04-17 16:19:20');
INSERT INTO `log` VALUES (342, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:20:08');
INSERT INTO `log` VALUES (343, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:20:29');
INSERT INTO `log` VALUES (344, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:20:41');
INSERT INTO `log` VALUES (345, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:20:47');
INSERT INTO `log` VALUES (346, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:21:15');
INSERT INTO `log` VALUES (347, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:21:22');
INSERT INTO `log` VALUES (348, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:21:25');
INSERT INTO `log` VALUES (349, '批量导出检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:21:28');
INSERT INTO `log` VALUES (351, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:22:49');
INSERT INTO `log` VALUES (352, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:22:52');
INSERT INTO `log` VALUES (353, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:22:55');
INSERT INTO `log` VALUES (354, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:22:57');
INSERT INTO `log` VALUES (355, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:32:11');
INSERT INTO `log` VALUES (356, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:35:02');
INSERT INTO `log` VALUES (357, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:35:10');
INSERT INTO `log` VALUES (358, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:35:12');
INSERT INTO `log` VALUES (359, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:36:13');
INSERT INTO `log` VALUES (360, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:38:06');
INSERT INTO `log` VALUES (361, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:38:42');
INSERT INTO `log` VALUES (362, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:38:48');
INSERT INTO `log` VALUES (363, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:38:58');
INSERT INTO `log` VALUES (364, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:39:11');
INSERT INTO `log` VALUES (365, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:41:47');
INSERT INTO `log` VALUES (366, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:44:31');
INSERT INTO `log` VALUES (367, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:44:42');
INSERT INTO `log` VALUES (368, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:44:53');
INSERT INTO `log` VALUES (369, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:46:33');
INSERT INTO `log` VALUES (370, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:46:46');
INSERT INTO `log` VALUES (371, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:52:28');
INSERT INTO `log` VALUES (372, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:53:25');
INSERT INTO `log` VALUES (373, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:53:31');
INSERT INTO `log` VALUES (374, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:55:53');
INSERT INTO `log` VALUES (375, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 16:56:31');
INSERT INTO `log` VALUES (377, '登录该平台', '0:0:0:0:0:0:0:1', '郑大俊1', '2024-04-17 17:05:15');
INSERT INTO `log` VALUES (379, '更新审核信息', '0:0:0:0:0:0:0:1', '郑大俊1', '2024-04-17 17:05:55');
INSERT INTO `log` VALUES (380, '更新审核信息', '0:0:0:0:0:0:0:1', '郑大俊1', '2024-04-17 17:06:02');
INSERT INTO `log` VALUES (381, '删除审核信息', '0:0:0:0:0:0:0:1', '郑大俊1', '2024-04-17 17:06:06');
INSERT INTO `log` VALUES (382, '更新预定结果信息', '0:0:0:0:0:0:0:1', '郑大俊1', '2024-04-17 17:06:35');
INSERT INTO `log` VALUES (383, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:07:01');
INSERT INTO `log` VALUES (384, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:07:37');
INSERT INTO `log` VALUES (385, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:07:47');
INSERT INTO `log` VALUES (386, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:08:22');
INSERT INTO `log` VALUES (387, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:08:30');
INSERT INTO `log` VALUES (388, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:08:33');
INSERT INTO `log` VALUES (389, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:08:48');
INSERT INTO `log` VALUES (390, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:08:57');
INSERT INTO `log` VALUES (391, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:08:59');
INSERT INTO `log` VALUES (393, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:09:24');
INSERT INTO `log` VALUES (394, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:09:28');
INSERT INTO `log` VALUES (395, '批量导出检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:09:29');
INSERT INTO `log` VALUES (396, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:09:54');
INSERT INTO `log` VALUES (397, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:09:56');
INSERT INTO `log` VALUES (398, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:02');
INSERT INTO `log` VALUES (399, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:04');
INSERT INTO `log` VALUES (400, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:06');
INSERT INTO `log` VALUES (401, '批量删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:13');
INSERT INTO `log` VALUES (402, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:15');
INSERT INTO `log` VALUES (403, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:18');
INSERT INTO `log` VALUES (404, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:21');
INSERT INTO `log` VALUES (405, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:35');
INSERT INTO `log` VALUES (406, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:10:49');
INSERT INTO `log` VALUES (407, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:15:14');
INSERT INTO `log` VALUES (408, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:15:18');
INSERT INTO `log` VALUES (409, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:28:27');
INSERT INTO `log` VALUES (410, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:28:42');
INSERT INTO `log` VALUES (411, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:38:40');
INSERT INTO `log` VALUES (412, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:41:29');
INSERT INTO `log` VALUES (413, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:41:32');
INSERT INTO `log` VALUES (414, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:44:34');
INSERT INTO `log` VALUES (415, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:44:37');
INSERT INTO `log` VALUES (416, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:44:42');
INSERT INTO `log` VALUES (417, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:46:24');
INSERT INTO `log` VALUES (418, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:46:26');
INSERT INTO `log` VALUES (419, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:47:39');
INSERT INTO `log` VALUES (420, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:47:42');
INSERT INTO `log` VALUES (421, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:48:19');
INSERT INTO `log` VALUES (422, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:48:22');
INSERT INTO `log` VALUES (423, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:50:38');
INSERT INTO `log` VALUES (424, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:51:06');
INSERT INTO `log` VALUES (425, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:51:57');
INSERT INTO `log` VALUES (426, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:52:01');
INSERT INTO `log` VALUES (427, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:52:48');
INSERT INTO `log` VALUES (428, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:56:01');
INSERT INTO `log` VALUES (429, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:58:49');
INSERT INTO `log` VALUES (430, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 17:58:52');
INSERT INTO `log` VALUES (431, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:00:22');
INSERT INTO `log` VALUES (432, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:00:26');
INSERT INTO `log` VALUES (433, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:02:52');
INSERT INTO `log` VALUES (434, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:02:57');
INSERT INTO `log` VALUES (435, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:06:55');
INSERT INTO `log` VALUES (436, '删除套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:06:58');
INSERT INTO `log` VALUES (437, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-17 18:14:00');
INSERT INTO `log` VALUES (438, '登录该平台', '0:0:0:0:0:0:0:1', '郑大俊', '2024-04-17 18:15:02');
INSERT INTO `log` VALUES (439, '更新审核信息', '0:0:0:0:0:0:0:1', '郑大俊', '2024-04-17 18:15:08');
INSERT INTO `log` VALUES (440, '更新审核信息', '0:0:0:0:0:0:0:1', '郑大俊', '2024-04-17 18:17:17');
INSERT INTO `log` VALUES (441, '删除审核信息', '0:0:0:0:0:0:0:1', '郑大俊', '2024-04-17 18:17:21');
INSERT INTO `log` VALUES (442, '更新审核信息', '0:0:0:0:0:0:0:1', '郑大俊', '2024-04-17 18:17:26');
INSERT INTO `log` VALUES (443, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 14:56:40');
INSERT INTO `log` VALUES (444, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 14:57:37');
INSERT INTO `log` VALUES (445, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 15:21:44');
INSERT INTO `log` VALUES (446, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:33:17');
INSERT INTO `log` VALUES (447, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:36:41');
INSERT INTO `log` VALUES (448, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:39:06');
INSERT INTO `log` VALUES (449, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:39:24');
INSERT INTO `log` VALUES (450, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:41:57');
INSERT INTO `log` VALUES (451, '登录该平台', '0:0:0:0:0:0:0:1', '罗睿', '2024-04-18 16:43:48');
INSERT INTO `log` VALUES (452, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:44:42');
INSERT INTO `log` VALUES (453, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:45:57');
INSERT INTO `log` VALUES (454, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 16:50:33');
INSERT INTO `log` VALUES (455, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:17:17');
INSERT INTO `log` VALUES (456, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:17:58');
INSERT INTO `log` VALUES (457, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:18:03');
INSERT INTO `log` VALUES (458, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:23:35');
INSERT INTO `log` VALUES (459, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:25:52');
INSERT INTO `log` VALUES (460, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:25:56');
INSERT INTO `log` VALUES (461, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:29:13');
INSERT INTO `log` VALUES (462, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:29:18');
INSERT INTO `log` VALUES (463, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:30:30');
INSERT INTO `log` VALUES (464, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:30:40');
INSERT INTO `log` VALUES (465, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:32:03');
INSERT INTO `log` VALUES (466, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:32:07');
INSERT INTO `log` VALUES (467, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:32:09');
INSERT INTO `log` VALUES (468, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:32:17');
INSERT INTO `log` VALUES (469, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:32:20');
INSERT INTO `log` VALUES (470, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:32:23');
INSERT INTO `log` VALUES (471, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:38:34');
INSERT INTO `log` VALUES (472, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:38:52');
INSERT INTO `log` VALUES (473, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:42:55');
INSERT INTO `log` VALUES (474, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 17:44:16');
INSERT INTO `log` VALUES (475, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 17:44:35');
INSERT INTO `log` VALUES (476, '删除审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 17:51:17');
INSERT INTO `log` VALUES (477, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 17:51:27');
INSERT INTO `log` VALUES (478, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 17:51:57');
INSERT INTO `log` VALUES (479, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 17:52:11');
INSERT INTO `log` VALUES (480, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:52:42');
INSERT INTO `log` VALUES (481, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:53:01');
INSERT INTO `log` VALUES (482, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:53:14');
INSERT INTO `log` VALUES (483, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-18 17:53:24');
INSERT INTO `log` VALUES (484, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:54:06');
INSERT INTO `log` VALUES (485, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:54:10');
INSERT INTO `log` VALUES (486, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:54:31');
INSERT INTO `log` VALUES (487, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:55:00');
INSERT INTO `log` VALUES (488, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:55:11');
INSERT INTO `log` VALUES (489, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:55:17');
INSERT INTO `log` VALUES (490, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 17:55:54');
INSERT INTO `log` VALUES (491, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:07:44');
INSERT INTO `log` VALUES (492, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:09:06');
INSERT INTO `log` VALUES (493, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:10:31');
INSERT INTO `log` VALUES (494, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:10:35');
INSERT INTO `log` VALUES (495, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 18:12:37');
INSERT INTO `log` VALUES (496, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-18 18:15:45');
INSERT INTO `log` VALUES (497, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:15:57');
INSERT INTO `log` VALUES (498, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:20:06');
INSERT INTO `log` VALUES (499, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:21:54');
INSERT INTO `log` VALUES (500, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:21:56');
INSERT INTO `log` VALUES (501, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-18 18:21:57');
INSERT INTO `log` VALUES (504, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 15:57:06');
INSERT INTO `log` VALUES (505, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:25:59');
INSERT INTO `log` VALUES (506, '删除用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:26:10');
INSERT INTO `log` VALUES (507, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:28:32');
INSERT INTO `log` VALUES (508, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:29:50');
INSERT INTO `log` VALUES (509, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:34:15');
INSERT INTO `log` VALUES (510, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:34:25');
INSERT INTO `log` VALUES (511, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:35:51');
INSERT INTO `log` VALUES (512, '删除套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:35:56');
INSERT INTO `log` VALUES (513, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:41:09');
INSERT INTO `log` VALUES (514, '删除套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:41:16');
INSERT INTO `log` VALUES (515, '更新套餐预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:41:29');
INSERT INTO `log` VALUES (516, '删除套餐预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:41:36');
INSERT INTO `log` VALUES (517, '更新套餐预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:44:31');
INSERT INTO `log` VALUES (518, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:44:44');
INSERT INTO `log` VALUES (519, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:44:50');
INSERT INTO `log` VALUES (520, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:44:54');
INSERT INTO `log` VALUES (521, '删除套餐预定信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:44:59');
INSERT INTO `log` VALUES (522, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 16:45:26');
INSERT INTO `log` VALUES (523, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 16:51:00');
INSERT INTO `log` VALUES (524, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 16:51:58');
INSERT INTO `log` VALUES (525, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 16:52:37');
INSERT INTO `log` VALUES (526, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 16:56:20');
INSERT INTO `log` VALUES (527, '更新审核信息', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 16:56:24');
INSERT INTO `log` VALUES (529, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:58:34');
INSERT INTO `log` VALUES (530, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:58:42');
INSERT INTO `log` VALUES (531, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:58:46');
INSERT INTO `log` VALUES (532, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 16:59:49');
INSERT INTO `log` VALUES (533, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:00:02');
INSERT INTO `log` VALUES (534, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:00:15');
INSERT INTO `log` VALUES (535, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:00:19');
INSERT INTO `log` VALUES (536, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:00:21');
INSERT INTO `log` VALUES (537, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:00:44');
INSERT INTO `log` VALUES (538, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:01:13');
INSERT INTO `log` VALUES (539, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:01:23');
INSERT INTO `log` VALUES (540, '删除审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:01:49');
INSERT INTO `log` VALUES (541, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 17:02:10');
INSERT INTO `log` VALUES (542, '登录该平台', '0:0:0:0:0:0:0:1', '郑老师', '2024-04-19 17:05:34');
INSERT INTO `log` VALUES (543, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 17:05:58');
INSERT INTO `log` VALUES (544, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:06:12');
INSERT INTO `log` VALUES (545, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:10:36');
INSERT INTO `log` VALUES (546, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:10:41');
INSERT INTO `log` VALUES (547, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:10:42');
INSERT INTO `log` VALUES (548, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:15:11');
INSERT INTO `log` VALUES (549, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:15:34');
INSERT INTO `log` VALUES (550, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:33:12');
INSERT INTO `log` VALUES (551, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:33:16');
INSERT INTO `log` VALUES (552, '更新套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:34:51');
INSERT INTO `log` VALUES (553, '删除套餐信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:34:55');
INSERT INTO `log` VALUES (554, '登录该平台', '0:0:0:0:0:0:0:1', '郑老师', '2024-04-19 17:45:07');
INSERT INTO `log` VALUES (555, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-04-19 17:45:22');
INSERT INTO `log` VALUES (556, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:48:42');
INSERT INTO `log` VALUES (557, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:52:09');
INSERT INTO `log` VALUES (558, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:52:44');
INSERT INTO `log` VALUES (559, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:54:22');
INSERT INTO `log` VALUES (560, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-04-19 17:54:50');
INSERT INTO `log` VALUES (563, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-23 10:48:44');
INSERT INTO `log` VALUES (571, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-23 11:47:26');
INSERT INTO `log` VALUES (573, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-23 11:47:47');
INSERT INTO `log` VALUES (575, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-23 11:51:25');
INSERT INTO `log` VALUES (576, '登录该平台', '0:0:0:0:0:0:0:1', 'qwe', '2024-04-23 11:51:53');
INSERT INTO `log` VALUES (578, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-23 11:54:22');
INSERT INTO `log` VALUES (579, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-23 14:04:18');
INSERT INTO `log` VALUES (580, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-23 14:06:25');
INSERT INTO `log` VALUES (581, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-23 21:15:24');
INSERT INTO `log` VALUES (582, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-24 11:51:41');
INSERT INTO `log` VALUES (583, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-24 14:02:09');
INSERT INTO `log` VALUES (584, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-24 18:06:05');
INSERT INTO `log` VALUES (585, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 14:46:29');
INSERT INTO `log` VALUES (586, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 14:51:04');
INSERT INTO `log` VALUES (587, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 14:52:07');
INSERT INTO `log` VALUES (588, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 15:04:46');
INSERT INTO `log` VALUES (589, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 15:06:50');
INSERT INTO `log` VALUES (590, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 15:49:36');
INSERT INTO `log` VALUES (618, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 16:49:36');
INSERT INTO `log` VALUES (642, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 17:24:51');
INSERT INTO `log` VALUES (651, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:30:10');
INSERT INTO `log` VALUES (654, '更新审核信息', '0:0:0:0:0:0:0:1', 'qwe', '2024-04-25 17:37:36');
INSERT INTO `log` VALUES (655, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:39:05');
INSERT INTO `log` VALUES (656, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:43:36');
INSERT INTO `log` VALUES (657, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:45:56');
INSERT INTO `log` VALUES (658, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:46:03');
INSERT INTO `log` VALUES (659, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:48:00');
INSERT INTO `log` VALUES (660, '登录该平台', '0:0:0:0:0:0:0:1', 'qwe', '2024-04-25 17:51:54');
INSERT INTO `log` VALUES (661, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 17:52:33');
INSERT INTO `log` VALUES (662, '更新审核信息', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 17:52:52');
INSERT INTO `log` VALUES (664, '登录该平台', '0:0:0:0:0:0:0:1', 'asd', '2024-04-25 17:54:09');
INSERT INTO `log` VALUES (665, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 17:54:37');
INSERT INTO `log` VALUES (666, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 18:06:36');
INSERT INTO `log` VALUES (667, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-25 18:12:50');
INSERT INTO `log` VALUES (669, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-28 10:14:11');
INSERT INTO `log` VALUES (670, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-04-28 15:30:48');
INSERT INTO `log` VALUES (671, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 15:58:52');
INSERT INTO `log` VALUES (672, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:12');
INSERT INTO `log` VALUES (673, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:19');
INSERT INTO `log` VALUES (674, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:22');
INSERT INTO `log` VALUES (675, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:32');
INSERT INTO `log` VALUES (676, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:38');
INSERT INTO `log` VALUES (677, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:40');
INSERT INTO `log` VALUES (678, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:43');
INSERT INTO `log` VALUES (679, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:47');
INSERT INTO `log` VALUES (680, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:02:49');
INSERT INTO `log` VALUES (681, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:16:32');
INSERT INTO `log` VALUES (682, '登录该平台', '0:0:0:0:0:0:0:1', '郑老师', '2024-05-07 16:18:29');
INSERT INTO `log` VALUES (684, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-07 16:52:07');
INSERT INTO `log` VALUES (736, '登录该平台', '0:0:0:0:0:0:0:1', '郑小俊', '2024-05-08 11:34:04');
INSERT INTO `log` VALUES (751, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 11:52:57');
INSERT INTO `log` VALUES (759, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:10:01');
INSERT INTO `log` VALUES (760, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:11:04');
INSERT INTO `log` VALUES (761, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:13:49');
INSERT INTO `log` VALUES (762, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:14:34');
INSERT INTO `log` VALUES (763, '删除预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:14:36');
INSERT INTO `log` VALUES (766, '登录该平台', '0:0:0:0:0:0:0:1', 'xiaoming', '2024-05-08 14:16:14');
INSERT INTO `log` VALUES (767, '更新审核信息', '0:0:0:0:0:0:0:1', 'xiaoming', '2024-05-08 14:17:07');
INSERT INTO `log` VALUES (768, '更新审核信息', '0:0:0:0:0:0:0:1', 'xiaoming', '2024-05-08 14:17:15');
INSERT INTO `log` VALUES (769, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:17:32');
INSERT INTO `log` VALUES (770, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:18:05');
INSERT INTO `log` VALUES (771, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:18:14');
INSERT INTO `log` VALUES (772, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:18:19');
INSERT INTO `log` VALUES (773, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:18:39');
INSERT INTO `log` VALUES (774, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:18:57');
INSERT INTO `log` VALUES (775, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:19:23');
INSERT INTO `log` VALUES (776, '更新检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:19:32');
INSERT INTO `log` VALUES (777, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:19:40');
INSERT INTO `log` VALUES (778, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:19:46');
INSERT INTO `log` VALUES (779, '批量导出检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:19:52');
INSERT INTO `log` VALUES (781, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:20:47');
INSERT INTO `log` VALUES (782, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:20:47');
INSERT INTO `log` VALUES (783, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:20:48');
INSERT INTO `log` VALUES (784, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:20:55');
INSERT INTO `log` VALUES (785, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:20:57');
INSERT INTO `log` VALUES (786, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:21:00');
INSERT INTO `log` VALUES (787, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:21:04');
INSERT INTO `log` VALUES (788, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:21:07');
INSERT INTO `log` VALUES (789, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:21:25');
INSERT INTO `log` VALUES (790, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:21:36');
INSERT INTO `log` VALUES (791, '登录该平台', '0:0:0:0:0:0:0:1', '', '2024-05-08 14:32:31');
INSERT INTO `log` VALUES (792, '登录该平台', '0:0:0:0:0:0:0:1', '', '2024-05-08 14:32:33');
INSERT INTO `log` VALUES (793, '登录该平台', '0:0:0:0:0:0:0:1', 'test', '2024-05-08 14:32:38');
INSERT INTO `log` VALUES (794, '更新审核信息', '0:0:0:0:0:0:0:1', 'test', '2024-05-08 14:33:28');
INSERT INTO `log` VALUES (795, '更新审核信息', '0:0:0:0:0:0:0:1', 'test', '2024-05-08 14:33:42');
INSERT INTO `log` VALUES (796, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:33:57');
INSERT INTO `log` VALUES (797, '更新审核信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:34:12');
INSERT INTO `log` VALUES (798, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:34:48');
INSERT INTO `log` VALUES (799, '更新用户信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:00');
INSERT INTO `log` VALUES (800, '删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:21');
INSERT INTO `log` VALUES (801, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:26');
INSERT INTO `log` VALUES (802, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:28');
INSERT INTO `log` VALUES (803, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:31');
INSERT INTO `log` VALUES (804, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:51');
INSERT INTO `log` VALUES (805, '批量导出检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:35:54');
INSERT INTO `log` VALUES (806, '批量上传检查组信息', '0:0:0:0:0:0:0:1', '', '2024-05-08 14:36:18');
INSERT INTO `log` VALUES (807, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:36:45');
INSERT INTO `log` VALUES (808, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:36:46');
INSERT INTO `log` VALUES (809, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:36:47');
INSERT INTO `log` VALUES (810, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:36:54');
INSERT INTO `log` VALUES (811, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:36:56');
INSERT INTO `log` VALUES (812, '更新预定结果信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:36:59');
INSERT INTO `log` VALUES (813, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:37:12');
INSERT INTO `log` VALUES (814, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:37:27');
INSERT INTO `log` VALUES (815, '更新系统公告', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:37:36');
INSERT INTO `log` VALUES (816, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:52:40');
INSERT INTO `log` VALUES (817, '更新检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:53:21');
INSERT INTO `log` VALUES (818, '删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:53:23');
INSERT INTO `log` VALUES (819, '批量删除检查项信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:58:26');
INSERT INTO `log` VALUES (820, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:58:57');
INSERT INTO `log` VALUES (821, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:00');
INSERT INTO `log` VALUES (822, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:06');
INSERT INTO `log` VALUES (823, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:09');
INSERT INTO `log` VALUES (824, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:13');
INSERT INTO `log` VALUES (825, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:16');
INSERT INTO `log` VALUES (826, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:18');
INSERT INTO `log` VALUES (827, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:20');
INSERT INTO `log` VALUES (828, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:24');
INSERT INTO `log` VALUES (829, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:27');
INSERT INTO `log` VALUES (830, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:29');
INSERT INTO `log` VALUES (831, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:31');
INSERT INTO `log` VALUES (832, '批量删除检查组信息', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 14:59:34');
INSERT INTO `log` VALUES (833, '登录该平台', '0:0:0:0:0:0:0:1', 'admin', '2024-05-08 15:29:26');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (38, '信息审核说明', '在进行信息审核填写的时候，只能看到自己的审核信息，看不到别人的审核信息', '2024-04-17 17:10:49');
INSERT INTO `notice` VALUES (39, '登录注册说明', '注册的时候必须要有用户名，若不输入密码，初始密码为123456。请选择正确的用户身份！', '2024-05-08 14:37:36');
INSERT INTO `notice` VALUES (41, '套餐预定说明', '预定了套餐并进行检查，待检查结果出来后，管理员会上传到预定结果页面，用户可以查看自己的检查结果', '2024-04-19 17:52:44');
INSERT INTO `notice` VALUES (42, '检查项说明', '检查项分两类，1是检查，2是检验', '2024-03-19 10:19:58');
INSERT INTO `notice` VALUES (43, '检查组说明', '适用性别中，0表示不限，1表示男，2表示女', '2024-04-03 11:40:31');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `setmealId` int NULL DEFAULT NULL COMMENT '套餐类型',
  `userId` int NULL DEFAULT NULL COMMENT '预定人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '预定时间',
  `checkresult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '最终检查结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1073 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '预定信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES (23, 4, 5, '2024-03-18 11:38:04', '健康');
INSERT INTO `reserve` VALUES (24, 1, 1, '2024-03-18 11:41:26', '亚健康');
INSERT INTO `reserve` VALUES (26, 2, 5, '2024-03-18 22:54:52', '疾病');
INSERT INTO `reserve` VALUES (27, 3, 5, '2024-03-18 22:54:53', '健康');
INSERT INTO `reserve` VALUES (28, 4, 5, '2024-03-19 18:42:28', '健康');
INSERT INTO `reserve` VALUES (30, 1, 6, '2024-03-20 12:01:20', '健康');
INSERT INTO `reserve` VALUES (31, 2, 6, '2024-03-20 12:01:21', '亚健康');
INSERT INTO `reserve` VALUES (32, 3, 6, '2024-03-20 12:01:21', '亚健康');
INSERT INTO `reserve` VALUES (33, 4, 6, '2024-03-20 12:01:22', '亚健康');
INSERT INTO `reserve` VALUES (35, 1, 4, '2024-03-20 12:08:04', '健康');
INSERT INTO `reserve` VALUES (36, 2, 4, '2024-03-20 12:08:04', '亚健康');
INSERT INTO `reserve` VALUES (37, 3, 4, '2024-03-20 12:08:04', '亚健康');
INSERT INTO `reserve` VALUES (38, 4, 4, '2024-03-20 12:08:05', '亚健康');
INSERT INTO `reserve` VALUES (40, 2, 1, '2024-03-20 12:08:33', '亚健康');
INSERT INTO `reserve` VALUES (41, 3, 1, '2024-03-20 12:08:34', '亚健康');
INSERT INTO `reserve` VALUES (42, 4, 1, '2024-03-20 12:08:34', '亚健康');
INSERT INTO `reserve` VALUES (44, 5, 83, '09:46:01', '健康');
INSERT INTO `reserve` VALUES (45, 1, 30, '14:34:56', '健康');
INSERT INTO `reserve` VALUES (46, 2, 24, '16:00:49', '健康');
INSERT INTO `reserve` VALUES (47, 3, 96, '17:49:04', '健康');
INSERT INTO `reserve` VALUES (48, 5, 89, '12:57:40', '健康');
INSERT INTO `reserve` VALUES (49, 5, 102, '13:05:02', '健康');
INSERT INTO `reserve` VALUES (50, 3, 107, '17:13:21', '疾病');
INSERT INTO `reserve` VALUES (51, 1, 44, '17:48:33', '疾病');
INSERT INTO `reserve` VALUES (52, 4, 46, '15:41:21', '疾病');
INSERT INTO `reserve` VALUES (53, 2, 87, '09:10:39', '疾病');
INSERT INTO `reserve` VALUES (54, 3, 10, '16:35:43', '疾病');
INSERT INTO `reserve` VALUES (55, 1, 91, '15:43:12', '疾病');
INSERT INTO `reserve` VALUES (56, 5, 43, '09:37:26', '疾病');
INSERT INTO `reserve` VALUES (57, 3, 85, '09:29:48', '疾病');
INSERT INTO `reserve` VALUES (58, 2, 58, '13:26:39', '疾病');
INSERT INTO `reserve` VALUES (59, 4, 90, '17:15:25', '疾病');
INSERT INTO `reserve` VALUES (60, 4, 65, '15:34:57', '亚健康');
INSERT INTO `reserve` VALUES (62, 1, 61, '13:18:32', '亚健康');
INSERT INTO `reserve` VALUES (63, 2, 57, '13:21:35', '亚健康');
INSERT INTO `reserve` VALUES (64, 1, 59, '12:13:03', '亚健康');
INSERT INTO `reserve` VALUES (65, 4, 82, '12:53:38', '亚健康');
INSERT INTO `reserve` VALUES (66, 3, 39, '13:57:33', '亚健康');
INSERT INTO `reserve` VALUES (67, 1, 11, '14:02:08', '亚健康');
INSERT INTO `reserve` VALUES (68, 4, 58, '14:57:39', '亚健康');
INSERT INTO `reserve` VALUES (69, 2, 59, '14:26:28', '亚健康');
INSERT INTO `reserve` VALUES (70, 3, 43, '12:59:05', '亚健康');
INSERT INTO `reserve` VALUES (71, 1, 87, '10:45:13', '健康');
INSERT INTO `reserve` VALUES (72, 2, 108, '17:26:58', '健康');
INSERT INTO `reserve` VALUES (73, 4, 61, '13:52:12', '健康');
INSERT INTO `reserve` VALUES (74, 4, 57, '15:48:44', '健康');
INSERT INTO `reserve` VALUES (75, 4, 18, '10:25:37', '健康');
INSERT INTO `reserve` VALUES (76, 2, 92, '09:08:38', '健康');
INSERT INTO `reserve` VALUES (77, 2, 38, '12:31:01', '健康');
INSERT INTO `reserve` VALUES (78, 4, 47, '15:16:51', '健康');
INSERT INTO `reserve` VALUES (79, 1, 96, '17:25:22', '健康');
INSERT INTO `reserve` VALUES (80, 1, 17, '10:53:56', '健康');
INSERT INTO `reserve` VALUES (81, 2, 37, '16:00:57', '健康');
INSERT INTO `reserve` VALUES (82, 3, 100, '10:27:09', '健康');
INSERT INTO `reserve` VALUES (83, 4, 99, '16:29:42', '健康');
INSERT INTO `reserve` VALUES (84, 1, 58, '13:52:59', '健康');
INSERT INTO `reserve` VALUES (85, 5, 19, '13:00:33', '健康');
INSERT INTO `reserve` VALUES (86, 5, 90, '13:38:30', '健康');
INSERT INTO `reserve` VALUES (87, 4, 76, '10:57:02', '健康');
INSERT INTO `reserve` VALUES (88, 3, 57, '11:48:15', '健康');
INSERT INTO `reserve` VALUES (89, 4, 50, '09:26:11', '健康');
INSERT INTO `reserve` VALUES (90, 4, 39, '10:50:28', '健康');
INSERT INTO `reserve` VALUES (91, 5, 83, '15:47:55', '亚健康');
INSERT INTO `reserve` VALUES (92, 1, 82, '14:04:13', '亚健康');
INSERT INTO `reserve` VALUES (93, 4, 96, '12:34:56', '亚健康');
INSERT INTO `reserve` VALUES (94, 4, 95, '13:08:47', '亚健康');
INSERT INTO `reserve` VALUES (95, 1, 89, '09:18:32', '亚健康');
INSERT INTO `reserve` VALUES (96, 2, 109, '13:04:35', '亚健康');
INSERT INTO `reserve` VALUES (97, 1, 63, '16:28:59', '亚健康');
INSERT INTO `reserve` VALUES (98, 2, 52, '12:54:26', '亚健康');
INSERT INTO `reserve` VALUES (99, 1, 82, '13:30:37', '亚健康');
INSERT INTO `reserve` VALUES (100, 2, 91, '16:19:30', '亚健康');
INSERT INTO `reserve` VALUES (101, 5, 23, '14:08:24', '亚健康');
INSERT INTO `reserve` VALUES (102, 5, 50, '16:34:56', '亚健康');
INSERT INTO `reserve` VALUES (103, 3, 87, '11:25:10', '亚健康');
INSERT INTO `reserve` VALUES (104, 4, 87, '16:55:02', '亚健康');
INSERT INTO `reserve` VALUES (105, 4, 87, '15:46:59', '亚健康');
INSERT INTO `reserve` VALUES (106, 2, 55, '14:17:03', '亚健康');
INSERT INTO `reserve` VALUES (107, 3, 92, '12:41:26', '亚健康');
INSERT INTO `reserve` VALUES (108, 4, 57, '09:57:59', '亚健康');
INSERT INTO `reserve` VALUES (109, 3, 90, '10:36:42', '亚健康');
INSERT INTO `reserve` VALUES (110, 3, 23, '15:31:38', '亚健康');
INSERT INTO `reserve` VALUES (111, 1, 52, '13:20:15', '亚健康');
INSERT INTO `reserve` VALUES (112, 4, 35, '09:43:39', '亚健康');
INSERT INTO `reserve` VALUES (113, 2, 59, '11:36:53', '亚健康');
INSERT INTO `reserve` VALUES (114, 4, 31, '15:10:12', '亚健康');
INSERT INTO `reserve` VALUES (115, 1, 59, '17:45:04', '亚健康');
INSERT INTO `reserve` VALUES (116, 5, 20, '12:34:55', '亚健康');
INSERT INTO `reserve` VALUES (117, 1, 15, '11:33:07', '亚健康');
INSERT INTO `reserve` VALUES (118, 2, 101, '13:11:36', '亚健康');
INSERT INTO `reserve` VALUES (119, 3, 16, '12:42:42', '亚健康');
INSERT INTO `reserve` VALUES (120, 3, 109, '09:35:38', '亚健康');
INSERT INTO `reserve` VALUES (121, 4, 83, '15:50:34', '亚健康');
INSERT INTO `reserve` VALUES (122, 2, 44, '15:43:16', '亚健康');
INSERT INTO `reserve` VALUES (123, 2, 18, '09:06:22', '亚健康');
INSERT INTO `reserve` VALUES (124, 5, 90, '11:32:33', '亚健康');
INSERT INTO `reserve` VALUES (125, 3, 85, '10:54:22', '亚健康');
INSERT INTO `reserve` VALUES (126, 4, 89, '16:26:18', '亚健康');
INSERT INTO `reserve` VALUES (127, 2, 45, '12:56:20', '亚健康');
INSERT INTO `reserve` VALUES (128, 3, 42, '10:03:29', '亚健康');
INSERT INTO `reserve` VALUES (129, 2, 71, '12:38:26', '亚健康');
INSERT INTO `reserve` VALUES (130, 2, 10, '16:03:26', '亚健康');
INSERT INTO `reserve` VALUES (131, 3, 12, '16:01:23', '亚健康');
INSERT INTO `reserve` VALUES (132, 1, 103, '17:18:24', '亚健康');
INSERT INTO `reserve` VALUES (133, 5, 64, '15:23:08', '亚健康');
INSERT INTO `reserve` VALUES (134, 5, 36, '16:02:06', '亚健康');
INSERT INTO `reserve` VALUES (135, 1, 48, '10:15:53', '亚健康');
INSERT INTO `reserve` VALUES (136, 5, 67, '17:28:19', '健康');
INSERT INTO `reserve` VALUES (137, 2, 93, '13:00:50', '健康');
INSERT INTO `reserve` VALUES (138, 4, 32, '09:34:15', '健康');
INSERT INTO `reserve` VALUES (139, 3, 89, '14:31:23', '健康');
INSERT INTO `reserve` VALUES (140, 1, 52, '11:38:46', '健康');
INSERT INTO `reserve` VALUES (141, 4, 58, '11:22:01', '健康');
INSERT INTO `reserve` VALUES (142, 4, 52, '15:42:32', '健康');
INSERT INTO `reserve` VALUES (143, 2, 70, '15:52:11', '健康');
INSERT INTO `reserve` VALUES (144, 1, 31, '10:49:48', '健康');
INSERT INTO `reserve` VALUES (145, 2, 102, '16:33:45', '健康');
INSERT INTO `reserve` VALUES (146, 4, 24, '16:20:43', '健康');
INSERT INTO `reserve` VALUES (147, 3, 26, '16:03:37', '健康');
INSERT INTO `reserve` VALUES (148, 2, 59, '17:35:52', '健康');
INSERT INTO `reserve` VALUES (149, 3, 16, '16:12:01', '健康');
INSERT INTO `reserve` VALUES (150, 3, 79, '13:34:15', '健康');
INSERT INTO `reserve` VALUES (152, 3, 33, '12:27:06', '健康');
INSERT INTO `reserve` VALUES (153, 3, 84, '17:05:06', '健康');
INSERT INTO `reserve` VALUES (154, 1, 74, '15:03:26', '健康');
INSERT INTO `reserve` VALUES (155, 3, 34, '12:13:46', '健康');
INSERT INTO `reserve` VALUES (156, 3, 12, '10:00:05', '健康');
INSERT INTO `reserve` VALUES (157, 5, 16, '13:07:38', '健康');
INSERT INTO `reserve` VALUES (158, 2, 64, '10:54:59', '健康');
INSERT INTO `reserve` VALUES (159, 4, 107, '10:46:29', '健康');
INSERT INTO `reserve` VALUES (160, 5, 82, '09:40:29', '健康');
INSERT INTO `reserve` VALUES (161, 3, 86, '13:16:11', '健康');
INSERT INTO `reserve` VALUES (162, 3, 82, '13:38:11', '健康');
INSERT INTO `reserve` VALUES (163, 3, 10, '13:41:25', '健康');
INSERT INTO `reserve` VALUES (164, 3, 51, '09:22:00', '健康');
INSERT INTO `reserve` VALUES (165, 3, 78, '14:04:38', '健康');
INSERT INTO `reserve` VALUES (166, 2, 34, '14:32:41', '健康');
INSERT INTO `reserve` VALUES (167, 2, 64, '14:34:27', '健康');
INSERT INTO `reserve` VALUES (168, 3, 15, '10:01:02', '健康');
INSERT INTO `reserve` VALUES (169, 3, 31, '17:07:41', '健康');
INSERT INTO `reserve` VALUES (170, 3, 56, '16:42:34', '健康');
INSERT INTO `reserve` VALUES (171, 4, 61, '13:20:20', '健康');
INSERT INTO `reserve` VALUES (172, 2, 107, '12:22:26', '健康');
INSERT INTO `reserve` VALUES (173, 2, 78, '12:40:39', '健康');
INSERT INTO `reserve` VALUES (174, 5, 16, '16:36:20', '健康');
INSERT INTO `reserve` VALUES (175, 1, 37, '12:05:42', '健康');
INSERT INTO `reserve` VALUES (176, 3, 22, '14:18:21', '健康');
INSERT INTO `reserve` VALUES (177, 4, 12, '09:37:04', '健康');
INSERT INTO `reserve` VALUES (178, 2, 72, '13:56:40', '健康');
INSERT INTO `reserve` VALUES (179, 1, 17, '16:13:46', '健康');
INSERT INTO `reserve` VALUES (180, 4, 103, '16:52:25', '健康');
INSERT INTO `reserve` VALUES (181, 1, 69, '14:50:37', '健康');
INSERT INTO `reserve` VALUES (182, 4, 73, '13:45:26', '健康');
INSERT INTO `reserve` VALUES (183, 2, 18, '12:53:20', '健康');
INSERT INTO `reserve` VALUES (184, 2, 11, '09:17:49', '健康');
INSERT INTO `reserve` VALUES (185, 5, 105, '14:23:26', '健康');
INSERT INTO `reserve` VALUES (186, 5, 91, '15:04:14', '健康');
INSERT INTO `reserve` VALUES (187, 2, 47, '14:15:46', '健康');
INSERT INTO `reserve` VALUES (188, 2, 12, '14:13:44', '健康');
INSERT INTO `reserve` VALUES (189, 1, 39, '15:35:09', '健康');
INSERT INTO `reserve` VALUES (190, 1, 26, '12:40:31', '健康');
INSERT INTO `reserve` VALUES (191, 3, 88, '12:02:52', '健康');
INSERT INTO `reserve` VALUES (192, 4, 67, '11:05:39', '健康');
INSERT INTO `reserve` VALUES (193, 2, 35, '09:02:22', '健康');
INSERT INTO `reserve` VALUES (194, 2, 96, '16:36:25', '健康');
INSERT INTO `reserve` VALUES (195, 2, 14, '17:11:15', '健康');
INSERT INTO `reserve` VALUES (196, 1, 88, '17:30:49', '健康');
INSERT INTO `reserve` VALUES (197, 5, 95, '13:30:31', '健康');
INSERT INTO `reserve` VALUES (198, 5, 53, '10:25:25', '健康');
INSERT INTO `reserve` VALUES (199, 5, 25, '11:44:52', '健康');
INSERT INTO `reserve` VALUES (200, 2, 77, '17:21:25', '健康');
INSERT INTO `reserve` VALUES (201, 5, 11, '15:12:20', '健康');
INSERT INTO `reserve` VALUES (202, 4, 89, '10:09:30', '健康');
INSERT INTO `reserve` VALUES (203, 3, 101, '10:33:45', '健康');
INSERT INTO `reserve` VALUES (204, 3, 60, '12:34:46', '健康');
INSERT INTO `reserve` VALUES (205, 5, 70, '12:12:44', '健康');
INSERT INTO `reserve` VALUES (206, 3, 16, '10:41:54', '健康');
INSERT INTO `reserve` VALUES (207, 5, 53, '13:15:18', '健康');
INSERT INTO `reserve` VALUES (208, 3, 71, '14:53:40', '健康');
INSERT INTO `reserve` VALUES (209, 5, 46, '14:19:55', '健康');
INSERT INTO `reserve` VALUES (210, 4, 27, '17:52:31', '健康');
INSERT INTO `reserve` VALUES (211, 2, 21, '16:45:25', '健康');
INSERT INTO `reserve` VALUES (212, 1, 49, '11:29:55', '健康');
INSERT INTO `reserve` VALUES (213, 4, 107, '15:56:19', '健康');
INSERT INTO `reserve` VALUES (214, 2, 95, '10:25:43', '健康');
INSERT INTO `reserve` VALUES (215, 2, 24, '14:51:42', '健康');
INSERT INTO `reserve` VALUES (216, 3, 96, '15:49:06', '健康');
INSERT INTO `reserve` VALUES (217, 5, 73, '15:55:16', '健康');
INSERT INTO `reserve` VALUES (218, 2, 94, '09:15:19', '健康');
INSERT INTO `reserve` VALUES (219, 4, 24, '12:54:54', '健康');
INSERT INTO `reserve` VALUES (220, 3, 97, '15:56:39', '健康');
INSERT INTO `reserve` VALUES (221, 5, 83, '14:39:16', '健康');
INSERT INTO `reserve` VALUES (222, 5, 98, '16:12:18', '健康');
INSERT INTO `reserve` VALUES (223, 4, 31, '14:54:33', '健康');
INSERT INTO `reserve` VALUES (224, 4, 51, '17:31:49', '健康');
INSERT INTO `reserve` VALUES (225, 5, 33, '11:32:06', '健康');
INSERT INTO `reserve` VALUES (226, 3, 57, '17:30:54', '健康');
INSERT INTO `reserve` VALUES (227, 5, 33, '09:01:05', '健康');
INSERT INTO `reserve` VALUES (228, 3, 78, '09:52:34', '健康');
INSERT INTO `reserve` VALUES (229, 1, 46, '14:15:56', '健康');
INSERT INTO `reserve` VALUES (230, 2, 69, '17:12:24', '健康');
INSERT INTO `reserve` VALUES (231, 3, 101, '11:40:22', '健康');
INSERT INTO `reserve` VALUES (232, 3, 49, '14:50:35', '健康');
INSERT INTO `reserve` VALUES (233, 3, 18, '17:36:46', '健康');
INSERT INTO `reserve` VALUES (235, 4, 23, '11:45:18', '健康');
INSERT INTO `reserve` VALUES (236, 2, 42, '10:48:52', '健康');
INSERT INTO `reserve` VALUES (237, 5, 38, '12:45:33', '健康');
INSERT INTO `reserve` VALUES (238, 1, 23, '16:00:27', '健康');
INSERT INTO `reserve` VALUES (239, 4, 61, '12:28:56', '亚健康');
INSERT INTO `reserve` VALUES (240, 4, 45, '12:10:02', '亚健康');
INSERT INTO `reserve` VALUES (241, 1, 35, '16:55:21', '亚健康');
INSERT INTO `reserve` VALUES (242, 4, 93, '12:21:54', '亚健康');
INSERT INTO `reserve` VALUES (243, 3, 18, '12:39:06', '亚健康');
INSERT INTO `reserve` VALUES (244, 2, 100, '11:55:40', '亚健康');
INSERT INTO `reserve` VALUES (245, 3, 93, '17:39:39', '亚健康');
INSERT INTO `reserve` VALUES (246, 4, 68, '17:26:32', '亚健康');
INSERT INTO `reserve` VALUES (247, 3, 49, '10:24:55', '亚健康');
INSERT INTO `reserve` VALUES (248, 4, 84, '13:03:51', '亚健康');
INSERT INTO `reserve` VALUES (249, 2, 97, '09:48:28', '亚健康');
INSERT INTO `reserve` VALUES (250, 2, 95, '12:48:32', '亚健康');
INSERT INTO `reserve` VALUES (251, 3, 71, '16:16:07', '亚健康');
INSERT INTO `reserve` VALUES (252, 3, 67, '09:42:50', '亚健康');
INSERT INTO `reserve` VALUES (253, 2, 108, '10:20:03', '亚健康');
INSERT INTO `reserve` VALUES (254, 1, 84, '15:54:38', '亚健康');
INSERT INTO `reserve` VALUES (255, 2, 58, '16:31:53', '亚健康');
INSERT INTO `reserve` VALUES (256, 2, 27, '12:17:03', '亚健康');
INSERT INTO `reserve` VALUES (257, 1, 36, '16:52:48', '亚健康');
INSERT INTO `reserve` VALUES (258, 3, 94, '09:24:00', '亚健康');
INSERT INTO `reserve` VALUES (259, 3, 40, '10:04:28', '亚健康');
INSERT INTO `reserve` VALUES (260, 3, 16, '10:35:44', '亚健康');
INSERT INTO `reserve` VALUES (261, 4, 24, '13:27:18', '亚健康');
INSERT INTO `reserve` VALUES (262, 2, 32, '12:31:11', '亚健康');
INSERT INTO `reserve` VALUES (263, 4, 104, '16:12:59', '亚健康');
INSERT INTO `reserve` VALUES (264, 4, 57, '09:04:34', '亚健康');
INSERT INTO `reserve` VALUES (265, 3, 32, '12:37:38', '亚健康');
INSERT INTO `reserve` VALUES (266, 4, 37, '09:40:07', '亚健康');
INSERT INTO `reserve` VALUES (267, 5, 64, '10:18:09', '亚健康');
INSERT INTO `reserve` VALUES (268, 4, 77, '09:28:34', '亚健康');
INSERT INTO `reserve` VALUES (269, 2, 15, '16:14:57', '亚健康');
INSERT INTO `reserve` VALUES (271, 4, 97, '13:13:45', '亚健康');
INSERT INTO `reserve` VALUES (272, 4, 48, '17:26:12', '亚健康');
INSERT INTO `reserve` VALUES (273, 2, 30, '10:15:42', '亚健康');
INSERT INTO `reserve` VALUES (274, 5, 60, '10:13:15', '亚健康');
INSERT INTO `reserve` VALUES (275, 3, 100, '16:08:07', '亚健康');
INSERT INTO `reserve` VALUES (276, 3, 18, '16:33:16', '亚健康');
INSERT INTO `reserve` VALUES (277, 2, 15, '16:31:53', '亚健康');
INSERT INTO `reserve` VALUES (278, 4, 11, '15:47:10', '亚健康');
INSERT INTO `reserve` VALUES (279, 2, 76, '12:29:00', '亚健康');
INSERT INTO `reserve` VALUES (280, 2, 83, '15:06:15', '亚健康');
INSERT INTO `reserve` VALUES (281, 5, 25, '15:15:36', '亚健康');
INSERT INTO `reserve` VALUES (282, 3, 53, '16:22:20', '亚健康');
INSERT INTO `reserve` VALUES (283, 2, 11, '13:58:33', '亚健康');
INSERT INTO `reserve` VALUES (284, 4, 30, '12:49:42', '亚健康');
INSERT INTO `reserve` VALUES (285, 3, 24, '14:54:55', '亚健康');
INSERT INTO `reserve` VALUES (286, 3, 90, '15:39:11', '亚健康');
INSERT INTO `reserve` VALUES (287, 2, 55, '13:38:13', '亚健康');
INSERT INTO `reserve` VALUES (288, 4, 18, '13:54:34', '亚健康');
INSERT INTO `reserve` VALUES (289, 2, 55, '15:32:13', '亚健康');
INSERT INTO `reserve` VALUES (290, 2, 41, '14:57:56', '亚健康');
INSERT INTO `reserve` VALUES (291, 5, 107, '09:16:03', '亚健康');
INSERT INTO `reserve` VALUES (292, 4, 101, '15:54:39', '亚健康');
INSERT INTO `reserve` VALUES (293, 5, 34, '10:51:54', '亚健康');
INSERT INTO `reserve` VALUES (294, 1, 93, '10:04:31', '亚健康');
INSERT INTO `reserve` VALUES (295, 4, 59, '09:25:22', '亚健康');
INSERT INTO `reserve` VALUES (296, 1, 53, '15:06:40', '亚健康');
INSERT INTO `reserve` VALUES (297, 3, 61, '11:27:17', '亚健康');
INSERT INTO `reserve` VALUES (298, 2, 21, '15:14:36', '亚健康');
INSERT INTO `reserve` VALUES (299, 3, 67, '10:34:43', '亚健康');
INSERT INTO `reserve` VALUES (300, 4, 67, '17:47:33', '亚健康');
INSERT INTO `reserve` VALUES (301, 2, 24, '17:42:02', '亚健康');
INSERT INTO `reserve` VALUES (302, 1, 44, '10:30:27', '亚健康');
INSERT INTO `reserve` VALUES (303, 1, 59, '11:23:59', '亚健康');
INSERT INTO `reserve` VALUES (304, 4, 67, '09:15:40', '亚健康');
INSERT INTO `reserve` VALUES (305, 3, 25, '17:31:11', '亚健康');
INSERT INTO `reserve` VALUES (306, 1, 21, '14:55:21', '亚健康');
INSERT INTO `reserve` VALUES (307, 2, 68, '12:27:17', '亚健康');
INSERT INTO `reserve` VALUES (308, 2, 12, '17:34:45', '亚健康');
INSERT INTO `reserve` VALUES (309, 3, 90, '13:12:44', '亚健康');
INSERT INTO `reserve` VALUES (310, 3, 83, '09:36:43', '亚健康');
INSERT INTO `reserve` VALUES (311, 4, 43, '10:27:59', '亚健康');
INSERT INTO `reserve` VALUES (312, 3, 52, '14:14:06', '亚健康');
INSERT INTO `reserve` VALUES (313, 2, 93, '12:37:47', '亚健康');
INSERT INTO `reserve` VALUES (314, 2, 23, '12:10:22', '亚健康');
INSERT INTO `reserve` VALUES (315, 5, 100, '10:38:41', '亚健康');
INSERT INTO `reserve` VALUES (316, 3, 109, '13:01:51', '亚健康');
INSERT INTO `reserve` VALUES (317, 3, 46, '10:56:31', '亚健康');
INSERT INTO `reserve` VALUES (318, 3, 65, '16:26:41', '亚健康');
INSERT INTO `reserve` VALUES (319, 1, 26, '14:04:29', '亚健康');
INSERT INTO `reserve` VALUES (320, 5, 90, '13:06:19', '亚健康');
INSERT INTO `reserve` VALUES (321, 2, 67, '16:17:04', '亚健康');
INSERT INTO `reserve` VALUES (323, 3, 16, '17:55:25', '亚健康');
INSERT INTO `reserve` VALUES (324, 4, 61, '14:07:50', '亚健康');
INSERT INTO `reserve` VALUES (325, 4, 17, '13:08:47', '亚健康');
INSERT INTO `reserve` VALUES (326, 5, 18, '14:10:37', '亚健康');
INSERT INTO `reserve` VALUES (327, 4, 70, '17:27:20', '亚健康');
INSERT INTO `reserve` VALUES (328, 3, 20, '13:47:23', '亚健康');
INSERT INTO `reserve` VALUES (329, 3, 68, '13:19:14', '亚健康');
INSERT INTO `reserve` VALUES (330, 5, 56, '16:36:35', '亚健康');
INSERT INTO `reserve` VALUES (331, 3, 21, '11:13:37', '亚健康');
INSERT INTO `reserve` VALUES (332, 2, 39, '14:16:46', '亚健康');
INSERT INTO `reserve` VALUES (333, 2, 68, '09:57:02', '亚健康');
INSERT INTO `reserve` VALUES (334, 2, 71, '12:39:27', '亚健康');
INSERT INTO `reserve` VALUES (335, 2, 56, '16:15:33', '亚健康');
INSERT INTO `reserve` VALUES (336, 2, 88, '15:48:35', '亚健康');
INSERT INTO `reserve` VALUES (337, 4, 95, '12:30:17', '亚健康');
INSERT INTO `reserve` VALUES (338, 2, 47, '09:29:12', '亚健康');
INSERT INTO `reserve` VALUES (339, 2, 94, '09:19:56', '亚健康');
INSERT INTO `reserve` VALUES (340, 2, 108, '13:31:22', '亚健康');
INSERT INTO `reserve` VALUES (341, 3, 44, '13:23:11', '亚健康');
INSERT INTO `reserve` VALUES (342, 3, 25, '17:17:46', '亚健康');
INSERT INTO `reserve` VALUES (343, 2, 47, '14:26:37', '亚健康');
INSERT INTO `reserve` VALUES (344, 2, 12, '13:50:13', '亚健康');
INSERT INTO `reserve` VALUES (345, 4, 45, '09:43:29', '亚健康');
INSERT INTO `reserve` VALUES (346, 3, 94, '13:47:31', '亚健康');
INSERT INTO `reserve` VALUES (348, 2, 99, '17:10:02', '亚健康');
INSERT INTO `reserve` VALUES (349, 2, 19, '09:56:53', '亚健康');
INSERT INTO `reserve` VALUES (350, 4, 58, '11:57:25', '亚健康');
INSERT INTO `reserve` VALUES (351, 2, 46, '12:24:48', '亚健康');
INSERT INTO `reserve` VALUES (352, 1, 17, '10:19:46', '亚健康');
INSERT INTO `reserve` VALUES (353, 2, 73, '13:58:39', '亚健康');
INSERT INTO `reserve` VALUES (354, 1, 82, '10:55:15', '亚健康');
INSERT INTO `reserve` VALUES (355, 4, 13, '11:25:12', '亚健康');
INSERT INTO `reserve` VALUES (356, 2, 42, '15:02:45', '亚健康');
INSERT INTO `reserve` VALUES (357, 1, 77, '14:59:45', '亚健康');
INSERT INTO `reserve` VALUES (358, 5, 79, '12:17:30', '亚健康');
INSERT INTO `reserve` VALUES (359, 5, 31, '14:45:19', '亚健康');
INSERT INTO `reserve` VALUES (360, 2, 57, '10:32:13', '亚健康');
INSERT INTO `reserve` VALUES (361, 4, 23, '09:09:20', '亚健康');
INSERT INTO `reserve` VALUES (362, 2, 19, '13:10:24', '亚健康');
INSERT INTO `reserve` VALUES (363, 4, 45, '09:21:17', '亚健康');
INSERT INTO `reserve` VALUES (364, 4, 71, '14:47:33', '亚健康');
INSERT INTO `reserve` VALUES (365, 2, 85, '17:08:28', '亚健康');
INSERT INTO `reserve` VALUES (366, 4, 108, '13:36:08', '亚健康');
INSERT INTO `reserve` VALUES (367, 3, 63, '17:53:11', '亚健康');
INSERT INTO `reserve` VALUES (368, 3, 60, '11:25:06', '亚健康');
INSERT INTO `reserve` VALUES (369, 2, 78, '13:48:57', '亚健康');
INSERT INTO `reserve` VALUES (370, 3, 59, '17:12:56', '亚健康');
INSERT INTO `reserve` VALUES (371, 2, 32, '17:44:50', '亚健康');
INSERT INTO `reserve` VALUES (372, 5, 104, '16:16:36', '健康');
INSERT INTO `reserve` VALUES (373, 4, 85, '09:29:45', '亚健康');
INSERT INTO `reserve` VALUES (374, 3, 25, '15:12:54', '亚健康');
INSERT INTO `reserve` VALUES (375, 5, 90, '10:01:52', '亚健康');
INSERT INTO `reserve` VALUES (376, 3, 16, '14:48:47', '亚健康');
INSERT INTO `reserve` VALUES (377, 4, 82, '13:10:03', '亚健康');
INSERT INTO `reserve` VALUES (378, 4, 55, '09:31:00', '亚健康');
INSERT INTO `reserve` VALUES (379, 3, 45, '10:39:49', '亚健康');
INSERT INTO `reserve` VALUES (380, 5, 27, '10:47:24', '亚健康');
INSERT INTO `reserve` VALUES (381, 3, 91, '10:49:29', '亚健康');
INSERT INTO `reserve` VALUES (382, 3, 93, '12:33:04', '亚健康');
INSERT INTO `reserve` VALUES (383, 1, 56, '16:56:46', '亚健康');
INSERT INTO `reserve` VALUES (384, 2, 85, '16:55:14', '亚健康');
INSERT INTO `reserve` VALUES (385, 4, 64, '13:30:30', '亚健康');
INSERT INTO `reserve` VALUES (386, 3, 23, '11:30:46', '亚健康');
INSERT INTO `reserve` VALUES (387, 1, 102, '15:55:45', '亚健康');
INSERT INTO `reserve` VALUES (388, 1, 28, '10:47:53', '亚健康');
INSERT INTO `reserve` VALUES (389, 1, 71, '16:20:22', '疾病');
INSERT INTO `reserve` VALUES (390, 2, 67, '12:17:06', '亚健康');
INSERT INTO `reserve` VALUES (391, 4, 61, '15:07:52', '亚健康');
INSERT INTO `reserve` VALUES (392, 2, 30, '17:23:07', '疾病');
INSERT INTO `reserve` VALUES (393, 4, 85, '15:07:35', '疾病');
INSERT INTO `reserve` VALUES (394, 4, 92, '10:17:38', '疾病');
INSERT INTO `reserve` VALUES (395, 4, 82, '16:12:41', '疾病');
INSERT INTO `reserve` VALUES (396, 2, 72, '13:54:22', '疾病');
INSERT INTO `reserve` VALUES (397, 1, 95, '16:52:19', '疾病');
INSERT INTO `reserve` VALUES (398, 5, 41, '16:09:57', '亚健康');
INSERT INTO `reserve` VALUES (399, 3, 74, '17:35:09', '疾病');
INSERT INTO `reserve` VALUES (400, 4, 89, '09:50:29', '疾病');
INSERT INTO `reserve` VALUES (401, 1, 85, '17:09:17', '疾病');
INSERT INTO `reserve` VALUES (402, 4, 63, '11:30:19', '疾病');
INSERT INTO `reserve` VALUES (403, 3, 81, '11:33:10', '疾病');
INSERT INTO `reserve` VALUES (404, 2, 48, '09:48:45', '疾病');
INSERT INTO `reserve` VALUES (405, 5, 17, '13:06:24', '疾病');
INSERT INTO `reserve` VALUES (406, 2, 100, '17:29:46', '疾病');
INSERT INTO `reserve` VALUES (407, 3, 95, '10:40:27', '疾病');
INSERT INTO `reserve` VALUES (408, 4, 70, '13:52:47', '疾病');
INSERT INTO `reserve` VALUES (409, 2, 78, '13:25:11', '疾病');
INSERT INTO `reserve` VALUES (410, 4, 34, '17:24:16', '疾病');
INSERT INTO `reserve` VALUES (411, 2, 9, '13:59:11', '疾病');
INSERT INTO `reserve` VALUES (412, 3, 45, '13:29:33', '疾病');
INSERT INTO `reserve` VALUES (413, 1, 37, '11:18:01', '疾病');
INSERT INTO `reserve` VALUES (414, 3, 9, '09:49:20', '疾病');
INSERT INTO `reserve` VALUES (415, 3, 88, '14:22:29', '疾病');
INSERT INTO `reserve` VALUES (416, 5, 42, '10:33:46', '疾病');
INSERT INTO `reserve` VALUES (417, 1, 83, '10:19:08', '疾病');
INSERT INTO `reserve` VALUES (418, 4, 88, '09:13:11', '疾病');
INSERT INTO `reserve` VALUES (419, 2, 89, '10:37:39', '疾病');
INSERT INTO `reserve` VALUES (420, 5, 29, '16:38:23', '疾病');
INSERT INTO `reserve` VALUES (421, 3, 37, '15:45:21', '疾病');
INSERT INTO `reserve` VALUES (422, 4, 16, '17:55:44', '疾病');
INSERT INTO `reserve` VALUES (423, 2, 23, '09:35:13', '疾病');
INSERT INTO `reserve` VALUES (424, 3, 44, '15:10:08', '疾病');
INSERT INTO `reserve` VALUES (425, 3, 35, '10:32:55', '疾病');
INSERT INTO `reserve` VALUES (426, 2, 25, '14:21:06', '疾病');
INSERT INTO `reserve` VALUES (427, 4, 35, '09:46:15', '疾病');
INSERT INTO `reserve` VALUES (428, 5, 77, '15:51:04', '疾病');
INSERT INTO `reserve` VALUES (429, 4, 10, '10:55:48', '健康');
INSERT INTO `reserve` VALUES (430, 1, 45, '16:42:14', '疾病');
INSERT INTO `reserve` VALUES (431, 2, 106, '14:44:40', '疾病');
INSERT INTO `reserve` VALUES (432, 2, 75, '15:27:51', '疾病');
INSERT INTO `reserve` VALUES (433, 3, 88, '16:52:20', '疾病');
INSERT INTO `reserve` VALUES (434, 2, 45, '13:47:47', '疾病');
INSERT INTO `reserve` VALUES (435, 2, 49, '12:54:35', '疾病');
INSERT INTO `reserve` VALUES (436, 5, 90, '11:08:54', '疾病');
INSERT INTO `reserve` VALUES (437, 4, 34, '16:20:59', '疾病');
INSERT INTO `reserve` VALUES (438, 3, 76, '10:49:44', '疾病');
INSERT INTO `reserve` VALUES (439, 2, 78, '17:19:57', '疾病');
INSERT INTO `reserve` VALUES (440, 3, 38, '11:51:17', '疾病');
INSERT INTO `reserve` VALUES (441, 2, 104, '11:01:00', '疾病');
INSERT INTO `reserve` VALUES (442, 4, 50, '17:08:00', '疾病');
INSERT INTO `reserve` VALUES (443, 3, 61, '17:12:13', '疾病');
INSERT INTO `reserve` VALUES (444, 1, 54, '14:13:40', '疾病');
INSERT INTO `reserve` VALUES (445, 2, 90, '12:31:25', '疾病');
INSERT INTO `reserve` VALUES (446, 4, 55, '09:01:28', '疾病');
INSERT INTO `reserve` VALUES (447, 5, 58, '10:45:57', '疾病');
INSERT INTO `reserve` VALUES (448, 3, 23, '14:21:02', '疾病');
INSERT INTO `reserve` VALUES (449, 4, 25, '10:33:45', '疾病');
INSERT INTO `reserve` VALUES (450, 3, 82, '17:31:29', '疾病');
INSERT INTO `reserve` VALUES (451, 4, 103, '14:30:51', '疾病');
INSERT INTO `reserve` VALUES (452, 2, 20, '10:01:05', '疾病');
INSERT INTO `reserve` VALUES (453, 5, 39, '12:43:19', '疾病');
INSERT INTO `reserve` VALUES (454, 3, 101, '16:58:46', '疾病');
INSERT INTO `reserve` VALUES (455, 2, 20, '14:49:42', '疾病');
INSERT INTO `reserve` VALUES (456, 2, 103, '12:51:31', '疾病');
INSERT INTO `reserve` VALUES (457, 5, 90, '14:35:56', '疾病');
INSERT INTO `reserve` VALUES (458, 3, 65, '12:48:25', '健康');
INSERT INTO `reserve` VALUES (459, 4, 42, '17:04:47', '健康');
INSERT INTO `reserve` VALUES (460, 1, 43, '17:04:28', '健康');
INSERT INTO `reserve` VALUES (461, 1, 54, '15:49:02', '健康');
INSERT INTO `reserve` VALUES (463, 3, 58, '14:42:36', '健康');
INSERT INTO `reserve` VALUES (464, 5, 83, '12:36:28', '健康');
INSERT INTO `reserve` VALUES (465, 4, 64, '17:36:29', '健康');
INSERT INTO `reserve` VALUES (466, 5, 45, '15:42:25', '健康');
INSERT INTO `reserve` VALUES (467, 3, 29, '12:17:30', '健康');
INSERT INTO `reserve` VALUES (468, 2, 30, '09:04:02', '健康');
INSERT INTO `reserve` VALUES (469, 3, 84, '12:40:02', '健康');
INSERT INTO `reserve` VALUES (470, 4, 36, '12:02:58', '健康');
INSERT INTO `reserve` VALUES (471, 4, 65, '15:01:32', '健康');
INSERT INTO `reserve` VALUES (472, 1, 107, '12:27:30', '健康');
INSERT INTO `reserve` VALUES (473, 5, 20, '13:16:47', '健康');
INSERT INTO `reserve` VALUES (474, 3, 71, '17:39:39', '健康');
INSERT INTO `reserve` VALUES (475, 3, 102, '12:06:45', '健康');
INSERT INTO `reserve` VALUES (476, 3, 80, '11:56:06', '健康');
INSERT INTO `reserve` VALUES (477, 5, 84, '12:29:58', '健康');
INSERT INTO `reserve` VALUES (478, 3, 24, '11:27:57', '健康');
INSERT INTO `reserve` VALUES (479, 3, 29, '12:50:36', '健康');
INSERT INTO `reserve` VALUES (480, 1, 59, '13:57:45', '健康');
INSERT INTO `reserve` VALUES (481, 3, 69, '17:45:22', '健康');
INSERT INTO `reserve` VALUES (482, 1, 36, '11:30:38', '健康');
INSERT INTO `reserve` VALUES (483, 4, 84, '16:36:33', '健康');
INSERT INTO `reserve` VALUES (484, 5, 91, '16:22:13', '健康');
INSERT INTO `reserve` VALUES (485, 4, 26, '14:48:58', '健康');
INSERT INTO `reserve` VALUES (486, 3, 76, '16:50:58', '健康');
INSERT INTO `reserve` VALUES (487, 2, 41, '13:57:41', '健康');
INSERT INTO `reserve` VALUES (488, 2, 10, '15:52:34', '健康');
INSERT INTO `reserve` VALUES (489, 2, 93, '15:19:33', '健康');
INSERT INTO `reserve` VALUES (490, 4, 63, '09:29:04', '健康');
INSERT INTO `reserve` VALUES (491, 3, 41, '09:24:16', '健康');
INSERT INTO `reserve` VALUES (492, 2, 107, '11:57:59', '健康');
INSERT INTO `reserve` VALUES (493, 4, 29, '14:08:43', '健康');
INSERT INTO `reserve` VALUES (494, 3, 49, '16:12:43', '健康');
INSERT INTO `reserve` VALUES (495, 2, 77, '09:07:18', '健康');
INSERT INTO `reserve` VALUES (496, 5, 109, '16:04:07', '健康');
INSERT INTO `reserve` VALUES (497, 2, 101, '09:29:48', '健康');
INSERT INTO `reserve` VALUES (498, 2, 104, '14:21:49', '健康');
INSERT INTO `reserve` VALUES (499, 2, 92, '17:03:46', '健康');
INSERT INTO `reserve` VALUES (500, 2, 46, '12:07:36', '健康');
INSERT INTO `reserve` VALUES (1045, 1, 5, '2024-04-03 11:05:26', '亚健康');
INSERT INTO `reserve` VALUES (1046, 2, 5, '2024-04-03 11:13:48', '亚健康');
INSERT INTO `reserve` VALUES (1048, 1, 1, '2024-04-08 18:02:31', '亚健康');
INSERT INTO `reserve` VALUES (1051, 5, 117, '2024-04-17 16:19:18', '疾病');
INSERT INTO `reserve` VALUES (1052, 4, 117, '2024-04-17 16:19:20', '亚健康');
INSERT INTO `reserve` VALUES (1054, 4, 5, '2024-04-17 16:36:13', '亚健康');
INSERT INTO `reserve` VALUES (1055, 1, 5, '2024-04-17 16:38:48', '亚健康');
INSERT INTO `reserve` VALUES (1056, 1, 5, '2024-04-17 16:41:47', '亚健康');
INSERT INTO `reserve` VALUES (1057, 1, 5, '2024-04-17 16:46:33', '亚健康');
INSERT INTO `reserve` VALUES (1064, 1, 5, '2024-04-19 16:58:42', '疾病');
INSERT INTO `reserve` VALUES (1067, 1, 5, '2024-05-08 14:20:47', '健康');
INSERT INTO `reserve` VALUES (1068, 2, 5, '2024-05-08 14:20:47', '亚健康');
INSERT INTO `reserve` VALUES (1069, 3, 5, '2024-05-08 14:20:48', '亚健康');
INSERT INTO `reserve` VALUES (1070, 3, 5, '2024-05-08 14:36:45', '疾病');
INSERT INTO `reserve` VALUES (1071, 4, 5, '2024-05-08 14:36:46', '亚健康');
INSERT INTO `reserve` VALUES (1072, 2, 5, '2024-05-08 14:36:47', '亚健康');

-- ----------------------------
-- Table structure for setmeal
-- ----------------------------
DROP TABLE IF EXISTS `setmeal`;
CREATE TABLE `setmeal`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '套餐名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '套餐编码',
  `helpCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '助记码',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '适用性别：0通用，1男性，2女性',
  `age` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '适用年龄',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '套餐价格',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '说明',
  `attention` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '注意事项',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '套餐封面',
  `typeId` int NULL DEFAULT NULL COMMENT '套餐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '套餐设置信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setmeal
-- ----------------------------
INSERT INTO `setmeal` VALUES (1, '入职无忧体检套餐（男女通用）', '0001', 'RZTJ', '0', '18-60', '560.0', '入职体检套餐', '需要携带身份证', '1701246840125', 3);
INSERT INTO `setmeal` VALUES (2, '粉红珍爱(女)升级TM12项筛查体检套餐', '0002', 'FHZA', '2', '18-60', '1130.0', '本套餐针对宫颈(TCT检查、HPV乳头瘤病毒筛查）、乳腺（彩超，癌抗125），甲状腺（彩超，甲功验血）以及胸片，血常规肝功等有全面检查，非常适合女性全面疾病筛查使用。', '只限女性', '1701247224647', 2);
INSERT INTO `setmeal` VALUES (3, '阳光爸妈升级肿瘤12项筛查（男女单人）体检套餐', '0003', 'YGBM', '0', '55-100', '1883.0', '本套餐主要针对常见肿瘤筛查，肝肾、颈动脉、脑血栓、颅内血流筛查，以及风湿、颈椎、骨密度检查', '单人套餐', '1701247262462', 1);
INSERT INTO `setmeal` VALUES (4, '珍爱高端升级肿瘤12项筛查（男女单人）', '0004', 'ZAGD', '0', '14-20', '938.0', '本套餐是一款针对生化五项检查，心，肝，胆，胃，甲状腺，颈椎，肺功能，脑部检查（经颅多普勒）以及癌症筛查，适合大众人群体检的套餐', '单人套餐', '1701247115093', 4);
INSERT INTO `setmeal` VALUES (16, '常规检查套餐', '0005', 'CGJC', '0', '0-100', '188.0', '常规检查', '无', '1712112578822', 5);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `typeprice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '套餐价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '套餐分类信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '豪华套餐', '本套餐主要针对常见肿瘤筛查，肝肾、颈动脉、脑血栓、颅内血流筛查，以及风湿、颈椎、骨密度检查', '1883.0');
INSERT INTO `type` VALUES (2, '女性套餐', '本套餐针对宫颈(TCT检查、HPV乳头瘤病毒筛查）、乳腺（彩超，癌抗125），甲状腺（彩超，甲功验血）以及胸片，血常规肝功等有全面检查，非常适合女性全面疾病筛查使用。', '1130.0');
INSERT INTO `type` VALUES (3, '入职套餐', '入职体检套餐', '560.0');
INSERT INTO `type` VALUES (4, '爱心套餐', '本套餐是一款针对生化五项检查，心，肝，胆，胃，甲状腺，颈椎，肺功能，脑部检查（经颅多普勒）以及癌症筛查，适合大众人群体检的套餐', '938.0');
INSERT INTO `type` VALUES (5, '常规套餐', '包括身高体重等检查', '188.0');

SET FOREIGN_KEY_CHECKS = 1;
