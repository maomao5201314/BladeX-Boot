/*
 Navicat Premium Data Transfer

 Source Server         : mysql_localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : bladex

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 24/03/2019 16:29:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blade_client
-- ----------------------------
DROP TABLE IF EXISTS `blade_client`;
CREATE TABLE `blade_client`  (
 `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
 `client_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户端id',
 `client_secret` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户端密钥',
 `resource_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源集合',
 `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '授权范围',
 `authorized_grant_types` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '授权类型',
 `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回调地址',
 `authorities` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限',
 `access_token_validity` int(11) NOT NULL COMMENT '令牌过期秒数',
 `refresh_token_validity` int(11) NOT NULL COMMENT '刷新令牌过期秒数',
 `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加说明',
 `autoapprove` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自动授权',
 `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
 `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
 `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
 `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
 `status` int(2) NOT NULL COMMENT '状态',
 `is_deleted` int(2) NOT NULL COMMENT '是否已删除',
 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Records of blade_client
-- ----------------------------
BEGIN;
INSERT INTO `blade_client` VALUES (1, 'sword', 'sword_secret', NULL, 'all', 'refresh_token,password,authorization_code', 'http://localhost:8888', NULL, 3600, 604800, NULL, NULL, 1, '2019-03-24 10:40:55', 1, '2019-03-24 10:40:59', 1, 0), (2, 'saber', 'saber_secret', NULL, 'all', 'refresh_token,password,authorization_code', 'http://localhost:8080', NULL, 3600, 604800, NULL, NULL, 1, '2019-03-24 10:42:29', 1, '2019-03-24 10:42:32', 1, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;



INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (3, 'client', '应用管理', 'menu', '/system/client', NULL, 8, 1, 0, 1, NULL, 0);
set @parentid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'client_add', '新增', 'add', '/system/client/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'client_edit', '修改', 'edit', '/system/client/edit', 'form', 2, 2, 2, 2, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'client_delete', '删除', 'delete', '/api/blade-system/client/remove', 'delete', 3, 2, 3, 3, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'client_view', '查看', 'view', '/system/client/view', 'file-text', 4, 2, 2, 2, NULL, 0);

