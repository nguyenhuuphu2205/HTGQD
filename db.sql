-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: htgqd
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `diemsan`
--

DROP TABLE IF EXISTS `diemsan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diemsan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `truong_id` int(11) NOT NULL,
  `khoi` varchar(5) NOT NULL,
  `diemChuan` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diemsan`
--

LOCK TABLES `diemsan` WRITE;
/*!40000 ALTER TABLE `diemsan` DISABLE KEYS */;
INSERT INTO `diemsan` VALUES (1,1,'A',25.5),(2,1,'A1',25),(3,1,'B',24.25),(4,2,'A',22.25),(5,3,'A',17.5),(6,3,'B',16.75),(7,3,'D',18.5),(8,3,'A1',15.75),(9,3,'H',17.5),(10,3,'V',17.5),(11,4,'A',21.5),(12,4,'A1',19.75),(13,4,'C',21.75),(14,4,'D',21.25),(15,5,'A',18),(16,5,'A1',17.5),(17,5,'D',17),(18,6,'A',15.5),(19,6,'C',15.5),(20,6,'D',15.5),(21,6,'H',15.5),(22,6,'V',15.5),(23,6,'B',15.5),(24,7,'A',24.5),(25,7,'A1',23.5),(26,7,'C',28.5),(27,7,'D',23.5),(28,8,'A',28),(29,9,'A',18.25),(30,9,'A1',18.75),(31,9,'C',17),(32,9,'D',17.75),(33,10,'A',18.5),(34,10,'A1',16.5),(35,10,'B',15.5),(36,10,'D',15.5),(37,11,'D',20.75),(38,12,'C',15.5),(39,12,'D',15.5),(40,13,'A',24.5),(41,13,'A1',23.5),(42,14,'A',17),(43,14,'A1',15.5),(44,14,'D',17),(45,15,'A',17.25),(46,15,'A1',15.75),(47,15,'B',15.75),(48,15,'C',18),(49,15,'D',19),(50,16,'A',27.75),(51,16,'B',28.5),(52,17,'A',15.5),(53,17,'A1',15.5),(54,17,'C',15.5),(55,17,'D',15.5),(56,18,'A',24),(57,18,'A1',22.75),(58,19,'A',21),(59,19,'A1',21),(60,19,'C',25.5),(61,19,'D',21),(62,20,'A',16.5),(63,20,'A1',16.5),(64,21,'A',17.5),(65,21,'A1',19.5),(66,21,'C',17.5),(67,21,'D',21.5),(68,22,'A',26.25),(69,22,'A1',26),(70,22,'D',26.25),(71,23,'A',23.5),(72,23,'A1',22.5),(73,23,'D',23.5),(74,24,'A',20.25),(75,24,'C',21),(76,24,'D',20.5),(77,25,'A',22.75),(78,25,'A1',20.5),(79,26,'V',20.25),(80,26,'H',21),(81,26,'A',18.5),(82,26,'A1',16.5),(83,26,'B',16),(84,27,'A',15.5),(85,27,'A1',15.5),(86,27,'B',15.5),(87,27,'C',15.5),(88,27,'D',15.5),(89,28,'A',24),(90,28,'A1',24.5),(91,28,'C',26.5),(92,28,'D',25.75),(93,29,'A',17),(94,29,'A1',17),(95,29,'C',15.5),(96,29,'D',16.5),(97,29,'B',15.5),(98,30,'A',21.75),(99,30,'A1',20.25),(100,30,'C',15.5),(101,30,'D',21.25),(102,31,'H',17.75),(103,31,'V',18),(104,32,'A1',23),(105,32,'D',24.5),(106,33,'A',22.25),(107,33,'A1',22.25),(108,33,'D',23.5),(109,34,'A',28.25),(110,34,'A1',27.25),(111,34,'D',27.25),(112,35,'A',28.25),(113,36,'A',25.75),(114,36,'A1',25.75),(115,37,'A',25.5),(116,37,'A1',44.75),(117,38,'D',24.5),(118,39,'A',25.5),(119,39,'A1',24.75),(120,40,'D',25.75),(121,41,'A',18.5),(122,41,'A1',17),(123,41,'D',17.25),(124,42,'A',22.5),(125,42,'A1',21),(126,42,'D',18.5),(127,42,'C',18.75),(128,43,'C',23.75),(129,43,'D',22.75),(130,44,'A',20.25),(131,44,'A1',20),(132,44,'C',19),(133,44,'D',19),(134,45,'B',27.25),(135,46,'A',22.25),(136,46,'A1',22),(137,46,'C',19),(138,46,'D',19.25),(139,47,'A',16),(140,47,'A1',15.75),(141,48,'B',25.25),(142,49,'A',20.5),(143,49,'C',24.5),(144,49,'D',21.5),(145,50,'B',28.75),(146,51,'A',21.5),(147,51,'B',22.25),(148,51,'D',22),(149,51,'C',22),(150,52,'A',29),(151,52,'A1',28.75),(152,52,'C',28),(153,52,'D',29),(154,53,'A1',24.25),(155,53,'C',27.5),(156,54,'A',29.5),(157,54,'A1',28.75),(158,54,'D',26.25),(159,55,'A',29),(160,55,'B',28.75);
/*!40000 ALTER TABLE `diemsan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distance`
--

DROP TABLE IF EXISTS `distance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distance` (
  `thanhpho` varchar(20) DEFAULT NULL,
  `distance` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distance`
--

LOCK TABLES `distance` WRITE;
/*!40000 ALTER TABLE `distance` DISABLE KEYS */;
INSERT INTO `distance` VALUES ('Thai Binh',120),('Ha Nam',50),('Ha Nam',50),('Ha Nam',50),('Hai Phong',103),('Quang Ninh',160),('Bac Ninh',31),('Cao Bang',272),('Hung Yen',64),('Nam Dinh',90),('Ninh Binh',93),('Vinh Phuc',70),('Hai Duong',58),('Ha Giang',318),('Ha Tinh',341),('Phu Tho',90),('Dien Bien',474),('Son La',303),('Lang Son',154),('Lao Cai',338),('Thanh Hoa',150),('Yen Bai',160),('Thanh Hoa',150),('Bac Kan',165),('Lai Chau',389),('Tuyen Quang',151),('Thai Nguyen',83),('Bac Giang',60);
/*!40000 ALTER TABLE `distance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gioitinh`
--

DROP TABLE IF EXISTS `gioitinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gioitinh` (
  `id` int(5) NOT NULL,
  `ten` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gioitinh`
--

LOCK TABLES `gioitinh` WRITE;
/*!40000 ALTER TABLE `gioitinh` DISABLE KEYS */;
INSERT INTO `gioitinh` VALUES (1,'Nam'),(2,'Nu');
/*!40000 ALTER TABLE `gioitinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sothich`
--

DROP TABLE IF EXISTS `sothich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sothich` (
  `id` int(5) NOT NULL,
  `ten` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sothich`
--

LOCK TABLES `sothich` WRITE;
/*!40000 ALTER TABLE `sothich` DISABLE KEYS */;
INSERT INTO `sothich` VALUES (1,'Khoa Hoc Cong Nghe'),(2,'Am Thuc'),(3,'Thiet Ke Thoi Trang'),(4,'Ky Su Xay Dung'),(5,'Bac Sy'),(6,'Luat Su'),(7,'Nha Bao'),(8,'Phong Vien'),(9,'Van Hoc'),(10,'Ngoai Ngu'),(11,'San Khau Dien Anh'),(12,'Kinh Doanh'),(13,'Duoc Sy'),(14,'Cong An,Quan Doi'),(15,'Hanh Chinh, Ke Toan'),(16,'Hoat Dong Xa Hoi'),(17,'Ngoai Giao'),(18,'Ve'),(19,'Nong,Lam Nghiep'),(20,'Day Hoc'),(21,'Ca hat');
/*!40000 ALTER TABLE `sothich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trongso_gioitinh`
--

DROP TABLE IF EXISTS `trongso_gioitinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trongso_gioitinh` (
  `id_truong` int(20) DEFAULT NULL,
  `id_gioitinh` int(20) DEFAULT NULL,
  `trongso` double DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trongso_gioitinh`
--

LOCK TABLES `trongso_gioitinh` WRITE;
/*!40000 ALTER TABLE `trongso_gioitinh` DISABLE KEYS */;
INSERT INTO `trongso_gioitinh` VALUES (1,1,0.7,1),(1,2,0.3,2),(2,1,0.65,3),(2,2,0.35,4),(3,1,0.3,5),(3,2,0.7,6),(4,1,0.7,7),(4,2,0.3,8),(5,1,0.8,9),(5,2,0.2,10),(6,1,0.5,11),(6,2,0.5,12),(7,1,0.6,13),(7,2,0.4,14),(8,1,0.5,15),(8,2,0.5,16),(9,1,0.65,17),(9,2,0.35,18),(10,1,0.5,19),(10,2,0.5,20),(11,1,0.8,21),(11,2,0.2,22),(12,1,0.5,23),(12,2,0.5,24),(13,1,0.8,25),(13,2,0.2,26),(14,1,0.5,27),(14,2,0.5,28),(15,1,0.5,29),(15,2,0.5,30),(16,1,0.7,31),(16,2,0.3,32),(17,1,0.5,33),(17,2,0.5,34),(18,1,0.7,35),(18,2,0.3,36),(19,1,0.5,37),(19,2,0.5,38),(20,1,0.65,39),(20,2,0.35,40),(21,1,1,41),(21,2,0,42),(22,1,0.5,43),(22,2,0.5,44),(23,1,0.5,45),(23,2,0.5,46),(24,1,0.45,47),(24,2,0.55,48),(25,1,0.7,49),(25,2,0.3,50),(26,1,0.7,51),(26,2,0.3,52),(27,1,0.65,53),(27,2,0.35,54),(28,1,0.5,55),(28,2,0.5,56),(29,1,0.7,57),(29,2,0.3,58),(30,1,0.5,59),(30,2,0.5,60),(31,1,0.6,61),(31,2,0.4,62),(32,1,0.4,63),(32,2,0.6,64),(33,1,0.45,65),(33,2,0.55,66),(34,1,0.5,67),(34,2,0.5,68),(35,1,0.9,69),(35,2,0.1,70),(36,1,0.9,71),(36,2,0.1,72),(37,1,0.5,73),(37,2,0.5,74),(38,1,0.45,75),(38,2,0.55,76),(39,1,0.65,77),(39,2,0.35,78),(40,1,0.55,79),(40,2,0.45,80),(41,1,0.5,81),(41,2,0.5,82),(42,1,0.4,83),(42,2,0.6,84),(43,1,0.2,85),(43,2,0.8,86),(44,1,0.5,87),(44,2,0.5,88),(45,1,0.5,89),(45,2,0.5,90),(46,1,0.45,91),(46,2,0.55,92),(47,1,0.55,93),(47,2,0.45,94),(48,1,0.5,95),(48,2,0.5,96),(49,1,0.4,97),(49,2,0.6,98),(50,1,0.5,99),(50,2,0.5,100),(51,1,0.4,101),(51,2,0.6,102),(52,1,0.7,103),(52,2,0.3,104),(53,1,0.9,105),(53,2,0.1,106),(54,1,0.8,107),(54,2,0.2,108),(55,1,0.6,109),(55,2,0.4,110),(56,1,0.7,111),(56,2,0.3,112),(57,1,0.5,113),(57,2,0.5,114);
/*!40000 ALTER TABLE `trongso_gioitinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trongso_sothich`
--

DROP TABLE IF EXISTS `trongso_sothich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trongso_sothich` (
  `id_truong` int(20) DEFAULT NULL,
  `id_sothich` int(20) DEFAULT NULL,
  `trongso` double DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trongso_sothich`
--

LOCK TABLES `trongso_sothich` WRITE;
/*!40000 ALTER TABLE `trongso_sothich` DISABLE KEYS */;
INSERT INTO `trongso_sothich` VALUES (1,1,1,1),(1,10,0.5,2),(1,12,0.3,3),(1,3,0.6,4),(2,1,0.8,5),(3,3,0.7,6),(4,1,0.7,7),(5,1,0.6,8),(6,13,0.6,9),(7,6,0.7,10),(8,13,0.9,11),(9,1,0.7,12),(10,1,0.7,13),(11,14,0.9,14),(11,1,0.8,15),(12,1,0.7,16),(12,12,0.6,17),(13,14,0.9,18),(14,1,0.7,19),(14,15,0.65,20),(15,1,0.7,21),(15,10,0.7,22),(15,12,0.65,23),(16,5,0.9,24),(16,13,0.8,25),(16,14,0.7,26),(17,12,0.7,27),(17,15,0.75,28),(18,1,0.8,29),(19,15,0.9,30),(20,14,0.75,31),(21,16,0.9,32),(22,17,1,33),(23,15,0.9,34),(23,12,0.75,35),(24,16,0.8,36),(25,1,0.8,37),(26,4,0.85,38),(26,18,0.9,39),(27,19,0.9,40),(28,6,1,41),(29,1,0.7,42),(30,1,0.68,43),(30,10,0.65,44),(30,12,0.7,45),(31,18,0.9,46),(32,10,1,47),(33,15,0.9,48),(34,12,0.9,49),(34,15,0.95,50),(35,14,0.8,51),(36,14,0.78,52),(37,15,0.81,53),(37,12,0.82,54),(38,10,0.97,55),(39,1,0.91,56),(40,5,0.89,57),(41,10,0.7,58),(41,17,0.8,59),(42,20,0.89,60),(43,9,0.95,61),(44,1,0.92,62),(45,13,0.91,63),(46,20,0.97,64),(47,1,0.76,65),(48,5,0.74,66),(49,9,0.82,67),(49,11,0.83,68),(50,5,1,69),(51,5,0.7,70),(52,14,1,71),(53,14,0.8,72),(54,14,0.96,73),(55,14,0.9,74),(55,5,0.93,75),(55,13,0.92,76),(56,4,1,77),(56,18,0.9,78),(57,12,0.87,79),(57,15,0.94,80);
/*!40000 ALTER TABLE `trongso_sothich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truong`
--

DROP TABLE IF EXISTS `truong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) NOT NULL,
  `moTa` text NOT NULL,
  `hocPhi` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `viTri` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truong`
--

LOCK TABLES `truong` WRITE;
/*!40000 ALTER TABLE `truong` DISABLE KEYS */;
INSERT INTO `truong` VALUES (1,'Đại Học Bách Khoa Hà Nội ','Trường Đại học Bách khoa Hà Nội (tiếng Anh: Hanoi University of Science and Technology, viết tắt là HUST, tiếng Pháp: Institut Polytechnique de Hanoï) là trường đại học kỹ thuật đa ngành hàng đầu tại Việt Nam, một trong các trường đại học trọng điểm quốc gia Việt Nam. Trường là một trong 13 thành viên của Hiệp hội các trường đại học kỹ thuật hàng đầu châu Á - Thái Bình Dương AOTULE (Asia-Oceania Top University League on Engineering).',205000,2,'Hà Nội'),(2,'Học viện Công nghệ Bưu chính Viễn thông','Học viện Công nghệ Bưu chính Viễn thông là một trường đại học kỹ thuật chuyên ngành công nghệ thông tin và truyền thông trực thuộc Bộ Thông tin và Truyền thông, được thành lập ngày 11 tháng 7 năm 1997 trên cơ sở sắp xếp lại Viện Khoa học Kỹ thuật Bưu điện, Viện Kinh tế Bưu điện, Trung tâm Đào tạo Bưu chính - Viễn thông I và Trung tâm Đào tạo Bưu chính - Viễn thông II',250000,16,'Hà Nội'),(3,'Đại Học Công Nghiệp Dệt May Hà Nội ','Trường Đại học Công nghiệp Dệt May Hà Nội là trường công lập, tiền thân là trường Đào tạo Bồi dưỡng Kỹ thuật Nghiệp vụ May mặc được thành lập theo quyết định số 27/NT ngày 19 tháng 1 năm 1967 của Bộ trưởng Bộ Nội thương. Trải qua nhiều lần đổi tên và nâng cấp, ngày 04/6/2015 Trường được nâng cấp thành Trường Đại học Công nghiệp Dệt May Hà Nội theo Quyết số 769/QĐ-TTg của Thủ tướng chính phủ trên cơ sở tổ chức lại trường Cao đẳng Công nghiệp Dệt may-Thời trang Hà Nội.',275000,101,'Hà Nội'),(4,'Đại Học Công Nghiệp Hà Nội','Trường Đại học Công nghiệp Hà Nội (tiếng Anh: Hanoi University of Industry, viết tắt: HaUI) là một trường đa cấp, đa ngành nghề, định hướng ứng dụng và thực hành trực thuộc Bộ Công thương, được nâng cấp lên đại học năm 2005 trên cơ sở Trường Cao đẳng Công nghiệp Hà Nội, tiền thân là trường Chuyên nghiệp Hà Nội do Pháp thành lập năm 1898.\r\n\r\nTrường đào tạo tiến sĩ cơ khí, thạc sĩ, kỹ sư thực hành hệ 4 năm, cử nhân kinh tế, cao đẳng kỹ thuật, cao đẳng nghề, trung cấp kỹ thuật, trung cấp nghề và sơ cấp nghề.',320000,69,'Hà Nội'),(5,'Đại Học Điện Lực ','Trường Đại học Điện lực (tiếng Anh: Electric Power University) trực thuộc Bộ Công thương Việt Nam, là trường đại học định hướng ứng dụng-thực hành, chuyên đào tạo cử nhân và kỹ sư thực hành hệ 4 năm, cho Tập đoàn Điện lực Việt Nam, được thành lập ngày 19 tháng 5 năm 2006, trên cơ sở nâng cấp trường Cao đẳng Điện lực',295000,58,'Hà Nội'),(6,'Đại Học Đại Nam ','Đại học Đại Nam là một trường đại học tự thục tại Hà Nội. Trường đào tạo các lĩnh vực tài chính, công nghệ, xây dựng, ngôn ngữ, truyền thông và dược.',270000,102,'Hà Nội'),(7,'Đại Học Kiếm Sát Hà Nội ','Trường Đại học Kiểm sát Hà Nội là cơ sở giáo dục đại học công lập trong hệ thống giáo dục quốc dân Việt Nam, trực thuộc Viện Kiểm sát nhân dân tối cao. Hiện tại, trường đào tạo bậc đại học duy nhất một ngành là Luật học',305000,103,'Hà Nội'),(8,'Đại Học Dược Hà Nội ','Trường Đại học Dược Hà Nội được thành lập từ năm 1961, tiền thân là khoa Dược trường Y- Dược Đông Dương, trường được thành lập theo quyết định số 828/ BYT- QĐ ngày 29/09/1961 của Bộ trưởng bộ Y tế, trường có trụ sở chính tại Hà Nội.\r\n\r\nTrường Đại học Dược Hà Nội là trường có sứ mạng đi đầu trong sự nghiệp đào tạo nguồn nhân lực Dược cho ngành Y tế Việt Nam, đặc biệt là đào tạo đội ngũ chuyên gia có trình độ ngang tầm khu vực và thế giới. Trường là một trong những trung tâm hàng đầu của cả nước về nghiên cứu và ứng dụng khoa học kĩ thuật, công nghệ dược vào sản xuất, kinh doanh là đầu mối giao lưu quốc tế trong lĩnh vực đào tạo và nghiên cứu khoa học của ngành Dược.',275000,67,'Hà Nội'),(9,'Đại Học Kinh Tế Kỹ Thuật Công Nghiệp ','Trường Đại học Kinh tế - Kỹ thuật Công nghiệp (tên tiếng Anh: University of Economic and Technical Industries, tên viết tắt: UNETI), là trường đại học công lập định hướng nghề nghiệp ứng dụng, đào tạo cử nhân và kỹ sư thực hành hệ chính quy 4 năm, trực thuộc Bộ Công thương Việt Nam, được thành lập năm 2007, trên cơ sở nâng cấp Trường Cao đẳng Kinh tế Kỹ thuật Công nghiệp I, thành lập từ năm 1956, đào tạo đa cấp, đa ngành.',310000,104,'Hà Nội'),(10,'Đại học Tài Nguyên và Môi Trường Hà Nội ','Đại học Tài nguyên và Môi trường Hà Nội, tên tiếng Anh: Hanoi University of Natural Resources and Environment (HUNRE), là một trường Đại học công lập trực thuộc Bộ Tài nguyên và Môi trường tại Hà Nội.\r\n\r\nNhà trường có nhiệm vụ đào tạo nguồn nhân lực phục vụ công tác quản lý, thực hiện nhiệm vụ chuyên môn thuộc lĩnh vực tài nguyên và môi trường có trình độ Cao đẳng,  Đại học và Sau đại học.',253000,105,'Hà Nội'),(11,'Học Viện Khoa Học Quân Sự - Hệ Dân sự ','Học viện Khoa học Quân sự (tiếng Anh: Military Science Academy, viết tắt là MSA), là một học viện quân sự trực thuộc Tổng cục 2, Bộ Quốc phòng Việt Nam chuyên đào tạo sĩ quan ngành ngoại ngữ, đối ngoại quân sự, trinh sát kỹ thuật Bên cạnh đào tạo sĩ quan ngoại ngữ, học viện còn đào tạo cử nhân ngoại ngữ phục vụ toàn dân trong hệ thống giáo dục của bộ giáo dục ban hành.',275000,106,'Hà Nội'),(12,'Đại học Phương Đông','Trường Đại học Phương Đông được thành lập năm 1994, đào tạo khoảng 9.000 sinh viên tại 6 khoa và 1 trung tâm, với 21 ngành bậc đại học, 4 ngành bậc cao đẳng. Trường sẽ bắt đầu đào tạo trình độ Thạc sĩ cho 2 ngành từ năm 2013.',305000,107,'Hà Nội'),(13,'Học Viện Kĩ Thuật Quân Sự - Hệ Dân sự ','Học viện Kỹ thuật Quân sự, tên gọi khác: Trường Đại học Kỹ thuật Lê Quý Đôn, là một viện đại học kỹ thuật tổng hợp, đa ngành, đa lĩnh vực trực thuộc Bộ Quốc phòng Việt Nam, một trong những trường đại học kỹ thuật hàng đầu Việt Nam, trường đại học trọng điểm quốc gia Việt Nam, là đại học nghiên cứu- ứng dụng  và đào tạo kỹ sư quân sự, kỹ sư dân sự, cán bộ chỉ huy và quản lý trình độ Đại học, Thạc sĩ, Tiến sĩ trong các ngành khoa học kỹ thuật, công nghệ quân sự, công nghiệp quốc phòng và công nghệ cao phục vụ sự nghiệp hiện đại hoá quân đội và các ngành kinh tế quốc dân',253000,31,'Hà Nội'),(14,'Đại Học Kinh Doanh và Công Nghệ Hà Nội ','Trường Đại học Kinh doanh và Công nghệ Hà Nội (tên cũ: Trường Đại học Dân lập Quản lý và Kinh doanh Hà Nội) là trường đại học được thành lập năm 1996 tại Hà Nội, Việt Nam.\r\n\r\nTrường xác định sứ mệnh của mình là đào tạo các nhà kinh tế thực hành và các nhà kỹ thuật thực hành, tạo nguồn nhân lực cho việc hình thành một dàn cán bộ chủ chốt của các doanh nghiệp - những \"binh đoàn chủ lực\" trên mặt trận phát triển kinh tế xã hội theo hướng dân giàu, nước mạnh, xã hội công bằng, dân chủ, văn minh. Trường lấy đào tạo nghề nghiệp - thực hành làm định hướng chủ yếu, không chỉ quan tâm trau dồi kiến thức, mà trau dồi kiến thức phải đi đôi với rèn luyện kỹ năng thực hành, phát triển tư duy tìm tòi sáng tạo, kết hợp lý luận với thực tiễn; không chỉ quan tâm phát triển tài năng, mà phát triển tài năng phải đi đôi với bồi dưỡng phẩm chất đạo đức nhằm đào tạo thanh niên thành những cán bộ vừa hồng vừa chuyên.',275000,71,'Hà Nội'),(15,'Đại Học Thăng Long ','Trường Đại học Thăng Long - Thang Long University là một trường đại học tư thục ở TP Hà Nội, Việt Nam. Là cơ sở giáo dục bậc đại học ngoài công lập đầu tiên trong chính thể Cộng hòa xã hội chủ nghĩa Việt Nam, trường được thành lập năm 1988 với tên gọi ban đầu là Trung tâm Đại học dân lập Thăng Long [1]. Năm 2005, Thủ tướng Chính phủ ban hành quyết định chuyển đổi loại hình của Trường Đại học dân lập Thăng Long từ loại hình trường dân lập sang loại hình trường tư thục và mang tên: Trường Đại học Thăng Long. Là một trong những trường đại học tốt nhất Việt Nam; Văn bằng của Trường nằm trong Hệ thống văn bằng Quốc gia.',345000,78,'Hà Nội'),(16,'Học Viện Quân Y - Hệ Dân sự ','Học viện Quân y, hay Đại học Y - Dược Lê Hữu Trác là một trường đại học trọng điểm quốc gia Việt Nam trực thuộc Bộ Quốc phòng Việt Nam, là đại học nghiên cứu và đào tạo bác sĩ, dược sĩ, y sĩ trình độ từ trung cấp, đại học, sau đại học cho quân đội và dân sự của Việt Nam. Trường được thành lập ngày 10 tháng 3 năm 1949.',325000,7,'Hà Nội'),(17,'Đại Học Tài Chính Ngân Hàng Hà Nội','Trường đại học Tài chính Ngân hàng Hà Nội được thành lập nhằm thực hiện chính sách xã hội hóa giáo dục của Đảng và Nhà nước, đồng thời đáp ứng nhu cầu của xã hội về nguồn nhân lực tài chính ngân hàng có chất lượng cao trong bối cảnh đất nước hội nhập ngày càng sâu rộng vào nền kinh tế quốc tế.',265000,107,'Hà Nội'),(18,'Đại Học Giao Thông Vận Tải ( Cơ sở Phía Bắc ) ','Trường Đại học Giao thông Vận tải (tiếng Anh: University of Transport and Communications, tên viết tắt: UTC hoặc UCT) là một trường đại học công lập đào tạo chuyên ngành các lãnh vực về kỹ thuật giao thông vận tải - kinh tế của Việt Nam. Trường được thành lập năm 1960 và trực thuộc Bộ Giáo dục và Đào tạo',223000,17,'Hà Nội'),(19,'Học Viện Hành Chính Quốc Gia ( phía Bắc ) ','Học viện Hành chính Quốc gia là cơ sở đào tạo công lập trực thuộc Bộ Nội vụ (tên tiếng Anh là National Academy of Public Administration, tên viết tắt là NAPA).\r\n\r\nTrường có cơ sở chính đặt tại Hà Nội, hai cơ sở tại TP. Hồ Chí Minh và Miền Trung (TP. Huế), Phân viện tại Tây Nguyên (TP. Buôn Ma Thuột).',258000,95,'Hà Nội'),(20,'Học Viện Hậu Cần - Hệ Dân sự ','Học viện Hậu cần là học viện quân sự trực thuộc Bộ Quốc phòng Việt Nam, có nhiệm vụ đào tạo sĩ quan và nhân viên ngành hậu cần cho Quân đội Nhân dân Việt Nam.Ngày 7 tháng 2 năm 1993, Bộ Giáo dục và Đào tạo ra quyết định công nhận trình độ đào tạo đại học quân sự cho Học viện Hậu cần.\r\n\r\n',310000,30,'Hà Nội'),(21,'Học Viện Phụ Nữ Việt Nam ','Học viện Phụ nữ Việt Nam là cơ sở giáo dục đại học công lập được thành lập theo Quyết định 1558/QĐ-TTg ngày 18 tháng 10 năm 2012 của Thủ tướng Chính phủ. Kế thừa sự phát triển lịch sử 50 năm với tên gọi cũ là Trường Cán bộ Phụ nữ Trung ương, Học viện Phụ nữ Việt Nam tổ chức đào tạo, bồi dưỡng đội ngũ cán bộ Hội Liên hiệp Phụ nữ các cấp, cán bộ nữ cho hệ thống chính trị. Cùng với đó, trường cũng là cơ sở giáo dục tham gia đào tạo nguồn nhân lực có trình độ cao (đại học, sau đại học), có chất lượng đáp ứng nhu cầu xã hộ',225000,108,'Hà Nội'),(22,'Học Viện Ngoại Giao ','Học viện Ngoại giao (tên tiếng Anh: Diplomatic Academy of Vietnam), là trường đại học đào tạo chuyên ngành ngoại giao duy nhất ở Việt Nam, là cơ quan sự nghiệp tương đương cấp tổng Cục trực thuộc Bộ Ngoại giao, do Thủ tướng Chính phủ trực tiếp quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức, cùng với Ủy ban Biên giới quốc gia, Ủy ban Nhà nước về người Việt Nam ở nước ngoài',205000,85,'Hà Nội'),(23,'Học Viện Tài Chính ','Học viện Tài chính (tiếng Anh: Academy of Finance, viết tắt AOF) trực thuộc Bộ Tài chính và chịu sự quản lý nhà nước của Bộ Giáo dục và Đào tạo, là một trong những trường đại học công lập hàng đầu thuộc khối kinh tế tại Việt Nam. Học viện đào tạo chủ yếu các chuyên ngành đào tạo chủ yếu là kế toán và tài chính.',225000,68,'Hà Nội'),(24,'Học Viện Thanh Thiếu Niên Việt Nam ','Đúng vào ngày 15/10/1956, lớp huấn luyện cán bộ đầu tiên của Trung ương Đoàn Thanh niên lao động Việt Nam khai mạc, trở thành cột mốc lịch sử đánh dấu bước phát triển mới của Đoàn. Từ đây, Đoàn thanh niên chính thức có một hệ thống đào tạo, bồi dưỡng, tập huấn cán bộ chuyên trách, đáp ứng đòi hỏi của phong trào thanh thiếu nhi cả nước.',250000,109,'Hà Nội'),(25,'Học Viện Kỹ Thuật Mật Mã ','Học viện Kỹ thuật Mật mã là một trường đại học công lập trực thuộc Ban Cơ yếu Chính phủ-Bộ Quốc phòng Việt Nam, được thành lập ngày 17 tháng 2 năm 1995 có chức năng đào tạo cán bộ có trình độ đại học, sau đại học và nghiên cứu khoa học kỹ thuật mật mã của ngành Cơ yếu Việt Nam. Học viện cũng được chính phủ Việt Nam lựa chọn là một trong tám cơ sở trọng điểm đào tạo nhân lực an toàn thông tin Việt Nam theo Đề án đào tạo và phát triển nguồn nhân lực an toàn, an ninh thông tin đến năm 2020',235000,96,'Hà Nội'),(26,'Đại Học Kiến Trúc Hà Nội ','Trường Đại học Kiến trúc Hà Nội là một trong những trường đại học công lập đứng đầu về đào tạo xây dựng, quy hoạch, kiến trúc và thiết kế tại miền bắc Việt Nam, trực thuộc Bộ Xây dựng.',215000,79,'Hà Nội'),(27,'Đại Học Lâm Nghiệp ( Cơ sở 1 ) ','Đại học Lâm nghiệp tên gọi cũ Đại học Lâm nghiệp Việt Nam, tên giao dịch quốc tế: Vietnam National University of Forestry[1] (viết tắt VNUF) là một trường đào tạo đa ngành bậc đại học và sau đại học ở Việt Nam',220000,57,'Hà Nội'),(28,'Đại học Luật Hà Nội','Trường Đại học Luật Hà Nội (tên tiếng Anh: Hanoi Law University, viết tắt là HLU) là một trường đại học công lập của Việt Nam. Trường trực thuộc Bộ Tư pháp và chịu sự quản lý nhà nước về giáo dục của Bộ Giáo dục và Đào tạo.\r\n\r\nTrường Đại học Luật Hà Nội là trường đại học có quy mô đào tạo về ngành luật lớn nhất ở Việt Nam;thực hiện nhiệm vụ đào tạo chuyên viên pháp lý các bậc đại học, cao học, và tiến sĩ; tổ chức nghiên cứu, ứng dụng khoa học pháp lý và thực hiện nhiệm vụ khác do Bộ trưởng Bộ Tư pháp và Bộ Giáo dục và Đào tạo giao.',235000,65,'Hà Nội'),(29,'Đại Học Mỏ Địa Chất ','Trường Đại học Mỏ - Địa chất (tiếng Anh: Hanoi University of Mining and Geology, gọi tắt là HUMG) thành lập năm 1966, là trường đại học đa ngành, định hướng ứng dụng, đào tạo cán bộ Khoa học kỹ thuật trình độ đại học và trên đại học về các lĩnh vực: Dầu khí, Xây dựng, Công nghệ thông tin, Cơ khí, Tự động hóa, Khai thác tài nguyên khoáng sản, Bảo vệ môi trường, Đo đạc lãnh thổ lãnh hải, Quản lý đất đai, Kinh tế, Quản trị doanh nghiệp, Kế toán,...Hiện Nhà trường có 3 cơ sở đào tạo tại Hà Nội, Quảng Ninh và Vũng Tàu.',230000,8,'Hà Nội'),(30,'Viện Đại Học Mở Hà Nội ','Viện Đại học Mở Hà Nội là một cơ sở giáo dục đại học mở đa cấp, đa ngành, đa lĩnh vực có quyền tự chủ, tự chịu trách nhiệm cao trong hệ thống giáo dục Việt Nam tại Hà Nội. Quy mô đào tạo hàng năm của viện đại học này vào khoảng 60.000 sinh viên gồm các hệ chính quy, tại chức và đào tạo từ xa, với 11 khoa đào tạo các chuyên ngành.\r\n',225000,62,'Hà Nội'),(31,'Đại Học Mỹ Thuật Công Nghiệp ','Trường Đại học Mỹ thuật Công nghiệp là trường công lập chuyên đào tạo Mỹ thuật công nghiệp, có địa chỉ tại 360 Đê La Thành quận Đống Đa thành phố Hà Nội.',250000,110,'Hà Nội'),(32,'Đại Học Hà Nội ','Trường Đại học Hà Nội (tiếng Anh: Hanoi University, tên viết tắt: HANU) tiền thân là Trường Đại học Ngoại ngữ, được thành lập năm 1959, tọa lạc tại km 9 đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội. Trường là cơ sở đào tạo và nghiên cứu khoa học có chất lượng về ngoại ngữ ở trình độ đại học và sau đại học; cơ sở đào tạo chuyên ngành bằng ngoại ngữ; cung cấp mọi dịch vụ về ngoại ngữ; là đầu tàu phát triển của ngành ngoại ngữ của cả nước.[cần dẫn nguồn] Trải qua hơn nửa thế kỉ hoạt động, Trường đã từng bước khẳng định vị thế là trường đại học công lập uy tín trong đào tạo ngoại ngữ ở cả ba cấp độ Cử nhân, Thạc sĩ, Tiến sĩ. Đây cũng là trường đại học đầu tiên của Việt Nam đào tạo chính quy 6 chương trình cử nhân chuyên ngành hoàn toàn bằng tiếng Anh.',225000,92,'Hà Nội'),(33,'Học Viện Ngân Hàng ','Học viện Ngân hàng là một trường đại học kinh tế tại Việt Nam chuyên ngành ngân hàng, được thành lập ngày 09/02/1998\r\n\r\nHọc viện Ngân hàng được tổ chức và hoạt động dưới sự lãnh đạo và quản lý trực tiếp của Ngân hàng Nhà nước Việt Nam và chịu sự quản lý nhà nước về giáo dục của Bộ Giáo dục và Đào tạo.',256000,63,'Hà Nội'),(34,'Đại Học Ngoại Thương ( Cơ sở phía Bắc ) ','Trường Đại học Ngoại thương (tên tiếng Anh: Foreign Trade University, tên viết tắt: FTU) là một trường đại học kinh tế chuyên đào tạo về kinh tế, thương mại quốc tế của Việt Nam trực thuộc Bộ Giáo dục và Đào tạo.',315000,22,'Hà Nội'),(35,'Đại Học Phòng Cháy Chữa Cháy ( Phía Bắc ) ','Trường Đại học Phòng cháy chữa cháy (T34) trực thuộc Tổng cục Chính trị Công an Nhân dân có trách nhiệm đào tạo cán bộ phòng cháy, chữa cháy trình độ trên đại học, trình độ đại học và các trình độ thấp hơn; bồi dưỡng chuyên môn, nghiệp vụ về phòng cháy, chữa cháy; nghiên cứu khoa học về phòng cháy, chữa cháy phục vụ cho yêu cầu phát triển kinh tế - xã hội.',0,23,'Hà Nội'),(36,'Học viện Phòng không - Không quân','Học viện Phòng không - Không quân Việt Nam là một học viện quân sự trực thuộc Quân chủng Phòng không- Không quân- Bộ Quốc phòng Việt Nam, chuyên đào tạo sĩ quan chỉ huy tham mưu phòng không- không quân trình độ đại học, cao đẳng, kỹ sư hàng không và đào tạo sau đại học.',0,32,'Hà Nội'),(37,'Đại Học Kinh Tế – Đại Học Quốc Gia Hà Nội ','Trường Đại học Kinh tế, trường thành viên của Đại học Quốc gia Hà Nội, là một cơ sở đào tạo bậc đại học và sau đại học cung cấp cho xã hội nguồn nhân lực chất lượng cao theo định hướng chuyên gia, lãnh đạo trong các lĩnh vực kinh tế, quản lý và quản trị kinh doanh đáp ứng nhu cầu phát triển chất lượng, hiệu quả và bền vững của Việt Nam; nghiên cứu và chuyển giao các kết quả nghiên cứu cho Chính phủ, các tổ chức, doanh nghiệp và xã hội; tạo môi trường thuận lợi để sáng tạo, nuôi dưỡng, phát triển tài năng trong các lĩnh vực kinh tế, quản lý và quản trị kinh doanh hiện đại.',320000,76,'Hà Nội'),(38,'Đại Học Ngoại Ngữ – Đại Học Quốc Gia Hà Nội ','Trường Đại học Ngoại ngữ (tên giao dịch tiếng Anh: University of Languages và International Studies và viết tắt là ULIS)[1] là một trường thành viên của Đại học Quốc gia Hà Nội. Trường là một trong những trung tâm đào tạo giáo viên và cán bộ ngoại ngữ lớn của Việt Nam. Trụ sở chính của trường đặt tại đường Phạm Văn Đồng, quận Cầu Giấy, thành phố Hà Nội',253000,77,'Hà Nội'),(39,'Đại Học Công Nghệ – Đại Học Quốc Gia Hà Nội ','Trường Đại học Công nghệ (tên tiếng Anh: VNU University of Engineering and Technology hay VNU-UET) là một trường đại học thuộc Đại học Quốc gia Hà Nội, được thành lập vào năm 2004, địa chỉ tại 144 đường Xuân Thủy, quận Cầu Giấy, Hà Nội, trong khuôn viên Đại học Quốc gia Hà Nội khu vực Cầu Giấy với các trường thành viên như Trường Đại học Ngoại ngữ, Trường Đại học Kinh tế, Khoa Luật.',255000,82,'Hà Nội'),(40,'Khoa Luật – Đại Học Quốc Gia Hà Nội ','Đại học Quốc gia Hà Nội (tên giao dịch tiếng Anh: Vietnam National University, Hanoi, viết tắt: VNU) là một trong hai đại học quốc gia của Việt Nam, đặt tại Hà Nội. Đây là đại học danh tiếng nhất Việt Nam hiện nay, xếp hạng thứ 139 châu Á (2017) theo QS World University Rankings. Đại học Quốc gia Hà Nội tổ chức đào tạo đại học, sau đại học, nghiên cứu và ứng dụng khoa học-công nghệ, đa ngành, đa lĩnh vực, chất lượng cao, giữ vai trò nòng cốt, quan trọng trong hệ thống giáo dục đại học ở Việt Nam.',275000,82,'Hà Nội'),(41,'Khoa Quốc Tế – Đại Học Quốc Gia Hà Nội','Đại học Quốc gia Hà Nội (tên giao dịch tiếng Anh: Vietnam National University, Hanoi, viết tắt: VNU) là một trong hai đại học quốc gia của Việt Nam, đặt tại Hà Nội. Đây là đại học danh tiếng nhất Việt Nam hiện nay, xếp hạng thứ 139 châu Á (2017) theo QS World University Rankings. Đại học Quốc gia Hà Nội tổ chức đào tạo đại học, sau đại học, nghiên cứu và ứng dụng khoa học-công nghệ, đa ngành, đa lĩnh vực, chất lượng cao, giữ vai trò nòng cốt, quan trọng trong hệ thống giáo dục đại học ở Việt Nam.',305000,24,'Hà Nội'),(42,'Đại Học Giáo Dục - Đại học Quốc Gia Hà Nội ','Trường Đại học Giáo dục là một trường đại học thành viên trực thuộc Đại học Quốc gia Hà Nội, Việt Nam. Đây là nơi đào tạo, bồi dưỡng chuyên gia giáo dục và nhà giáo cho mọi bậc học ở Việt Nam. Trụ sở chính của trường đặt tại số 144 Đường Xuân Thuỷ, quận Cầu Giấy, Hà Nội.',235000,25,'Hà Nội'),(43,'Đại Học Khoa Học Xã Hội và Nhân Văn – Đại Học Quốc Gia Hà Nội ','Trường Đại học Khoa học Xã hội và Nhân văn là một trường đại học thành viên của Đại học Quốc gia Hà Nội. Trụ sở chính của Trường đặt tại số 336 Nguyễn Trãi, quận Thanh Xuân, thành phố Hà Nội. Hiện nay, Nhà trường đang đào tạo 13.000 sinh viên các hệ, trong đó có 3.100 học viên cao học và 292 nghiên cứu sinh. Số lượng cán bộ, giảng viên là 500 người, trong đó có 13 Giáo sư, 72 Phó Giáo sư, 138 Tiến sĩ khoa học và Tiến sĩ cùng 192 Thạc sĩ.',255000,111,'Hà Nội'),(44,'Đại Học Khoa Học Tự Nhiên – Đại Học Quốc Gia Hà Nội ','Đại học Quốc gia Hà Nội (tên giao dịch tiếng Anh: Vietnam National University, Hanoi, viết tắt: VNU) là một trong hai đại học quốc gia của Việt Nam, đặt tại Hà Nội. Đây là đại học danh tiếng nhất Việt Nam hiện nay, xếp hạng thứ 139 châu Á (2017) theo QS World University Rankings. Đại học Quốc gia Hà Nội tổ chức đào tạo đại học, sau đại học, nghiên cứu và ứng dụng khoa học-công nghệ, đa ngành, đa lĩnh vực, chất lượng cao, giữ vai trò nòng cốt, quan trọng trong hệ thống giáo dục đại học ở Việt Nam.',220000,1,'Hà Nội'),(45,'Khoa Y Dược - Đại học Quốc Gia Hà Nội ','Đại học Quốc gia Hà Nội (tên giao dịch tiếng Anh: Vietnam National University, Hanoi, viết tắt: VNU) là một trong hai đại học quốc gia của Việt Nam, đặt tại Hà Nội. Đây là đại học danh tiếng nhất Việt Nam hiện nay, xếp hạng thứ 139 châu Á (2017) theo QS World University Rankings. Đại học Quốc gia Hà Nội tổ chức đào tạo đại học, sau đại học, nghiên cứu và ứng dụng khoa học-công nghệ, đa ngành, đa lĩnh vực, chất lượng cao, giữ vai trò nòng cốt, quan trọng trong hệ thống giáo dục đại học ở Việt Nam.',310000,3,'Hà Nội'),(46,'Đại Học Sư Phạm Hà Nội','Trường Đại học Sư phạm Hà Nội là một trung tâm đào tạo đại học, sau đại học, nghiên cứu và ứng dụng khoa học giáo dục và đa ngành chất lượng cao, là một trong các trường đại học trọng điểm trong hệ thống giáo dục đại học Việt Nam.',253000,5,'Hà Nội'),(47,'Đại Học Thủy Lợi ( Cơ sở 1 ) ','Trường Đại học Thủy lợi (tiếng Anh: Thuyloi University) là một trường đại học công lập ở Việt Nam, chuyên ngành đào tạo nguồn nhân lực chất lượng cao chủ yếu trong các ngành khoa học, kỹ thuật, kinh tế và quản lý, đặc biệt trong lĩnh vực thủy lợi, môi trường, phòng chống và giảm nhẹ thiên tai... tại Việt Nam. Trường trở thành thành viên thứ 16 của ESCAP (Ủy ban Kinh tế và Xã hội châu Á - Thái Bình Dương Liên Hợp Quốc) từ năm 1988.',245000,55,'Hà Nội'),(48,'Đại học Y khoa Phạm Ngọc Thạch','Trường Đại học Y khoa Phạm Ngọc Thạch là trường đại học công lập nằm trong hệ thống giáo dục quốc dân của nước Cộng hòa Xã hội Chủ nghĩa Việt Nam, do Thủ tướng Chính phủ ra quyết định thành lập theo Quyết định số 24/QĐ-TTg của Thủ tướng Chính phủ Việt Nam, ban hành ngày 7 tháng 1 năm 2008.[2] Trường chịu sự quản lý trực tiếp của UBND Thành phố Hồ Chí Minh, chịu sự quản lý nghiệp vụ của Bộ Giáo dục và Đào tạo và chịu sự quản lý chuyên môn của Bộ Y tế. Tiền thân của trường là Trung tâm Đào tạo Bồi dưỡng Cán bộ Y tế Thành phố Hồ Chí Minh (TTĐTBDCBYT), vốn có nhiệm vụ như một trường đại học.\r\n\r\nNhiệm vụ chính của Trường là đào tạo Bác sĩ Chuyên khoa và Đa khoa nhằm cung cấp nguồn nhân lực ngành y cho Thành phố Hồ Chí Minh.',310000,43,'Thành phố Hồ Chí Minh'),(49,'Đại Học Văn Hóa Hà Nội ','Trường Đại học Văn hóa Hà Nội thành lập ngày 26 tháng 3 năm 1959, trụ sở chính của Trường được đặt tại quận Đống Đa, thành phố Hà Nội, Trường trực thuộc Bộ Văn hóa, Thể thao và Du lịch, do Bộ Giáo dục và Đào tạo quản lý về đào tạo. Trường đào tạo, cung cấp nguồn nhân lực cho lĩnh vực văn hóa với các bậc cao đẳng, đại học (cử nhân), sau đại học (thạc sĩ, tiến sĩ)',216000,61,'Hà Nội'),(50,'Đại Học Y Hà Nội','Trường Đại học Y Hà Nội là trường đại học chuyên về y khoa hàng đầu và lâu đời nhất của Việt Nam còn hoạt động. Trường đã được trao tặng Huân chương Sao Vàng nhân dịp kỷ niệm 105 năm ngày thành lập trường vào ngày 14 tháng 11 năm 2007, là một trong 15 trường đại học trọng điểm quốc gia.',295000,15,'Hà Nội'),(51,'Đại Học Y Tế Công Cộng ','Trường Đại học Y tế Công cộng tiền thân là Khoa Y tế công cộng được thành lập năm 1990 trên cơ sở sát nhập thêm 3 trường: Trường Cán bộ quản lý Y tế, Bộ môn Vệ sinh dịch tễ Trường Đại học Y Hà Nội và Trung tâm Nhân lực Y tế. Trụ sở đầu tiên của Khoa đóng tại Trường cán bộ quản lý Y tế.\r\n\r\nNgày 26 tháng 4 năm 2001, Thủ tướng chính phủ Phan Văn Khải đã ra Quyết định số 65/2001/QĐ-TTg thành lập trường Đại học Y tế Công cộng, trụ sở của Trường được chuyển về số 138B Giảng Võ, Phường Kim Mã, Quận Ba Đình, Thành phố Hà Nội.',305000,40,'Hà Nội'),(52,'Học Viện An Ninh Nhân Dân ','Học viện An ninh nhân dân (C500) trực thuộc Tổng cục Chính trị Công an Nhân dân có trách nhiệm đào tạo trình độ chuyên môn, nghiệp vụ và bồi dưỡng phẩm chất đạo đức, nhân cách của người cán bộ An ninh; nghiên cứu khoa học về An ninh nhân dân phục vụ cho yêu cầu phát triển kinh tế - xã hội.',0,9,'Hà Nội'),(53,'Học Viện Biên Phòng ','Học viện Biên phòng trực thuộc Bộ Tư lệnh Bộ đội Biên phòng, Quân đội Nhân dân Việt Nam là một trường đại học quân sự đào tạo sĩ quan và nhân viên các chuyên ngành Biên phòng, Việt Nam',0,32,'Hà Nội'),(54,'Học Viện Cảnh Sát Nhân Dân ','Học viện Cảnh sát nhân dân cùng với Học viện An ninh nhân dân là hai trường đào tạo hàng đầu của Công an nhân dân Việt Nam, đào tạo những sĩ quan cảnh sát có trình độ đại học và sau đại học cho lực lượng cảnh sát.\r\n\r\nHọc viện Cảnh sát trước đây trực thuộc Bộ Công an Việt Nam, tương đương với các Vụ, Văn phòng Bộ, Tổng cục... Về sau được tổ chức lại, dưới sự quản lý trực tiếp của Tổng cục Chính trị Công an nhân dân, nhưng không tương đương với các Cục, Công an các tỉnh địa phương mà vẫn xếp vào loại tương dương cấp Tổng cục. Hiện nay Học viện Cảnh Sát nhân dân là trường có quy mô đào tạo lớn nhất trong ngành CA (Quân số lúc cao nhất hiện nay lên tới hơn 17.000) và được biết đến là một trong những trường có số thí sinh thi vào đông nhất và điểm thi đầu vào cao nhất cả nước.',0,6,'Hà Nội'),(55,'Học Viện Quân Y - Hệ Quân sự ','Học viện Quân y, hay Đại học Y - Dược Lê Hữu Trác là một trường đại học trọng điểm quốc gia Việt Nam trực thuộc Bộ Quốc phòng Việt Nam, là đại học nghiên cứu và đào tạo bác sĩ, dược sĩ, y sĩ trình độ từ trung cấp, đại học, sau đại học cho quân đội và dân sự của Việt Nam. Trường được thành lập ngày 10 tháng 3 năm 1949.',0,4,'Hà Nội'),(56,'Đại học Xây Dựng','Đại học Xây Dựng đào tạo kỹ sư về xây dựng',216000,6,'Hà Nội'),(57,'Đại Học Kinh Tế Quốc Dân','Đại Học Kinh Tế Quốc Dân đào tạo chuyên ngành về kinh tế, MBA',320000,3,'Hà Nội');
/*!40000 ALTER TABLE `truong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11 21:10:49
