/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80200
 Source Host           : localhost:3306
 Source Schema         : db_springwiththymeleaf

 Target Server Type    : MySQL
 Target Server Version : 80200
 File Encoding         : 65001

 Date: 01/06/2026 13:27:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES (1, 'Mains');
INSERT INTO `tbl_category` VALUES (2, 'Deserts');
INSERT INTO `tbl_category` VALUES (3, 'Drinks');
INSERT INTO `tbl_category` VALUES (4, 'Happy Hour');

-- ----------------------------
-- Table structure for tbl_food
-- ----------------------------
DROP TABLE IF EXISTS `tbl_food`;
CREATE TABLE `tbl_food`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `cid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfdi12vug9dxtuyq47i723572l`(`cid` ASC) USING BTREE,
  CONSTRAINT `FKfdi12vug9dxtuyq47i723572l` FOREIGN KEY (`cid`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_food
-- ----------------------------
INSERT INTO `tbl_food` VALUES (1, 'Apkle', 16, 1);
INSERT INTO `tbl_food` VALUES (2, 'Raspberry', 13, 2);
INSERT INTO `tbl_food` VALUES (3, 'Plwots pi', 15, 2);
INSERT INTO `tbl_food` VALUES (4, 'omni-drape', 14, 1);
INSERT INTO `tbl_food` VALUES (5, 'Apple', 15, 2);
INSERT INTO `tbl_food` VALUES (6, 'Grape', 19, 3);
INSERT INTO `tbl_food` VALUES (7, 'Rambutan', 18, 2);
INSERT INTO `tbl_food` VALUES (8, 'Strawberry', 16, 3);
INSERT INTO `tbl_food` VALUES (9, 'omni-Apple', 16, 3);
INSERT INTO `tbl_food` VALUES (10, 'Plucts', 20, 3);
INSERT INTO `tbl_food` VALUES (11, 'Raspberry', 19, 2);
INSERT INTO `tbl_food` VALUES (12, 'Rambgtan core', 15, 1);
INSERT INTO `tbl_food` VALUES (13, 'Kiwi', 16, 1);
INSERT INTO `tbl_food` VALUES (14, 'Gkape', 14, 1);
INSERT INTO `tbl_food` VALUES (15, 'Mango', 13, 2);
INSERT INTO `tbl_food` VALUES (16, 'Strawberry', 16, 3);
INSERT INTO `tbl_food` VALUES (17, 'ambi-Rcmbutan', 14, 1);
INSERT INTO `tbl_food` VALUES (18, 'Maygo', 11, 1);
INSERT INTO `tbl_food` VALUES (19, 'Kiwi', 10, 1);
INSERT INTO `tbl_food` VALUES (20, 'Kiwi', 14, 2);
INSERT INTO `tbl_food` VALUES (21, 'Rambctan', 15, 1);
INSERT INTO `tbl_food` VALUES (22, 'ambi-Apple', 12, 1);
INSERT INTO `tbl_food` VALUES (23, 'iSorawberry', 19, 3);
INSERT INTO `tbl_food` VALUES (24, 'Kiwi', 18, 3);
INSERT INTO `tbl_food` VALUES (25, 'Mango', 20, 1);
INSERT INTO `tbl_food` VALUES (26, 'Cherzy', 20, 3);
INSERT INTO `tbl_food` VALUES (27, 'Mango core', 14, 1);
INSERT INTO `tbl_food` VALUES (28, 'Mango air', 12, 1);
INSERT INTO `tbl_food` VALUES (29, 'Orange', 12, 1);
INSERT INTO `tbl_food` VALUES (30, 'Kiwi', 19, 1);
INSERT INTO `tbl_food` VALUES (31, 'iOrange', 16, 2);
INSERT INTO `tbl_food` VALUES (32, 'Oranfe', 16, 3);
INSERT INTO `tbl_food` VALUES (33, 'rrape', 14, 3);
INSERT INTO `tbl_food` VALUES (34, 'Apple mini', 11, 1);
INSERT INTO `tbl_food` VALUES (35, 'Mango core', 19, 3);
INSERT INTO `tbl_food` VALUES (36, 'Strawberry', 11, 2);
INSERT INTO `tbl_food` VALUES (37, 'Orange', 18, 3);
INSERT INTO `tbl_food` VALUES (38, 'ambi-Strawberry', 10, 2);
INSERT INTO `tbl_food` VALUES (39, 'xPluots', 10, 3);
INSERT INTO `tbl_food` VALUES (40, 'bambutan', 17, 2);
INSERT INTO `tbl_food` VALUES (41, 'zherry', 12, 2);
INSERT INTO `tbl_food` VALUES (42, 'Orange pi', 14, 2);
INSERT INTO `tbl_food` VALUES (43, 'Cherry', 19, 3);
INSERT INTO `tbl_food` VALUES (44, 'Strawberpy mini', 17, 2);
INSERT INTO `tbl_food` VALUES (45, 'viwi air', 19, 1);
INSERT INTO `tbl_food` VALUES (46, 'Cherry elite', 17, 3);
INSERT INTO `tbl_food` VALUES (47, 'omni-Orxnge', 16, 2);
INSERT INTO `tbl_food` VALUES (48, 'mambutan', 12, 2);
INSERT INTO `tbl_food` VALUES (49, 'Krwi core', 10, 3);
INSERT INTO `tbl_food` VALUES (50, 'Stramberry plus', 20, 3);
INSERT INTO `tbl_food` VALUES (51, 'Grwpe', 12, 3);
INSERT INTO `tbl_food` VALUES (52, 'ultra-Strawxerry', 20, 2);
INSERT INTO `tbl_food` VALUES (53, 'Strawberry', 16, 2);
INSERT INTO `tbl_food` VALUES (54, 'Czerry premium', 13, 3);
INSERT INTO `tbl_food` VALUES (55, 'Cherry', 10, 1);
INSERT INTO `tbl_food` VALUES (56, 'Gxape', 14, 1);
INSERT INTO `tbl_food` VALUES (57, 'Mango', 15, 2);
INSERT INTO `tbl_food` VALUES (58, 'Strawberry mini', 14, 2);
INSERT INTO `tbl_food` VALUES (59, 'Grape', 15, 1);
INSERT INTO `tbl_food` VALUES (60, 'Raspberry plus', 19, 1);
INSERT INTO `tbl_food` VALUES (61, 'Rmmbutan', 14, 2);
INSERT INTO `tbl_food` VALUES (62, 'Apple', 11, 2);
INSERT INTO `tbl_food` VALUES (63, 'Apple se', 11, 1);
INSERT INTO `tbl_food` VALUES (64, 'Cherry mini', 19, 2);
INSERT INTO `tbl_food` VALUES (65, 'Rmmbutan', 17, 3);
INSERT INTO `tbl_food` VALUES (66, 'iOrange', 14, 3);
INSERT INTO `tbl_food` VALUES (67, 'Oiange mini', 19, 2);
INSERT INTO `tbl_food` VALUES (68, 'eiwi', 11, 3);
INSERT INTO `tbl_food` VALUES (69, 'eherry', 12, 3);
INSERT INTO `tbl_food` VALUES (70, 'Cherry se', 17, 1);
INSERT INTO `tbl_food` VALUES (71, 'Kiwi se', 18, 3);
INSERT INTO `tbl_food` VALUES (72, 'Adple pi', 12, 1);
INSERT INTO `tbl_food` VALUES (73, 'Apple mini', 11, 1);
INSERT INTO `tbl_food` VALUES (74, 'Pluots pi', 15, 3);
INSERT INTO `tbl_food` VALUES (75, 'uambutan', 11, 1);
INSERT INTO `tbl_food` VALUES (76, 'Oraoge elite', 18, 2);
INSERT INTO `tbl_food` VALUES (77, 'Raspberry', 16, 1);
INSERT INTO `tbl_food` VALUES (78, 'xRazbutan', 10, 2);
INSERT INTO `tbl_food` VALUES (79, 'Cherry mini', 17, 1);
INSERT INTO `tbl_food` VALUES (80, 'vrape premium', 13, 2);
INSERT INTO `tbl_food` VALUES (81, 'Strawberry mini', 12, 3);
INSERT INTO `tbl_food` VALUES (82, 'Raspberry', 14, 2);
INSERT INTO `tbl_food` VALUES (83, 'Kiwi', 20, 2);
INSERT INTO `tbl_food` VALUES (84, 'Sirawberry', 17, 1);
INSERT INTO `tbl_food` VALUES (85, 'Mango plus', 18, 1);
INSERT INTO `tbl_food` VALUES (86, 'niwi', 12, 2);
INSERT INTO `tbl_food` VALUES (87, 'omni-Ktwi', 18, 3);
INSERT INTO `tbl_food` VALUES (88, 'Cherry', 15, 2);
INSERT INTO `tbl_food` VALUES (89, 'Kiwi plus', 13, 2);
INSERT INTO `tbl_food` VALUES (90, 'Cherry', 13, 1);
INSERT INTO `tbl_food` VALUES (91, 'omni-fherry', 12, 1);
INSERT INTO `tbl_food` VALUES (92, 'Strawberry elite', 16, 1);
INSERT INTO `tbl_food` VALUES (93, 'Mango core', 15, 2);
INSERT INTO `tbl_food` VALUES (94, 'Strawberry', 15, 2);
INSERT INTO `tbl_food` VALUES (95, 'Apple air', 19, 3);
INSERT INTO `tbl_food` VALUES (96, 'Raspberry', 14, 1);
INSERT INTO `tbl_food` VALUES (97, 'Raspberry premium', 17, 2);
INSERT INTO `tbl_food` VALUES (98, 'ultra-Cherry', 14, 2);
INSERT INTO `tbl_food` VALUES (99, 'Kiwi pi', 19, 2);
INSERT INTO `tbl_food` VALUES (100, 'Cherry', 16, 1);
INSERT INTO `tbl_food` VALUES (101, 'Banana air', 10, 1);
INSERT INTO `tbl_food` VALUES (102, 'ultra-Banana', 12, 2);
INSERT INTO `tbl_food` VALUES (103, 'Draft Beer', 5, 4);
INSERT INTO `tbl_food` VALUES (104, 'Margarita', 5, 4);
INSERT INTO `tbl_food` VALUES (105, 'Onion Rings', 5, 4);
INSERT INTO `tbl_food` VALUES (106, 'House Wine', 5, 4);
INSERT INTO `tbl_food` VALUES (107, 'Loaded Fries', 5, 4);
INSERT INTO `tbl_food` VALUES (108, 'Craft Lager', 5, 4);
INSERT INTO `tbl_food` VALUES (109, 'Soda Float', 5, 4);
INSERT INTO `tbl_food` VALUES (110, 'Mini Sliders', 5, 4);

SET FOREIGN_KEY_CHECKS = 1;
