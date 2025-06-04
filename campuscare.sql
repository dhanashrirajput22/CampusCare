-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: campuscare_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS admin;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  id bigint NOT NULL AUTO_INCREMENT,
  email varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES admin WRITE;
/*!40000 ALTER TABLE admin DISABLE KEYS */;
INSERT INTO admin VALUES (204,'admin@campuscare.com','admin123');
/*!40000 ALTER TABLE admin ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS complaint;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE complaint (
  id bigint NOT NULL AUTO_INCREMENT,
  complaint_date date DEFAULT NULL,
  complaint_type varchar(255) DEFAULT NULL,
  department varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  student_name varchar(255) DEFAULT NULL,
  assigned_technician varchar(255) DEFAULT NULL,
  technician_id bigint DEFAULT NULL,
  submission_date datetime(6) DEFAULT NULL,
  title varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FK12nfp5stumhnslrp8r4l1pf5d (technician_id),
  CONSTRAINT FK12nfp5stumhnslrp8r4l1pf5d FOREIGN KEY (technician_id) REFERENCES technician (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES complaint WRITE;
/*!40000 ALTER TABLE complaint DISABLE KEYS */;
INSERT INTO complaint VALUES (1,'2025-05-21','electrical_problems','Computer','A short circuit occurred in Classroom 69, causing sudden power failure and slight burning smell near the switchboard. Immediate attention required to prevent further hazards.','dhanashrigirase08257@gmail.com','PENDING','Dhanashri Girase',NULL,10,'2025-05-21 13:23:15.860114',NULL),(2,'2025-05-21','water_supply','AIML','The college is facing irregular water supply, causing inconvenience in washrooms. Immediate action is needed to restore proper water availability across the campus.','neha@gmail.com','PENDING','Neha Sonawane',NULL,11,'2025-05-21 14:20:47.940997',NULL);
/*!40000 ALTER TABLE complaint ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technician`
--

DROP TABLE IF EXISTS technician;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE technician (
  id bigint NOT NULL AUTO_INCREMENT,
  department varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  assigned bit(1) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician`
--

LOCK TABLES technician WRITE;
/*!40000 ALTER TABLE technician DISABLE KEYS */;
INSERT INTO technician VALUES (10,'Electricity','arjun.mehta@techmail.com','Arjun Mehta','9876543101',_binary '','Arjun@123',_binary '\0'),(11,'Plumbing','rakesh@gmail.com','Rakesh Sharma','9876543210',_binary '','rakesh',_binary '\0');
/*!40000 ALTER TABLE technician ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  id bigint NOT NULL AUTO_INCREMENT,
  email varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  contact varchar(255) DEFAULT NULL,
  full_name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES user WRITE;
/*!40000 ALTER TABLE user DISABLE KEYS */;
/*!40000 ALTER TABLE user ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS users;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE users (
  id bigint NOT NULL AUTO_INCREMENT,
  contact varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  full_name varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES users WRITE;
/*!40000 ALTER TABLE users DISABLE KEYS */;
INSERT INTO users VALUES (1,'7666605039','dhanashrigirase08257@gmail.com','Dhanashri Hemendra Girase','Dhanashri'),(2,'7766605039','neha@gmail.com','Neha Sonawane','neha');
/*!40000 ALTER TABLE users ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 15:03:36
