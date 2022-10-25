-- MySQL dump 10.16  Distrib 10.1.42-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: dvwa
-- ------------------------------------------------------
-- Server version	10.1.42-MariaDB

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
-- Current Database: `dvwa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dvwa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dvwa`;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbook` (
  `comment_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (1,'This is a test comment.','test'),(2,'','Peter Winter'),(3,'20','yuehlbqx'),(4,'20','lwhcghxj'),(5,'20','cynmsdam'),(6,'20','qbxvmprb'),(7,'20','itxfudsy'),(8,'20','musaqwth'),(9,'20','gvngxgpv'),(10,'20','pyobubia'),(11,'20','qwrrxlvh'),(12,'set|set&set','fpduiiph'),(13,'\'set|set&set\'','fpduiiph'),(14,'\"set|set&set\"','fpduiiph'),(15,'set|set&set','fpduiiph'),(16,'20','qwrrxlvh'),(17,'`set|set&set`','fpduiiph'),(18,'QpoNKXAH','ybumeunt'),(19,'20','kbylrsnf'),(20,'20','PauprDgH'),(21,'print `env`','fpduiiph'),(22,'','kbylrsnf'),(23,'20','N1hFSE1GR3Y='),(24,'${9999245+10000045}','lgwojtql'),(25,';set|set&set;','fpduiiph'),(26,'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg','tnwdqmyo'),(27,'20','${9999763+10000239}'),(28,'20&n935595=v946857','ccaujthc'),(29,'','kbylrsnf'),(30,'20','set|set&set'),(32,'20','\'set|set&set\''),(33,'Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjL3Bhc3N3ZAAucG5n','mpmaxglx'),(34,'20','kbylrsnf'),(35,'20','syklhdwk&n931501=v969792'),(36,'Http://testasp.vulnweb.com/t/fit.txt','tnwdqmyo'),(37,'!(()&&!|*|*|','tfiyquut'),(38,'20',''),(39,'20','\"set|set&set\"'),(40,'http://testasp.vulnweb.com/t/fit.txt?.jpg','tnwdqmyo'),(41,'','gjcbrsyh'),(42,'20',')'),(43,'20','!(()&&!|*|*|'),(44,'\'\"()','gjcbrsyh'),(45,'20',''),(46,'20',''),(47,'20','set|set&set'),(48,'testasp.vulnweb.com','tnwdqmyo'),(50,'20','\'\"()'),(51,'/etc/passwd','mpmaxglx'),(52,'20','http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg'),(53,'20','print `env`'),(54,'20','voahflry'),(55,'http://hitSySRtSfrzU.bxss.me/','dlulqdxd'),(56,'index.php','voahflry'),(57,'20','lfnhljcc'),(58,'','lfnhljcc'),(59,'20',';set|set&set;'),(60,'20','http://hitjwlsw0nMMr.bxss.me/'),(61,')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))','rulgtynl'),(62,'/www.vulnweb.com','duqckrfk'),(63,'20','Http://testasp.vulnweb.com/t/fit.txt'),(64,'@@s2Fuf','lfnhljcc'),(65,'20',')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))'),(66,'JyI=','lfnhljcc'),(67,'index.php/.','voahflry'),(68,'20','voahflry'),(70,'977676','duqckrfk'),(71,'20','http://testasp.vulnweb.com/t/fit.txt?.jpg'),(72,'20','testasp.vulnweb.com'),(73,'http://www.vulnweb.com','duqckrfk'),(74,'20','index.php'),(75,'¿\'¿\"','lfnhljcc'),(76,'WEB-INFweb.xml?','mpmaxglx'),(77,'//www.vulnweb.com','duqckrfk'),(78,'20','index.php/.'),(79,'20_983168','fvvflhdv'),(80,'acu9314ï¼œs1ï¹¥s2Êºs3Ê¹uca9314','fvvflhdv'),(81,'/www.vulnweb.com','duqckrfk'),(82,'ð\'\'ð\"\"','lfnhljcc'),(83,'/WEB-INF/web.xml?','mpmaxglx'),(84,'acux3828À¾z1À¼z2abcxuca3828','fvvflhdv'),(86,'acuaysZkðŒ†ucaaysZk','fvvflhdv'),(87,'20','lfnhljcc'),(88,'À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯windowsÀ¯win.ini','mpmaxglx'),(89,'20','\\'),(90,'................windowswin.ini','mpmaxglx'),(91,'20','@@7qLWm'),(92,'20','qwrrxlvh'),(93,'20','qwrrxlvh'),(94,'20','JyI='),(95,'20','¿\'¿\"'),(96,'20%3Csvg%20onload%3Dprompt(942134)%3E','fvvflhdv'),(98,'WEB-INF/web.xml?','mpmaxglx'),(99,'WEB-INFweb.xml?','mpmaxglx'),(100,'/WEB-INF/web.xml?','mpmaxglx'),(101,'20','Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjL3Bhc3N3ZAAucG5n'),(102,'20','/etc/passwd'),(103,'20','WEB-INF/web.xml?'),(104,'20','WEB-INF\\web.xml?'),(105,'20','/WEB-INF/web.xml?'),(106,'20','À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯windowsÀ¯win.ini'),(107,'20','................windowswin.ini'),(108,'20','fvvflhdv_976539'),(109,'20','acu2778ï¼œs1ï¹¥s2Êºs3Ê¹uca2778'),(110,'20','acux1735À¾z1À¼z2abcxuca1735'),(111,'20','acukD0TlðŒ†ucakD0Tl'),(112,'20','WEB-INF/web.xml?'),(113,'20','WEB-INF\\web.xml?'),(114,'20','/WEB-INF/web.xml?'),(115,'20','fvvflhdv%3Csvg%20onload%3Dprompt(954398)%3E'),(116,'20','fvvflhdv<img/src=\">\" onerror=alert(934813)>'),(117,'20','qqitnnae'),(118,'20','sjgndwxi'),(119,'set|set&set','davvdant'),(120,'RIog9KZl','eladbluk'),(121,'20','sjgndwxi'),(122,'\'set|set&set\'','davvdant'),(123,'20','1CV8cCPb'),(124,'\"set|set&set\"','davvdant'),(125,'20','bqitynit'),(126,'set|set&set','davvdant'),(127,'','bqitynit'),(128,'`set|set&set`','davvdant'),(129,'${10000445+9999980}','rnsylsfn'),(130,'Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjL3Bhc3N3ZAAucG5n','yflcwwwm'),(131,'20','${10000400+9999518}'),(132,'print `env`','davvdant'),(133,'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg','siusxmvo'),(134,'20','d2JuU0poaFA='),(135,';set|set&set;','davvdant'),(136,'','bqitynit'),(137,'20&n995611=v995658','prvhcgop'),(138,'20','set|set&set'),(139,'Http://testasp.vulnweb.com/t/fit.txt','siusxmvo'),(140,'20','bqitynit'),(141,'20','dblbxyfw&n906391=v959859'),(142,'20','\'set|set&set\''),(143,'/etc/passwd','yflcwwwm'),(144,'http://testasp.vulnweb.com/t/fit.txt?.jpg','siusxmvo'),(145,')','dvjepofe'),(146,'20',''),(147,'20','\"set|set&set\"'),(148,'testasp.vulnweb.com','siusxmvo'),(149,'20','set|set&set'),(150,'!(()&&!|*|*|','dvjepofe'),(151,'20','http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg'),(152,'','csphwjpl'),(153,'20','`set|set&set`'),(154,'20',''),(155,'\'\"()','csphwjpl'),(156,'20','print `env`'),(157,'20','Http://testasp.vulnweb.com/t/fit.txt'),(158,'20',')'),(159,'20',';set|set&set;'),(160,'20',''),(161,'20','\'\"()'),(162,'20','!(()&&!|*|*|'),(163,'20','http://testasp.vulnweb.com/t/fit.txt?.jpg'),(164,'20','haejxsox'),(165,'20','testasp.vulnweb.com'),(166,'index.php','haejxsox'),(167,'http://hitWAr4B49o37.bxss.me/','yohnyifv'),(168,')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))','gyhoyrwi'),(169,'20','vbwggkam'),(170,'WEB-INF/web.xml?','yflcwwwm'),(171,'20','http://hitAFmiQ7xZht.bxss.me/'),(172,'20',')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))'),(173,'WEB-INFweb.xml?','yflcwwwm'),(174,'index.php/.','haejxsox'),(175,'','vbwggkam'),(176,'/www.vulnweb.com','tgfseehe'),(177,'/WEB-INF/web.xml?','yflcwwwm'),(178,'20','haejxsox'),(179,'903601','tgfseehe'),(180,'@@LZHUs','vbwggkam'),(181,'20','index.php'),(182,'JyI=','vbwggkam'),(183,'http://www.vulnweb.com','tgfseehe'),(184,'¿\'¿\"','vbwggkam'),(185,'20','index.php/.'),(186,'//www.vulnweb.com','tgfseehe'),(187,'ð\'\'ð\"\"','vbwggkam'),(188,'À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯windowsÀ¯win.ini','yflcwwwm'),(189,'/www.vulnweb.com','tgfseehe'),(190,'20_971181','bfbxjcae'),(191,'................windowswin.ini','yflcwwwm'),(192,'20','/www.vulnweb.com'),(193,'20','sjgndwxi'),(194,'20','vbwggkam'),(195,'20','975006'),(196,'acu7508ï¼œs1ï¹¥s2Êºs3Ê¹uca7508','bfbxjcae'),(197,'20','http://www.vulnweb.com'),(198,'20','sjgndwxi'),(199,'acux5801À¾z1À¼z2abcxuca5801','bfbxjcae'),(200,'20','\\'),(201,'20','//www.vulnweb.com'),(202,'acuuC7NMðŒ†ucauC7NM','bfbxjcae'),(203,'20','/\\www.vulnweb.com'),(204,'20','@@O916L'),(205,'WEB-INF/web.xml?','yflcwwwm'),(206,'20','JyI='),(207,'20','¿\'¿\"'),(208,'WEB-INFweb.xml?','yflcwwwm'),(209,'20','ð\'\'ð\"\"'),(210,'/WEB-INF/web.xml?','yflcwwwm'),(211,'20','Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjL3Bhc3N3ZAAucG5n'),(212,'20%3Csvg%20onload%3Dprompt(926800)%3E','bfbxjcae'),(213,'20','/etc/passwd'),(214,'20','WEB-INF/web.xml?'),(215,'20','WEB-INF\\web.xml?'),(216,'20','/WEB-INF/web.xml?'),(217,'20','À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯À®À®À¯windowsÀ¯win.ini'),(218,'20','................windowswin.ini'),(219,'20','WEB-INF/web.xml?'),(220,'20','WEB-INF\\web.xml?'),(221,'20','bfbxjcae_932844'),(222,'20','/WEB-INF/web.xml?'),(223,'20','acu6996ï¼œs1ï¹¥s2Êºs3Ê¹uca6996'),(224,'20','acux8477À¾z1À¼z2abcxuca8477'),(225,'20','acuLLm7vðŒ†ucaLLm7v'),(226,'20','bfbxjcae%3Csvg%20onload%3Dprompt(934883)%3E'),(227,'20','ö<img acu onmouseover=prompt(926477) //ö>'),(228,'1acuHLudXrslgQ','wfveehkg'),(229,'20','1acuiGis9tztos'),(230,'1acuHLudXrslgQ','wfveehkg'),(231,'20','qqitnnae'),(232,'','Peter Winter');
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `user` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `avatar` varchar(70) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `failed_login` int(3) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin','5f4dcc3b5aa765d61d8327deb882cf99','http://localhost/dvwa/hackable/users/admin.jpg','2019-11-08 08:25:45',0),(2,'Gordon','Brown','gordonb','e99a18c428cb38d5f260853678922e03','http://localhost/dvwa/hackable/users/gordonb.jpg','2019-11-08 08:25:45',0),(3,'Hack','Me','1337','8d3533d75ae2c3966d7e0d4fcc69216b','http://localhost/dvwa/hackable/users/1337.jpg','2019-11-08 08:25:45',0),(4,'Pablo','Picasso','pablo','0d107d09f5bbe40cade3de5c71e9e9b7','http://localhost/dvwa/hackable/users/pablo.jpg','2019-11-08 08:25:45',0),(5,'Bob','Smith','smithy','5f4dcc3b5aa765d61d8327deb882cf99','http://localhost/dvwa/hackable/users/smithy.jpg','2019-11-08 08:25:45',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 10:15:32
