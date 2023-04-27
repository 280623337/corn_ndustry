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
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_id`),
  KEY `idx_sys_dict_type_create_by` (`create_by`),
  KEY `idx_sys_dict_type_update_by` (`update_by`),
  KEY `idx_sys_dict_type_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'系统开关','sys_normal_disable',2,'系统开关列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(2,'用户性别','sys_user_sex',2,'用户性别列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(3,'菜单状态','sys_show_hide',2,'菜单状态列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(4,'系统是否','sys_yes_no',2,'系统是否列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(5,'任务状态','sys_job_status',2,'任务状态列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(6,'任务分组','sys_job_group',2,'任务分组列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(7,'通知类型','sys_notice_type',2,'通知类型列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(8,'系统状态','sys_common_status',2,'登录状态列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(9,'操作类型','sys_oper_type',2,'操作类型列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(10,'通知状态','sys_notice_status',2,'通知状态列表',1,1,'2021-05-13 19:56:37.914','2021-05-13 19:56:37.914',NULL),(11,'内容状态','sys_content_status',2,'',1,1,'2021-05-13 19:56:40.813','2021-05-13 19:56:40.813',NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 22:37:47
