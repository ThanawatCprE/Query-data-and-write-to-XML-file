CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stu_id` varchar(255) NOT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('5701012610149','Tanakorn Ritthongpitug'),('5701012620012','Chayanin Khawsanit'),('5701012620047','Anothai Arunthong'),('5701012620063','Kitravee Siwatkittisuk'),('5701012620071','Chalongraj Jensuwan'),('5701012620098','Thanaphat Kalaya'),('5701012620101','Banthita Limwilai'),('5701012620110','Yurananatul Mangalmurti'),('5701012620128','Suppakan Sattapongsa'),('5701012620136','Anuparp Chiwakumnuan'),('5701012620144','Aruk Pupatee'),('5701012620179','Jittipong Manus'),('5701012620209','Thanawat Kahothong'),('5701012630018','Kanokwan Phoomitiyayopab'),('5701012630042','Jittawat Sangsuwan'),('5701012630051','Jirayud Wiriyabanthon'),('5701012630069','Chatsada Nganiam'),('5701012630093','Natthawut Sibunnan'),('5701012630131','Nawapon Jeanpanichpong'),('5701012630174','Warunatid Thongsalee');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_has_subject`
--

DROP TABLE IF EXISTS `student_has_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_has_subject` (
  `student_stu_id` varchar(255) NOT NULL,
  `subject_sub_id` varchar(255) NOT NULL,
  PRIMARY KEY (`student_stu_id`,`subject_sub_id`),
  KEY `fk_student_has_subject_subject1_idx` (`subject_sub_id`),
  KEY `fk_student_has_subject_student1_idx` (`student_stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_has_subject`
--

LOCK TABLES `student_has_subject` WRITE;
/*!40000 ALTER TABLE `student_has_subject` DISABLE KEYS */;
INSERT INTO `student_has_subject` VALUES ('5701012610149','010123105'),('5701012620063','010123105'),('5701012620101','010123105'),('5701012630131','010123105'),('5701012620047','010123116'),('5701012620110','010123116'),('5701012620128','010123116'),('5701012620136','010123116'),('5701012620179','010123205'),('5701012630093','010123205'),('5701012630174','010123205'),('5701012620098','010123217'),('5701012620209','010123217'),('5701012630051','010123217'),('5701012620012','010123218'),('5701012620071','010123218'),('5701012620144','010123218'),('5701012630018','010123218'),('5701012630042','010123218'),('5701012630069','010123218'),('5701012620047','040313007');
/*!40000 ALTER TABLE `student_has_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `sub_id` varchar(255) NOT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `classroom` varchar(45) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('010123105','STATISTICS FOR COMPUTER ENGINEERING',3,'607','H','9:00-12:00'),('010123116','SOFTWARE ENGINEERING',3,'607','W','13:00-16:00'),('010123205','COMPUTER AND NETWORK SECURITY',3,'607','H','17:00-20:00'),('010123217','SELECTED TOPICS IN COMPUTER I',3,'623','M','9:00-12:00'),('010123218','SELECTED TOPICS IN COMPUTER II',3,'620','T','13:00-16:00'),('040313007','Project I',3,'315','M','17:00-20:00');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Phongsak Keeratiwintakorn'),(2,'Sopon Apiromvorakarn'),(3,'Waranyu Wongseree'),(4,'Rawat Siripokarpirom'),(5,'Damrongrit Setsirichok');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_has_subject`
--

DROP TABLE IF EXISTS `teacher_has_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_has_subject` (
  `teacher_t_id` int(11) NOT NULL,
  `subject_sub_id` varchar(255) NOT NULL,
  PRIMARY KEY (`teacher_t_id`,`subject_sub_id`),
  KEY `fk_teacher_has_subject_subject1_idx` (`subject_sub_id`),
  KEY `fk_teacher_has_subject_teacher_idx` (`teacher_t_id`),
  CONSTRAINT `fk_teacher_has_subject_teacher` FOREIGN KEY (`teacher_t_id`) REFERENCES `teacher` (`t_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_has_subject`
--

LOCK TABLES `teacher_has_subject` WRITE;
/*!40000 ALTER TABLE `teacher_has_subject` DISABLE KEYS */;
INSERT INTO `teacher_has_subject` VALUES (1,'010123205'),(1,'010123218'),(2,'010123217'),(3,'010123105'),(4,'040313007'),(5,'010123116');
/*!40000 ALTER TABLE `teacher_has_subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-25  1:55:32
