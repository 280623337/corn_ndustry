-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: zj_sea_defence
-- ------------------------------------------------------
-- Server version	5.7.42-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_sort` bigint(20) DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_create_by` (`create_by`),
  KEY `idx_sys_dict_data_update_by` (`update_by`),
  KEY `idx_sys_dict_data_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,0,'正常','2','sys_normal_disable','','','',2,'','系统正常',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:40.168',NULL),(2,0,'停用','1','sys_normal_disable','','','',2,'','系统停用',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(3,0,'男','0','sys_user_sex','','','',2,'','性别男',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(4,0,'女','1','sys_user_sex','','','',2,'','性别女',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(5,0,'未知','2','sys_user_sex','','','',2,'','性别未知',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(6,0,'显示','0','sys_show_hide','','','',2,'','显示菜单',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(7,0,'隐藏','1','sys_show_hide','','','',2,'','隐藏菜单',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(8,0,'是','Y','sys_yes_no','','','',2,'','系统默认是',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(9,0,'否','N','sys_yes_no','','','',2,'','系统默认否',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(10,0,'正常','2','sys_job_status','','','',2,'','正常状态',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(11,0,'停用','1','sys_job_status','','','',2,'','停用状态',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(12,0,'默认','DEFAULT','sys_job_group','','','',2,'','默认分组',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(13,0,'系统','SYSTEM','sys_job_group','','','',2,'','系统分组',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(14,0,'通知','1','sys_notice_type','','','',2,'','通知',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(15,0,'公告','2','sys_notice_type','','','',2,'','公告',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(16,0,'正常','2','sys_common_status','','','',2,'','正常状态',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(17,0,'关闭','1','sys_common_status','','','',2,'','关闭状态',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(18,0,'新增','1','sys_oper_type','','','',2,'','新增操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(19,0,'修改','2','sys_oper_type','','','',2,'','修改操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(20,0,'删除','3','sys_oper_type','','','',2,'','删除操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(21,0,'授权','4','sys_oper_type','','','',2,'','授权操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(22,0,'导出','5','sys_oper_type','','','',2,'','导出操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(23,0,'导入','6','sys_oper_type','','','',2,'','导入操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(24,0,'强退','7','sys_oper_type','','','',2,'','强退操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(25,0,'生成代码','8','sys_oper_type','','','',2,'','生成操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(26,0,'清空数据','9','sys_oper_type','','','',2,'','清空操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(27,0,'成功','0','sys_notice_status','','','',2,'','成功状态',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(28,0,'失败','1','sys_notice_status','','','',2,'','失败状态',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(29,0,'登录','10','sys_oper_type','','','',2,'','登录操作',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(30,0,'退出','11','sys_oper_type','','','',2,'','',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(31,0,'获取验证码','12','sys_oper_type','','','',2,'','获取验证码',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(32,0,'正常','1','sys_content_status','','','',1,'','',1,1,'2021-05-13 19:56:40.845','2021-05-13 19:56:40.845',NULL),(33,1,'禁用','2','sys_content_status','','','',1,'','',1,1,'2021-05-13 19:56:40.845','2021-05-13 19:56:40.845',NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 22:37:46
