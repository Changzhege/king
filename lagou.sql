-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: lagou
-- ------------------------------------------------------
-- Server version	5.7.9

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lg_admin`
--

DROP TABLE IF EXISTS `lg_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_admin` (
  `lg_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lg_name` varchar(32) NOT NULL COMMENT '员工姓名',
  `lg_pass` varchar(32) NOT NULL COMMENT '密码',
  `lg_sex` char(1) DEFAULT NULL COMMENT 'm:男 w:女',
  `lg_email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `lg_phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `lg_state` tinyint(1) DEFAULT '2' COMMENT '1:root 2:管理员',
  `lg_addtime` varchar(32) DEFAULT NULL COMMENT '添加时间',
  `lg_lasttime` varchar(32) DEFAULT NULL COMMENT '最后访问时间',
  PRIMARY KEY (`lg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工表  lg_admin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_admin`
--

LOCK TABLES `lg_admin` WRITE;
/*!40000 ALTER TABLE `lg_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_back`
--

DROP TABLE IF EXISTS `lg_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_back` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '网站反馈信息id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id外键',
  `content` varchar(255) DEFAULT NULL COMMENT '反馈内容',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站反馈表 lg_back';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_back`
--

LOCK TABLES `lg_back` WRITE;
/*!40000 ALTER TABLE `lg_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_city`
--

DROP TABLE IF EXISTS `lg_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市id',
  `cname` varchar(11) DEFAULT NULL COMMENT '城市名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市表 lg_city';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_city`
--

LOCK TABLES `lg_city` WRITE;
/*!40000 ALTER TABLE `lg_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_comment`
--

DROP TABLE IF EXISTS `lg_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `cid` int(11) NOT NULL COMMENT '公司id外键',
  `uid` int(11) NOT NULL COMMENT '用户id外键',
  `comment` varchar(255) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司评论 lg_comment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_comment`
--

LOCK TABLES `lg_comment` WRITE;
/*!40000 ALTER TABLE `lg_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_company`
--

DROP TABLE IF EXISTS `lg_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `c_uid` int(11) DEFAULT NULL COMMENT '企业用户id外键',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id外键',
  `c_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `c_logo` varchar(50) DEFAULT NULL COMMENT '公司logo图片名(设置默认头像)',
  `c_field` varchar(32) DEFAULT NULL COMMENT '公司行业',
  `c_scale` varchar(20) DEFAULT NULL COMMENT '公司规模',
  `c_url` varchar(50) DEFAULT NULL COMMENT '网址',
  `c_motto` varchar(255) DEFAULT NULL COMMENT '公司格言',
  `c_nature` varchar(32) DEFAULT NULL COMMENT '公司性质',
  `c_address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `c_desc` varchar(255) DEFAULT NULL COMMENT '公司介绍',
  `c_goods` varchar(255) DEFAULT NULL COMMENT '公司产品介绍',
  `c_state` int(1) DEFAULT '1' COMMENT '广告状态(1:不显示,2:显示)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司表  lg_company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_company`
--

LOCK TABLES `lg_company` WRITE;
/*!40000 ALTER TABLE `lg_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_company_scate`
--

DROP TABLE IF EXISTS `lg_company_scate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_company_scate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司发展历程id',
  `cid` int(11) NOT NULL COMMENT '公司id的外键',
  `scate_time` varchar(32) NOT NULL COMMENT '时间',
  `scate_title` varchar(100) NOT NULL COMMENT '标题',
  `scate_content` varchar(255) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司发展历程表 la_company_scate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_company_scate`
--

LOCK TABLES `lg_company_scate` WRITE;
/*!40000 ALTER TABLE `lg_company_scate` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_company_scate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_cpic`
--

DROP TABLE IF EXISTS `lg_cpic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_cpic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司图片id',
  `cid` varchar(20) NOT NULL COMMENT '公司id外键',
  `goods_pic` varchar(32) DEFAULT NULL COMMENT '产品图片名',
  `img1` varchar(32) DEFAULT NULL COMMENT '公司介绍图片1',
  `img2` varchar(32) DEFAULT NULL COMMENT '公司介绍图片2',
  `img3` varchar(32) DEFAULT NULL COMMENT '公司介绍图片3',
  `img4` varchar(32) DEFAULT NULL COMMENT '公司介绍图片4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司图片表 lg_cpic';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_cpic`
--

LOCK TABLES `lg_cpic` WRITE;
/*!40000 ALTER TABLE `lg_cpic` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_cpic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_exjob`
--

DROP TABLE IF EXISTS `lg_exjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_exjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '期望工作id',
  `uid` int(11) NOT NULL COMMENT '求职者id',
  `ex_job` varchar(32) DEFAULT NULL COMMENT '期望的工作类型',
  `ex_status` varchar(50) NOT NULL COMMENT '期望工作状态',
  `ex_city` varchar(32) NOT NULL COMMENT '期望所在城市',
  `ex_pay` varchar(32) DEFAULT NULL COMMENT '期望薪水',
  `ex_plain` varchar(255) DEFAULT NULL COMMENT '补充说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='期望工作表  lg_exjob';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_exjob`
--

LOCK TABLES `lg_exjob` WRITE;
/*!40000 ALTER TABLE `lg_exjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_exjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_job_info`
--

DROP TABLE IF EXISTS `lg_job_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_job_info` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `job_tid` int(11) DEFAULT NULL COMMENT '职位类型表的id外键',
  `job_name` varchar(32) DEFAULT NULL COMMENT '职位名',
  `job_cid` int(11) DEFAULT NULL COMMENT '公司的id外键',
  `job_pay` varchar(255) DEFAULT NULL COMMENT '职位提供薪资范围(面议等)',
  `job_demand` varchar(255) DEFAULT NULL COMMENT '职位要求',
  `job_treatment` varchar(255) DEFAULT NULL COMMENT '职位待遇',
  `job_desc` varchar(255) DEFAULT NULL COMMENT '职位描述',
  `job_starttime` varchar(32) DEFAULT NULL COMMENT '职位发布日期',
  `job_state` int(1) DEFAULT NULL COMMENT '职位状态(1:有效 2:下线)下线状态管理员可以删除该职位',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位表 lg_job_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_job_info`
--

LOCK TABLES `lg_job_info` WRITE;
/*!40000 ALTER TABLE `lg_job_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_job_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_job_type`
--

DROP TABLE IF EXISTS `lg_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_job_type` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_name` varchar(32) DEFAULT NULL COMMENT '职位类别名',
  `type_pid` int(11) DEFAULT NULL COMMENT '职位类型的父id',
  `type_path` varchar(32) DEFAULT NULL COMMENT '职位类型的路径',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位类型表  lg_job_type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_job_type`
--

LOCK TABLES `lg_job_type` WRITE;
/*!40000 ALTER TABLE `lg_job_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_link`
--

DROP TABLE IF EXISTS `lg_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `name` varchar(50) COLLATE utf8_estonian_ci DEFAULT NULL COMMENT '链接名称',
  `link` varchar(50) COLLATE utf8_estonian_ci DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='友情链接表 lg_link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_link`
--

LOCK TABLES `lg_link` WRITE;
/*!40000 ALTER TABLE `lg_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_lun`
--

DROP TABLE IF EXISTS `lg_lun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_lun` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '首页轮播图id',
  `pic1` varchar(50) DEFAULT NULL COMMENT '图片1',
  `pic2` varchar(50) DEFAULT NULL COMMENT '图片2',
  `pic3` varchar(50) DEFAULT NULL COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='首页轮播图表 lg_lun';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_lun`
--

LOCK TABLES `lg_lun` WRITE;
/*!40000 ALTER TABLE `lg_lun` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_lun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_mypic`
--

DROP TABLE IF EXISTS `lg_mypic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_mypic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户头像id',
  `uid` int(11) DEFAULT NULL COMMENT '求职者id外键',
  `picname` varchar(50) DEFAULT NULL COMMENT '头像名称(设置默认头像)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='头像表 lg_mypic';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_mypic`
--

LOCK TABLES `lg_mypic` WRITE;
/*!40000 ALTER TABLE `lg_mypic` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_mypic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_resume`
--

DROP TABLE IF EXISTS `lg_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_resume` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '简历id',
  `uid` int(11) DEFAULT NULL COMMENT '求职者id',
  `usex` char(1) DEFAULT NULL COMMENT 'm:男 w:女',
  `birthday` varchar(32) DEFAULT NULL COMMENT '出生年/月/日',
  `education` varchar(5) DEFAULT NULL COMMENT '学历',
  `workyears` varchar(32) DEFAULT NULL COMMENT '工作年限(几年)',
  `city` varchar(32) DEFAULT NULL COMMENT '所在城市',
  `school` varchar(50) DEFAULT NULL COMMENT '毕业院校',
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  `finished_year` varchar(32) DEFAULT NULL COMMENT '毕业年份',
  `work_status` varchar(50) NOT NULL COMMENT '目前工作状态(是否离职等)',
  `des` varchar(255) DEFAULT NULL COMMENT '自我描述/评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历表 lg_resume';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_resume`
--

LOCK TABLES `lg_resume` WRITE;
/*!40000 ALTER TABLE `lg_resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_resume_status`
--

DROP TABLE IF EXISTS `lg_resume_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_resume_status` (
  `resum_status_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '简历反馈信息id',
  `user_id` int(11) NOT NULL COMMENT '求职者id',
  `job_id` int(11) NOT NULL COMMENT '职位id',
  `resume_status` int(1) DEFAULT NULL COMMENT '简历状态',
  PRIMARY KEY (`resum_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历情况反馈信息表 lg_resume_status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_resume_status`
--

LOCK TABLES `lg_resume_status` WRITE;
/*!40000 ALTER TABLE `lg_resume_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_resume_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_store`
--

DROP TABLE IF EXISTS `lg_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '职位收藏id',
  `jid` int(11) DEFAULT NULL COMMENT '职位id外键',
  `cid` int(11) DEFAULT NULL COMMENT '公司id外键',
  `uid` int(11) DEFAULT NULL COMMENT '用户id外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位收藏表 lg_store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_store`
--

LOCK TABLES `lg_store` WRITE;
/*!40000 ALTER TABLE `lg_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_sub`
--

DROP TABLE IF EXISTS `lg_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_sub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '职位订阅id',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `time` varchar(50) DEFAULT NULL COMMENT '订阅周期',
  `workname` varchar(50) DEFAULT NULL COMMENT '职位名称',
  `address` varchar(255) DEFAULT NULL COMMENT '工作地点',
  `nature` varchar(50) DEFAULT NULL COMMENT '公司发展阶段',
  `field` varchar(50) DEFAULT NULL COMMENT '行业领域',
  `pay` varchar(25) DEFAULT NULL COMMENT '月薪范围',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位订阅表 lg_sub';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_sub`
--

LOCK TABLES `lg_sub` WRITE;
/*!40000 ALTER TABLE `lg_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_team`
--

DROP TABLE IF EXISTS `lg_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_team` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id号',
  `cid` int(11) DEFAULT NULL COMMENT '城市id外键',
  `team` varchar(32) DEFAULT NULL COMMENT '公司董事长',
  `team_desc` varchar(255) DEFAULT NULL COMMENT 'CEO简介',
  `image` varchar(50) DEFAULT NULL COMMENT '头像图片名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理团队表 lg_team';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_team`
--

LOCK TABLES `lg_team` WRITE;
/*!40000 ALTER TABLE `lg_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_user`
--

DROP TABLE IF EXISTS `lg_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id号',
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `pass` varchar(32) NOT NULL COMMENT '密码(MD5加密)',
  `sex` char(1) DEFAULT NULL COMMENT 'm:男 w:女',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `state` tinyint(1) DEFAULT NULL COMMENT '1:HR 2:求职者',
  `addtime` varchar(32) DEFAULT NULL COMMENT '添加时间',
  `lasttime` varchar(32) DEFAULT NULL COMMENT '最后访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='前台用户表  lg_user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_user`
--

LOCK TABLES `lg_user` WRITE;
/*!40000 ALTER TABLE `lg_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_work`
--

DROP TABLE IF EXISTS `lg_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lg_work` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id号',
  `uid` int(11) NOT NULL COMMENT '求职者id的外键',
  `work_company` varchar(50) NOT NULL COMMENT '工作履历公司',
  `job` varchar(50) NOT NULL COMMENT '职位',
  `work_time` varchar(30) NOT NULL COMMENT '在职时间(时间段)',
  `work_content` varchar(255) NOT NULL COMMENT '工作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作经历表 lg_work';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_work`
--

LOCK TABLES `lg_work` WRITE;
/*!40000 ALTER TABLE `lg_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-07 15:35:32
