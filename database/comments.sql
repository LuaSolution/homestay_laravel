/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100139
 Source Host           : localhost:3306
 Source Schema         : homestay

 Target Server Type    : MySQL
 Target Server Version : 100139
 File Encoding         : 65001

 Date: 14/06/2019 10:01:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(3) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 29, 'ddanhs gias 1111', 1, NULL, NULL);
INSERT INTO `comments` VALUES (2, NULL, 'ewsrewr', 7, '2019-06-14 09:52:17', '2019-06-14 09:52:17');
INSERT INTO `comments` VALUES (3, NULL, '34213213', 7, '2019-06-14 09:52:21', '2019-06-14 09:52:21');
INSERT INTO `comments` VALUES (4, 29, 'dsfeasf', 7, '2019-06-14 09:54:30', '2019-06-14 09:54:30');
INSERT INTO `comments` VALUES (5, 29, 'ewr', 7, '2019-06-14 09:54:33', '2019-06-14 09:54:33');

SET FOREIGN_KEY_CHECKS = 1;
