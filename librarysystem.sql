/*
 Navicat Premium Data Transfer

 Source Server         : ljh1
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : librarysystem

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 31/03/2024 17:18:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ls_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `ls_bookinfo`;
CREATE TABLE `ls_bookinfo`  (
  `bi_id` int NOT NULL COMMENT '书籍ID',
  `bi_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名称',
  `bt_id` int NOT NULL COMMENT '书籍类型ID',
  `bi_press` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版社',
  `bi_isbn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ISBN',
  `bi_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `bi_location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '存放位置',
  `bi_price` decimal(10, 2) NOT NULL COMMENT '价格',
  `bi_pages` int NOT NULL COMMENT '页数',
  `bi_addtime` datetime NOT NULL COMMENT '入库时间',
  `bi_num` int NOT NULL COMMENT '数量',
  `bi_cover_picture` longblob NULL COMMENT '封面图片',
  PRIMARY KEY (`bi_id`) USING BTREE,
  INDEX `bi_name_index`(`bi_name` ASC) USING BTREE,
  INDEX `bt_id_index`(`bt_id` ASC) USING BTREE,
  INDEX `bi_press_index`(`bi_press` ASC) USING BTREE,
  INDEX `bi_author_index`(`bi_author` ASC) USING BTREE,
  INDEX `bi_price_index`(`bi_price` ASC) USING BTREE,
  INDEX `bi_pages_index`(`bi_pages` ASC) USING BTREE,
  INDEX `bi_addtime_index`(`bi_addtime` ASC) USING BTREE,
  INDEX `bi_num_index`(`bi_num` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '书籍表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ls_bookinfo
-- ----------------------------
INSERT INTO `ls_bookinfo` VALUES (1, '书名1', 10, '出版社1', 'ISBN1', '作者1', '存放位置1', 283.00, 477, '2007-11-10 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (2, '书名2', 24, '出版社2', 'ISBN2', '作者2', '存放位置2', 258.00, 678, '2010-04-07 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (3, '书名3', 3, '出版社3', 'ISBN3', '作者3', '存放位置3', 392.00, 6, '2013-07-15 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (4, '书名4', 5, '出版社4', 'ISBN4', '作者4', '存放位置4', 578.00, 983, '2018-01-29 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (5, '书名5', 16, '出版社5', 'ISBN5', '作者5', '存放位置5', 26.00, 133, '2013-10-25 00:00:00', 45, NULL);
INSERT INTO `ls_bookinfo` VALUES (6, '书名6', 13, '出版社6', 'ISBN6', '作者6', '存放位置6', 312.00, 304, '2008-06-23 00:00:00', 82, NULL);
INSERT INTO `ls_bookinfo` VALUES (7, '书名7', 3, '出版社7', 'ISBN7', '作者7', '存放位置7', 139.00, 457, '2018-07-18 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (8, '书名8', 24, '出版社8', 'ISBN8', '作者8', '存放位置8', 458.00, 900, '2018-11-30 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (9, '书名9', 17, '出版社9', 'ISBN9', '作者9', '存放位置9', 633.00, 914, '2004-10-18 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (10, '书名10', 16, '出版社10', 'ISBN10', '作者10', '存放位置10', 368.00, 379, '2012-07-15 00:00:00', 45, NULL);
INSERT INTO `ls_bookinfo` VALUES (11, '书名11', 17, '出版社11', 'ISBN11', '作者11', '存放位置11', 113.00, 611, '2015-05-09 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (12, '书名12', 19, '出版社12', 'ISBN12', '作者12', '存放位置12', 697.00, 31, '2013-03-04 00:00:00', 61, NULL);
INSERT INTO `ls_bookinfo` VALUES (13, '书名13', 12, '出版社13', 'ISBN13', '作者13', '存放位置13', 465.00, 438, '2010-09-26 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (14, '书名14', 4, '出版社14', 'ISBN14', '作者14', '存放位置14', 171.00, 515, '2022-09-13 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (15, '书名15', 22, '出版社15', 'ISBN15', '作者15', '存放位置15', 21.00, 463, '2005-09-25 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (16, '书名16', 6, '出版社16', 'ISBN16', '作者16', '存放位置16', 744.00, 865, '2012-12-23 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (17, '书名17', 20, '出版社17', 'ISBN17', '作者17', '存放位置17', 630.00, 516, '2005-04-27 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (18, '书名18', 2, '出版社18', 'ISBN18', '作者18', '存放位置18', 623.00, 642, '2021-02-04 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (19, '书名19', 13, '出版社19', 'ISBN19', '作者19', '存放位置19', 327.00, 423, '2021-08-07 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (20, '书名20', 6, '出版社20', 'ISBN20', '作者20', '存放位置20', 631.00, 131, '2006-12-23 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (21, '书名21', 9, '出版社21', 'ISBN21', '作者21', '存放位置21', 579.00, 500, '2007-12-09 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (22, '书名22', 17, '出版社22', 'ISBN22', '作者22', '存放位置22', 123.00, 626, '2016-03-18 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (23, '书名23', 8, '出版社23', 'ISBN23', '作者23', '存放位置23', 222.00, 380, '2001-08-02 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (24, '书名24', 18, '出版社24', 'ISBN24', '作者24', '存放位置24', 111.00, 474, '2023-03-03 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (25, '书名25', 23, '出版社25', 'ISBN25', '作者25', '存放位置25', 456.00, 63, '2014-08-29 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (26, '书名26', 9, '出版社26', 'ISBN26', '作者26', '存放位置26', 254.00, 492, '2012-04-28 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (27, '书名27', 20, '出版社27', 'ISBN27', '作者27', '存放位置27', 684.00, 845, '2015-12-01 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (28, '书名28', 19, '出版社28', 'ISBN28', '作者28', '存放位置28', 533.00, 982, '2022-02-12 00:00:00', 61, NULL);
INSERT INTO `ls_bookinfo` VALUES (29, '书名29', 8, '出版社29', 'ISBN29', '作者29', '存放位置29', 727.00, 487, '2017-03-06 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (30, '书名30', 7, '出版社30', 'ISBN30', '作者30', '存放位置30', 184.00, 262, '2015-01-12 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (31, '书名31', 17, '出版社31', 'ISBN31', '作者31', '存放位置31', 516.00, 69, '2009-12-13 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (32, '书名32', 0, '出版社32', 'ISBN32', '作者32', '存放位置32', 374.00, 337, '2006-10-17 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (33, '书名33', 2, '出版社33', 'ISBN33', '作者33', '存放位置33', 320.00, 657, '2002-02-17 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (34, '书名34', 1, '出版社34', 'ISBN34', '作者34', '存放位置34', 752.00, 500, '2016-06-08 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (35, '书名35', 10, '出版社35', 'ISBN35', '作者35', '存放位置35', 382.00, 93, '2000-10-15 00:00:00', 88, NULL);
INSERT INTO `ls_bookinfo` VALUES (36, '书名36', 8, '出版社36', 'ISBN36', '作者36', '存放位置36', 762.00, 804, '2003-12-19 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (37, '书名37', 13, '出版社37', 'ISBN37', '作者37', '存放位置37', 349.00, 595, '2016-02-17 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (38, '书名38', 18, '出版社38', 'ISBN38', '作者38', '存放位置38', 791.00, 770, '2021-06-23 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (39, '书名39', 23, '出版社39', 'ISBN39', '作者39', '存放位置39', 320.00, 138, '2011-12-16 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (40, '书名40', 19, '出版社40', 'ISBN40', '作者40', '存放位置40', 604.00, 429, '2021-04-12 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (41, '书名41', 22, '出版社41', 'ISBN41', '作者41', '存放位置41', 141.00, 187, '2009-10-17 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (42, '书名42', 2, '出版社42', 'ISBN42', '作者42', '存放位置42', 56.00, 83, '2004-11-25 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (43, '书名43', 5, '出版社43', 'ISBN43', '作者43', '存放位置43', 600.00, 128, '2009-06-22 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (44, '书名44', 17, '出版社44', 'ISBN44', '作者44', '存放位置44', 550.00, 400, '2022-09-29 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (45, '书名45', 16, '出版社45', 'ISBN45', '作者45', '存放位置45', 633.00, 995, '2014-07-16 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (46, '书名46', 6, '出版社46', 'ISBN46', '作者46', '存放位置46', 278.00, 905, '2011-08-13 00:00:00', 68, NULL);
INSERT INTO `ls_bookinfo` VALUES (47, '书名47', 24, '出版社47', 'ISBN47', '作者47', '存放位置47', 669.00, 253, '2018-04-26 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (48, '书名48', 20, '出版社48', 'ISBN48', '作者48', '存放位置48', 105.00, 139, '2007-05-14 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (49, '书名49', 14, '出版社49', 'ISBN49', '作者49', '存放位置49', 543.00, 606, '2024-01-10 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (50, '书名50', 18, '出版社50', 'ISBN50', '作者50', '存放位置50', 213.00, 114, '2018-09-03 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (51, '书名51', 6, '出版社51', 'ISBN51', '作者51', '存放位置51', 598.00, 965, '2014-02-18 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (52, '书名52', 8, '出版社52', 'ISBN52', '作者52', '存放位置52', 583.00, 571, '2016-02-18 00:00:00', 61, NULL);
INSERT INTO `ls_bookinfo` VALUES (53, '书名53', 2, '出版社53', 'ISBN53', '作者53', '存放位置53', 488.00, 772, '2000-09-16 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (54, '书名54', 1, '出版社54', 'ISBN54', '作者54', '存放位置54', 668.00, 983, '2009-11-30 00:00:00', 9, NULL);
INSERT INTO `ls_bookinfo` VALUES (55, '书名55', 6, '出版社55', 'ISBN55', '作者55', '存放位置55', 789.00, 170, '2021-07-09 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (56, '书名56', 0, '出版社56', 'ISBN56', '作者56', '存放位置56', 165.00, 29, '2012-09-28 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (57, '书名57', 3, '出版社57', 'ISBN57', '作者57', '存放位置57', 51.00, 904, '2007-12-30 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (58, '书名58', 17, '出版社58', 'ISBN58', '作者58', '存放位置58', 531.00, 238, '2004-10-22 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (59, '书名59', 19, '出版社59', 'ISBN59', '作者59', '存放位置59', 97.00, 236, '2019-10-24 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (60, '书名60', 11, '出版社60', 'ISBN60', '作者60', '存放位置60', 94.00, 235, '2019-11-04 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (61, '书名61', 12, '出版社61', 'ISBN61', '作者61', '存放位置61', 277.00, 221, '2001-07-17 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (62, '书名62', 2, '出版社62', 'ISBN62', '作者62', '存放位置62', 366.00, 37, '2019-09-16 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (63, '书名63', 8, '出版社63', 'ISBN63', '作者63', '存放位置63', 665.00, 139, '2004-11-19 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (64, '书名64', 8, '出版社64', 'ISBN64', '作者64', '存放位置64', 765.00, 747, '2020-12-12 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (65, '书名65', 20, '出版社65', 'ISBN65', '作者65', '存放位置65', 718.00, 999, '2007-04-20 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (66, '书名66', 16, '出版社66', 'ISBN66', '作者66', '存放位置66', 553.00, 528, '2013-09-25 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (67, '书名67', 13, '出版社67', 'ISBN67', '作者67', '存放位置67', 788.00, 285, '2011-06-21 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (68, '书名68', 3, '出版社68', 'ISBN68', '作者68', '存放位置68', 107.00, 269, '2022-12-04 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (69, '书名69', 19, '出版社69', 'ISBN69', '作者69', '存放位置69', 120.00, 399, '2013-03-20 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (70, '书名70', 0, '出版社70', 'ISBN70', '作者70', '存放位置70', 377.00, 322, '2004-09-19 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (71, '书名71', 11, '出版社71', 'ISBN71', '作者71', '存放位置71', 204.00, 910, '2018-12-28 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (72, '书名72', 15, '出版社72', 'ISBN72', '作者72', '存放位置72', 351.00, 390, '2015-05-19 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (73, '书名73', 2, '出版社73', 'ISBN73', '作者73', '存放位置73', 440.00, 417, '2010-07-01 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (74, '书名74', 7, '出版社74', 'ISBN74', '作者74', '存放位置74', 525.00, 440, '2005-08-24 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (75, '书名75', 12, '出版社75', 'ISBN75', '作者75', '存放位置75', 52.00, 771, '2015-12-27 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (76, '书名76', 23, '出版社76', 'ISBN76', '作者76', '存放位置76', 641.00, 154, '2008-11-10 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (77, '书名77', 18, '出版社77', 'ISBN77', '作者77', '存放位置77', 447.00, 602, '2008-01-23 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (78, '书名78', 7, '出版社78', 'ISBN78', '作者78', '存放位置78', 711.00, 568, '2004-04-04 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (79, '书名79', 8, '出版社79', 'ISBN79', '作者79', '存放位置79', 134.00, 826, '2015-04-06 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (80, '书名80', 11, '出版社80', 'ISBN80', '作者80', '存放位置80', 255.00, 194, '2000-05-30 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (81, '书名81', 11, '出版社81', 'ISBN81', '作者81', '存放位置81', 610.00, 456, '2024-01-18 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (82, '书名82', 0, '出版社82', 'ISBN82', '作者82', '存放位置82', 178.00, 109, '2021-03-19 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (83, '书名83', 15, '出版社83', 'ISBN83', '作者83', '存放位置83', 23.00, 231, '2001-09-15 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (84, '书名84', 1, '出版社84', 'ISBN84', '作者84', '存放位置84', 335.00, 861, '2001-02-19 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (85, '书名85', 2, '出版社85', 'ISBN85', '作者85', '存放位置85', 504.00, 802, '2002-12-15 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (86, '书名86', 16, '出版社86', 'ISBN86', '作者86', '存放位置86', 484.00, 101, '2016-09-20 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (87, '书名87', 16, '出版社87', 'ISBN87', '作者87', '存放位置87', 735.00, 575, '2002-12-11 00:00:00', 88, NULL);
INSERT INTO `ls_bookinfo` VALUES (88, '书名88', 0, '出版社88', 'ISBN88', '作者88', '存放位置88', 444.00, 659, '2015-04-15 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (89, '书名89', 24, '出版社89', 'ISBN89', '作者89', '存放位置89', 352.00, 216, '2018-06-10 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (90, '书名90', 12, '出版社90', 'ISBN90', '作者90', '存放位置90', 59.00, 839, '2023-07-30 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (91, '书名91', 20, '出版社91', 'ISBN91', '作者91', '存放位置91', 104.00, 143, '2007-10-31 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (92, '书名92', 24, '出版社92', 'ISBN92', '作者92', '存放位置92', 220.00, 473, '2013-02-20 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (93, '书名93', 20, '出版社93', 'ISBN93', '作者93', '存放位置93', 232.00, 954, '2021-10-10 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (94, '书名94', 11, '出版社94', 'ISBN94', '作者94', '存放位置94', 354.00, 807, '2017-03-04 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (95, '书名95', 12, '出版社95', 'ISBN95', '作者95', '存放位置95', 74.00, 988, '2015-12-27 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (96, '书名96', 17, '出版社96', 'ISBN96', '作者96', '存放位置96', 408.00, 438, '2016-01-14 00:00:00', 99, NULL);
INSERT INTO `ls_bookinfo` VALUES (97, '书名97', 24, '出版社97', 'ISBN97', '作者97', '存放位置97', 779.00, 892, '2013-01-23 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (98, '书名98', 12, '出版社98', 'ISBN98', '作者98', '存放位置98', 297.00, 399, '2021-05-08 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (99, '书名99', 10, '出版社99', 'ISBN99', '作者99', '存放位置99', 316.00, 764, '2015-05-10 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (100, '书名100', 12, '出版社100', 'ISBN100', '作者100', '存放位置100', 637.00, 528, '2006-01-19 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (101, '书名101', 14, '出版社101', 'ISBN101', '作者101', '存放位置101', 697.00, 640, '2014-03-16 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (102, '书名102', 7, '出版社102', 'ISBN102', '作者102', '存放位置102', 373.00, 432, '2018-05-27 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (103, '书名103', 5, '出版社103', 'ISBN103', '作者103', '存放位置103', 549.00, 714, '2012-05-15 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (104, '书名104', 13, '出版社104', 'ISBN104', '作者104', '存放位置104', 327.00, 457, '2001-06-22 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (105, '书名105', 11, '出版社105', 'ISBN105', '作者105', '存放位置105', 461.00, 462, '2014-01-11 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (106, '书名106', 20, '出版社106', 'ISBN106', '作者106', '存放位置106', 444.00, 322, '2022-12-03 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (107, '书名107', 24, '出版社107', 'ISBN107', '作者107', '存放位置107', 532.00, 350, '2018-04-08 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (108, '书名108', 8, '出版社108', 'ISBN108', '作者108', '存放位置108', 434.00, 692, '2020-03-17 00:00:00', 9, NULL);
INSERT INTO `ls_bookinfo` VALUES (109, '书名109', 24, '出版社109', 'ISBN109', '作者109', '存放位置109', 449.00, 903, '2020-02-06 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (110, '书名110', 17, '出版社110', 'ISBN110', '作者110', '存放位置110', 199.00, 106, '2018-11-21 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (111, '书名111', 14, '出版社111', 'ISBN111', '作者111', '存放位置111', 99.00, 895, '2002-07-24 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (112, '书名112', 22, '出版社112', 'ISBN112', '作者112', '存放位置112', 760.00, 66, '2011-08-04 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (113, '书名113', 13, '出版社113', 'ISBN113', '作者113', '存放位置113', 90.00, 944, '2009-04-16 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (114, '书名114', 6, '出版社114', 'ISBN114', '作者114', '存放位置114', 100.00, 799, '2015-01-22 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (115, '书名115', 17, '出版社115', 'ISBN115', '作者115', '存放位置115', 238.00, 432, '2006-06-19 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (116, '书名116', 9, '出版社116', 'ISBN116', '作者116', '存放位置116', 678.00, 61, '2018-06-14 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (117, '书名117', 21, '出版社117', 'ISBN117', '作者117', '存放位置117', 291.00, 273, '2006-09-15 00:00:00', 56, NULL);
INSERT INTO `ls_bookinfo` VALUES (118, '书名118', 24, '出版社118', 'ISBN118', '作者118', '存放位置118', 186.00, 210, '2008-07-19 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (119, '书名119', 15, '出版社119', 'ISBN119', '作者119', '存放位置119', 537.00, 515, '2013-07-09 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (120, '书名120', 13, '出版社120', 'ISBN120', '作者120', '存放位置120', 46.00, 612, '2021-07-04 00:00:00', 60, NULL);
INSERT INTO `ls_bookinfo` VALUES (121, '书名121', 8, '出版社121', 'ISBN121', '作者121', '存放位置121', 761.00, 700, '2015-09-23 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (122, '书名122', 19, '出版社122', 'ISBN122', '作者122', '存放位置122', 360.00, 921, '2006-03-18 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (123, '书名123', 20, '出版社123', 'ISBN123', '作者123', '存放位置123', 426.00, 216, '2011-09-07 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (124, '书名124', 9, '出版社124', 'ISBN124', '作者124', '存放位置124', 438.00, 636, '2013-02-03 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (125, '书名125', 8, '出版社125', 'ISBN125', '作者125', '存放位置125', 274.00, 683, '2009-05-02 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (126, '书名126', 5, '出版社126', 'ISBN126', '作者126', '存放位置126', 429.00, 979, '2006-12-14 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (127, '书名127', 15, '出版社127', 'ISBN127', '作者127', '存放位置127', 519.00, 358, '2020-07-02 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (128, '书名128', 6, '出版社128', 'ISBN128', '作者128', '存放位置128', 620.00, 125, '2007-05-07 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (129, '书名129', 19, '出版社129', 'ISBN129', '作者129', '存放位置129', 427.00, 300, '2021-10-01 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (130, '书名130', 6, '出版社130', 'ISBN130', '作者130', '存放位置130', 404.00, 763, '2007-04-22 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (131, '书名131', 4, '出版社131', 'ISBN131', '作者131', '存放位置131', 198.00, 703, '2018-08-17 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (132, '书名132', 9, '出版社132', 'ISBN132', '作者132', '存放位置132', 551.00, 306, '2011-04-05 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (133, '书名133', 15, '出版社133', 'ISBN133', '作者133', '存放位置133', 743.00, 759, '2000-04-07 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (134, '书名134', 21, '出版社134', 'ISBN134', '作者134', '存放位置134', 727.00, 3, '2007-01-11 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (135, '书名135', 8, '出版社135', 'ISBN135', '作者135', '存放位置135', 278.00, 739, '2015-10-17 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (136, '书名136', 6, '出版社136', 'ISBN136', '作者136', '存放位置136', 125.00, 10, '2014-02-26 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (137, '书名137', 17, '出版社137', 'ISBN137', '作者137', '存放位置137', 668.00, 70, '2020-07-22 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (138, '书名138', 15, '出版社138', 'ISBN138', '作者138', '存放位置138', 783.00, 52, '2007-10-28 00:00:00', 45, NULL);
INSERT INTO `ls_bookinfo` VALUES (139, '书名139', 8, '出版社139', 'ISBN139', '作者139', '存放位置139', 186.00, 199, '2007-03-23 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (140, '书名140', 14, '出版社140', 'ISBN140', '作者140', '存放位置140', 150.00, 219, '2012-12-02 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (141, '书名141', 11, '出版社141', 'ISBN141', '作者141', '存放位置141', 156.00, 642, '2015-03-11 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (142, '书名142', 4, '出版社142', 'ISBN142', '作者142', '存放位置142', 158.00, 491, '2020-12-28 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (143, '书名143', 17, '出版社143', 'ISBN143', '作者143', '存放位置143', 727.00, 450, '2012-10-14 00:00:00', 28, NULL);
INSERT INTO `ls_bookinfo` VALUES (144, '书名144', 21, '出版社144', 'ISBN144', '作者144', '存放位置144', 331.00, 503, '2006-08-30 00:00:00', 86, NULL);
INSERT INTO `ls_bookinfo` VALUES (145, '书名145', 12, '出版社145', 'ISBN145', '作者145', '存放位置145', 733.00, 75, '2015-03-22 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (146, '书名146', 17, '出版社146', 'ISBN146', '作者146', '存放位置146', 578.00, 530, '2011-09-23 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (147, '书名147', 17, '出版社147', 'ISBN147', '作者147', '存放位置147', 6.00, 941, '2016-07-04 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (148, '书名148', 22, '出版社148', 'ISBN148', '作者148', '存放位置148', 520.00, 606, '2002-01-12 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (149, '书名149', 18, '出版社149', 'ISBN149', '作者149', '存放位置149', 740.00, 395, '2004-11-07 00:00:00', 81, NULL);
INSERT INTO `ls_bookinfo` VALUES (150, '书名150', 11, '出版社150', 'ISBN150', '作者150', '存放位置150', 737.00, 191, '2004-07-26 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (151, '书名151', 7, '出版社151', 'ISBN151', '作者151', '存放位置151', 247.00, 693, '2013-02-12 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (152, '书名152', 12, '出版社152', 'ISBN152', '作者152', '存放位置152', 547.00, 883, '2008-10-03 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (153, '书名153', 17, '出版社153', 'ISBN153', '作者153', '存放位置153', 50.00, 194, '2018-12-12 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (154, '书名154', 7, '出版社154', 'ISBN154', '作者154', '存放位置154', 392.00, 568, '2008-12-29 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (155, '书名155', 16, '出版社155', 'ISBN155', '作者155', '存放位置155', 600.00, 831, '2021-11-22 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (156, '书名156', 10, '出版社156', 'ISBN156', '作者156', '存放位置156', 31.00, 923, '2012-02-04 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (157, '书名157', 3, '出版社157', 'ISBN157', '作者157', '存放位置157', 405.00, 120, '2002-01-05 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (158, '书名158', 0, '出版社158', 'ISBN158', '作者158', '存放位置158', 746.00, 606, '2005-09-25 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (159, '书名159', 2, '出版社159', 'ISBN159', '作者159', '存放位置159', 357.00, 911, '2005-04-15 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (160, '书名160', 3, '出版社160', 'ISBN160', '作者160', '存放位置160', 452.00, 448, '2013-03-18 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (161, '书名161', 6, '出版社161', 'ISBN161', '作者161', '存放位置161', 176.00, 284, '2018-05-23 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (162, '书名162', 11, '出版社162', 'ISBN162', '作者162', '存放位置162', 308.00, 596, '2019-12-13 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (163, '书名163', 4, '出版社163', 'ISBN163', '作者163', '存放位置163', 747.00, 115, '2018-09-09 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (164, '书名164', 6, '出版社164', 'ISBN164', '作者164', '存放位置164', 588.00, 913, '2008-08-27 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (165, '书名165', 4, '出版社165', 'ISBN165', '作者165', '存放位置165', 554.00, 963, '2017-11-29 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (166, '书名166', 20, '出版社166', 'ISBN166', '作者166', '存放位置166', 535.00, 893, '2011-01-24 00:00:00', 60, NULL);
INSERT INTO `ls_bookinfo` VALUES (167, '书名167', 16, '出版社167', 'ISBN167', '作者167', '存放位置167', 370.00, 349, '2008-08-18 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (168, '书名168', 15, '出版社168', 'ISBN168', '作者168', '存放位置168', 645.00, 228, '2017-06-24 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (169, '书名169', 11, '出版社169', 'ISBN169', '作者169', '存放位置169', 404.00, 162, '2007-02-16 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (170, '书名170', 0, '出版社170', 'ISBN170', '作者170', '存放位置170', 194.00, 96, '2018-03-22 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (171, '书名171', 2, '出版社171', 'ISBN171', '作者171', '存放位置171', 120.00, 407, '2014-03-18 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (172, '书名172', 19, '出版社172', 'ISBN172', '作者172', '存放位置172', 682.00, 873, '2019-07-30 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (173, '书名173', 17, '出版社173', 'ISBN173', '作者173', '存放位置173', 120.00, 702, '2001-07-04 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (174, '书名174', 20, '出版社174', 'ISBN174', '作者174', '存放位置174', 429.00, 198, '2009-03-02 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (175, '书名175', 8, '出版社175', 'ISBN175', '作者175', '存放位置175', 718.00, 416, '2009-04-19 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (176, '书名176', 5, '出版社176', 'ISBN176', '作者176', '存放位置176', 26.00, 532, '2013-09-11 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (177, '书名177', 11, '出版社177', 'ISBN177', '作者177', '存放位置177', 472.00, 582, '2003-05-30 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (178, '书名178', 9, '出版社178', 'ISBN178', '作者178', '存放位置178', 752.00, 614, '2006-02-10 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (179, '书名179', 8, '出版社179', 'ISBN179', '作者179', '存放位置179', 334.00, 84, '2004-02-13 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (180, '书名180', 11, '出版社180', 'ISBN180', '作者180', '存放位置180', 463.00, 477, '2015-09-03 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (181, '书名181', 1, '出版社181', 'ISBN181', '作者181', '存放位置181', 787.00, 682, '2011-02-27 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (182, '书名182', 22, '出版社182', 'ISBN182', '作者182', '存放位置182', 578.00, 922, '2010-09-23 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (183, '书名183', 22, '出版社183', 'ISBN183', '作者183', '存放位置183', 153.00, 237, '2014-11-09 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (184, '书名184', 23, '出版社184', 'ISBN184', '作者184', '存放位置184', 490.00, 257, '2010-11-03 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (185, '书名185', 24, '出版社185', 'ISBN185', '作者185', '存放位置185', 440.00, 783, '2006-06-21 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (186, '书名186', 2, '出版社186', 'ISBN186', '作者186', '存放位置186', 515.00, 863, '2009-04-20 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (187, '书名187', 12, '出版社187', 'ISBN187', '作者187', '存放位置187', 410.00, 63, '2018-11-05 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (188, '书名188', 4, '出版社188', 'ISBN188', '作者188', '存放位置188', 592.00, 197, '2018-07-20 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (189, '书名189', 22, '出版社189', 'ISBN189', '作者189', '存放位置189', 591.00, 27, '2022-03-18 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (190, '书名190', 19, '出版社190', 'ISBN190', '作者190', '存放位置190', 271.00, 385, '2022-01-22 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (191, '书名191', 6, '出版社191', 'ISBN191', '作者191', '存放位置191', 67.00, 652, '2000-04-18 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (192, '书名192', 11, '出版社192', 'ISBN192', '作者192', '存放位置192', 67.00, 985, '2016-04-19 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (193, '书名193', 0, '出版社193', 'ISBN193', '作者193', '存放位置193', 749.00, 581, '2002-05-17 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (194, '书名194', 10, '出版社194', 'ISBN194', '作者194', '存放位置194', 750.00, 382, '2002-05-31 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (195, '书名195', 11, '出版社195', 'ISBN195', '作者195', '存放位置195', 185.00, 786, '2005-10-08 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (196, '书名196', 11, '出版社196', 'ISBN196', '作者196', '存放位置196', 578.00, 284, '2006-02-02 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (197, '书名197', 6, '出版社197', 'ISBN197', '作者197', '存放位置197', 118.00, 923, '2004-02-29 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (198, '书名198', 23, '出版社198', 'ISBN198', '作者198', '存放位置198', 309.00, 141, '2013-03-30 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (199, '书名199', 22, '出版社199', 'ISBN199', '作者199', '存放位置199', 498.00, 383, '2001-03-01 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (200, '书名200', 7, '出版社200', 'ISBN200', '作者200', '存放位置200', 204.00, 363, '2001-03-07 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (201, '书名201', 15, '出版社201', 'ISBN201', '作者201', '存放位置201', 533.00, 453, '2006-07-16 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (202, '书名202', 3, '出版社202', 'ISBN202', '作者202', '存放位置202', 567.00, 139, '2013-10-06 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (203, '书名203', 10, '出版社203', 'ISBN203', '作者203', '存放位置203', 662.00, 879, '2022-02-03 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (204, '书名204', 22, '出版社204', 'ISBN204', '作者204', '存放位置204', 514.00, 567, '2021-12-17 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (205, '书名205', 11, '出版社205', 'ISBN205', '作者205', '存放位置205', 577.00, 274, '2005-01-13 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (206, '书名206', 11, '出版社206', 'ISBN206', '作者206', '存放位置206', 518.00, 859, '2008-07-15 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (207, '书名207', 21, '出版社207', 'ISBN207', '作者207', '存放位置207', 642.00, 399, '2014-03-21 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (208, '书名208', 23, '出版社208', 'ISBN208', '作者208', '存放位置208', 345.00, 369, '2013-05-05 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (209, '书名209', 14, '出版社209', 'ISBN209', '作者209', '存放位置209', 799.00, 228, '2003-06-25 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (210, '书名210', 18, '出版社210', 'ISBN210', '作者210', '存放位置210', 481.00, 785, '2002-12-11 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (211, '书名211', 22, '出版社211', 'ISBN211', '作者211', '存放位置211', 578.00, 925, '2011-02-12 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (212, '书名212', 5, '出版社212', 'ISBN212', '作者212', '存放位置212', 436.00, 63, '2016-06-30 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (213, '书名213', 0, '出版社213', 'ISBN213', '作者213', '存放位置213', 437.00, 614, '2010-06-29 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (214, '书名214', 7, '出版社214', 'ISBN214', '作者214', '存放位置214', 484.00, 84, '2014-08-18 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (215, '书名215', 0, '出版社215', 'ISBN215', '作者215', '存放位置215', 671.00, 111, '2000-12-21 00:00:00', 86, NULL);
INSERT INTO `ls_bookinfo` VALUES (216, '书名216', 5, '出版社216', 'ISBN216', '作者216', '存放位置216', 346.00, 550, '2010-11-22 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (217, '书名217', 16, '出版社217', 'ISBN217', '作者217', '存放位置217', 347.00, 233, '2020-11-20 00:00:00', 61, NULL);
INSERT INTO `ls_bookinfo` VALUES (218, '书名218', 12, '出版社218', 'ISBN218', '作者218', '存放位置218', 450.00, 373, '2004-04-23 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (219, '书名219', 7, '出版社219', 'ISBN219', '作者219', '存放位置219', 203.00, 334, '2022-01-13 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (220, '书名220', 0, '出版社220', 'ISBN220', '作者220', '存放位置220', 303.00, 883, '2006-10-22 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (221, '书名221', 23, '出版社221', 'ISBN221', '作者221', '存放位置221', 307.00, 132, '2012-05-02 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (222, '书名222', 5, '出版社222', 'ISBN222', '作者222', '存放位置222', 524.00, 617, '2002-11-10 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (223, '书名223', 8, '出版社223', 'ISBN223', '作者223', '存放位置223', 384.00, 384, '2011-08-27 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (224, '书名224', 20, '出版社224', 'ISBN224', '作者224', '存放位置224', 276.00, 267, '2007-03-30 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (225, '书名225', 14, '出版社225', 'ISBN225', '作者225', '存放位置225', 608.00, 100, '2005-04-12 00:00:00', 78, NULL);
INSERT INTO `ls_bookinfo` VALUES (226, '书名226', 7, '出版社226', 'ISBN226', '作者226', '存放位置226', 86.00, 656, '2023-02-16 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (227, '书名227', 4, '出版社227', 'ISBN227', '作者227', '存放位置227', 352.00, 686, '2002-08-15 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (228, '书名228', 2, '出版社228', 'ISBN228', '作者228', '存放位置228', 795.00, 707, '2013-06-05 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (229, '书名229', 14, '出版社229', 'ISBN229', '作者229', '存放位置229', 783.00, 139, '2018-05-31 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (230, '书名230', 15, '出版社230', 'ISBN230', '作者230', '存放位置230', 17.00, 207, '2023-07-19 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (231, '书名231', 6, '出版社231', 'ISBN231', '作者231', '存放位置231', 541.00, 549, '2017-04-30 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (232, '书名232', 12, '出版社232', 'ISBN232', '作者232', '存放位置232', 580.00, 116, '2009-11-19 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (233, '书名233', 5, '出版社233', 'ISBN233', '作者233', '存放位置233', 62.00, 698, '2006-04-18 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (234, '书名234', 6, '出版社234', 'ISBN234', '作者234', '存放位置234', 471.00, 224, '2008-07-28 00:00:00', 9, NULL);
INSERT INTO `ls_bookinfo` VALUES (235, '书名235', 10, '出版社235', 'ISBN235', '作者235', '存放位置235', 672.00, 923, '2002-04-20 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (236, '书名236', 5, '出版社236', 'ISBN236', '作者236', '存放位置236', 65.00, 693, '2005-05-17 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (237, '书名237', 11, '出版社237', 'ISBN237', '作者237', '存放位置237', 240.00, 70, '2010-11-29 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (238, '书名238', 21, '出版社238', 'ISBN238', '作者238', '存放位置238', 136.00, 272, '2020-08-07 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (239, '书名239', 15, '出版社239', 'ISBN239', '作者239', '存放位置239', 692.00, 419, '2012-02-23 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (240, '书名240', 18, '出版社240', 'ISBN240', '作者240', '存放位置240', 777.00, 626, '2005-04-09 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (241, '书名241', 9, '出版社241', 'ISBN241', '作者241', '存放位置241', 259.00, 451, '2006-12-09 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (242, '书名242', 13, '出版社242', 'ISBN242', '作者242', '存放位置242', 313.00, 387, '2018-06-06 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (243, '书名243', 23, '出版社243', 'ISBN243', '作者243', '存放位置243', 588.00, 878, '2004-07-13 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (244, '书名244', 23, '出版社244', 'ISBN244', '作者244', '存放位置244', 622.00, 85, '2002-03-18 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (245, '书名245', 18, '出版社245', 'ISBN245', '作者245', '存放位置245', 41.00, 64, '2004-02-10 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (246, '书名246', 19, '出版社246', 'ISBN246', '作者246', '存放位置246', 681.00, 969, '2007-02-02 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (247, '书名247', 22, '出版社247', 'ISBN247', '作者247', '存放位置247', 657.00, 418, '2015-02-14 00:00:00', 86, NULL);
INSERT INTO `ls_bookinfo` VALUES (248, '书名248', 11, '出版社248', 'ISBN248', '作者248', '存放位置248', 588.00, 273, '2003-11-19 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (249, '书名249', 10, '出版社249', 'ISBN249', '作者249', '存放位置249', 152.00, 669, '2018-10-12 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (250, '书名250', 0, '出版社250', 'ISBN250', '作者250', '存放位置250', 420.00, 547, '2003-11-11 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (251, '书名251', 7, '出版社251', 'ISBN251', '作者251', '存放位置251', 10.00, 177, '2020-08-01 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (252, '书名252', 0, '出版社252', 'ISBN252', '作者252', '存放位置252', 35.00, 100, '2008-12-18 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (253, '书名253', 16, '出版社253', 'ISBN253', '作者253', '存放位置253', 440.00, 835, '2012-08-17 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (254, '书名254', 23, '出版社254', 'ISBN254', '作者254', '存放位置254', 347.00, 329, '2008-04-02 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (255, '书名255', 14, '出版社255', 'ISBN255', '作者255', '存放位置255', 526.00, 607, '2001-07-03 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (256, '书名256', 6, '出版社256', 'ISBN256', '作者256', '存放位置256', 637.00, 230, '2018-06-08 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (257, '书名257', 7, '出版社257', 'ISBN257', '作者257', '存放位置257', 89.00, 684, '2002-02-23 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (258, '书名258', 16, '出版社258', 'ISBN258', '作者258', '存放位置258', 178.00, 82, '2017-12-17 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (259, '书名259', 2, '出版社259', 'ISBN259', '作者259', '存放位置259', 41.00, 994, '2019-10-12 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (260, '书名260', 1, '出版社260', 'ISBN260', '作者260', '存放位置260', 783.00, 724, '2016-07-25 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (261, '书名261', 4, '出版社261', 'ISBN261', '作者261', '存放位置261', 163.00, 451, '2015-08-03 00:00:00', 86, NULL);
INSERT INTO `ls_bookinfo` VALUES (262, '书名262', 9, '出版社262', 'ISBN262', '作者262', '存放位置262', 300.00, 694, '2008-05-14 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (263, '书名263', 4, '出版社263', 'ISBN263', '作者263', '存放位置263', 7.00, 481, '2009-02-15 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (264, '书名264', 1, '出版社264', 'ISBN264', '作者264', '存放位置264', 42.00, 38, '2000-11-04 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (265, '书名265', 4, '出版社265', 'ISBN265', '作者265', '存放位置265', 605.00, 228, '2021-01-03 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (266, '书名266', 16, '出版社266', 'ISBN266', '作者266', '存放位置266', 310.00, 931, '2011-11-24 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (267, '书名267', 20, '出版社267', 'ISBN267', '作者267', '存放位置267', 164.00, 512, '2022-11-29 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (268, '书名268', 3, '出版社268', 'ISBN268', '作者268', '存放位置268', 49.00, 924, '2010-08-03 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (269, '书名269', 18, '出版社269', 'ISBN269', '作者269', '存放位置269', 413.00, 331, '2002-08-22 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (270, '书名270', 10, '出版社270', 'ISBN270', '作者270', '存放位置270', 359.00, 990, '2014-08-09 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (271, '书名271', 10, '出版社271', 'ISBN271', '作者271', '存放位置271', 745.00, 420, '2007-05-24 00:00:00', 26, NULL);
INSERT INTO `ls_bookinfo` VALUES (272, '书名272', 10, '出版社272', 'ISBN272', '作者272', '存放位置272', 223.00, 152, '2022-04-14 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (273, '书名273', 24, '出版社273', 'ISBN273', '作者273', '存放位置273', 327.00, 139, '2011-05-14 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (274, '书名274', 5, '出版社274', 'ISBN274', '作者274', '存放位置274', 302.00, 193, '2020-03-12 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (275, '书名275', 11, '出版社275', 'ISBN275', '作者275', '存放位置275', 362.00, 933, '2007-06-03 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (276, '书名276', 18, '出版社276', 'ISBN276', '作者276', '存放位置276', 420.00, 391, '2009-03-21 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (277, '书名277', 12, '出版社277', 'ISBN277', '作者277', '存放位置277', 287.00, 266, '2006-03-04 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (278, '书名278', 15, '出版社278', 'ISBN278', '作者278', '存放位置278', 492.00, 253, '2010-03-21 00:00:00', 34, NULL);
INSERT INTO `ls_bookinfo` VALUES (279, '书名279', 12, '出版社279', 'ISBN279', '作者279', '存放位置279', 288.00, 355, '2016-10-29 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (280, '书名280', 24, '出版社280', 'ISBN280', '作者280', '存放位置280', 476.00, 83, '2015-03-27 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (281, '书名281', 14, '出版社281', 'ISBN281', '作者281', '存放位置281', 222.00, 609, '2005-03-08 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (282, '书名282', 14, '出版社282', 'ISBN282', '作者282', '存放位置282', 86.00, 838, '2021-01-26 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (283, '书名283', 14, '出版社283', 'ISBN283', '作者283', '存放位置283', 265.00, 953, '2018-10-08 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (284, '书名284', 18, '出版社284', 'ISBN284', '作者284', '存放位置284', 549.00, 198, '2022-06-24 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (285, '书名285', 11, '出版社285', 'ISBN285', '作者285', '存放位置285', 109.00, 317, '2004-03-14 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (286, '书名286', 1, '出版社286', 'ISBN286', '作者286', '存放位置286', 446.00, 605, '2008-08-08 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (287, '书名287', 18, '出版社287', 'ISBN287', '作者287', '存放位置287', 612.00, 644, '2022-06-03 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (288, '书名288', 17, '出版社288', 'ISBN288', '作者288', '存放位置288', 330.00, 965, '2014-03-19 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (289, '书名289', 10, '出版社289', 'ISBN289', '作者289', '存放位置289', 55.00, 32, '2023-01-27 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (290, '书名290', 12, '出版社290', 'ISBN290', '作者290', '存放位置290', 339.00, 665, '2001-03-25 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (291, '书名291', 3, '出版社291', 'ISBN291', '作者291', '存放位置291', 749.00, 256, '2011-05-19 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (292, '书名292', 12, '出版社292', 'ISBN292', '作者292', '存放位置292', 598.00, 244, '2023-09-10 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (293, '书名293', 21, '出版社293', 'ISBN293', '作者293', '存放位置293', 655.00, 519, '2003-05-12 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (294, '书名294', 6, '出版社294', 'ISBN294', '作者294', '存放位置294', 724.00, 741, '2023-12-14 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (295, '书名295', 16, '出版社295', 'ISBN295', '作者295', '存放位置295', 42.00, 332, '2012-02-29 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (296, '书名296', 1, '出版社296', 'ISBN296', '作者296', '存放位置296', 644.00, 816, '2016-01-28 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (297, '书名297', 9, '出版社297', 'ISBN297', '作者297', '存放位置297', 173.00, 987, '2006-11-30 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (298, '书名298', 11, '出版社298', 'ISBN298', '作者298', '存放位置298', 763.00, 364, '2023-02-16 00:00:00', 68, NULL);
INSERT INTO `ls_bookinfo` VALUES (299, '书名299', 13, '出版社299', 'ISBN299', '作者299', '存放位置299', 577.00, 944, '2013-06-10 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (300, '书名300', 1, '出版社300', 'ISBN300', '作者300', '存放位置300', 348.00, 15, '2018-09-14 00:00:00', 81, NULL);
INSERT INTO `ls_bookinfo` VALUES (301, '书名301', 19, '出版社301', 'ISBN301', '作者301', '存放位置301', 288.00, 520, '2012-07-20 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (302, '书名302', 15, '出版社302', 'ISBN302', '作者302', '存放位置302', 728.00, 750, '2000-07-17 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (303, '书名303', 5, '出版社303', 'ISBN303', '作者303', '存放位置303', 458.00, 176, '2003-11-18 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (304, '书名304', 22, '出版社304', 'ISBN304', '作者304', '存放位置304', 478.00, 342, '2022-03-09 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (305, '书名305', 0, '出版社305', 'ISBN305', '作者305', '存放位置305', 363.00, 203, '2015-10-26 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (306, '书名306', 7, '出版社306', 'ISBN306', '作者306', '存放位置306', 505.00, 196, '2002-03-07 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (307, '书名307', 0, '出版社307', 'ISBN307', '作者307', '存放位置307', 451.00, 738, '2024-02-17 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (308, '书名308', 21, '出版社308', 'ISBN308', '作者308', '存放位置308', 762.00, 211, '2004-10-29 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (309, '书名309', 5, '出版社309', 'ISBN309', '作者309', '存放位置309', 770.00, 185, '2000-12-28 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (310, '书名310', 2, '出版社310', 'ISBN310', '作者310', '存放位置310', 496.00, 766, '2023-06-14 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (311, '书名311', 20, '出版社311', 'ISBN311', '作者311', '存放位置311', 362.00, 812, '2017-01-09 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (312, '书名312', 7, '出版社312', 'ISBN312', '作者312', '存放位置312', 153.00, 102, '2022-08-23 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (313, '书名313', 1, '出版社313', 'ISBN313', '作者313', '存放位置313', 81.00, 381, '2014-08-18 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (314, '书名314', 14, '出版社314', 'ISBN314', '作者314', '存放位置314', 166.00, 341, '2001-12-20 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (315, '书名315', 16, '出版社315', 'ISBN315', '作者315', '存放位置315', 148.00, 928, '2002-01-19 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (316, '书名316', 23, '出版社316', 'ISBN316', '作者316', '存放位置316', 634.00, 137, '2007-07-05 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (317, '书名317', 18, '出版社317', 'ISBN317', '作者317', '存放位置317', 298.00, 594, '2020-08-28 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (318, '书名318', 21, '出版社318', 'ISBN318', '作者318', '存放位置318', 653.00, 528, '2004-07-26 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (319, '书名319', 5, '出版社319', 'ISBN319', '作者319', '存放位置319', 49.00, 625, '2022-10-22 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (320, '书名320', 8, '出版社320', 'ISBN320', '作者320', '存放位置320', 178.00, 81, '2017-10-30 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (321, '书名321', 24, '出版社321', 'ISBN321', '作者321', '存放位置321', 472.00, 11, '2006-11-27 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (322, '书名322', 2, '出版社322', 'ISBN322', '作者322', '存放位置322', 264.00, 351, '2018-07-03 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (323, '书名323', 13, '出版社323', 'ISBN323', '作者323', '存放位置323', 333.00, 455, '2000-08-14 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (324, '书名324', 18, '出版社324', 'ISBN324', '作者324', '存放位置324', 287.00, 612, '2023-11-02 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (325, '书名325', 11, '出版社325', 'ISBN325', '作者325', '存放位置325', 78.00, 78, '2002-05-11 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (326, '书名326', 24, '出版社326', 'ISBN326', '作者326', '存放位置326', 73.00, 548, '2011-04-25 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (327, '书名327', 1, '出版社327', 'ISBN327', '作者327', '存放位置327', 164.00, 860, '2016-08-06 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (328, '书名328', 4, '出版社328', 'ISBN328', '作者328', '存放位置328', 261.00, 116, '2014-07-09 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (329, '书名329', 11, '出版社329', 'ISBN329', '作者329', '存放位置329', 247.00, 190, '2000-08-09 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (330, '书名330', 17, '出版社330', 'ISBN330', '作者330', '存放位置330', 636.00, 907, '2003-08-14 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (331, '书名331', 16, '出版社331', 'ISBN331', '作者331', '存放位置331', 232.00, 434, '2007-04-26 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (332, '书名332', 3, '出版社332', 'ISBN332', '作者332', '存放位置332', 15.00, 712, '2012-03-12 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (333, '书名333', 9, '出版社333', 'ISBN333', '作者333', '存放位置333', 674.00, 24, '2014-04-11 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (334, '书名334', 15, '出版社334', 'ISBN334', '作者334', '存放位置334', 347.00, 331, '2008-08-01 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (335, '书名335', 20, '出版社335', 'ISBN335', '作者335', '存放位置335', 659.00, 622, '2015-06-27 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (336, '书名336', 18, '出版社336', 'ISBN336', '作者336', '存放位置336', 564.00, 307, '2010-03-01 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (337, '书名337', 15, '出版社337', 'ISBN337', '作者337', '存放位置337', 478.00, 111, '2018-06-15 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (338, '书名338', 2, '出版社338', 'ISBN338', '作者338', '存放位置338', 66.00, 106, '2006-10-20 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (339, '书名339', 14, '出版社339', 'ISBN339', '作者339', '存放位置339', 548.00, 663, '2006-03-25 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (340, '书名340', 17, '出版社340', 'ISBN340', '作者340', '存放位置340', 542.00, 250, '2005-04-09 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (341, '书名341', 0, '出版社341', 'ISBN341', '作者341', '存放位置341', 109.00, 596, '2013-11-10 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (342, '书名342', 16, '出版社342', 'ISBN342', '作者342', '存放位置342', 6.00, 103, '2011-12-02 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (343, '书名343', 7, '出版社343', 'ISBN343', '作者343', '存放位置343', 775.00, 992, '2001-04-05 00:00:00', 28, NULL);
INSERT INTO `ls_bookinfo` VALUES (344, '书名344', 6, '出版社344', 'ISBN344', '作者344', '存放位置344', 370.00, 528, '2006-02-06 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (345, '书名345', 15, '出版社345', 'ISBN345', '作者345', '存放位置345', 50.00, 461, '2002-11-15 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (346, '书名346', 17, '出版社346', 'ISBN346', '作者346', '存放位置346', 661.00, 60, '2019-12-01 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (347, '书名347', 4, '出版社347', 'ISBN347', '作者347', '存放位置347', 126.00, 216, '2014-10-05 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (348, '书名348', 4, '出版社348', 'ISBN348', '作者348', '存放位置348', 505.00, 662, '2010-01-21 00:00:00', 9, NULL);
INSERT INTO `ls_bookinfo` VALUES (349, '书名349', 5, '出版社349', 'ISBN349', '作者349', '存放位置349', 602.00, 153, '2012-03-28 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (350, '书名350', 20, '出版社350', 'ISBN350', '作者350', '存放位置350', 732.00, 107, '2019-02-20 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (351, '书名351', 19, '出版社351', 'ISBN351', '作者351', '存放位置351', 789.00, 608, '2001-12-22 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (352, '书名352', 16, '出版社352', 'ISBN352', '作者352', '存放位置352', 485.00, 22, '2007-01-03 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (353, '书名353', 0, '出版社353', 'ISBN353', '作者353', '存放位置353', 18.00, 16, '2000-05-17 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (354, '书名354', 2, '出版社354', 'ISBN354', '作者354', '存放位置354', 289.00, 543, '2015-04-16 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (355, '书名355', 18, '出版社355', 'ISBN355', '作者355', '存放位置355', 100.00, 404, '2015-08-30 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (356, '书名356', 3, '出版社356', 'ISBN356', '作者356', '存放位置356', 586.00, 189, '2018-02-03 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (357, '书名357', 15, '出版社357', 'ISBN357', '作者357', '存放位置357', 401.00, 706, '2000-08-06 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (358, '书名358', 23, '出版社358', 'ISBN358', '作者358', '存放位置358', 583.00, 798, '2019-07-07 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (359, '书名359', 18, '出版社359', 'ISBN359', '作者359', '存放位置359', 698.00, 101, '2021-06-27 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (360, '书名360', 24, '出版社360', 'ISBN360', '作者360', '存放位置360', 481.00, 8, '2005-10-03 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (361, '书名361', 2, '出版社361', 'ISBN361', '作者361', '存放位置361', 22.00, 832, '2001-10-24 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (362, '书名362', 4, '出版社362', 'ISBN362', '作者362', '存放位置362', 155.00, 474, '2019-02-10 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (363, '书名363', 6, '出版社363', 'ISBN363', '作者363', '存放位置363', 538.00, 620, '2002-01-17 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (364, '书名364', 13, '出版社364', 'ISBN364', '作者364', '存放位置364', 37.00, 599, '2020-09-18 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (365, '书名365', 20, '出版社365', 'ISBN365', '作者365', '存放位置365', 584.00, 148, '2013-05-27 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (366, '书名366', 23, '出版社366', 'ISBN366', '作者366', '存放位置366', 614.00, 3, '2017-03-06 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (367, '书名367', 14, '出版社367', 'ISBN367', '作者367', '存放位置367', 161.00, 316, '2023-09-18 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (368, '书名368', 19, '出版社368', 'ISBN368', '作者368', '存放位置368', 117.00, 343, '2006-09-10 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (369, '书名369', 23, '出版社369', 'ISBN369', '作者369', '存放位置369', 457.00, 86, '2017-04-22 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (370, '书名370', 10, '出版社370', 'ISBN370', '作者370', '存放位置370', 174.00, 789, '2007-02-25 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (371, '书名371', 16, '出版社371', 'ISBN371', '作者371', '存放位置371', 756.00, 768, '2000-02-15 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (372, '书名372', 14, '出版社372', 'ISBN372', '作者372', '存放位置372', 598.00, 998, '2018-01-25 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (373, '书名373', 11, '出版社373', 'ISBN373', '作者373', '存放位置373', 6.00, 711, '2012-12-01 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (374, '书名374', 1, '出版社374', 'ISBN374', '作者374', '存放位置374', 565.00, 352, '2015-07-02 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (375, '书名375', 20, '出版社375', 'ISBN375', '作者375', '存放位置375', 458.00, 464, '2014-07-26 00:00:00', 61, NULL);
INSERT INTO `ls_bookinfo` VALUES (376, '书名376', 6, '出版社376', 'ISBN376', '作者376', '存放位置376', 395.00, 667, '2020-09-27 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (377, '书名377', 20, '出版社377', 'ISBN377', '作者377', '存放位置377', 247.00, 58, '2008-10-24 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (378, '书名378', 3, '出版社378', 'ISBN378', '作者378', '存放位置378', 573.00, 193, '2019-10-18 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (379, '书名379', 2, '出版社379', 'ISBN379', '作者379', '存放位置379', 723.00, 265, '2014-10-29 00:00:00', 26, NULL);
INSERT INTO `ls_bookinfo` VALUES (380, '书名380', 12, '出版社380', 'ISBN380', '作者380', '存放位置380', 545.00, 918, '2013-04-27 00:00:00', 99, NULL);
INSERT INTO `ls_bookinfo` VALUES (381, '书名381', 7, '出版社381', 'ISBN381', '作者381', '存放位置381', 489.00, 104, '2016-08-22 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (382, '书名382', 13, '出版社382', 'ISBN382', '作者382', '存放位置382', 308.00, 275, '2005-05-20 00:00:00', 28, NULL);
INSERT INTO `ls_bookinfo` VALUES (383, '书名383', 18, '出版社383', 'ISBN383', '作者383', '存放位置383', 739.00, 353, '2024-02-06 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (384, '书名384', 14, '出版社384', 'ISBN384', '作者384', '存放位置384', 188.00, 384, '2005-04-16 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (385, '书名385', 0, '出版社385', 'ISBN385', '作者385', '存放位置385', 293.00, 722, '2012-06-20 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (386, '书名386', 12, '出版社386', 'ISBN386', '作者386', '存放位置386', 179.00, 655, '2014-08-14 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (387, '书名387', 11, '出版社387', 'ISBN387', '作者387', '存放位置387', 78.00, 137, '2009-07-10 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (388, '书名388', 14, '出版社388', 'ISBN388', '作者388', '存放位置388', 233.00, 688, '2013-09-27 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (389, '书名389', 3, '出版社389', 'ISBN389', '作者389', '存放位置389', 353.00, 757, '2011-02-21 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (390, '书名390', 19, '出版社390', 'ISBN390', '作者390', '存放位置390', 593.00, 410, '2020-01-22 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (391, '书名391', 1, '出版社391', 'ISBN391', '作者391', '存放位置391', 477.00, 789, '2003-10-21 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (392, '书名392', 15, '出版社392', 'ISBN392', '作者392', '存放位置392', 642.00, 186, '2012-08-28 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (393, '书名393', 17, '出版社393', 'ISBN393', '作者393', '存放位置393', 270.00, 592, '2022-12-13 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (394, '书名394', 24, '出版社394', 'ISBN394', '作者394', '存放位置394', 746.00, 774, '2001-10-16 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (395, '书名395', 0, '出版社395', 'ISBN395', '作者395', '存放位置395', 725.00, 507, '2019-10-24 00:00:00', 56, NULL);
INSERT INTO `ls_bookinfo` VALUES (396, '书名396', 9, '出版社396', 'ISBN396', '作者396', '存放位置396', 174.00, 940, '2001-02-03 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (397, '书名397', 22, '出版社397', 'ISBN397', '作者397', '存放位置397', 187.00, 500, '2019-05-02 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (398, '书名398', 1, '出版社398', 'ISBN398', '作者398', '存放位置398', 686.00, 90, '2021-04-10 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (399, '书名399', 24, '出版社399', 'ISBN399', '作者399', '存放位置399', 382.00, 484, '2023-12-11 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (400, '书名400', 12, '出版社400', 'ISBN400', '作者400', '存放位置400', 785.00, 432, '2005-04-29 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (401, '书名401', 8, '出版社401', 'ISBN401', '作者401', '存放位置401', 271.00, 651, '2005-10-22 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (402, '书名402', 12, '出版社402', 'ISBN402', '作者402', '存放位置402', 613.00, 333, '2008-11-20 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (403, '书名403', 1, '出版社403', 'ISBN403', '作者403', '存放位置403', 705.00, 175, '2005-07-27 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (404, '书名404', 10, '出版社404', 'ISBN404', '作者404', '存放位置404', 243.00, 211, '2003-07-30 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (405, '书名405', 1, '出版社405', 'ISBN405', '作者405', '存放位置405', 39.00, 29, '2000-01-27 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (406, '书名406', 15, '出版社406', 'ISBN406', '作者406', '存放位置406', 248.00, 701, '2013-12-19 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (407, '书名407', 4, '出版社407', 'ISBN407', '作者407', '存放位置407', 390.00, 945, '2006-05-06 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (408, '书名408', 14, '出版社408', 'ISBN408', '作者408', '存放位置408', 408.00, 793, '2010-07-08 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (409, '书名409', 16, '出版社409', 'ISBN409', '作者409', '存放位置409', 726.00, 569, '2002-12-23 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (410, '书名410', 4, '出版社410', 'ISBN410', '作者410', '存放位置410', 80.00, 12, '2018-05-18 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (411, '书名411', 12, '出版社411', 'ISBN411', '作者411', '存放位置411', 234.00, 924, '2017-12-15 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (412, '书名412', 11, '出版社412', 'ISBN412', '作者412', '存放位置412', 377.00, 991, '2013-01-26 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (413, '书名413', 0, '出版社413', 'ISBN413', '作者413', '存放位置413', 702.00, 357, '2003-09-23 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (414, '书名414', 0, '出版社414', 'ISBN414', '作者414', '存放位置414', 7.00, 987, '2022-01-05 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (415, '书名415', 4, '出版社415', 'ISBN415', '作者415', '存放位置415', 169.00, 479, '2018-07-07 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (416, '书名416', 15, '出版社416', 'ISBN416', '作者416', '存放位置416', 778.00, 988, '2000-08-01 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (417, '书名417', 17, '出版社417', 'ISBN417', '作者417', '存放位置417', 48.00, 188, '2018-05-05 00:00:00', 22, NULL);
INSERT INTO `ls_bookinfo` VALUES (418, '书名418', 21, '出版社418', 'ISBN418', '作者418', '存放位置418', 445.00, 249, '2013-12-11 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (419, '书名419', 23, '出版社419', 'ISBN419', '作者419', '存放位置419', 194.00, 434, '2010-09-09 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (420, '书名420', 5, '出版社420', 'ISBN420', '作者420', '存放位置420', 230.00, 840, '2008-03-07 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (421, '书名421', 20, '出版社421', 'ISBN421', '作者421', '存放位置421', 490.00, 594, '2003-04-16 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (422, '书名422', 1, '出版社422', 'ISBN422', '作者422', '存放位置422', 521.00, 54, '2007-10-06 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (423, '书名423', 5, '出版社423', 'ISBN423', '作者423', '存放位置423', 667.00, 481, '2021-11-23 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (424, '书名424', 16, '出版社424', 'ISBN424', '作者424', '存放位置424', 114.00, 691, '2000-09-12 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (425, '书名425', 6, '出版社425', 'ISBN425', '作者425', '存放位置425', 63.00, 626, '2021-08-30 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (426, '书名426', 7, '出版社426', 'ISBN426', '作者426', '存放位置426', 510.00, 338, '2018-11-01 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (427, '书名427', 1, '出版社427', 'ISBN427', '作者427', '存放位置427', 462.00, 768, '2002-08-04 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (428, '书名428', 20, '出版社428', 'ISBN428', '作者428', '存放位置428', 377.00, 861, '2021-07-31 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (429, '书名429', 17, '出版社429', 'ISBN429', '作者429', '存放位置429', 654.00, 28, '2016-09-02 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (430, '书名430', 18, '出版社430', 'ISBN430', '作者430', '存放位置430', 433.00, 541, '2001-12-16 00:00:00', 78, NULL);
INSERT INTO `ls_bookinfo` VALUES (431, '书名431', 16, '出版社431', 'ISBN431', '作者431', '存放位置431', 758.00, 766, '2023-12-17 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (432, '书名432', 6, '出版社432', 'ISBN432', '作者432', '存放位置432', 330.00, 249, '2000-04-07 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (433, '书名433', 12, '出版社433', 'ISBN433', '作者433', '存放位置433', 447.00, 309, '2021-01-22 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (434, '书名434', 12, '出版社434', 'ISBN434', '作者434', '存放位置434', 173.00, 594, '2007-11-09 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (435, '书名435', 5, '出版社435', 'ISBN435', '作者435', '存放位置435', 458.00, 211, '2008-03-07 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (436, '书名436', 6, '出版社436', 'ISBN436', '作者436', '存放位置436', 132.00, 25, '2015-04-20 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (437, '书名437', 13, '出版社437', 'ISBN437', '作者437', '存放位置437', 287.00, 228, '2001-08-12 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (438, '书名438', 0, '出版社438', 'ISBN438', '作者438', '存放位置438', 191.00, 85, '2017-03-28 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (439, '书名439', 9, '出版社439', 'ISBN439', '作者439', '存放位置439', 791.00, 808, '2001-10-26 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (440, '书名440', 13, '出版社440', 'ISBN440', '作者440', '存放位置440', 604.00, 217, '2019-10-28 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (441, '书名441', 18, '出版社441', 'ISBN441', '作者441', '存放位置441', 352.00, 942, '2009-07-03 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (442, '书名442', 12, '出版社442', 'ISBN442', '作者442', '存放位置442', 57.00, 873, '2003-09-22 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (443, '书名443', 6, '出版社443', 'ISBN443', '作者443', '存放位置443', 754.00, 882, '2014-02-16 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (444, '书名444', 15, '出版社444', 'ISBN444', '作者444', '存放位置444', 157.00, 178, '2007-04-30 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (445, '书名445', 24, '出版社445', 'ISBN445', '作者445', '存放位置445', 775.00, 905, '2015-01-16 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (446, '书名446', 1, '出版社446', 'ISBN446', '作者446', '存放位置446', 185.00, 921, '2022-01-29 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (447, '书名447', 5, '出版社447', 'ISBN447', '作者447', '存放位置447', 646.00, 322, '2004-07-29 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (448, '书名448', 8, '出版社448', 'ISBN448', '作者448', '存放位置448', 547.00, 451, '2004-12-09 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (449, '书名449', 17, '出版社449', 'ISBN449', '作者449', '存放位置449', 464.00, 754, '2000-10-20 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (450, '书名450', 10, '出版社450', 'ISBN450', '作者450', '存放位置450', 271.00, 470, '2008-01-30 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (451, '书名451', 7, '出版社451', 'ISBN451', '作者451', '存放位置451', 529.00, 445, '2005-12-10 00:00:00', 88, NULL);
INSERT INTO `ls_bookinfo` VALUES (452, '书名452', 17, '出版社452', 'ISBN452', '作者452', '存放位置452', 711.00, 309, '2021-05-17 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (453, '书名453', 19, '出版社453', 'ISBN453', '作者453', '存放位置453', 336.00, 777, '2015-03-15 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (454, '书名454', 3, '出版社454', 'ISBN454', '作者454', '存放位置454', 243.00, 90, '2013-01-03 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (455, '书名455', 11, '出版社455', 'ISBN455', '作者455', '存放位置455', 73.00, 54, '2024-03-07 00:00:00', 82, NULL);
INSERT INTO `ls_bookinfo` VALUES (456, '书名456', 3, '出版社456', 'ISBN456', '作者456', '存放位置456', 215.00, 894, '2016-01-11 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (457, '书名457', 3, '出版社457', 'ISBN457', '作者457', '存放位置457', 694.00, 890, '2020-07-26 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (458, '书名458', 8, '出版社458', 'ISBN458', '作者458', '存放位置458', 734.00, 603, '2006-04-30 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (459, '书名459', 17, '出版社459', 'ISBN459', '作者459', '存放位置459', 23.00, 32, '2001-10-28 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (460, '书名460', 4, '出版社460', 'ISBN460', '作者460', '存放位置460', 4.00, 521, '2014-05-09 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (461, '书名461', 5, '出版社461', 'ISBN461', '作者461', '存放位置461', 701.00, 739, '2001-08-14 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (462, '书名462', 9, '出版社462', 'ISBN462', '作者462', '存放位置462', 447.00, 653, '2014-03-23 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (463, '书名463', 3, '出版社463', 'ISBN463', '作者463', '存放位置463', 555.00, 95, '2009-07-05 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (464, '书名464', 5, '出版社464', 'ISBN464', '作者464', '存放位置464', 27.00, 531, '2013-05-26 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (465, '书名465', 5, '出版社465', 'ISBN465', '作者465', '存放位置465', 399.00, 883, '2022-05-10 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (466, '书名466', 1, '出版社466', 'ISBN466', '作者466', '存放位置466', 298.00, 707, '2010-02-12 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (467, '书名467', 14, '出版社467', 'ISBN467', '作者467', '存放位置467', 789.00, 200, '2001-01-27 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (468, '书名468', 24, '出版社468', 'ISBN468', '作者468', '存放位置468', 779.00, 971, '2022-08-18 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (469, '书名469', 24, '出版社469', 'ISBN469', '作者469', '存放位置469', 533.00, 369, '2020-06-16 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (470, '书名470', 1, '出版社470', 'ISBN470', '作者470', '存放位置470', 729.00, 402, '2006-08-25 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (471, '书名471', 0, '出版社471', 'ISBN471', '作者471', '存放位置471', 428.00, 657, '2016-06-10 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (472, '书名472', 2, '出版社472', 'ISBN472', '作者472', '存放位置472', 120.00, 500, '2001-03-05 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (473, '书名473', 14, '出版社473', 'ISBN473', '作者473', '存放位置473', 476.00, 282, '2015-03-29 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (474, '书名474', 15, '出版社474', 'ISBN474', '作者474', '存放位置474', 96.00, 796, '2014-12-25 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (475, '书名475', 16, '出版社475', 'ISBN475', '作者475', '存放位置475', 176.00, 104, '2020-10-07 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (476, '书名476', 7, '出版社476', 'ISBN476', '作者476', '存放位置476', 489.00, 135, '2020-04-29 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (477, '书名477', 11, '出版社477', 'ISBN477', '作者477', '存放位置477', 676.00, 893, '2022-07-19 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (478, '书名478', 2, '出版社478', 'ISBN478', '作者478', '存放位置478', 400.00, 247, '2017-09-29 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (479, '书名479', 10, '出版社479', 'ISBN479', '作者479', '存放位置479', 258.00, 360, '2020-02-25 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (480, '书名480', 22, '出版社480', 'ISBN480', '作者480', '存放位置480', 227.00, 705, '2016-04-16 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (481, '书名481', 5, '出版社481', 'ISBN481', '作者481', '存放位置481', 314.00, 281, '2005-06-20 00:00:00', 28, NULL);
INSERT INTO `ls_bookinfo` VALUES (482, '书名482', 18, '出版社482', 'ISBN482', '作者482', '存放位置482', 727.00, 288, '2017-03-24 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (483, '书名483', 8, '出版社483', 'ISBN483', '作者483', '存放位置483', 460.00, 887, '2017-02-22 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (484, '书名484', 6, '出版社484', 'ISBN484', '作者484', '存放位置484', 569.00, 748, '2014-10-01 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (485, '书名485', 4, '出版社485', 'ISBN485', '作者485', '存放位置485', 366.00, 776, '2012-03-31 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (486, '书名486', 12, '出版社486', 'ISBN486', '作者486', '存放位置486', 668.00, 713, '2001-07-13 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (487, '书名487', 17, '出版社487', 'ISBN487', '作者487', '存放位置487', 711.00, 401, '2008-02-19 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (488, '书名488', 9, '出版社488', 'ISBN488', '作者488', '存放位置488', 357.00, 108, '2004-11-08 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (489, '书名489', 19, '出版社489', 'ISBN489', '作者489', '存放位置489', 725.00, 170, '2003-03-27 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (490, '书名490', 9, '出版社490', 'ISBN490', '作者490', '存放位置490', 323.00, 900, '2007-01-07 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (491, '书名491', 21, '出版社491', 'ISBN491', '作者491', '存放位置491', 74.00, 866, '2001-03-24 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (492, '书名492', 3, '出版社492', 'ISBN492', '作者492', '存放位置492', 520.00, 881, '2011-01-13 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (493, '书名493', 20, '出版社493', 'ISBN493', '作者493', '存放位置493', 108.00, 255, '2021-01-14 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (494, '书名494', 7, '出版社494', 'ISBN494', '作者494', '存放位置494', 554.00, 610, '2023-07-20 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (495, '书名495', 5, '出版社495', 'ISBN495', '作者495', '存放位置495', 77.00, 771, '2013-09-18 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (496, '书名496', 22, '出版社496', 'ISBN496', '作者496', '存放位置496', 711.00, 781, '2005-10-04 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (497, '书名497', 12, '出版社497', 'ISBN497', '作者497', '存放位置497', 30.00, 647, '2002-11-25 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (498, '书名498', 23, '出版社498', 'ISBN498', '作者498', '存放位置498', 538.00, 579, '2021-03-19 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (499, '书名499', 14, '出版社499', 'ISBN499', '作者499', '存放位置499', 6.00, 278, '2008-12-08 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (500, '书名500', 23, '出版社500', 'ISBN500', '作者500', '存放位置500', 534.00, 523, '2014-11-01 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (501, '书名501', 15, '出版社501', 'ISBN501', '作者501', '存放位置501', 528.00, 416, '2002-06-19 00:00:00', 26, NULL);
INSERT INTO `ls_bookinfo` VALUES (502, '书名502', 24, '出版社502', 'ISBN502', '作者502', '存放位置502', 156.00, 992, '2009-01-23 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (503, '书名503', 8, '出版社503', 'ISBN503', '作者503', '存放位置503', 64.00, 344, '2011-08-13 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (504, '书名504', 9, '出版社504', 'ISBN504', '作者504', '存放位置504', 671.00, 33, '2015-10-20 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (505, '书名505', 21, '出版社505', 'ISBN505', '作者505', '存放位置505', 610.00, 265, '2000-12-24 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (506, '书名506', 22, '出版社506', 'ISBN506', '作者506', '存放位置506', 249.00, 843, '2006-10-23 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (507, '书名507', 13, '出版社507', 'ISBN507', '作者507', '存放位置507', 39.00, 642, '2001-06-27 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (508, '书名508', 18, '出版社508', 'ISBN508', '作者508', '存放位置508', 366.00, 129, '2006-07-29 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (509, '书名509', 0, '出版社509', 'ISBN509', '作者509', '存放位置509', 223.00, 281, '2013-10-22 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (510, '书名510', 8, '出版社510', 'ISBN510', '作者510', '存放位置510', 480.00, 28, '2008-04-16 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (511, '书名511', 2, '出版社511', 'ISBN511', '作者511', '存放位置511', 513.00, 897, '2013-08-01 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (512, '书名512', 22, '出版社512', 'ISBN512', '作者512', '存放位置512', 60.00, 726, '2009-10-30 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (513, '书名513', 0, '出版社513', 'ISBN513', '作者513', '存放位置513', 511.00, 81, '2011-10-15 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (514, '书名514', 12, '出版社514', 'ISBN514', '作者514', '存放位置514', 721.00, 23, '2009-12-28 00:00:00', 99, NULL);
INSERT INTO `ls_bookinfo` VALUES (515, '书名515', 18, '出版社515', 'ISBN515', '作者515', '存放位置515', 520.00, 78, '2010-07-31 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (516, '书名516', 11, '出版社516', 'ISBN516', '作者516', '存放位置516', 289.00, 481, '2007-09-30 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (517, '书名517', 20, '出版社517', 'ISBN517', '作者517', '存放位置517', 513.00, 740, '2018-11-24 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (518, '书名518', 1, '出版社518', 'ISBN518', '作者518', '存放位置518', 195.00, 49, '2012-06-24 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (519, '书名519', 14, '出版社519', 'ISBN519', '作者519', '存放位置519', 567.00, 748, '2014-10-31 00:00:00', 81, NULL);
INSERT INTO `ls_bookinfo` VALUES (520, '书名520', 6, '出版社520', 'ISBN520', '作者520', '存放位置520', 664.00, 379, '2009-11-11 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (521, '书名521', 6, '出版社521', 'ISBN521', '作者521', '存放位置521', 507.00, 378, '2023-11-18 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (522, '书名522', 0, '出版社522', 'ISBN522', '作者522', '存放位置522', 594.00, 633, '2022-09-29 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (523, '书名523', 4, '出版社523', 'ISBN523', '作者523', '存放位置523', 342.00, 649, '2023-05-17 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (524, '书名524', 12, '出版社524', 'ISBN524', '作者524', '存放位置524', 657.00, 634, '2017-02-16 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (525, '书名525', 1, '出版社525', 'ISBN525', '作者525', '存放位置525', 284.00, 621, '2000-12-20 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (526, '书名526', 14, '出版社526', 'ISBN526', '作者526', '存放位置526', 641.00, 325, '2005-04-09 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (527, '书名527', 22, '出版社527', 'ISBN527', '作者527', '存放位置527', 185.00, 416, '2009-05-17 00:00:00', 68, NULL);
INSERT INTO `ls_bookinfo` VALUES (528, '书名528', 6, '出版社528', 'ISBN528', '作者528', '存放位置528', 230.00, 631, '2007-01-31 00:00:00', 56, NULL);
INSERT INTO `ls_bookinfo` VALUES (529, '书名529', 24, '出版社529', 'ISBN529', '作者529', '存放位置529', 110.00, 784, '2012-04-03 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (530, '书名530', 9, '出版社530', 'ISBN530', '作者530', '存放位置530', 260.00, 513, '2014-04-30 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (531, '书名531', 7, '出版社531', 'ISBN531', '作者531', '存放位置531', 236.00, 549, '2020-11-16 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (532, '书名532', 18, '出版社532', 'ISBN532', '作者532', '存放位置532', 508.00, 4, '2002-11-07 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (533, '书名533', 12, '出版社533', 'ISBN533', '作者533', '存放位置533', 685.00, 736, '2002-09-18 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (534, '书名534', 10, '出版社534', 'ISBN534', '作者534', '存放位置534', 42.00, 1, '2020-07-04 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (535, '书名535', 15, '出版社535', 'ISBN535', '作者535', '存放位置535', 307.00, 76, '2005-06-22 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (536, '书名536', 20, '出版社536', 'ISBN536', '作者536', '存放位置536', 372.00, 824, '2017-07-25 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (537, '书名537', 14, '出版社537', 'ISBN537', '作者537', '存放位置537', 399.00, 718, '2002-04-21 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (538, '书名538', 7, '出版社538', 'ISBN538', '作者538', '存放位置538', 505.00, 201, '2002-09-07 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (539, '书名539', 10, '出版社539', 'ISBN539', '作者539', '存放位置539', 206.00, 23, '2008-04-20 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (540, '书名540', 4, '出版社540', 'ISBN540', '作者540', '存放位置540', 26.00, 586, '2020-03-06 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (541, '书名541', 13, '出版社541', 'ISBN541', '作者541', '存放位置541', 367.00, 689, '2001-08-29 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (542, '书名542', 4, '出版社542', 'ISBN542', '作者542', '存放位置542', 0.00, 509, '2013-03-09 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (543, '书名543', 8, '出版社543', 'ISBN543', '作者543', '存放位置543', 101.00, 606, '2015-09-26 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (544, '书名544', 5, '出版社544', 'ISBN544', '作者544', '存放位置544', 602.00, 134, '2010-01-25 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (545, '书名545', 3, '出版社545', 'ISBN545', '作者545', '存放位置545', 484.00, 650, '2010-07-20 00:00:00', 22, NULL);
INSERT INTO `ls_bookinfo` VALUES (546, '书名546', 20, '出版社546', 'ISBN546', '作者546', '存放位置546', 365.00, 801, '2015-05-19 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (547, '书名547', 23, '出版社547', 'ISBN547', '作者547', '存放位置547', 381.00, 505, '2002-04-30 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (548, '书名548', 13, '出版社548', 'ISBN548', '作者548', '存放位置548', 642.00, 395, '2013-09-19 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (549, '书名549', 13, '出版社549', 'ISBN549', '作者549', '存放位置549', 595.00, 112, '2007-11-26 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (550, '书名550', 12, '出版社550', 'ISBN550', '作者550', '存放位置550', 479.00, 508, '2017-12-22 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (551, '书名551', 17, '出版社551', 'ISBN551', '作者551', '存放位置551', 780.00, 753, '2020-05-31 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (552, '书名552', 6, '出版社552', 'ISBN552', '作者552', '存放位置552', 293.00, 94, '2008-12-22 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (553, '书名553', 18, '出版社553', 'ISBN553', '作者553', '存放位置553', 0.00, 775, '2021-03-28 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (554, '书名554', 16, '出版社554', 'ISBN554', '作者554', '存放位置554', 99.00, 641, '2020-02-29 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (555, '书名555', 17, '出版社555', 'ISBN555', '作者555', '存放位置555', 645.00, 919, '2004-03-14 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (556, '书名556', 0, '出版社556', 'ISBN556', '作者556', '存放位置556', 653.00, 998, '2013-02-12 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (557, '书名557', 23, '出版社557', 'ISBN557', '作者557', '存放位置557', 439.00, 933, '2000-06-26 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (558, '书名558', 11, '出版社558', 'ISBN558', '作者558', '存放位置558', 239.00, 179, '2024-02-19 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (559, '书名559', 6, '出版社559', 'ISBN559', '作者559', '存放位置559', 696.00, 628, '2012-10-25 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (560, '书名560', 5, '出版社560', 'ISBN560', '作者560', '存放位置560', 652.00, 418, '2015-08-14 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (561, '书名561', 22, '出版社561', 'ISBN561', '作者561', '存放位置561', 530.00, 573, '2021-03-13 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (562, '书名562', 16, '出版社562', 'ISBN562', '作者562', '存放位置562', 279.00, 751, '2017-03-16 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (563, '书名563', 9, '出版社563', 'ISBN563', '作者563', '存放位置563', 724.00, 448, '2012-09-06 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (564, '书名564', 20, '出版社564', 'ISBN564', '作者564', '存放位置564', 147.00, 515, '2000-08-10 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (565, '书名565', 20, '出版社565', 'ISBN565', '作者565', '存放位置565', 297.00, 394, '2020-09-30 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (566, '书名566', 23, '出版社566', 'ISBN566', '作者566', '存放位置566', 290.00, 18, '2000-01-30 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (567, '书名567', 19, '出版社567', 'ISBN567', '作者567', '存放位置567', 54.00, 971, '2015-10-26 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (568, '书名568', 20, '出版社568', 'ISBN568', '作者568', '存放位置568', 759.00, 342, '2020-12-21 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (569, '书名569', 22, '出版社569', 'ISBN569', '作者569', '存放位置569', 533.00, 587, '2022-09-07 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (570, '书名570', 20, '出版社570', 'ISBN570', '作者570', '存放位置570', 200.00, 841, '2010-12-28 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (571, '书名571', 9, '出版社571', 'ISBN571', '作者571', '存放位置571', 488.00, 945, '2021-08-24 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (572, '书名572', 12, '出版社572', 'ISBN572', '作者572', '存放位置572', 427.00, 212, '2011-01-19 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (573, '书名573', 21, '出版社573', 'ISBN573', '作者573', '存放位置573', 286.00, 215, '2000-01-19 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (574, '书名574', 20, '出版社574', 'ISBN574', '作者574', '存放位置574', 774.00, 404, '2002-11-10 00:00:00', 37, NULL);
INSERT INTO `ls_bookinfo` VALUES (575, '书名575', 13, '出版社575', 'ISBN575', '作者575', '存放位置575', 428.00, 77, '2018-11-17 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (576, '书名576', 24, '出版社576', 'ISBN576', '作者576', '存放位置576', 774.00, 858, '2009-05-27 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (577, '书名577', 16, '出版社577', 'ISBN577', '作者577', '存放位置577', 198.00, 233, '2010-03-19 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (578, '书名578', 19, '出版社578', 'ISBN578', '作者578', '存放位置578', 525.00, 957, '2019-09-17 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (579, '书名579', 13, '出版社579', 'ISBN579', '作者579', '存放位置579', 132.00, 171, '2008-09-18 00:00:00', 28, NULL);
INSERT INTO `ls_bookinfo` VALUES (580, '书名580', 8, '出版社580', 'ISBN580', '作者580', '存放位置580', 707.00, 374, '2005-05-03 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (581, '书名581', 5, '出版社581', 'ISBN581', '作者581', '存放位置581', 189.00, 482, '2016-11-21 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (582, '书名582', 2, '出版社582', 'ISBN582', '作者582', '存放位置582', 375.00, 990, '2013-03-02 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (583, '书名583', 2, '出版社583', 'ISBN583', '作者583', '存放位置583', 225.00, 96, '2015-05-21 00:00:00', 88, NULL);
INSERT INTO `ls_bookinfo` VALUES (584, '书名584', 13, '出版社584', 'ISBN584', '作者584', '存放位置584', 4.00, 427, '2002-11-15 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (585, '书名585', 5, '出版社585', 'ISBN585', '作者585', '存放位置585', 59.00, 765, '2014-08-13 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (586, '书名586', 20, '出版社586', 'ISBN586', '作者586', '存放位置586', 682.00, 849, '2016-09-18 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (587, '书名587', 11, '出版社587', 'ISBN587', '作者587', '存放位置587', 413.00, 246, '2016-07-11 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (588, '书名588', 8, '出版社588', 'ISBN588', '作者588', '存放位置588', 469.00, 967, '2001-11-12 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (589, '书名589', 4, '出版社589', 'ISBN589', '作者589', '存放位置589', 387.00, 859, '2020-07-02 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (590, '书名590', 18, '出版社590', 'ISBN590', '作者590', '存放位置590', 558.00, 291, '2008-10-24 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (591, '书名591', 15, '出版社591', 'ISBN591', '作者591', '存放位置591', 285.00, 864, '2006-02-20 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (592, '书名592', 15, '出版社592', 'ISBN592', '作者592', '存放位置592', 24.00, 322, '2012-07-18 00:00:00', 62, NULL);
INSERT INTO `ls_bookinfo` VALUES (593, '书名593', 14, '出版社593', 'ISBN593', '作者593', '存放位置593', 772.00, 123, '2017-07-02 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (594, '书名594', 1, '出版社594', 'ISBN594', '作者594', '存放位置594', 403.00, 383, '2009-10-22 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (595, '书名595', 3, '出版社595', 'ISBN595', '作者595', '存放位置595', 116.00, 265, '2021-08-08 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (596, '书名596', 16, '出版社596', 'ISBN596', '作者596', '存放位置596', 196.00, 282, '2016-05-24 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (597, '书名597', 16, '出版社597', 'ISBN597', '作者597', '存放位置597', 546.00, 435, '2003-02-18 00:00:00', 34, NULL);
INSERT INTO `ls_bookinfo` VALUES (598, '书名598', 7, '出版社598', 'ISBN598', '作者598', '存放位置598', 436.00, 786, '2007-03-03 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (599, '书名599', 17, '出版社599', 'ISBN599', '作者599', '存放位置599', 186.00, 6, '2008-02-12 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (600, '书名600', 6, '出版社600', 'ISBN600', '作者600', '存放位置600', 315.00, 156, '2014-06-22 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (601, '书名601', 20, '出版社601', 'ISBN601', '作者601', '存放位置601', 380.00, 957, '2008-09-29 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (602, '书名602', 14, '出版社602', 'ISBN602', '作者602', '存放位置602', 82.00, 773, '2013-07-26 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (603, '书名603', 18, '出版社603', 'ISBN603', '作者603', '存放位置603', 133.00, 669, '2020-06-15 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (604, '书名604', 13, '出版社604', 'ISBN604', '作者604', '存放位置604', 83.00, 868, '2000-08-28 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (605, '书名605', 14, '出版社605', 'ISBN605', '作者605', '存放位置605', 234.00, 734, '2019-03-11 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (606, '书名606', 10, '出版社606', 'ISBN606', '作者606', '存放位置606', 649.00, 805, '2014-04-17 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (607, '书名607', 22, '出版社607', 'ISBN607', '作者607', '存放位置607', 755.00, 991, '2002-12-12 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (608, '书名608', 20, '出版社608', 'ISBN608', '作者608', '存放位置608', 117.00, 301, '2001-08-05 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (609, '书名609', 23, '出版社609', 'ISBN609', '作者609', '存放位置609', 315.00, 169, '2016-01-06 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (610, '书名610', 0, '出版社610', 'ISBN610', '作者610', '存放位置610', 538.00, 321, '2014-04-02 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (611, '书名611', 3, '出版社611', 'ISBN611', '作者611', '存放位置611', 562.00, 131, '2013-04-01 00:00:00', 34, NULL);
INSERT INTO `ls_bookinfo` VALUES (612, '书名612', 1, '出版社612', 'ISBN612', '作者612', '存放位置612', 260.00, 415, '2002-05-28 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (613, '书名613', 24, '出版社613', 'ISBN613', '作者613', '存放位置613', 36.00, 346, '2014-06-26 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (614, '书名614', 23, '出版社614', 'ISBN614', '作者614', '存放位置614', 751.00, 822, '2007-01-31 00:00:00', 99, NULL);
INSERT INTO `ls_bookinfo` VALUES (615, '书名615', 2, '出版社615', 'ISBN615', '作者615', '存放位置615', 428.00, 361, '2004-11-20 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (616, '书名616', 0, '出版社616', 'ISBN616', '作者616', '存放位置616', 251.00, 516, '2015-07-23 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (617, '书名617', 9, '出版社617', 'ISBN617', '作者617', '存放位置617', 747.00, 521, '2019-05-28 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (618, '书名618', 20, '出版社618', 'ISBN618', '作者618', '存放位置618', 588.00, 237, '2023-09-29 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (619, '书名619', 0, '出版社619', 'ISBN619', '作者619', '存放位置619', 402.00, 466, '2019-12-20 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (620, '书名620', 3, '出版社620', 'ISBN620', '作者620', '存放位置620', 449.00, 370, '2003-12-21 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (621, '书名621', 1, '出版社621', 'ISBN621', '作者621', '存放位置621', 119.00, 579, '2010-11-08 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (622, '书名622', 4, '出版社622', 'ISBN622', '作者622', '存放位置622', 292.00, 298, '2009-08-27 00:00:00', 9, NULL);
INSERT INTO `ls_bookinfo` VALUES (623, '书名623', 7, '出版社623', 'ISBN623', '作者623', '存放位置623', 134.00, 963, '2007-08-05 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (624, '书名624', 11, '出版社624', 'ISBN624', '作者624', '存放位置624', 156.00, 643, '2015-04-15 00:00:00', 22, NULL);
INSERT INTO `ls_bookinfo` VALUES (625, '书名625', 5, '出版社625', 'ISBN625', '作者625', '存放位置625', 385.00, 716, '2003-04-27 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (626, '书名626', 6, '出版社626', 'ISBN626', '作者626', '存放位置626', 575.00, 802, '2020-08-24 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (627, '书名627', 18, '出版社627', 'ISBN627', '作者627', '存放位置627', 52.00, 147, '2013-01-16 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (628, '书名628', 16, '出版社628', 'ISBN628', '作者628', '存放位置628', 366.00, 363, '2010-10-01 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (629, '书名629', 7, '出版社629', 'ISBN629', '作者629', '存放位置629', 134.00, 910, '2001-01-31 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (630, '书名630', 8, '出版社630', 'ISBN630', '作者630', '存放位置630', 151.00, 945, '2003-10-29 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (631, '书名631', 7, '出版社631', 'ISBN631', '作者631', '存放位置631', 494.00, 202, '2003-11-13 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (632, '书名632', 11, '出版社632', 'ISBN632', '作者632', '存放位置632', 628.00, 516, '2005-06-25 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (633, '书名633', 5, '出版社633', 'ISBN633', '作者633', '存放位置633', 312.00, 271, '2004-07-09 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (634, '书名634', 0, '出版社634', 'ISBN634', '作者634', '存放位置634', 651.00, 971, '2010-01-05 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (635, '书名635', 13, '出版社635', 'ISBN635', '作者635', '存放位置635', 130.00, 243, '2017-08-03 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (636, '书名636', 8, '出版社636', 'ISBN636', '作者636', '存放位置636', 767.00, 796, '2002-06-28 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (637, '书名637', 7, '出版社637', 'ISBN637', '作者637', '存放位置637', 177.00, 150, '2002-02-01 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (638, '书名638', 16, '出版社638', 'ISBN638', '作者638', '存放位置638', 208.00, 384, '2003-05-27 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (639, '书名639', 8, '出版社639', 'ISBN639', '作者639', '存放位置639', 769.00, 844, '2008-02-14 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (640, '书名640', 17, '出版社640', 'ISBN640', '作者640', '存放位置640', 124.00, 625, '2015-12-22 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (641, '书名641', 3, '出版社641', 'ISBN641', '作者641', '存放位置641', 311.00, 552, '2014-06-12 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (642, '书名642', 20, '出版社642', 'ISBN642', '作者642', '存放位置642', 158.00, 487, '2020-05-26 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (643, '书名643', 5, '出版社643', 'ISBN643', '作者643', '存放位置643', 704.00, 724, '2023-09-10 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (644, '书名644', 16, '出版社644', 'ISBN644', '作者644', '存放位置644', 126.00, 801, '2012-11-21 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (645, '书名645', 17, '出版社645', 'ISBN645', '作者645', '存放位置645', 545.00, 333, '2015-02-22 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (646, '书名646', 18, '出版社646', 'ISBN646', '作者646', '存放位置646', 308.00, 672, '2004-12-21 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (647, '书名647', 10, '出版社647', 'ISBN647', '作者647', '存放位置647', 86.00, 261, '2023-10-06 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (648, '书名648', 16, '出版社648', 'ISBN648', '作者648', '存放位置648', 793.00, 941, '2017-10-07 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (649, '书名649', 0, '出版社649', 'ISBN649', '作者649', '存放位置649', 446.00, 736, '2000-03-30 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (650, '书名650', 4, '出版社650', 'ISBN650', '作者650', '存放位置650', 255.00, 95, '2012-07-05 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (651, '书名651', 23, '出版社651', 'ISBN651', '作者651', '存放位置651', 652.00, 253, '2019-10-26 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (652, '书名652', 5, '出版社652', 'ISBN652', '作者652', '存放位置652', 36.00, 600, '2021-01-06 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (653, '书名653', 2, '出版社653', 'ISBN653', '作者653', '存放位置653', 644.00, 776, '2011-03-31 00:00:00', 99, NULL);
INSERT INTO `ls_bookinfo` VALUES (654, '书名654', 14, '出版社654', 'ISBN654', '作者654', '存放位置654', 723.00, 789, '2005-08-28 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (655, '书名655', 7, '出版社655', 'ISBN655', '作者655', '存放位置655', 81.00, 609, '2017-11-27 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (656, '书名656', 3, '出版社656', 'ISBN656', '作者656', '存放位置656', 45.00, 884, '2006-01-16 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (657, '书名657', 5, '出版社657', 'ISBN657', '作者657', '存放位置657', 287.00, 108, '2011-04-17 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (658, '书名658', 15, '出版社658', 'ISBN658', '作者658', '存放位置658', 101.00, 748, '2008-09-30 00:00:00', 56, NULL);
INSERT INTO `ls_bookinfo` VALUES (659, '书名659', 18, '出版社659', 'ISBN659', '作者659', '存放位置659', 744.00, 485, '2015-05-30 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (660, '书名660', 17, '出版社660', 'ISBN660', '作者660', '存放位置660', 316.00, 838, '2000-02-09 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (661, '书名661', 12, '出版社661', 'ISBN661', '作者661', '存放位置661', 62.00, 833, '2022-08-03 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (662, '书名662', 0, '出版社662', 'ISBN662', '作者662', '存放位置662', 486.00, 979, '2001-10-02 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (663, '书名663', 22, '出版社663', 'ISBN663', '作者663', '存放位置663', 206.00, 573, '2002-03-13 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (664, '书名664', 9, '出版社664', 'ISBN664', '作者664', '存放位置664', 629.00, 740, '2008-04-05 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (665, '书名665', 10, '出版社665', 'ISBN665', '作者665', '存放位置665', 450.00, 601, '2007-10-12 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (666, '书名666', 1, '出版社666', 'ISBN666', '作者666', '存放位置666', 642.00, 892, '2001-04-02 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (667, '书名667', 18, '出版社667', 'ISBN667', '作者667', '存放位置667', 17.00, 847, '2004-02-20 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (668, '书名668', 1, '出版社668', 'ISBN668', '作者668', '存放位置668', 271.00, 529, '2015-03-06 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (669, '书名669', 21, '出版社669', 'ISBN669', '作者669', '存放位置669', 508.00, 611, '2003-08-13 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (670, '书名670', 2, '出版社670', 'ISBN670', '作者670', '存放位置670', 677.00, 883, '2021-03-10 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (671, '书名671', 0, '出版社671', 'ISBN671', '作者671', '存放位置671', 682.00, 245, '2016-02-28 00:00:00', 60, NULL);
INSERT INTO `ls_bookinfo` VALUES (672, '书名672', 0, '出版社672', 'ISBN672', '作者672', '存放位置672', 182.00, 118, '2021-12-26 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (673, '书名673', 5, '出版社673', 'ISBN673', '作者673', '存放位置673', 374.00, 726, '2005-06-23 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (674, '书名674', 2, '出版社674', 'ISBN674', '作者674', '存放位置674', 446.00, 540, '2000-09-03 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (675, '书名675', 12, '出版社675', 'ISBN675', '作者675', '存放位置675', 793.00, 429, '2004-03-11 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (676, '书名676', 9, '出版社676', 'ISBN676', '作者676', '存放位置676', 76.00, 380, '2014-12-21 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (677, '书名677', 22, '出版社677', 'ISBN677', '作者677', '存放位置677', 488.00, 377, '2001-05-21 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (678, '书名678', 14, '出版社678', 'ISBN678', '作者678', '存放位置678', 404.00, 746, '2005-04-27 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (679, '书名679', 15, '出版社679', 'ISBN679', '作者679', '存放位置679', 458.00, 977, '2004-02-16 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (680, '书名680', 2, '出版社680', 'ISBN680', '作者680', '存放位置680', 517.00, 993, '2000-08-08 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (681, '书名681', 16, '出版社681', 'ISBN681', '作者681', '存放位置681', 656.00, 147, '2006-09-12 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (682, '书名682', 21, '出版社682', 'ISBN682', '作者682', '存放位置682', 443.00, 145, '2001-08-04 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (683, '书名683', 6, '出版社683', 'ISBN683', '作者683', '存放位置683', 492.00, 307, '2016-09-08 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (684, '书名684', 13, '出版社684', 'ISBN684', '作者684', '存放位置684', 149.00, 277, '2020-01-14 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (685, '书名685', 1, '出版社685', 'ISBN685', '作者685', '存放位置685', 248.00, 418, '2003-11-09 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (686, '书名686', 5, '出版社686', 'ISBN686', '作者686', '存放位置686', 409.00, 877, '2020-08-21 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (687, '书名687', 14, '出版社687', 'ISBN687', '作者687', '存放位置687', 58.00, 586, '2017-04-04 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (688, '书名688', 22, '出版社688', 'ISBN688', '作者688', '存放位置688', 24.00, 482, '2007-10-21 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (689, '书名689', 21, '出版社689', 'ISBN689', '作者689', '存放位置689', 618.00, 305, '2005-02-06 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (690, '书名690', 1, '出版社690', 'ISBN690', '作者690', '存放位置690', 661.00, 995, '2012-01-19 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (691, '书名691', 0, '出版社691', 'ISBN691', '作者691', '存放位置691', 443.00, 739, '2000-10-19 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (692, '书名692', 15, '出版社692', 'ISBN692', '作者692', '存放位置692', 268.00, 771, '2020-07-31 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (693, '书名693', 3, '出版社693', 'ISBN693', '作者693', '存放位置693', 684.00, 880, '2020-03-04 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (694, '书名694', 3, '出版社694', 'ISBN694', '作者694', '存放位置694', 48.00, 921, '2010-04-30 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (695, '书名695', 13, '出版社695', 'ISBN695', '作者695', '存放位置695', 548.00, 757, '2017-09-02 00:00:00', 37, NULL);
INSERT INTO `ls_bookinfo` VALUES (696, '书名696', 17, '出版社696', 'ISBN696', '作者696', '存放位置696', 265.00, 583, '2022-04-29 00:00:00', 85, NULL);
INSERT INTO `ls_bookinfo` VALUES (697, '书名697', 13, '出版社697', 'ISBN697', '作者697', '存放位置697', 63.00, 802, '2018-09-25 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (698, '书名698', 24, '出版社698', 'ISBN698', '作者698', '存放位置698', 441.00, 794, '2007-09-23 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (699, '书名699', 2, '出版社699', 'ISBN699', '作者699', '存放位置699', 702.00, 82, '2018-11-08 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (700, '书名700', 22, '出版社700', 'ISBN700', '作者700', '存放位置700', 413.00, 912, '2000-04-04 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (701, '书名701', 13, '出版社701', 'ISBN701', '作者701', '存放位置701', 649.00, 400, '2013-10-17 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (702, '书名702', 13, '出版社702', 'ISBN702', '作者702', '存放位置702', 535.00, 780, '2021-09-03 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (703, '书名703', 24, '出版社703', 'ISBN703', '作者703', '存放位置703', 428.00, 716, '2023-08-01 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (704, '书名704', 17, '出版社704', 'ISBN704', '作者704', '存放位置704', 196.00, 182, '2004-03-23 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (705, '书名705', 2, '出版社705', 'ISBN705', '作者705', '存放位置705', 450.00, 489, '2018-05-03 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (706, '书名706', 8, '出版社706', 'ISBN706', '作者706', '存放位置706', 533.00, 358, '2019-03-20 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (707, '书名707', 1, '出版社707', 'ISBN707', '作者707', '存放位置707', 577.00, 371, '2016-10-03 00:00:00', 34, NULL);
INSERT INTO `ls_bookinfo` VALUES (708, '书名708', 16, '出版社708', 'ISBN708', '作者708', '存放位置708', 171.00, 122, '2023-06-21 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (709, '书名709', 12, '出版社709', 'ISBN709', '作者709', '存放位置709', 1.00, 547, '2017-09-10 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (710, '书名710', 21, '出版社710', 'ISBN710', '作者710', '存放位置710', 232.00, 859, '2010-04-03 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (711, '书名711', 10, '出版社711', 'ISBN711', '作者711', '存放位置711', 419.00, 336, '2002-08-31 00:00:00', 53, NULL);
INSERT INTO `ls_bookinfo` VALUES (712, '书名712', 9, '出版社712', 'ISBN712', '作者712', '存放位置712', 182.00, 33, '2011-08-15 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (713, '书名713', 1, '出版社713', 'ISBN713', '作者713', '存放位置713', 335.00, 903, '2006-05-01 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (714, '书名714', 4, '出版社714', 'ISBN714', '作者714', '存放位置714', 144.00, 321, '2001-07-31 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (715, '书名715', 15, '出版社715', 'ISBN715', '作者715', '存放位置715', 798.00, 141, '2017-03-19 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (716, '书名716', 13, '出版社716', 'ISBN716', '作者716', '存放位置716', 172.00, 514, '2022-05-31 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (717, '书名717', 16, '出版社717', 'ISBN717', '作者717', '存放位置717', 781.00, 944, '2019-02-28 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (718, '书名718', 6, '出版社718', 'ISBN718', '作者718', '存放位置718', 697.00, 611, '2010-09-30 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (719, '书名719', 14, '出版社719', 'ISBN719', '作者719', '存放位置719', 630.00, 176, '2012-07-18 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (720, '书名720', 18, '出版社720', 'ISBN720', '作者720', '存放位置720', 466.00, 654, '2012-09-14 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (721, '书名721', 18, '出版社721', 'ISBN721', '作者721', '存放位置721', 506.00, 998, '2002-04-14 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (722, '书名722', 2, '出版社722', 'ISBN722', '作者722', '存放位置722', 38.00, 955, '2015-04-24 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (723, '书名723', 14, '出版社723', 'ISBN723', '作者723', '存放位置723', 22.00, 388, '2020-11-04 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (724, '书名724', 2, '出版社724', 'ISBN724', '作者724', '存放位置724', 103.00, 319, '2005-02-16 00:00:00', 9, NULL);
INSERT INTO `ls_bookinfo` VALUES (725, '书名725', 21, '出版社725', 'ISBN725', '作者725', '存放位置725', 10.00, 479, '2008-08-22 00:00:00', 34, NULL);
INSERT INTO `ls_bookinfo` VALUES (726, '书名726', 16, '出版社726', 'ISBN726', '作者726', '存放位置726', 214.00, 355, '2023-07-23 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (727, '书名727', 1, '出版社727', 'ISBN727', '作者727', '存放位置727', 789.00, 702, '2013-05-29 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (728, '书名728', 16, '出版社728', 'ISBN728', '作者728', '存放位置728', 181.00, 208, '2008-09-30 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (729, '书名729', 20, '出版社729', 'ISBN729', '作者729', '存放位置729', 468.00, 450, '2012-01-07 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (730, '书名730', 3, '出版社730', 'ISBN730', '作者730', '存放位置730', 315.00, 503, '2008-02-18 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (731, '书名731', 20, '出版社731', 'ISBN731', '作者731', '存放位置731', 518.00, 747, '2019-04-03 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (732, '书名732', 7, '出版社732', 'ISBN732', '作者732', '存放位置732', 168.00, 205, '2009-08-02 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (733, '书名733', 15, '出版社733', 'ISBN733', '作者733', '存放位置733', 45.00, 398, '2019-11-12 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (734, '书名734', 1, '出版社734', 'ISBN734', '作者734', '存放位置734', 508.00, 965, '2022-04-06 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (735, '书名735', 18, '出版社735', 'ISBN735', '作者735', '存放位置735', 518.00, 990, '2000-02-28 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (736, '书名736', 7, '出版社736', 'ISBN736', '作者736', '存放位置736', 202.00, 401, '2006-01-09 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (737, '书名737', 11, '出版社737', 'ISBN737', '作者737', '存放位置737', 117.00, 373, '2010-05-15 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (738, '书名738', 20, '出版社738', 'ISBN738', '作者738', '存放位置738', 16.00, 655, '2005-03-09 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (739, '书名739', 22, '出版社739', 'ISBN739', '作者739', '存放位置739', 80.00, 853, '2023-05-06 00:00:00', 26, NULL);
INSERT INTO `ls_bookinfo` VALUES (740, '书名740', 10, '出版社740', 'ISBN740', '作者740', '存放位置740', 232.00, 210, '2004-05-03 00:00:00', 26, NULL);
INSERT INTO `ls_bookinfo` VALUES (741, '书名741', 19, '出版社741', 'ISBN741', '作者741', '存放位置741', 102.00, 289, '2001-07-10 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (742, '书名742', 0, '出版社742', 'ISBN742', '作者742', '存放位置742', 682.00, 153, '2004-12-19 00:00:00', 56, NULL);
INSERT INTO `ls_bookinfo` VALUES (743, '书名743', 5, '出版社743', 'ISBN743', '作者743', '存放位置743', 312.00, 298, '2007-10-06 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (744, '书名744', 14, '出版社744', 'ISBN744', '作者744', '存放位置744', 607.00, 64, '2001-03-05 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (745, '书名745', 2, '出版社745', 'ISBN745', '作者745', '存放位置745', 257.00, 330, '2016-09-04 00:00:00', 45, NULL);
INSERT INTO `ls_bookinfo` VALUES (746, '书名746', 4, '出版社746', 'ISBN746', '作者746', '存放位置746', 475.00, 405, '2005-10-29 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (747, '书名747', 5, '出版社747', 'ISBN747', '作者747', '存放位置747', 103.00, 991, '2013-10-04 00:00:00', 86, NULL);
INSERT INTO `ls_bookinfo` VALUES (748, '书名748', 15, '出版社748', 'ISBN748', '作者748', '存放位置748', 442.00, 874, '2017-04-14 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (749, '书名749', 14, '出版社749', 'ISBN749', '作者749', '存放位置749', 63.00, 648, '2000-02-18 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (750, '书名750', 9, '出版社750', 'ISBN750', '作者750', '存放位置750', 560.00, 339, '2014-05-09 00:00:00', 94, NULL);
INSERT INTO `ls_bookinfo` VALUES (751, '书名751', 23, '出版社751', 'ISBN751', '作者751', '存放位置751', 743.00, 784, '2003-03-30 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (752, '书名752', 4, '出版社752', 'ISBN752', '作者752', '存放位置752', 774.00, 287, '2012-12-23 00:00:00', 81, NULL);
INSERT INTO `ls_bookinfo` VALUES (753, '书名753', 11, '出版社753', 'ISBN753', '作者753', '存放位置753', 738.00, 192, '2004-09-01 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (754, '书名754', 8, '出版社754', 'ISBN754', '作者754', '存放位置754', 493.00, 19, '2005-12-14 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (755, '书名755', 2, '出版社755', 'ISBN755', '作者755', '存放位置755', 58.00, 11, '2020-05-02 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (756, '书名756', 7, '出版社756', 'ISBN756', '作者756', '存放位置756', 28.00, 259, '2004-07-28 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (757, '书名757', 6, '出版社757', 'ISBN757', '作者757', '存放位置757', 676.00, 421, '2013-10-13 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (758, '书名758', 5, '出版社758', 'ISBN758', '作者758', '存放位置758', 215.00, 735, '2021-02-12 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (759, '书名759', 3, '出版社759', 'ISBN759', '作者759', '存放位置759', 233.00, 10, '2004-03-26 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (760, '书名760', 17, '出版社760', 'ISBN760', '作者760', '存放位置760', 739.00, 547, '2023-05-15 00:00:00', 18, NULL);
INSERT INTO `ls_bookinfo` VALUES (761, '书名761', 0, '出版社761', 'ISBN761', '作者761', '存放位置761', 458.00, 789, '2005-07-22 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (762, '书名762', 5, '出版社762', 'ISBN762', '作者762', '存放位置762', 545.00, 796, '2022-10-04 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (763, '书名763', 18, '出版社763', 'ISBN763', '作者763', '存放位置763', 569.00, 376, '2018-01-11 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (764, '书名764', 18, '出版社764', 'ISBN764', '作者764', '存放位置764', 732.00, 357, '2001-01-02 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (765, '书名765', 13, '出版社765', 'ISBN765', '作者765', '存放位置765', 272.00, 57, '2006-05-11 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (766, '书名766', 23, '出版社766', 'ISBN766', '作者766', '存放位置766', 153.00, 187, '2008-09-28 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (767, '书名767', 3, '出版社767', 'ISBN767', '作者767', '存放位置767', 756.00, 322, '2018-10-01 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (768, '书名768', 5, '出版社768', 'ISBN768', '作者768', '存放位置768', 241.00, 900, '2014-05-23 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (769, '书名769', 14, '出版社769', 'ISBN769', '作者769', '存放位置769', 41.00, 540, '2013-04-07 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (770, '书名770', 23, '出版社770', 'ISBN770', '作者770', '存放位置770', 288.00, 975, '2019-04-03 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (771, '书名771', 21, '出版社771', 'ISBN771', '作者771', '存放位置771', 139.00, 274, '2020-08-20 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (772, '书名772', 15, '出版社772', 'ISBN772', '作者772', '存放位置772', 670.00, 301, '2024-01-11 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (773, '书名773', 7, '出版社773', 'ISBN773', '作者773', '存放位置773', 308.00, 993, '2019-08-24 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (774, '书名774', 23, '出版社774', 'ISBN774', '作者774', '存放位置774', 395.00, 638, '2017-03-19 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (775, '书名775', 1, '出版社775', 'ISBN775', '作者775', '存放位置775', 306.00, 736, '2012-11-22 00:00:00', 45, NULL);
INSERT INTO `ls_bookinfo` VALUES (776, '书名776', 16, '出版社776', 'ISBN776', '作者776', '存放位置776', 790.00, 932, '2016-11-16 00:00:00', 68, NULL);
INSERT INTO `ls_bookinfo` VALUES (777, '书名777', 8, '出版社777', 'ISBN777', '作者777', '存放位置777', 547.00, 373, '2019-08-27 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (778, '书名778', 6, '出版社778', 'ISBN778', '作者778', '存放位置778', 398.00, 702, '2000-05-27 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (779, '书名779', 20, '出版社779', 'ISBN779', '作者779', '存放位置779', 173.00, 596, '2008-02-02 00:00:00', 88, NULL);
INSERT INTO `ls_bookinfo` VALUES (780, '书名780', 9, '出版社780', 'ISBN780', '作者780', '存放位置780', 281.00, 566, '2018-09-22 00:00:00', 16, NULL);
INSERT INTO `ls_bookinfo` VALUES (781, '书名781', 13, '出版社781', 'ISBN781', '作者781', '存放位置781', 93.00, 9, '2016-11-22 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (782, '书名782', 5, '出版社782', 'ISBN782', '作者782', '存放位置782', 525.00, 662, '2008-04-22 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (783, '书名783', 15, '出版社783', 'ISBN783', '作者783', '存放位置783', 675.00, 408, '2012-04-13 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (784, '书名784', 0, '出版社784', 'ISBN784', '作者784', '存放位置784', 199.00, 137, '2022-09-21 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (785, '书名785', 14, '出版社785', 'ISBN785', '作者785', '存放位置785', 65.00, 654, '2000-08-25 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (786, '书名786', 19, '出版社786', 'ISBN786', '作者786', '存放位置786', 298.00, 532, '2013-02-20 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (787, '书名787', 23, '出版社787', 'ISBN787', '作者787', '存放位置787', 342.00, 272, '2001-11-20 00:00:00', 57, NULL);
INSERT INTO `ls_bookinfo` VALUES (788, '书名788', 15, '出版社788', 'ISBN788', '作者788', '存放位置788', 348.00, 285, '2002-12-08 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (789, '书名789', 9, '出版社789', 'ISBN789', '作者789', '存放位置789', 537.00, 204, '2000-03-11 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (790, '书名790', 2, '出版社790', 'ISBN790', '作者790', '存放位置790', 217.00, 25, '2007-08-03 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (791, '书名791', 12, '出版社791', 'ISBN791', '作者791', '存放位置791', 71.00, 908, '2006-09-03 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (792, '书名792', 10, '出版社792', 'ISBN792', '作者792', '存放位置792', 181.00, 822, '2010-07-04 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (793, '书名793', 5, '出版社793', 'ISBN793', '作者793', '存放位置793', 736.00, 990, '2004-07-12 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (794, '书名794', 6, '出版社794', 'ISBN794', '作者794', '存放位置794', 343.00, 353, '2011-08-06 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (795, '书名795', 5, '出版社795', 'ISBN795', '作者795', '存放位置795', 127.00, 101, '2000-08-27 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (796, '书名796', 1, '出版社796', 'ISBN796', '作者796', '存放位置796', 719.00, 261, '2014-09-19 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (797, '书名797', 11, '出版社797', 'ISBN797', '作者797', '存放位置797', 394.00, 110, '2001-10-16 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (798, '书名798', 24, '出版社798', 'ISBN798', '作者798', '存放位置798', 577.00, 707, '2009-01-14 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (799, '书名799', 14, '出版社799', 'ISBN799', '作者799', '存放位置799', 608.00, 5, '2018-02-21 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (800, '书名800', 9, '出版社800', 'ISBN800', '作者800', '存放位置800', 638.00, 801, '2014-11-09 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (801, '书名801', 11, '出版社801', 'ISBN801', '作者801', '存放位置801', 292.00, 414, '2023-08-14 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (802, '书名802', 6, '出版社802', 'ISBN802', '作者802', '存放位置802', 274.00, 965, '2019-04-18 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (803, '书名803', 1, '出版社803', 'ISBN803', '作者803', '存放位置803', 13.00, 914, '2012-08-15 00:00:00', 86, NULL);
INSERT INTO `ls_bookinfo` VALUES (804, '书名804', 18, '出版社804', 'ISBN804', '作者804', '存放位置804', 129.00, 560, '2007-08-17 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (805, '书名805', 13, '出版社805', 'ISBN805', '作者805', '存放位置805', 754.00, 139, '2021-01-05 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (806, '书名806', 0, '出版社806', 'ISBN806', '作者806', '存放位置806', 211.00, 301, '2017-05-14 00:00:00', 68, NULL);
INSERT INTO `ls_bookinfo` VALUES (807, '书名807', 6, '出版社807', 'ISBN807', '作者807', '存放位置807', 181.00, 373, '2004-07-13 00:00:00', 81, NULL);
INSERT INTO `ls_bookinfo` VALUES (808, '书名808', 12, '出版社808', 'ISBN808', '作者808', '存放位置808', 92.00, 39, '2020-08-25 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (809, '书名809', 4, '出版社809', 'ISBN809', '作者809', '存放位置809', 329.00, 550, '2012-07-19 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (810, '书名810', 3, '出版社810', 'ISBN810', '作者810', '存放位置810', 703.00, 981, '2006-07-11 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (811, '书名811', 5, '出版社811', 'ISBN811', '作者811', '存放位置811', 640.00, 398, '2014-04-10 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (812, '书名812', 24, '出版社812', 'ISBN812', '作者812', '存放位置812', 587.00, 675, '2004-03-03 00:00:00', 83, NULL);
INSERT INTO `ls_bookinfo` VALUES (813, '书名813', 16, '出版社813', 'ISBN813', '作者813', '存放位置813', 646.00, 51, '2020-02-21 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (814, '书名814', 13, '出版社814', 'ISBN814', '作者814', '存放位置814', 514.00, 619, '2004-02-13 00:00:00', 99, NULL);
INSERT INTO `ls_bookinfo` VALUES (815, '书名815', 11, '出版社815', 'ISBN815', '作者815', '存放位置815', 199.00, 913, '2019-10-26 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (816, '书名816', 7, '出版社816', 'ISBN816', '作者816', '存放位置816', 388.00, 503, '2001-06-19 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (817, '书名817', 19, '出版社817', 'ISBN817', '作者817', '存放位置817', 398.00, 169, '2008-07-01 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (818, '书名818', 4, '出版社818', 'ISBN818', '作者818', '存放位置818', 144.00, 349, '2004-12-01 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (819, '书名819', 5, '出版社819', 'ISBN819', '作者819', '存放位置819', 214.00, 635, '2008-12-26 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (820, '书名820', 16, '出版社820', 'ISBN820', '作者820', '存放位置820', 282.00, 840, '2003-06-10 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (821, '书名821', 13, '出版社821', 'ISBN821', '作者821', '存放位置821', 46.00, 710, '2009-03-10 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (822, '书名822', 17, '出版社822', 'ISBN822', '作者822', '存放位置822', 132.00, 750, '2006-03-10 00:00:00', 2, NULL);
INSERT INTO `ls_bookinfo` VALUES (823, '书名823', 9, '出版社823', 'ISBN823', '作者823', '存放位置823', 591.00, 604, '2019-07-09 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (824, '书名824', 16, '出版社824', 'ISBN824', '作者824', '存放位置824', 549.00, 432, '2002-06-15 00:00:00', 20, NULL);
INSERT INTO `ls_bookinfo` VALUES (825, '书名825', 18, '出版社825', 'ISBN825', '作者825', '存放位置825', 61.00, 162, '2014-01-31 00:00:00', 42, NULL);
INSERT INTO `ls_bookinfo` VALUES (826, '书名826', 9, '出版社826', 'ISBN826', '作者826', '存放位置826', 431.00, 613, '2010-11-21 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (827, '书名827', 17, '出版社827', 'ISBN827', '作者827', '存放位置827', 201.00, 169, '2002-04-23 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (828, '书名828', 13, '出版社828', 'ISBN828', '作者828', '存放位置828', 674.00, 570, '2007-10-21 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (829, '书名829', 13, '出版社829', 'ISBN829', '作者829', '存放位置829', 771.00, 224, '2005-07-30 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (830, '书名830', 17, '出版社830', 'ISBN830', '作者830', '存放位置830', 35.00, 136, '2013-04-03 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (831, '书名831', 0, '出版社831', 'ISBN831', '作者831', '存放位置831', 25.00, 145, '2015-04-29 00:00:00', 72, NULL);
INSERT INTO `ls_bookinfo` VALUES (832, '书名832', 18, '出版社832', 'ISBN832', '作者832', '存放位置832', 430.00, 458, '2016-05-09 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (833, '书名833', 24, '出版社833', 'ISBN833', '作者833', '存放位置833', 737.00, 649, '2011-09-04 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (834, '书名834', 21, '出版社834', 'ISBN834', '作者834', '存放位置834', 774.00, 224, '2005-04-04 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (835, '书名835', 10, '出版社835', 'ISBN835', '作者835', '存放位置835', 665.00, 917, '2002-03-12 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (836, '书名836', 5, '出版社836', 'ISBN836', '作者836', '存放位置836', 53.00, 630, '2023-01-30 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (837, '书名837', 12, '出版社837', 'ISBN837', '作者837', '存放位置837', 759.00, 204, '2004-03-07 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (838, '书名838', 18, '出版社838', 'ISBN838', '作者838', '存放位置838', 731.00, 373, '2002-12-17 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (839, '书名839', 2, '出版社839', 'ISBN839', '作者839', '存放位置839', 794.00, 683, '2010-08-28 00:00:00', 14, NULL);
INSERT INTO `ls_bookinfo` VALUES (840, '书名840', 10, '出版社840', 'ISBN840', '作者840', '存放位置840', 539.00, 98, '2011-05-16 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (841, '书名841', 21, '出版社841', 'ISBN841', '作者841', '存放位置841', 100.00, 58, '2022-03-03 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (842, '书名842', 6, '出版社842', 'ISBN842', '作者842', '存放位置842', 86.00, 753, '2010-10-04 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (843, '书名843', 11, '出版社843', 'ISBN843', '作者843', '存放位置843', 359.00, 849, '2021-10-29 00:00:00', 95, NULL);
INSERT INTO `ls_bookinfo` VALUES (844, '书名844', 2, '出版社844', 'ISBN844', '作者844', '存放位置844', 439.00, 495, '2020-01-02 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (845, '书名845', 18, '出版社845', 'ISBN845', '作者845', '存放位置845', 653.00, 833, '2017-05-14 00:00:00', 8, NULL);
INSERT INTO `ls_bookinfo` VALUES (846, '书名846', 6, '出版社846', 'ISBN846', '作者846', '存放位置846', 90.00, 742, '2009-01-07 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (847, '书名847', 1, '出版社847', 'ISBN847', '作者847', '存放位置847', 333.00, 887, '2004-07-12 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (848, '书名848', 20, '出版社848', 'ISBN848', '作者848', '存放位置848', 167.00, 627, '2012-05-25 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (849, '书名849', 21, '出版社849', 'ISBN849', '作者849', '存放位置849', 168.00, 510, '2022-03-27 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (850, '书名850', 13, '出版社850', 'ISBN850', '作者850', '存放位置850', 450.00, 166, '2003-06-24 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (851, '书名851', 16, '出版社851', 'ISBN851', '作者851', '存放位置851', 537.00, 363, '2019-05-06 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (852, '书名852', 3, '出版社852', 'ISBN852', '作者852', '存放位置852', 743.00, 262, '2012-08-27 00:00:00', 82, NULL);
INSERT INTO `ls_bookinfo` VALUES (853, '书名853', 14, '出版社853', 'ISBN853', '作者853', '存放位置853', 264.00, 969, '2020-09-06 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (854, '书名854', 6, '出版社854', 'ISBN854', '作者854', '存放位置854', 138.00, 106, '2000-05-05 00:00:00', 75, NULL);
INSERT INTO `ls_bookinfo` VALUES (855, '书名855', 17, '出版社855', 'ISBN855', '作者855', '存放位置855', 258.00, 468, '2009-01-20 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (856, '书名856', 4, '出版社856', 'ISBN856', '作者856', '存放位置856', 482.00, 416, '2006-08-25 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (857, '书名857', 19, '出版社857', 'ISBN857', '作者857', '存放位置857', 477.00, 601, '2005-04-27 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (858, '书名858', 20, '出版社858', 'ISBN858', '作者858', '存放位置858', 132.00, 399, '2012-02-23 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (859, '书名859', 1, '出版社859', 'ISBN859', '作者859', '存放位置859', 229.00, 305, '2016-02-08 00:00:00', 41, NULL);
INSERT INTO `ls_bookinfo` VALUES (860, '书名860', 1, '出版社860', 'ISBN860', '作者860', '存放位置860', 42.00, 93, '2007-06-30 00:00:00', 26, NULL);
INSERT INTO `ls_bookinfo` VALUES (861, '书名861', 10, '出版社861', 'ISBN861', '作者861', '存放位置861', 182.00, 924, '2022-08-24 00:00:00', 90, NULL);
INSERT INTO `ls_bookinfo` VALUES (862, '书名862', 17, '出版社862', 'ISBN862', '作者862', '存放位置862', 696.00, 202, '2009-09-15 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (863, '书名863', 19, '出版社863', 'ISBN863', '作者863', '存放位置863', 574.00, 244, '2001-08-17 00:00:00', 60, NULL);
INSERT INTO `ls_bookinfo` VALUES (864, '书名864', 20, '出版社864', 'ISBN864', '作者864', '存放位置864', 220.00, 924, '2019-04-19 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (865, '书名865', 16, '出版社865', 'ISBN865', '作者865', '存放位置865', 559.00, 497, '2009-05-22 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (866, '书名866', 1, '出版社866', 'ISBN866', '作者866', '存放位置866', 14.00, 876, '2007-12-20 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (867, '书名867', 2, '出版社867', 'ISBN867', '作者867', '存放位置867', 309.00, 678, '2005-07-24 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (868, '书名868', 21, '出版社868', 'ISBN868', '作者868', '存放位置868', 36.00, 596, '2020-06-30 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (869, '书名869', 16, '出版社869', 'ISBN869', '作者869', '存放位置869', 39.00, 218, '2022-12-07 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (870, '书名870', 13, '出版社870', 'ISBN870', '作者870', '存放位置870', 429.00, 17, '2011-08-02 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (871, '书名871', 6, '出版社871', 'ISBN871', '作者871', '存放位置871', 235.00, 685, '2013-03-10 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (872, '书名872', 17, '出版社872', 'ISBN872', '作者872', '存放位置872', 390.00, 348, '2006-09-13 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (873, '书名873', 21, '出版社873', 'ISBN873', '作者873', '存放位置873', 249.00, 959, '2020-11-18 00:00:00', 43, NULL);
INSERT INTO `ls_bookinfo` VALUES (874, '书名874', 14, '出版社874', 'ISBN874', '作者874', '存放位置874', 502.00, 383, '2000-10-09 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (875, '书名875', 23, '出版社875', 'ISBN875', '作者875', '存放位置875', 571.00, 729, '2012-03-23 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (876, '书名876', 3, '出版社876', 'ISBN876', '作者876', '存放位置876', 633.00, 480, '2000-09-17 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (877, '书名877', 10, '出版社877', 'ISBN877', '作者877', '存放位置877', 49.00, 2, '2020-01-14 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (878, '书名878', 4, '出版社878', 'ISBN878', '作者878', '存放位置878', 368.00, 791, '2013-11-27 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (879, '书名879', 19, '出版社879', 'ISBN879', '作者879', '存放位置879', 282.00, 455, '2005-04-28 00:00:00', 73, NULL);
INSERT INTO `ls_bookinfo` VALUES (880, '书名880', 0, '出版社880', 'ISBN880', '作者880', '存放位置880', 644.00, 28, '2017-08-01 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (881, '书名881', 13, '出版社881', 'ISBN881', '作者881', '存放位置881', 70.00, 808, '2018-11-11 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (882, '书名882', 0, '出版社882', 'ISBN882', '作者882', '存放位置882', 498.00, 96, '2014-11-02 00:00:00', 77, NULL);
INSERT INTO `ls_bookinfo` VALUES (883, '书名883', 1, '出版社883', 'ISBN883', '作者883', '存放位置883', 700.00, 255, '2015-10-08 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (884, '书名884', 12, '出版社884', 'ISBN884', '作者884', '存放位置884', 6.00, 556, '2018-04-26 00:00:00', 11, NULL);
INSERT INTO `ls_bookinfo` VALUES (885, '书名885', 7, '出版社885', 'ISBN885', '作者885', '存放位置885', 115.00, 832, '2017-09-08 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (886, '书名886', 14, '出版社886', 'ISBN886', '作者886', '存放位置886', 343.00, 413, '2018-11-02 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (887, '书名887', 22, '出版社887', 'ISBN887', '作者887', '存放位置887', 506.00, 415, '2004-04-26 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (888, '书名888', 17, '出版社888', 'ISBN888', '作者888', '存放位置888', 411.00, 501, '2023-05-03 00:00:00', 31, NULL);
INSERT INTO `ls_bookinfo` VALUES (889, '书名889', 17, '出版社889', 'ISBN889', '作者889', '存放位置889', 384.00, 348, '2007-04-22 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (890, '书名890', 10, '出版社890', 'ISBN890', '作者890', '存放位置890', 506.00, 953, '2021-01-23 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (891, '书名891', 20, '出版社891', 'ISBN891', '作者891', '存放位置891', 561.00, 8, '2022-09-14 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (892, '书名892', 12, '出版社892', 'ISBN892', '作者892', '存放位置892', 407.00, 49, '2017-05-30 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (893, '书名893', 1, '出版社893', 'ISBN893', '作者893', '存放位置893', 39.00, 13, '2022-04-10 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (894, '书名894', 0, '出版社894', 'ISBN894', '作者894', '存放位置894', 387.00, 327, '2004-06-10 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (895, '书名895', 3, '出版社895', 'ISBN895', '作者895', '存放位置895', 650.00, 693, '2000-09-24 00:00:00', 7, NULL);
INSERT INTO `ls_bookinfo` VALUES (896, '书名896', 6, '出版社896', 'ISBN896', '作者896', '存放位置896', 71.00, 665, '2001-06-25 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (897, '书名897', 9, '出版社897', 'ISBN897', '作者897', '存放位置897', 708.00, 337, '2000-10-15 00:00:00', 15, NULL);
INSERT INTO `ls_bookinfo` VALUES (898, '书名898', 16, '出版社898', 'ISBN898', '作者898', '存放位置898', 658.00, 148, '2006-08-10 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (899, '书名899', 19, '出版社899', 'ISBN899', '作者899', '存放位置899', 121.00, 412, '2014-09-03 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (900, '书名900', 3, '出版社900', 'ISBN900', '作者900', '存放位置900', 287.00, 353, '2016-09-05 00:00:00', 38, NULL);
INSERT INTO `ls_bookinfo` VALUES (901, '书名901', 21, '出版社901', 'ISBN901', '作者901', '存放位置901', 102.00, 70, '2023-06-12 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (902, '书名902', 6, '出版社902', 'ISBN902', '作者902', '存放位置902', 278.00, 994, '2022-06-30 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (903, '书名903', 13, '出版社903', 'ISBN903', '作者903', '存放位置903', 513.00, 630, '2005-07-01 00:00:00', 24, NULL);
INSERT INTO `ls_bookinfo` VALUES (904, '书名904', 13, '出版社904', 'ISBN904', '作者904', '存放位置904', 778.00, 238, '2006-09-12 00:00:00', 66, NULL);
INSERT INTO `ls_bookinfo` VALUES (905, '书名905', 12, '出版社905', 'ISBN905', '作者905', '存放位置905', 415.00, 84, '2020-11-21 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (906, '书名906', 18, '出版社906', 'ISBN906', '作者906', '存放位置906', 338.00, 947, '2011-05-20 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (907, '书名907', 3, '出版社907', 'ISBN907', '作者907', '存放位置907', 98.00, 228, '2018-09-12 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (908, '书名908', 14, '出版社908', 'ISBN908', '作者908', '存放位置908', 229.00, 747, '2021-03-11 00:00:00', 13, NULL);
INSERT INTO `ls_bookinfo` VALUES (909, '书名909', 1, '出版社909', 'ISBN909', '作者909', '存放位置909', 656.00, 971, '2009-07-12 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (910, '书名910', 2, '出版社910', 'ISBN910', '作者910', '存放位置910', 221.00, 120, '2018-09-06 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (911, '书名911', 4, '出版社911', 'ISBN911', '作者911', '存放位置911', 292.00, 311, '2011-03-06 00:00:00', 37, NULL);
INSERT INTO `ls_bookinfo` VALUES (912, '书名912', 12, '出版社912', 'ISBN912', '作者912', '存放位置912', 245.00, 74, '2010-12-31 00:00:00', 4, NULL);
INSERT INTO `ls_bookinfo` VALUES (913, '书名913', 21, '出版社913', 'ISBN913', '作者913', '存放位置913', 182.00, 517, '2021-11-30 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (914, '书名914', 3, '出版社914', 'ISBN914', '作者914', '存放位置914', 650.00, 627, '2016-11-22 00:00:00', 60, NULL);
INSERT INTO `ls_bookinfo` VALUES (915, '书名915', 23, '出版社915', 'ISBN915', '作者915', '存放位置915', 704.00, 583, '2006-09-17 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (916, '书名916', 8, '出版社916', 'ISBN916', '作者916', '存放位置916', 633.00, 941, '2008-01-30 00:00:00', 84, NULL);
INSERT INTO `ls_bookinfo` VALUES (917, '书名917', 5, '出版社917', 'ISBN917', '作者917', '存放位置917', 440.00, 103, '2020-12-15 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (918, '书名918', 12, '出版社918', 'ISBN918', '作者918', '存放位置918', 329.00, 580, '2016-02-26 00:00:00', 59, NULL);
INSERT INTO `ls_bookinfo` VALUES (919, '书名919', 24, '出版社919', 'ISBN919', '作者919', '存放位置919', 51.00, 411, '2020-12-30 00:00:00', 10, NULL);
INSERT INTO `ls_bookinfo` VALUES (920, '书名920', 22, '出版社920', 'ISBN920', '作者920', '存放位置920', 166.00, 336, '2001-05-14 00:00:00', 27, NULL);
INSERT INTO `ls_bookinfo` VALUES (921, '书名921', 4, '出版社921', 'ISBN921', '作者921', '存放位置921', 124.00, 195, '2012-05-15 00:00:00', 96, NULL);
INSERT INTO `ls_bookinfo` VALUES (922, '书名922', 7, '出版社922', 'ISBN922', '作者922', '存放位置922', 494.00, 179, '2001-01-09 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (923, '书名923', 5, '出版社923', 'ISBN923', '作者923', '存放位置923', 141.00, 167, '2007-06-06 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (924, '书名924', 5, '出版社924', 'ISBN924', '作者924', '存放位置924', 68.00, 721, '2008-06-26 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (925, '书名925', 22, '出版社925', 'ISBN925', '作者925', '存放位置925', 537.00, 698, '2011-07-30 00:00:00', 29, NULL);
INSERT INTO `ls_bookinfo` VALUES (926, '书名926', 0, '出版社926', 'ISBN926', '作者926', '存放位置926', 242.00, 404, '2002-09-21 00:00:00', 34, NULL);
INSERT INTO `ls_bookinfo` VALUES (927, '书名927', 10, '出版社927', 'ISBN927', '作者927', '存放位置927', 794.00, 740, '2017-07-24 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (928, '书名928', 21, '出版社928', 'ISBN928', '作者928', '存放位置928', 7.00, 511, '2012-11-15 00:00:00', 12, NULL);
INSERT INTO `ls_bookinfo` VALUES (929, '书名929', 0, '出版社929', 'ISBN929', '作者929', '存放位置929', 598.00, 666, '2002-02-28 00:00:00', 44, NULL);
INSERT INTO `ls_bookinfo` VALUES (930, '书名930', 24, '出版社930', 'ISBN930', '作者930', '存放位置930', 402.00, 610, '2013-02-21 00:00:00', 88, NULL);
INSERT INTO `ls_bookinfo` VALUES (931, '书名931', 19, '出版社931', 'ISBN931', '作者931', '存放位置931', 211.00, 973, '2001-10-26 00:00:00', 45, NULL);
INSERT INTO `ls_bookinfo` VALUES (932, '书名932', 1, '出版社932', 'ISBN932', '作者932', '存放位置932', 715.00, 316, '2021-10-08 00:00:00', 54, NULL);
INSERT INTO `ls_bookinfo` VALUES (933, '书名933', 0, '出版社933', 'ISBN933', '作者933', '存放位置933', 419.00, 523, '2001-02-03 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (934, '书名934', 3, '出版社934', 'ISBN934', '作者934', '存放位置934', 592.00, 277, '2004-01-30 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (935, '书名935', 13, '出版社935', 'ISBN935', '作者935', '存放位置935', 533.00, 716, '2014-02-15 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (936, '书名936', 2, '出版社936', 'ISBN936', '作者936', '存放位置936', 107.00, 408, '2015-06-25 00:00:00', 97, NULL);
INSERT INTO `ls_bookinfo` VALUES (937, '书名937', 23, '出版社937', 'ISBN937', '作者937', '存放位置937', 635.00, 145, '2008-04-29 00:00:00', 28, NULL);
INSERT INTO `ls_bookinfo` VALUES (938, '书名938', 9, '出版社938', 'ISBN938', '作者938', '存放位置938', 61.00, 229, '2022-03-12 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (939, '书名939', 18, '出版社939', 'ISBN939', '作者939', '存放位置939', 744.00, 483, '2015-02-14 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (940, '书名940', 12, '出版社940', 'ISBN940', '作者940', '存放位置940', 361.00, 776, '2012-09-25 00:00:00', 30, NULL);
INSERT INTO `ls_bookinfo` VALUES (941, '书名941', 23, '出版社941', 'ISBN941', '作者941', '存放位置941', 579.00, 845, '2001-05-16 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (942, '书名942', 13, '出版社942', 'ISBN942', '作者942', '存放位置942', 440.00, 82, '2018-05-23 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (943, '书名943', 11, '出版社943', 'ISBN943', '作者943', '存放位置943', 572.00, 158, '2015-08-03 00:00:00', 74, NULL);
INSERT INTO `ls_bookinfo` VALUES (944, '书名944', 19, '出版社944', 'ISBN944', '作者944', '存放位置944', 579.00, 244, '2001-04-02 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (945, '书名945', 11, '出版社945', 'ISBN945', '作者945', '存放位置945', 614.00, 432, '2020-11-08 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (946, '书名946', 11, '出版社946', 'ISBN946', '作者946', '存放位置946', 216.00, 975, '2001-07-16 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (947, '书名947', 19, '出版社947', 'ISBN947', '作者947', '存放位置947', 547.00, 105, '2011-07-03 00:00:00', 5, NULL);
INSERT INTO `ls_bookinfo` VALUES (948, '书名948', 21, '出版社948', 'ISBN948', '作者948', '存放位置948', 122.00, 168, '2009-04-06 00:00:00', 40, NULL);
INSERT INTO `ls_bookinfo` VALUES (949, '书名949', 22, '出版社949', 'ISBN949', '作者949', '存放位置949', 192.00, 521, '2021-07-08 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (950, '书名950', 18, '出版社950', 'ISBN950', '作者950', '存放位置950', 797.00, 807, '2001-01-29 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (951, '书名951', 21, '出版社951', 'ISBN951', '作者951', '存放位置951', 758.00, 130, '2019-08-07 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (952, '书名952', 21, '出版社952', 'ISBN952', '作者952', '存放位置952', 213.00, 794, '2004-02-23 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (953, '书名953', 21, '出版社953', 'ISBN953', '作者953', '存放位置953', 681.00, 694, '2022-03-25 00:00:00', 50, NULL);
INSERT INTO `ls_bookinfo` VALUES (954, '书名954', 19, '出版社954', 'ISBN954', '作者954', '存放位置954', 304.00, 564, '2016-06-02 00:00:00', 69, NULL);
INSERT INTO `ls_bookinfo` VALUES (955, '书名955', 11, '出版社955', 'ISBN955', '作者955', '存放位置955', 148.00, 559, '2005-10-30 00:00:00', 52, NULL);
INSERT INTO `ls_bookinfo` VALUES (956, '书名956', 22, '出版社956', 'ISBN956', '作者956', '存放位置956', 764.00, 56, '2010-02-20 00:00:00', 92, NULL);
INSERT INTO `ls_bookinfo` VALUES (957, '书名957', 9, '出版社957', 'ISBN957', '作者957', '存放位置957', 25.00, 76, '2007-01-06 00:00:00', 21, NULL);
INSERT INTO `ls_bookinfo` VALUES (958, '书名958', 5, '出版社958', 'ISBN958', '作者958', '存放位置958', 364.00, 609, '2016-07-22 00:00:00', 58, NULL);
INSERT INTO `ls_bookinfo` VALUES (959, '书名959', 22, '出版社959', 'ISBN959', '作者959', '存放位置959', 571.00, 879, '2006-03-20 00:00:00', 64, NULL);
INSERT INTO `ls_bookinfo` VALUES (960, '书名960', 11, '出版社960', 'ISBN960', '作者960', '存放位置960', 264.00, 292, '2011-06-04 00:00:00', 48, NULL);
INSERT INTO `ls_bookinfo` VALUES (961, '书名961', 24, '出版社961', 'ISBN961', '作者961', '存放位置961', 419.00, 642, '2015-05-27 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (962, '书名962', 9, '出版社962', 'ISBN962', '作者962', '存放位置962', 40.00, 167, '2016-07-24 00:00:00', 91, NULL);
INSERT INTO `ls_bookinfo` VALUES (963, '书名963', 13, '出版社963', 'ISBN963', '作者963', '存放位置963', 749.00, 70, '2013-02-02 00:00:00', 49, NULL);
INSERT INTO `ls_bookinfo` VALUES (964, '书名964', 20, '出版社964', 'ISBN964', '作者964', '存放位置964', 577.00, 92, '2007-02-14 00:00:00', 19, NULL);
INSERT INTO `ls_bookinfo` VALUES (965, '书名965', 2, '出版社965', 'ISBN965', '作者965', '存放位置965', 683.00, 9, '2011-09-29 00:00:00', 39, NULL);
INSERT INTO `ls_bookinfo` VALUES (966, '书名966', 13, '出版社966', 'ISBN966', '作者966', '存放位置966', 357.00, 655, '2022-08-07 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (967, '书名967', 17, '出版社967', 'ISBN967', '作者967', '存放位置967', 349.00, 60, '2023-12-09 00:00:00', 76, NULL);
INSERT INTO `ls_bookinfo` VALUES (968, '书名968', 21, '出版社968', 'ISBN968', '作者968', '存放位置968', 777.00, 299, '2014-02-06 00:00:00', 1, NULL);
INSERT INTO `ls_bookinfo` VALUES (969, '书名969', 8, '出版社969', 'ISBN969', '作者969', '存放位置969', 460.00, 909, '2019-10-24 00:00:00', 36, NULL);
INSERT INTO `ls_bookinfo` VALUES (970, '书名970', 9, '出版社970', 'ISBN970', '作者970', '存放位置970', 579.00, 535, '2012-02-13 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (971, '书名971', 24, '出版社971', 'ISBN971', '作者971', '存放位置971', 193.00, 246, '2012-04-13 00:00:00', 79, NULL);
INSERT INTO `ls_bookinfo` VALUES (972, '书名972', 11, '出版社972', 'ISBN972', '作者972', '存放位置972', 755.00, 316, '2018-03-16 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (973, '书名973', 19, '出版社973', 'ISBN973', '作者973', '存放位置973', 426.00, 287, '2020-05-04 00:00:00', 33, NULL);
INSERT INTO `ls_bookinfo` VALUES (974, '书名974', 4, '出版社974', 'ISBN974', '作者974', '存放位置974', 654.00, 594, '2012-07-09 00:00:00', 80, NULL);
INSERT INTO `ls_bookinfo` VALUES (975, '书名975', 11, '出版社975', 'ISBN975', '作者975', '存放位置975', 714.00, 87, '2018-04-23 00:00:00', 51, NULL);
INSERT INTO `ls_bookinfo` VALUES (976, '书名976', 8, '出版社976', 'ISBN976', '作者976', '存放位置976', 60.00, 400, '2018-10-05 00:00:00', 67, NULL);
INSERT INTO `ls_bookinfo` VALUES (977, '书名977', 0, '出版社977', 'ISBN977', '作者977', '存放位置977', 135.00, 735, '2004-01-29 00:00:00', 63, NULL);
INSERT INTO `ls_bookinfo` VALUES (978, '书名978', 16, '出版社978', 'ISBN978', '作者978', '存放位置978', 370.00, 291, '2001-09-12 00:00:00', 47, NULL);
INSERT INTO `ls_bookinfo` VALUES (979, '书名979', 4, '出版社979', 'ISBN979', '作者979', '存放位置979', 330.00, 562, '2013-10-31 00:00:00', 17, NULL);
INSERT INTO `ls_bookinfo` VALUES (980, '书名980', 3, '出版社980', 'ISBN980', '作者980', '存放位置980', 136.00, 445, '2017-04-18 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (981, '书名981', 0, '出版社981', 'ISBN981', '作者981', '存放位置981', 381.00, 275, '2022-11-20 00:00:00', 89, NULL);
INSERT INTO `ls_bookinfo` VALUES (982, '书名982', 16, '出版社982', 'ISBN982', '作者982', '存放位置982', 495.00, 105, '2016-03-31 00:00:00', 3, NULL);
INSERT INTO `ls_bookinfo` VALUES (983, '书名983', 4, '出版社983', 'ISBN983', '作者983', '存放位置983', 611.00, 294, '2004-04-23 00:00:00', 0, NULL);
INSERT INTO `ls_bookinfo` VALUES (984, '书名984', 12, '出版社984', 'ISBN984', '作者984', '存放位置984', 405.00, 13, '2013-04-12 00:00:00', 70, NULL);
INSERT INTO `ls_bookinfo` VALUES (985, '书名985', 21, '出版社985', 'ISBN985', '作者985', '存放位置985', 170.00, 475, '2017-11-02 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (986, '书名986', 1, '出版社986', 'ISBN986', '作者986', '存放位置986', 499.00, 883, '2013-03-03 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (987, '书名987', 17, '出版社987', 'ISBN987', '作者987', '存放位置987', 292.00, 683, '2007-10-01 00:00:00', 55, NULL);
INSERT INTO `ls_bookinfo` VALUES (988, '书名988', 19, '出版社988', 'ISBN988', '作者988', '存放位置988', 247.00, 168, '2022-02-25 00:00:00', 6, NULL);
INSERT INTO `ls_bookinfo` VALUES (989, '书名989', 15, '出版社989', 'ISBN989', '作者989', '存放位置989', 649.00, 246, '2019-04-04 00:00:00', 23, NULL);
INSERT INTO `ls_bookinfo` VALUES (990, '书名990', 20, '出版社990', 'ISBN990', '作者990', '存放位置990', 253.00, 164, '2021-02-27 00:00:00', 87, NULL);
INSERT INTO `ls_bookinfo` VALUES (991, '书名991', 18, '出版社991', 'ISBN991', '作者991', '存放位置991', 113.00, 447, '2019-08-24 00:00:00', 71, NULL);
INSERT INTO `ls_bookinfo` VALUES (992, '书名992', 3, '出版社992', 'ISBN992', '作者992', '存放位置992', 462.00, 455, '2013-02-27 00:00:00', 35, NULL);
INSERT INTO `ls_bookinfo` VALUES (993, '书名993', 3, '出版社993', 'ISBN993', '作者993', '存放位置993', 446.00, 425, '2010-12-14 00:00:00', 98, NULL);
INSERT INTO `ls_bookinfo` VALUES (994, '书名994', 14, '出版社994', 'ISBN994', '作者994', '存放位置994', 720.00, 787, '2005-10-01 00:00:00', 82, NULL);
INSERT INTO `ls_bookinfo` VALUES (995, '书名995', 10, '出版社995', 'ISBN995', '作者995', '存放位置995', 458.00, 639, '2011-07-12 00:00:00', 46, NULL);
INSERT INTO `ls_bookinfo` VALUES (996, '书名996', 22, '出版社996', 'ISBN996', '作者996', '存放位置996', 31.00, 542, '2014-04-25 00:00:00', 32, NULL);
INSERT INTO `ls_bookinfo` VALUES (997, '书名997', 21, '出版社997', 'ISBN997', '作者997', '存放位置997', 309.00, 306, '2008-12-26 00:00:00', 93, NULL);
INSERT INTO `ls_bookinfo` VALUES (998, '书名998', 14, '出版社998', 'ISBN998', '作者998', '存放位置998', 56.00, 623, '2021-11-30 00:00:00', 65, NULL);
INSERT INTO `ls_bookinfo` VALUES (999, '书名999', 13, '出版社999', 'ISBN999', '作者999', '存放位置999', 666.00, 488, '2022-11-05 00:00:00', 25, NULL);
INSERT INTO `ls_bookinfo` VALUES (1000, '书名1000', 10, '出版社1000', 'ISBN1000', '作者1000', '存放位置1000', 299.00, 594, '2020-08-15 00:00:00', 47, NULL);

-- ----------------------------
-- Table structure for ls_booktype
-- ----------------------------
DROP TABLE IF EXISTS `ls_booktype`;
CREATE TABLE `ls_booktype`  (
  `bt_id` int NOT NULL COMMENT '书籍类型ID',
  `bt_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍类型',
  PRIMARY KEY (`bt_id`) USING BTREE,
  INDEX `bt_name_index`(`bt_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '书籍类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ls_booktype
-- ----------------------------
INSERT INTO `ls_booktype` VALUES (1, '类型1');
INSERT INTO `ls_booktype` VALUES (10, '类型10');
INSERT INTO `ls_booktype` VALUES (100, '类型100');
INSERT INTO `ls_booktype` VALUES (11, '类型11');
INSERT INTO `ls_booktype` VALUES (12, '类型12');
INSERT INTO `ls_booktype` VALUES (13, '类型13');
INSERT INTO `ls_booktype` VALUES (14, '类型14');
INSERT INTO `ls_booktype` VALUES (15, '类型15');
INSERT INTO `ls_booktype` VALUES (16, '类型16');
INSERT INTO `ls_booktype` VALUES (17, '类型17');
INSERT INTO `ls_booktype` VALUES (18, '类型18');
INSERT INTO `ls_booktype` VALUES (19, '类型19');
INSERT INTO `ls_booktype` VALUES (2, '类型2');
INSERT INTO `ls_booktype` VALUES (20, '类型20');
INSERT INTO `ls_booktype` VALUES (21, '类型21');
INSERT INTO `ls_booktype` VALUES (22, '类型22');
INSERT INTO `ls_booktype` VALUES (23, '类型23');
INSERT INTO `ls_booktype` VALUES (24, '类型24');
INSERT INTO `ls_booktype` VALUES (25, '类型25');
INSERT INTO `ls_booktype` VALUES (26, '类型26');
INSERT INTO `ls_booktype` VALUES (27, '类型27');
INSERT INTO `ls_booktype` VALUES (28, '类型28');
INSERT INTO `ls_booktype` VALUES (29, '类型29');
INSERT INTO `ls_booktype` VALUES (3, '类型3');
INSERT INTO `ls_booktype` VALUES (30, '类型30');
INSERT INTO `ls_booktype` VALUES (31, '类型31');
INSERT INTO `ls_booktype` VALUES (32, '类型32');
INSERT INTO `ls_booktype` VALUES (33, '类型33');
INSERT INTO `ls_booktype` VALUES (34, '类型34');
INSERT INTO `ls_booktype` VALUES (35, '类型35');
INSERT INTO `ls_booktype` VALUES (36, '类型36');
INSERT INTO `ls_booktype` VALUES (37, '类型37');
INSERT INTO `ls_booktype` VALUES (38, '类型38');
INSERT INTO `ls_booktype` VALUES (39, '类型39');
INSERT INTO `ls_booktype` VALUES (4, '类型4');
INSERT INTO `ls_booktype` VALUES (40, '类型40');
INSERT INTO `ls_booktype` VALUES (41, '类型41');
INSERT INTO `ls_booktype` VALUES (42, '类型42');
INSERT INTO `ls_booktype` VALUES (43, '类型43');
INSERT INTO `ls_booktype` VALUES (44, '类型44');
INSERT INTO `ls_booktype` VALUES (45, '类型45');
INSERT INTO `ls_booktype` VALUES (46, '类型46');
INSERT INTO `ls_booktype` VALUES (47, '类型47');
INSERT INTO `ls_booktype` VALUES (48, '类型48');
INSERT INTO `ls_booktype` VALUES (49, '类型49');
INSERT INTO `ls_booktype` VALUES (5, '类型5');
INSERT INTO `ls_booktype` VALUES (50, '类型50');
INSERT INTO `ls_booktype` VALUES (51, '类型51');
INSERT INTO `ls_booktype` VALUES (52, '类型52');
INSERT INTO `ls_booktype` VALUES (53, '类型53');
INSERT INTO `ls_booktype` VALUES (54, '类型54');
INSERT INTO `ls_booktype` VALUES (55, '类型55');
INSERT INTO `ls_booktype` VALUES (56, '类型56');
INSERT INTO `ls_booktype` VALUES (57, '类型57');
INSERT INTO `ls_booktype` VALUES (58, '类型58');
INSERT INTO `ls_booktype` VALUES (59, '类型59');
INSERT INTO `ls_booktype` VALUES (6, '类型6');
INSERT INTO `ls_booktype` VALUES (60, '类型60');
INSERT INTO `ls_booktype` VALUES (61, '类型61');
INSERT INTO `ls_booktype` VALUES (62, '类型62');
INSERT INTO `ls_booktype` VALUES (63, '类型63');
INSERT INTO `ls_booktype` VALUES (64, '类型64');
INSERT INTO `ls_booktype` VALUES (65, '类型65');
INSERT INTO `ls_booktype` VALUES (66, '类型66');
INSERT INTO `ls_booktype` VALUES (67, '类型67');
INSERT INTO `ls_booktype` VALUES (68, '类型68');
INSERT INTO `ls_booktype` VALUES (69, '类型69');
INSERT INTO `ls_booktype` VALUES (7, '类型7');
INSERT INTO `ls_booktype` VALUES (70, '类型70');
INSERT INTO `ls_booktype` VALUES (71, '类型71');
INSERT INTO `ls_booktype` VALUES (72, '类型72');
INSERT INTO `ls_booktype` VALUES (73, '类型73');
INSERT INTO `ls_booktype` VALUES (74, '类型74');
INSERT INTO `ls_booktype` VALUES (75, '类型75');
INSERT INTO `ls_booktype` VALUES (76, '类型76');
INSERT INTO `ls_booktype` VALUES (77, '类型77');
INSERT INTO `ls_booktype` VALUES (78, '类型78');
INSERT INTO `ls_booktype` VALUES (79, '类型79');
INSERT INTO `ls_booktype` VALUES (8, '类型8');
INSERT INTO `ls_booktype` VALUES (80, '类型80');
INSERT INTO `ls_booktype` VALUES (81, '类型81');
INSERT INTO `ls_booktype` VALUES (82, '类型82');
INSERT INTO `ls_booktype` VALUES (83, '类型83');
INSERT INTO `ls_booktype` VALUES (84, '类型84');
INSERT INTO `ls_booktype` VALUES (85, '类型85');
INSERT INTO `ls_booktype` VALUES (86, '类型86');
INSERT INTO `ls_booktype` VALUES (87, '类型87');
INSERT INTO `ls_booktype` VALUES (88, '类型88');
INSERT INTO `ls_booktype` VALUES (89, '类型89');
INSERT INTO `ls_booktype` VALUES (9, '类型9');
INSERT INTO `ls_booktype` VALUES (90, '类型90');
INSERT INTO `ls_booktype` VALUES (91, '类型91');
INSERT INTO `ls_booktype` VALUES (92, '类型92');
INSERT INTO `ls_booktype` VALUES (93, '类型93');
INSERT INTO `ls_booktype` VALUES (94, '类型94');
INSERT INTO `ls_booktype` VALUES (95, '类型95');
INSERT INTO `ls_booktype` VALUES (96, '类型96');
INSERT INTO `ls_booktype` VALUES (97, '类型97');
INSERT INTO `ls_booktype` VALUES (98, '类型98');
INSERT INTO `ls_booktype` VALUES (99, '类型99');

-- ----------------------------
-- Table structure for ls_borrow
-- ----------------------------
DROP TABLE IF EXISTS `ls_borrow`;
CREATE TABLE `ls_borrow`  (
  `bb_id` int NOT NULL AUTO_INCREMENT COMMENT '书籍借出ID',
  `r_id` int NOT NULL COMMENT '读者ID',
  `bi_id` int NOT NULL COMMENT '书籍ID',
  `bb_lendtime` datetime NOT NULL COMMENT '借出时间',
  `bb_returntime` datetime NOT NULL COMMENT '归还时间',
  `bb_real_returntime` datetime NULL DEFAULT NULL COMMENT '实际归还时间',
  `bb_isreborrow` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否续借: 0:否 1:是',
  `bb_reborrow_days` int NULL DEFAULT NULL COMMENT '续借天数',
  PRIMARY KEY (`bb_id`) USING BTREE,
  INDEX `r_id_index`(`r_id` ASC) USING BTREE,
  INDEX `bi_id_index`(`bi_id` ASC) USING BTREE,
  INDEX `bb_lendtime_index`(`bb_lendtime` ASC) USING BTREE,
  INDEX `bb_returntime_index`(`bb_returntime` ASC) USING BTREE,
  INDEX `bb_real_returntime_index`(`bb_real_returntime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '书籍借阅表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ls_borrow
-- ----------------------------
INSERT INTO `ls_borrow` VALUES (1, 2, 900, '2024-03-23 11:04:32', '2024-04-22 11:04:32', '2024-03-23 11:09:28', 0, 0);
INSERT INTO `ls_borrow` VALUES (2, 2, 468, '2024-03-23 11:09:36', '2024-04-12 11:09:36', '2024-03-23 11:29:05', 0, 0);
INSERT INTO `ls_borrow` VALUES (3, 2, 468, '2024-03-23 11:29:12', '2024-05-02 11:29:12', '2024-03-23 11:29:35', 1, 10);
INSERT INTO `ls_borrow` VALUES (4, 2, 468, '2024-03-23 11:29:47', '2024-06-01 11:29:47', '2024-03-23 11:34:06', 1, 10);
INSERT INTO `ls_borrow` VALUES (5, 2, 468, '2024-03-23 11:34:10', '2024-04-22 11:34:10', '2024-03-23 11:38:47', 0, 0);
INSERT INTO `ls_borrow` VALUES (6, 2, 700, '2024-03-23 11:38:56', '2024-04-22 11:38:56', '2024-03-23 11:41:51', 0, 0);
INSERT INTO `ls_borrow` VALUES (7, 2, 468, '2024-03-23 11:41:47', '2024-04-22 11:41:47', '2024-03-23 11:41:52', 0, 0);
INSERT INTO `ls_borrow` VALUES (8, 2, 464, '2024-03-23 11:42:40', '2024-05-22 11:42:40', '2024-03-25 17:31:16', 1, 30);
INSERT INTO `ls_borrow` VALUES (9, 2, 468, '2024-03-25 17:31:20', '2024-07-09 00:00:00', NULL, 1, 90);
INSERT INTO `ls_borrow` VALUES (10, 2, 478, '2024-03-25 17:31:24', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (11, 2, 1, '2024-03-31 16:10:28', '2024-04-26 16:10:33', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (12, 2, 2, '2024-03-31 16:30:50', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (13, 2, 3, '2024-03-31 16:30:58', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (14, 2, 4, '2024-03-31 16:31:00', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (15, 2, 6, '2024-03-31 16:31:31', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (16, 2, 7, '2024-03-31 16:36:45', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (17, 2, 8, '2024-03-31 16:36:52', '2024-04-30 00:00:00', NULL, 0, 0);
INSERT INTO `ls_borrow` VALUES (18, 2, 12, '2024-03-31 16:44:58', '2024-09-27 00:00:00', NULL, 1, 90);

-- ----------------------------
-- Table structure for ls_punish
-- ----------------------------
DROP TABLE IF EXISTS `ls_punish`;
CREATE TABLE `ls_punish`  (
  `p_id` int NOT NULL COMMENT '惩罚表id',
  `r_id` int NOT NULL COMMENT '用户id',
  `u_bookcount` int NOT NULL COMMENT '续期未归还的条数',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ls_punish
-- ----------------------------

-- ----------------------------
-- Table structure for ls_readers
-- ----------------------------
DROP TABLE IF EXISTS `ls_readers`;
CREATE TABLE `ls_readers`  (
  `r_id` int NOT NULL AUTO_INCREMENT COMMENT '读者ID',
  `r_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '读者姓名',
  `r_gender` tinyint(1) NULL DEFAULT 1 COMMENT '性别: 1:男  2:女',
  `r_birthday` datetime NOT NULL COMMENT '年龄',
  `r_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  `r_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`r_id`) USING BTREE,
  INDEX `r_name_index`(`r_name` ASC) USING BTREE,
  INDEX `r_gender_index`(`r_gender` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '读者表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ls_readers
-- ----------------------------

-- ----------------------------
-- Table structure for ls_user
-- ----------------------------
DROP TABLE IF EXISTS `ls_user`;
CREATE TABLE `ls_user`  (
  `u_id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `u_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名ID',
  `u_pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `u_gender` tinyint(1) NULL DEFAULT 1 COMMENT '性别: 1:男  2:女',
  `u_birthday` datetime NULL DEFAULT NULL COMMENT '年龄',
  `u_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  `u_identity` tinyint(1) NOT NULL DEFAULT 1 COMMENT '用户身份: 1:系统管理员  2:图书管理员',
  PRIMARY KEY (`u_id`) USING BTREE,
  INDEX `uname_index`(`u_name` ASC) USING BTREE,
  INDEX `uidentity_index`(`u_identity` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ls_user
-- ----------------------------

-- ----------------------------
-- Procedure structure for InsertBookInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertBookInfo`;
delimiter ;;
CREATE PROCEDURE `InsertBookInfo`()
BEGIN
    DECLARE v_counter INT DEFAULT 1;
    DECLARE v_max INT DEFAULT 1000;
    
    WHILE v_counter <= v_max DO
        INSERT INTO ls_bookinfo(
            bi_id,bi_name, bt_id, bi_press, bi_isbn, bi_author, bi_location, 
            bi_price, bi_pages, bi_addtime, bi_num
        ) VALUES (
						v_counter,
            CONCAT('书名', v_counter), -- bi_name
            FLOOR(RAND() * 25),          -- bt_id 随机生成（假设bt_id最大是100）
            CONCAT('出版社', v_counter),     -- bi_press
            CONCAT('ISBN', v_counter),      -- bi_isbn
            CONCAT('作者', v_counter),    -- bi_author
            CONCAT('存放位置', v_counter),  -- bi_location
            FLOOR(RAND() * 800),         -- bi_price 随机生成（假设价格最大是1000）
            FLOOR(RAND() * 1000),         -- bi_pages 随机生成（假设页数最大是1000）
            DATE_ADD('2000-01-01', INTERVAL FLOOR(RAND() * (DATEDIFF('2024-03-18', '2000-01-01'))) DAY),   -- bi_addtime
            FLOOR(RAND() * 100)           -- bi_num 随机生成（假设库存量最大是100）
        );
        
        SET v_counter = v_counter + 1;
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertBookType
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertBookType`;
delimiter ;;
CREATE PROCEDURE `InsertBookType`()
BEGIN
	 DECLARE v_counter INT DEFAULT 1;
    DECLARE v_max INT DEFAULT 100;
    
    WHILE v_counter <= v_max DO
        INSERT INTO ls_booktype(
           bt_id,bt_name
        ) VALUES (
						v_counter,
            CONCAT('类型', v_counter) -- bt_name
        );
        SET v_counter = v_counter + 1;
    END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
