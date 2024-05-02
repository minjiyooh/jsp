-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: javaclass
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
-- Table structure for table `hoewon`
--

DROP TABLE IF EXISTS `hoewon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoewon` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoewon`
--

LOCK TABLES `hoewon` WRITE;
/*!40000 ALTER TABLE `hoewon` DISABLE KEYS */;
INSERT INTO `hoewon` VALUES (2,'김말숙',29,'여자','제주'),(3,'이기자',55,'남자','제주'),(4,'소나무',44,'남자','서울'),(5,'오하늘',19,'여자','청주'),(6,'홍길자',21,'여자','청주'),(7,'감나무',60,'남자','광주');
/*!40000 ALTER TABLE `hoewon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insa`
--

DROP TABLE IF EXISTS `insa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insa` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `sabun` char(8) NOT NULL,
  `buseo` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jikkub` char(8) NOT NULL,
  `age` int(11) DEFAULT '25',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `gender` char(2) DEFAULT '여자',
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `sabun` (`sabun`),
  KEY `jikkub` (`jikkub`),
  CONSTRAINT `insa_ibfk_1` FOREIGN KEY (`jikkub`) REFERENCES `salary` (`jikkub`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa`
--

LOCK TABLES `insa` WRITE;
/*!40000 ALTER TABLE `insa` DISABLE KEYS */;
INSERT INTO `insa` VALUES (1,'24032101','인사과','홍길동','과장',35,'2000-01-05 00:00:00','남자','서울'),(2,'24032102','영업과','김말숙','대리',31,'2007-11-25 00:00:00','여자','청주'),(3,'24032201','총무과','이기자','사원',25,'2022-08-22 00:00:00','남자','서울');
/*!40000 ALTER TABLE `insa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insa2`
--

DROP TABLE IF EXISTS `insa2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insa2` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa2`
--

LOCK TABLES `insa2` WRITE;
/*!40000 ALTER TABLE `insa2` DISABLE KEYS */;
INSERT INTO `insa2` VALUES (1,'김말숙',20,'여자','2024-03-26 15:09:50'),(2,'오하늘',20,'여자','2024-03-26 15:10:12'),(3,'홍길동',25,'남자','2023-04-25 00:00:00'),(4,'소나무',55,'남자','2000-10-10 00:00:00'),(5,'감나무',29,'여자','2017-05-08 00:00:00'),(6,'김연아',27,'여자','2023-05-05 00:00:00'),(7,'대나무',44,'여자','2022-03-31 00:00:00'),(9,'하나1234',12,'남자','2022-05-30 00:00:00'),(10,'둘1234',23,'여자','2021-06-28 00:00:00'),(11,'셋1234',34,'여자','2021-06-29 00:00:00'),(12,'넷1234',45,'남자','2018-05-31 00:00:00');
/*!40000 ALTER TABLE `insa2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insarok`
--

DROP TABLE IF EXISTS `insarok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insarok` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `buser` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jikwi` varchar(10) NOT NULL DEFAULT '사원',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `age` int(11) DEFAULT '25',
  `ipsail` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insarok`
--

LOCK TABLES `insarok` WRITE;
/*!40000 ALTER TABLE `insarok` DISABLE KEYS */;
INSERT INTO `insarok` VALUES (1,'인사과','홍길동','과장','남자',38,'1995-01-05 00:00:00','서울'),(2,'총무과','김말숙','부장','남자',45,'1990-11-05 00:00:00','청주'),(3,'영업과','이기자','사원','남자',28,'2015-04-15 00:00:00','부산'),(4,'자재과','강감찬','대리','남자',30,'2010-10-05 00:00:00','청주'),(5,'인사과','소나무','사원','남자',29,'2020-11-05 00:00:00','서울'),(6,'총무과','오하늘','사원','남자',26,'2022-02-02 00:00:00','청주'),(7,'영업과','탁민아','대리','남자',31,'2018-03-03 00:00:00','서울'),(8,'자재과','이재희','과장','여자',29,'2017-04-04 00:00:00','인천'),(9,'인사과','김기자','대리','남자',32,'2016-05-10 00:00:00','부산'),(10,'인사과','이순신','사원','남자',30,'2019-06-06 00:00:00','서울'),(11,'자재과','고인돌','부장','남자',47,'1990-07-07 00:00:00','인천'),(12,'영업과','나도야','과장','남자',39,'1999-08-08 00:00:00','청주'),(13,'영업과','홍길자','대리','남자',35,'2016-09-09 00:00:00','서울'),(16,'총무과','다라마','부장','남자',49,'1992-12-12 00:00:00','청주'),(17,'자재과','대나무','사원','남자',27,'2020-01-21 00:00:00','제주'),(18,'영업과','최민영','사원','남자',25,'2021-02-22 00:00:00','인천'),(19,'영업과','조현서','사원','남자',20,'2022-03-23 00:00:00','부산'),(20,'영업과','이재혁','과장','남자',38,'2000-04-24 00:00:00','청주'),(21,'자재과','손흥민','부장','남자',48,'1996-05-25 00:00:00','서울'),(22,'인사과','홍길동','사원','남자',28,'2024-06-26 00:00:00','청주');
/*!40000 ALTER TABLE `insarok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `jikkub` char(8) NOT NULL,
  `bonbong` int(11) NOT NULL,
  PRIMARY KEY (`jikkub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES ('과장',4000000),('대리',3000000),('부장',5000000),('사원',2000000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sungjuk`
--

DROP TABLE IF EXISTS `sungjuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sungjuk` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `kor` int(11) DEFAULT '0',
  `eng` int(11) DEFAULT '0',
  `mat` int(11) DEFAULT '0',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sungjuk`
--

LOCK TABLES `sungjuk` WRITE;
/*!40000 ALTER TABLE `sungjuk` DISABLE KEYS */;
INSERT INTO `sungjuk` VALUES (2,'소나무',90,80,70),(3,'강감찬',80,70,60),(4,'김말숙',100,60,50),(5,'이기자',60,80,100);
/*!40000 ALTER TABLE `sungjuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT '20',
  `gender` varchar(2) DEFAULT '남자',
  `job` varchar(20) DEFAULT '기타',
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'홍길동',20,'남자','기타','서울'),(2,'김말숙',34,'여자','기타','청주'),(3,'이기자',29,'남자','기타','부산'),(4,'김연아',20,'여자','기타','제주'),(5,'손흥민',33,'남자','기타','서울'),(6,'소나무',55,'남자','기타','제주'),(7,'대나무',11,'여자','학생','제주'),(8,'감나무',22,'남자','기타','서울');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT '20',
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
INSERT INTO `test1` VALUES (1,'홍길동',20,'서울'),(2,'김말숙',25,'청주'),(3,'소나무',55,'bbb'),(4,'소나무',55,'bbb');
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT '20',
  `test2Code` varchar(10) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (1,'이기자',23,'aaa'),(2,'김길자',33,'bbb');
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test3` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT '20',
  `job` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `test3Code` varchar(10) NOT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `test3Code` (`test3Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3`
--

LOCK TABLES `test3` WRITE;
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
INSERT INTO `test3` VALUES (1,'소나무',13,'학생','서울','ccc'),(2,'대나무',43,'회사원','청주','eee'),(3,'사과나무',27,'군인','대전','ggg');
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test4`
--

DROP TABLE IF EXISTS `test4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test4` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `gender` char(2) DEFAULT '남자',
  `test2Idx` int(11) NOT NULL,
  `test3Code` varchar(10) NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `test2Idx` (`test2Idx`),
  KEY `test3Code` (`test3Code`),
  CONSTRAINT `test4_ibfk_1` FOREIGN KEY (`test2Idx`) REFERENCES `test2` (`idx`),
  CONSTRAINT `test4_ibfk_2` FOREIGN KEY (`test3Code`) REFERENCES `test3` (`test3Code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test4`
--

LOCK TABLES `test4` WRITE;
/*!40000 ALTER TABLE `test4` DISABLE KEYS */;
INSERT INTO `test4` VALUES (1,'남자',1,'ggg'),(2,'남자',1,'ccc');
/*!40000 ALTER TABLE `test4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 11:46:39
