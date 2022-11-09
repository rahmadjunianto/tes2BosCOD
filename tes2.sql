/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : tes2

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 09/11/2022 16:21:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES (1, 'BCA', '2022-11-09 08:11:01', '2022-11-09 08:11:01');
INSERT INTO `banks` VALUES (2, 'BRI', '2022-11-09 08:11:01', '2022-11-09 08:11:01');
INSERT INTO `banks` VALUES (3, 'Mandiri', '2022-11-09 08:11:01', '2022-11-09 08:11:01');
INSERT INTO `banks` VALUES (4, 'BNI', '2022-11-09 08:11:01', '2022-11-09 08:11:01');
INSERT INTO `banks` VALUES (5, 'BTN', '2022-11-09 08:11:01', '2022-11-09 08:11:01');
INSERT INTO `banks` VALUES (6, 'Danamon', '2022-11-09 08:11:01', '2022-11-09 08:11:01');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_11_09_073057_create_banks_table', 2);
INSERT INTO `migrations` VALUES (12, '2022_11_09_073329_create_rekening_admins_table', 2);
INSERT INTO `migrations` VALUES (13, '2022_11_09_073410_create_transaksi_transfers_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rekening_admins
-- ----------------------------
DROP TABLE IF EXISTS `rekening_admins`;
CREATE TABLE `rekening_admins`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rekening_admins
-- ----------------------------
INSERT INTO `rekening_admins` VALUES (1, 'BCA', 'PT BosCOD Indonesia', '12345678', '2022-11-09 14:57:57', NULL);
INSERT INTO `rekening_admins` VALUES (2, 'BNI', 'PT BosCOD Indonesia', '2147483647', '2022-11-09 14:58:23', NULL);

-- ----------------------------
-- Table structure for transaksi_transfers
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_transfers`;
CREATE TABLE `transaksi_transfers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_transaksi` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_transfer` decimal(8, 2) NOT NULL,
  `kode_unik` decimal(8, 2) NOT NULL,
  `biaya_admin` decimal(8, 2) NOT NULL,
  `total_transfer` decimal(8, 2) NOT NULL,
  `bank_perantara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening_perantara` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `berlaku_hingga` datetime(0) NOT NULL,
  `bank_tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening_tujuan` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atasnama_tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_pengirim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi_transfers
-- ----------------------------
INSERT INTO `transaksi_transfers` VALUES (3, 'F22110900001', 50000.00, 924.00, 0.00, 50924.00, 'BNI', '2147483647', '2022-11-09 08:55:54', 'BCA', '60184819383', 'Fulan', 'BNI', '2022-11-09 08:40:54', '2022-11-09 08:40:54');
INSERT INTO `transaksi_transfers` VALUES (4, 'F22110900002', 50000.00, 658.00, 0.00, 50658.00, 'BNI', '2147483647', '2022-11-09 09:17:12', 'BCA', '60184819383', 'Fulan', 'BNI', '2022-11-09 09:02:12', '2022-11-09 09:02:12');
INSERT INTO `transaksi_transfers` VALUES (5, 'F22110900003', 50000.00, 604.00, 0.00, 50604.00, 'BNI', '2147483647', '2022-11-09 09:17:55', 'BCA', '60184819383', 'Fulan', 'BNI', '2022-11-09 09:02:55', '2022-11-09 09:02:55');
INSERT INTO `transaksi_transfers` VALUES (6, 'F22110900004', 50000.00, 783.00, 0.00, 50783.00, 'BNI', '2147483647', '2022-11-09 09:25:38', 'BCA', '60184819383', 'Fulan', 'BNI', '2022-11-09 09:10:38', '2022-11-09 09:10:38');
INSERT INTO `transaksi_transfers` VALUES (7, 'F22110900005', 50000.00, 494.00, 0.00, 50494.00, 'BNI', '2147483647', '2022-11-09 09:30:46', 'BCA', '60184819383', 'Fulan', 'BNI', '2022-11-09 09:15:46', '2022-11-09 09:15:46');
INSERT INTO `transaksi_transfers` VALUES (8, 'F22110900006', 50000.00, 121.00, 0.00, 50121.00, 'BNI', '2147483647', '2022-11-09 09:34:09', 'BCA', '60184819383', 'Fulan', 'BNI', '2022-11-09 09:19:09', '2022-11-09 09:19:09');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Rahmad Junianto', 'rahmadjunianto.rj@gmail.com', NULL, '$2y$10$pdeVaO0mdDXON.6WteAMWu4p1kXOjxRSYBZ1lpcK0fgBqxQotsyrS', NULL, '2022-11-08 03:32:29', '2022-11-08 03:32:29');

SET FOREIGN_KEY_CHECKS = 1;
