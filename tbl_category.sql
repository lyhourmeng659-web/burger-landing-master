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

 Date: 01/06/2026 13:38:34
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

SET FOREIGN_KEY_CHECKS = 1;
