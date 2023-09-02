-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,2),(2,1),(3,2),(4,1),(5,4),(6,1),(7,4),(8,1),(9,2),(10,4),(11,1),(12,3),(13,1),(14,2),(15,3);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_menus`
--

DROP TABLE IF EXISTS `booking_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_menus` (
  `booking_menu_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_menu_id`),
  KEY `booking_menus_ibfk_2` (`menu_id`),
  KEY `booking_menus_ibfk_1` (`booking_id`),
  CONSTRAINT `booking_menus_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `booking_menus_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_menus`
--

LOCK TABLES `booking_menus` WRITE;
/*!40000 ALTER TABLE `booking_menus` DISABLE KEYS */;
INSERT INTO `booking_menus` VALUES (2,2,1),(3,2,2);
/*!40000 ALTER TABLE `booking_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_services`
--

DROP TABLE IF EXISTS `booking_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_services` (
  `booking_service_id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_service_id`),
  KEY `booking_services_ibfk_2` (`service_id`),
  KEY `booking_services_ibfk_1` (`booking_id`),
  CONSTRAINT `booking_services_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `booking_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_services`
--

LOCK TABLES `booking_services` WRITE;
/*!40000 ALTER TABLE `booking_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `hall_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `event_date` int DEFAULT NULL,
  `booking_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `bookings_ibfk_2` (`user_id`),
  KEY `bookings_ibfk_1` (`hall_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `event_halls` (`hall_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (2,1,10,1,1.00);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `branch_id` int NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'Đại Hải Trình','onepiece','111','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575263/nyrk98ptvcng9sl3licq.png'),(2,'Summoner’s Rift','lol','123','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575322/w5scaezcamngtlzvjk6n.png'),(3,'adora gò vấp','371 Nguyễn Kiệm','0123','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693214444/w0hzckepfzv7kjnrfhas.gif');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `branch_id` int DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `employees_ibfk_1` (`branch_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_halls`
--

DROP TABLE IF EXISTS `event_halls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_halls` (
  `hall_id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `hall_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `capacity` int DEFAULT NULL,
  `price_morning` decimal(10,2) DEFAULT NULL,
  `price_afternoon` decimal(10,2) DEFAULT NULL,
  `price_evening` decimal(10,2) DEFAULT NULL,
  `price_weekend` decimal(10,2) DEFAULT NULL,
  `img_hall` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`hall_id`),
  KEY `event_halls_ibfk_1` (`branch_id`),
  CONSTRAINT `event_halls_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_halls`
--

LOCK TABLES `event_halls` WRITE;
/*!40000 ALTER TABLE `event_halls` DISABLE KEYS */;
INSERT INTO `event_halls` VALUES (1,1,'Justatee',20,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693557270/scxd7yfonfzcc5vprswo.jpg'),(2,1,'Rhyder',30,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575469/wkpwmpqi5rkj7dxf92g3.png'),(3,1,'Leesin',100,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575487/eqoqdptsxutwf2rcm1e9.png'),(4,2,'Hydra',120,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693557349/zablu51oqsa9eanffucq.jpg'),(5,2,'Mikelodic',200,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575505/veliz9uaegohehaoly50.png');
/*!40000 ALTER TABLE `event_halls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `feedback_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `feedbacks_ibfk_1` (`user_id`),
  CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `invoice_id` int NOT NULL,
  `payment_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `payment_id` (`payment_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`),
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `menu_price` decimal(10,2) DEFAULT NULL,
  `choose` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'bánh bao chiên','măm măm',3000.00,0),(2,'chả cá kho quẹt','khahaa',15000.00,0),(3,'rau muốn xào tỏi','cũng ngon',15000.00,0),(4,'gà luộc nguyên con','không phải để cúng',450000.00,0);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `payments_ibfk_1` (`booking_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenue_monthly`
--

DROP TABLE IF EXISTS `revenue_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revenue_monthly` (
  `monthly_revenue_id` int NOT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `month_revenue` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`monthly_revenue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenue_monthly`
--

LOCK TABLES `revenue_monthly` WRITE;
/*!40000 ALTER TABLE `revenue_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `revenue_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenue_quarterly`
--

DROP TABLE IF EXISTS `revenue_quarterly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revenue_quarterly` (
  `quarterly_revenue_id` int NOT NULL,
  `year` int DEFAULT NULL,
  `quarter` varchar(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `quaterly_revenue` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`quarterly_revenue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenue_quarterly`
--

LOCK TABLES `revenue_quarterly` WRITE;
/*!40000 ALTER TABLE `revenue_quarterly` DISABLE KEYS */;
/*!40000 ALTER TABLE `revenue_quarterly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenue_yearly`
--

DROP TABLE IF EXISTS `revenue_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revenue_yearly` (
  `yearly_revenue_id` int NOT NULL,
  `year` int DEFAULT NULL,
  `year_revenue` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`yearly_revenue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenue_yearly`
--

LOCK TABLES `revenue_yearly` WRITE;
/*!40000 ALTER TABLE `revenue_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `revenue_yearly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `service_price` decimal(10,2) DEFAULT NULL,
  `service_img` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'ăn','mô tả',100000.00,NULL),(2,'chụp hình full hd','thợ xịn đó nha',111111.00,NULL),(3,'ảo thuật','ảo ma canada',10000.00,NULL),(4,'rái đơ hát việt','lại là di gi hauuu',9999.00,NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `avatar` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'cmm thinh','12344','user','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693214444/w0hzckepfzv7kjnrfhas.gif'),(13,'banh bao chin','213','user','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693402220/izz0zddede2es0nhw3d2.gif'),(14,'crush my friend','123','user','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693406213/m6ivji067vyx5iyjlwhd.webp'),(15,'sảnh pearl','123','admin','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693557270/scxd7yfonfzcc5vprswo.jpg'),(16,'sảnh jasper','123','admin','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693557349/zablu51oqsa9eanffucq.jpg'),(17,'dasd','dasd','admin','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575263/nyrk98ptvcng9sl3licq.png'),(21,'dasddasd','dasddasd','user','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575322/w5scaezcamngtlzvjk6n.png'),(22,'dasdasd','dasdasd','user','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575469/wkpwmpqi5rkj7dxf92g3.png'),(23,'dsadasd','dasdasdasd','admin','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575487/eqoqdptsxutwf2rcm1e9.png'),(24,'adsdasd','dasdasd','admin','https://res.cloudinary.com/dl3hvap4a/image/upload/v1693575505/veliz9uaegohehaoly50.png');
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

-- Dump completed on 2023-09-02 18:30:31
