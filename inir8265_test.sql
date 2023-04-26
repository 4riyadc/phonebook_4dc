-- MySQL dump 10.19  Distrib 10.2.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.2.44-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `anggaranrealisasi`
--

DROP TABLE IF EXISTS `anggaranrealisasi`;
/*!50001 DROP VIEW IF EXISTS `anggaranrealisasi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `anggaranrealisasi` (
  `idrealisasi` tinyint NOT NULL,
  `idrencana` tinyint NOT NULL,
  `thnanggaran` tinyint NOT NULL,
  `rencanakerja` tinyint NOT NULL,
  `nominalanggaran` tinyint NOT NULL,
  `nominalrealisasi` tinyint NOT NULL,
  `wakturencana` tinyint NOT NULL,
  `keterangan` tinyint NOT NULL,
  `keteranganrealisasi` tinyint NOT NULL,
  `tglrealisasi` tinyint NOT NULL,
  `nominalmasuk` tinyint NOT NULL,
  `nominalkeluar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `komisis`
--

DROP TABLE IF EXISTS `komisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komisis` (
  `nkomisi` varchar(50) NOT NULL,
  `namakomisi` varchar(100) NOT NULL,
  `pinakses` varchar(8) NOT NULL,
  PRIMARY KEY (`nkomisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komisis`
--

LOCK TABLES `komisis` WRITE;
/*!40000 ALTER TABLE `komisis` DISABLE KEYS */;
/*!40000 ALTER TABLE `komisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(12) NOT NULL,
  `nama` varchar(30) NOT NULL DEFAULT '-',
  `email` varchar(30) NOT NULL DEFAULT '-',
  `jurusan` varchar(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nim` (`nim`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `email`, `jurusan`) VALUES (1,'552017019','FEBRI DARMA KRISTANTO','552017019@student.uksw.edu','Teknik Mesin'),(2,'552018002','NADILA AGUSTINA','552018002@student.uksw.edu','Teknik Jahit'),(3,'552020999','Siapasaja yang mau','iapa@saapasapa.com','Teknik Sipil'),(4,'552018003','NOVA DIAH SARI','552018003@student.uksw.edu','Teknik Masak'),(5,'21498192','Ketela Rambat','ketela@orixa.com','Teknik Boga');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `kode` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`id`, `nama`, `kode`) VALUES (1,'Abidin','1'),(2,'Temora','2'),(3,'Sukita','3');
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonebook`
--

DROP TABLE IF EXISTS `phonebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama` (`nama`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nip` (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebook`
--

LOCK TABLES `phonebook` WRITE;
/*!40000 ALTER TABLE `phonebook` DISABLE KEYS */;
INSERT INTO `phonebook` (`id`, `nip`, `nama`, `telp`, `alamat`, `email`) VALUES (1,'11','Shio Tho','6278787878','Bima','shioto@gmail.com'),(2,'22','Kee Pho','628090909077','Denpasar','keepho@gmail.com'),(3,'33','Tha hoo','62809877654321','Palu','thaahoo@gmail.com'),(6,'66','Temon','080902763829','Pulau Biru','temon@blueisland.com');
/*!40000 ALTER TABLE `phonebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonebookpresen`
--

DROP TABLE IF EXISTS `phonebookpresen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebookpresen` (
  `id` int(11) NOT NULL,
  `idphone` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `masuk` date NOT NULL,
  `waktumasuk` time NOT NULL,
  `keluar` date DEFAULT NULL,
  `waktukeluar` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ppresen_uk` (`nip`,`masuk`,`keluar`,`waktukeluar`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebookpresen`
--

LOCK TABLES `phonebookpresen` WRITE;
/*!40000 ALTER TABLE `phonebookpresen` DISABLE KEYS */;
INSERT INTO `phonebookpresen` (`id`, `idphone`, `nip`, `masuk`, `waktumasuk`, `keluar`, `waktukeluar`) VALUES (0,1,11,'2021-05-06','01:43:34','2022-03-06','20:53:34'),(1,2,22,'2021-01-11','05:31:13','2021-01-11','05:31:56'),(2,1,11,'2021-01-11','05:31:17','2021-01-11','05:31:52'),(3,3,33,'2021-01-11','05:31:35','2021-01-11','05:31:59'),(4,8,55,'2021-01-11','05:31:39','2021-01-11','05:32:02'),(9,1,11,'2021-01-12','05:31:56','2021-01-12','05:32:18'),(10,3,33,'2021-01-12','05:32:00','2021-01-12','05:32:20'),(11,2,22,'2021-01-12','05:32:02','2021-01-12','05:32:16'),(12,8,55,'2021-01-12','05:32:04','2021-01-12','05:32:14'),(17,8,55,'2021-01-13','05:32:37','2021-01-13','05:32:56'),(18,3,33,'2021-01-13','05:32:39','2021-01-13','05:32:47'),(19,2,22,'2021-01-13','05:32:41','2021-01-13','05:32:51'),(20,1,11,'2021-01-13','05:32:43','2021-01-13','05:32:49'),(25,8,55,'2021-01-14','05:33:08','2021-01-14','05:33:17'),(26,3,33,'2021-01-14','05:33:10','2021-01-14','05:33:15'),(27,1,11,'2021-01-14','05:33:12','2021-01-14','05:33:19'),(31,3,33,'2021-01-15','05:33:35','2021-01-15','05:33:46'),(32,2,22,'2021-01-15','05:33:39','2021-01-15','05:33:48'),(33,8,55,'2021-01-15','05:33:41','2021-01-15','05:33:50'),(37,1,11,'2021-02-22','05:34:04','2021-02-22','05:34:25'),(38,2,22,'2021-02-22','05:34:07','2021-02-22','05:34:23'),(39,3,33,'2021-02-22','05:34:09','2021-02-22','05:34:21'),(40,8,55,'2021-02-22','05:34:13','2021-02-22','05:34:27'),(45,3,33,'2021-02-23','05:34:42','2021-02-23','05:34:51'),(46,2,22,'2021-02-23','05:34:44','2021-02-23','05:34:53'),(47,8,55,'2021-02-23','05:34:46','2021-02-23','05:34:57'),(48,1,11,'2021-02-23','05:34:47','2021-02-23','05:34:55'),(53,1,11,'2021-02-24','05:35:05','2021-02-24','05:35:14'),(54,2,22,'2021-02-24','05:35:07','2021-02-24','05:35:16'),(55,3,33,'2021-02-24','05:35:10','2021-02-24','05:35:18'),(56,8,55,'2021-02-24','05:35:12','2021-02-24','05:35:19'),(61,8,55,'2021-02-25','05:35:55','2021-02-25','05:36:04'),(62,3,33,'2021-02-25','05:35:57','2021-02-25','05:36:06'),(63,2,22,'2021-02-25','05:35:59','2021-02-25','05:36:08'),(64,1,11,'2021-02-25','05:36:00','2021-02-25','05:36:10'),(69,3,33,'2021-02-26','05:36:40','2021-02-26','05:36:50'),(70,1,11,'2021-02-26','05:36:43','2021-02-26','05:36:53'),(71,8,55,'2021-02-26','05:36:45','2021-02-26','05:36:48'),(75,1,11,'2021-02-27','05:37:20','2021-02-27','05:37:26'),(76,2,22,'2021-02-27','05:37:22','2021-02-27','05:37:28'),(79,2,22,'2021-03-01','05:37:46','2021-03-01','05:37:56'),(80,1,11,'2021-03-01','05:37:47','2021-03-01','05:37:58'),(81,8,55,'2021-03-01','05:37:50','2021-03-01','05:38:02'),(82,3,33,'2021-03-01','05:37:52','2021-03-01','05:38:00'),(87,3,33,'2021-03-02','05:38:41','2021-03-02','05:38:49'),(88,2,22,'2021-03-02','05:38:43','2021-03-02','05:38:48'),(89,1,11,'2021-03-02','05:38:45','2021-03-02','05:38:52'),(93,8,55,'2021-03-03','05:39:04','2021-03-03','05:39:09'),(94,2,22,'2021-03-03','05:39:06','2021-03-03','05:39:13'),(95,1,11,'2021-03-03','05:39:07','2021-03-03','05:39:11'),(100,2,22,'2021-03-04','05:40:04','2021-03-04','05:40:14'),(101,3,33,'2021-03-04','05:40:06','2021-03-04','05:40:12'),(102,8,55,'2021-03-04','05:40:08','2021-03-04','05:40:18'),(103,1,11,'2021-03-04','05:40:10','2021-03-04','05:40:16'),(108,1,11,'2021-03-24','05:40:27','2021-03-24','05:40:38'),(109,2,22,'2021-03-24','05:40:28','2021-03-24','05:40:37'),(110,3,33,'2021-03-24','05:40:30','2021-03-24','05:40:36'),(111,8,55,'2021-03-24','05:40:31','2021-03-24','05:40:40'),(116,3,33,'2021-03-25','05:41:01','2021-03-25','05:41:09'),(117,8,55,'2021-03-25','05:41:03','2021-03-25','05:41:10'),(118,1,11,'2021-03-25','05:41:05','2021-03-25','05:41:12'),(119,2,22,'2021-03-25','05:41:07','2021-03-25','05:41:15'),(124,8,55,'2021-04-05','06:41:42','2021-04-05','06:41:51'),(125,1,11,'2021-04-05','06:41:44','2021-04-05','06:41:53'),(126,2,22,'2021-04-05','06:41:46','2021-04-05','06:41:55'),(127,3,33,'2021-04-05','06:41:48','2021-04-05','06:41:57'),(132,3,33,'2021-04-06','06:42:04','0000-00-00','00:00:00'),(133,8,55,'2021-04-06','06:42:07','0000-00-00','00:00:00'),(134,1,11,'2021-04-06','06:42:09','0000-00-00','00:00:00'),(135,2,22,'2021-04-06','06:42:10','0000-00-00','00:00:00'),(136,2,22,'2021-04-07','06:42:17','2021-04-07','06:42:24'),(137,3,33,'2021-04-07','06:42:18','2021-04-07','06:42:25'),(138,8,55,'2021-04-07','06:42:20','2021-04-07','06:42:27'),(139,1,11,'2021-04-07','06:42:22','2021-04-07','06:42:29'),(144,1,11,'2021-04-08','06:42:41','2021-04-08','06:42:48'),(145,3,33,'2021-04-08','06:42:43','2021-04-08','06:42:50'),(146,8,55,'2021-04-08','06:42:45','2021-04-08','06:42:52'),(150,1,11,'2021-04-29','13:32:25','2021-04-29','13:36:44'),(152,2,22,'2021-04-29','13:39:51','2021-04-29','13:40:11'),(154,1,11,'2021-04-29','13:41:49','2021-04-29','13:44:08'),(156,1,11,'2021-04-29','13:44:58','0000-00-00','00:00:00'),(157,3,33,'2021-04-29','13:52:20','0000-00-00','00:00:00');
/*!40000 ALTER TABLE `phonebookpresen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precences`
--

DROP TABLE IF EXISTS `precences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precences` (
  `idpresensi` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL DEFAULT current_timestamp(),
  `masuk` datetime NOT NULL DEFAULT current_timestamp(),
  `keluar` datetime DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`idpresensi`),
  UNIQUE KEY `UN_presensi` (`id`,`tgl`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precences`
--

LOCK TABLES `precences` WRITE;
/*!40000 ALTER TABLE `precences` DISABLE KEYS */;
INSERT INTO `precences` (`idpresensi`, `id`, `tgl`, `masuk`, `keluar`, `keterangan`) VALUES (1,1,'2020-12-01','2020-12-01 08:00:00','2020-12-01 16:00:00','Keluar'),(2,2,'2020-12-01','2020-12-01 08:00:00','2020-12-01 16:00:00','Keluar'),(3,3,'2020-12-01','2020-12-01 08:00:00','2020-12-01 16:00:00','Keluar'),(4,1,'2020-12-02','2020-12-02 08:00:00','2020-12-02 16:00:00','Keluar'),(5,2,'2020-12-02','2020-12-02 08:00:00','2020-12-02 16:00:00','Keluar'),(6,3,'2020-12-02','2020-12-02 08:00:00','2020-12-02 16:00:00','Keluar'),(7,1,'2020-12-03','2020-12-03 08:00:00','2020-12-03 16:00:00','Keluar'),(8,2,'2020-12-03','2020-12-03 08:00:00','2020-12-03 16:00:00','Keluar'),(9,3,'2020-12-03','2020-12-03 08:00:00','2020-12-03 16:00:00','Keluar'),(10,1,'2020-12-04','2020-12-04 08:00:00','2020-12-04 16:00:00','Keluar'),(11,2,'2020-12-04','2020-12-04 08:00:00','2020-12-04 16:00:00','Keluar'),(12,3,'2020-12-04','2020-12-04 08:00:00','2020-12-04 16:00:00','Keluar'),(13,1,'2020-12-05','2020-12-05 08:00:00','2020-12-05 16:00:00','Keluar'),(14,2,'2020-12-05','2020-12-05 08:00:00','2020-12-05 16:00:00','Keluar'),(15,3,'2020-12-05','2020-12-05 08:00:00','2020-12-05 16:00:00','Keluar'),(16,1,'2020-12-06','2020-12-06 08:00:00','2020-12-06 16:00:00','Keluar'),(17,2,'2020-12-06','2020-12-06 08:00:00','2020-12-06 16:00:00','Keluar'),(18,3,'2020-12-06','2020-12-06 08:00:00','2020-12-06 16:00:00','Keluar'),(19,1,'2020-12-07','2020-12-07 08:00:00','2020-12-07 16:00:00','Keluar'),(20,2,'2020-12-07','2020-12-07 08:00:00','2020-12-07 16:00:00','Keluar'),(21,3,'2020-12-07','2020-12-07 08:00:00','2020-12-07 16:00:00','Keluar'),(22,1,'2020-12-08','2020-12-08 08:00:00','2020-12-08 16:00:00','Keluar'),(23,2,'2020-12-08','2020-12-08 08:00:00','2020-12-08 16:00:00','Keluar'),(24,3,'2020-12-08','2020-12-08 08:00:00','2020-12-08 16:00:00','Keluar'),(25,1,'2020-12-09','2020-12-09 08:00:00','2020-12-09 16:00:00','Keluar'),(26,2,'2020-12-09','2020-12-09 08:00:00','2020-12-09 16:00:00','Keluar'),(27,3,'2020-12-09','2020-12-09 08:00:00','2020-12-09 16:00:00','Keluar'),(28,1,'2020-12-10','2020-12-10 08:00:00','2020-12-10 16:00:00','Keluar'),(29,2,'2020-12-10','2020-12-10 08:00:00','2020-12-10 16:00:00','Keluar'),(30,3,'2020-12-10','2020-12-10 08:00:00','2020-12-10 16:00:00','Keluar'),(31,1,'2020-12-11','2020-12-11 08:00:00','2020-12-11 16:00:00','Keluar'),(32,3,'2020-12-11','2020-12-11 08:00:00','2020-12-11 16:00:00','Keluar'),(33,1,'2020-12-12','2020-12-12 08:00:00','2020-12-12 16:00:00','Keluar'),(34,2,'2020-12-12','2020-12-12 08:00:00','2020-12-12 16:00:00','Keluar'),(35,3,'2020-12-12','2020-12-12 08:00:00','2020-12-12 16:00:00','Keluar'),(36,1,'2020-12-13','2020-12-13 08:00:00','2020-12-13 16:00:00','Keluar'),(37,2,'2020-12-13','2020-12-13 08:00:00','2020-12-13 16:00:00','Keluar'),(38,3,'2020-12-13','2020-12-13 08:00:00','2020-12-13 16:00:00','Keluar'),(39,1,'2020-12-14','2020-12-14 08:00:00','2020-12-14 16:00:00','Keluar'),(40,2,'2020-12-14','2020-12-14 08:00:00','2020-12-14 16:00:00','Keluar'),(41,3,'2020-12-14','2020-12-14 08:00:00','2020-12-14 16:00:00','Keluar'),(42,1,'2020-12-15','2020-12-15 08:00:00','2020-12-15 16:00:00','Keluar'),(43,2,'2020-12-15','2020-12-15 08:00:00','2020-12-15 16:00:00','Keluar'),(44,3,'2020-12-15','2020-12-15 08:00:00','2020-12-15 16:00:00','Keluar'),(45,2,'2020-12-16','2020-12-16 08:00:00','2020-12-16 16:00:00','Keluar'),(46,3,'2020-12-16','2020-12-16 08:00:00','2020-12-16 16:00:00','Keluar'),(47,1,'2020-12-17','2020-12-17 08:00:00','2020-12-17 16:00:00','Keluar'),(48,2,'2020-12-17','2020-12-17 08:00:00','2020-12-17 16:00:00','Keluar'),(49,3,'2020-12-17','2020-12-17 08:00:00','2020-12-17 16:00:00','Keluar'),(50,1,'2021-01-04','2021-01-04 08:00:00','2021-01-04 16:00:00','Keluar'),(51,2,'2021-01-04','2021-01-04 08:00:00','2021-01-04 16:00:00','Keluar'),(52,3,'2021-01-04','2021-01-04 08:00:00','2021-01-04 16:00:00','Keluar'),(53,1,'2021-01-05','2021-01-05 08:00:00','2021-01-05 16:00:00','Keluar'),(54,2,'2021-01-05','2021-01-05 08:00:00','2021-01-05 16:00:00','Keluar'),(55,3,'2021-01-05','2021-01-05 08:00:00','2021-01-05 16:00:00','Keluar'),(56,1,'2021-01-06','2021-01-06 08:00:00','2021-01-06 16:00:00','Keluar'),(57,2,'2021-01-06','2021-01-06 08:00:00','2021-01-06 16:00:00','Keluar'),(58,3,'2021-01-06','2021-01-06 08:00:00','2021-01-06 16:00:00','Keluar'),(59,2,'2021-01-07','2021-01-07 08:00:00','2021-01-07 16:00:00','Keluar'),(60,3,'2021-01-07','2021-01-07 08:00:00','2021-01-07 16:00:00','Keluar'),(61,1,'2021-01-08','2021-01-08 08:00:00','2021-01-08 16:00:00','Keluar'),(62,2,'2021-01-08','2021-01-08 08:00:00','2021-01-08 16:00:00','Keluar'),(63,3,'2021-01-08','2021-01-08 08:00:00','2021-01-08 16:00:00','Keluar'),(64,1,'2021-01-09','2021-01-09 08:00:00','2021-01-09 16:00:00','Keluar'),(65,2,'2021-01-09','2021-01-09 08:00:00','2021-01-09 16:00:00','Keluar'),(66,1,'2021-01-10','2021-01-10 08:00:00','2021-01-10 16:00:00','Keluar'),(67,2,'2021-01-10','2021-01-10 08:00:00','2021-01-10 16:00:00','Keluar'),(68,3,'2021-01-10','2021-01-10 08:00:00','2021-01-10 16:00:00','Keluar'),(69,1,'2021-01-11','2021-01-11 08:00:00','2021-01-11 16:00:00','Keluar'),(70,3,'2021-01-11','2021-01-11 08:00:00','2021-01-11 16:00:00','Keluar'),(71,1,'2021-01-12','2021-01-12 08:00:00','2021-01-12 16:00:00','Keluar'),(72,2,'2021-01-12','2021-01-12 08:00:00','2021-01-12 16:00:00','Keluar'),(73,3,'2021-01-12','2021-01-12 08:00:00','2021-01-12 16:00:00','Keluar'),(74,1,'2021-01-13','2021-01-13 08:00:00','2021-01-13 16:00:00','Keluar'),(75,2,'2021-01-13','2021-01-13 08:00:00','2021-01-13 16:00:00','Keluar'),(76,3,'2021-01-13','2021-01-13 08:00:00','2021-01-13 16:00:00','Keluar'),(77,1,'2021-02-13','2021-02-13 08:00:00','2021-02-13 16:00:00','Keluar'),(78,2,'2021-02-13','2021-02-13 08:00:00','2021-02-13 16:00:00','Keluar'),(79,3,'2021-02-13','2021-02-13 08:00:00','2021-02-13 16:00:00','Keluar'),(80,1,'2021-02-14','2021-02-14 08:00:00','2021-02-14 16:00:00','Keluar'),(81,2,'2021-02-14','2021-02-14 08:00:00','2021-02-14 16:00:00','Keluar'),(82,3,'2021-02-14','2021-02-14 08:00:00','2021-02-14 16:00:00','Keluar'),(83,1,'2021-03-09','2021-03-09 08:00:00','2021-03-09 17:29:40','Keluar'),(84,2,'2021-03-09','2021-03-09 08:29:17',NULL,'Masuk'),(85,3,'2021-03-09','2021-03-09 07:29:24',NULL,'Masuk'),(86,1,'2021-03-18','2021-03-18 18:13:31','2021-03-18 06:24:38','Keluar'),(89,3,'2021-03-18','2021-03-18 18:25:20',NULL,'Masuk'),(90,1,'2021-03-30','2021-03-30 15:39:24','2021-03-30 03:39:54','Keluar'),(92,1,'2021-04-05','2021-04-05 10:09:51','2021-04-05 10:10:56','Keluar'),(94,1,'2021-04-10','2021-04-10 13:26:51','2021-04-10 01:46:55','Keluar'),(98,1,'2021-04-17','2021-04-17 14:14:26','2021-04-17 02:16:27','Keluar'),(100,1,'2021-04-19','2021-04-19 22:17:37','2021-04-19 10:17:51','Keluar'),(102,1,'2021-06-05','2021-06-05 10:46:13','2021-06-05 10:48:39','Keluar'),(105,1,'2021-12-14','2021-12-14 08:21:34',NULL,'Masuk'),(106,1,'2022-07-29','2022-07-29 09:11:07',NULL,'Masuk'),(107,2,'2022-07-29','2022-07-29 09:11:23',NULL,'Masuk'),(108,2,'2023-03-15','2023-03-15 13:23:46',NULL,'Masuk');
/*!40000 ALTER TABLE `precences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realisasikomisi`
--

DROP TABLE IF EXISTS `realisasikomisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realisasikomisi` (
  `idrealisasi` int(11) NOT NULL AUTO_INCREMENT,
  `idrencana` int(11) NOT NULL,
  `realisasikerja` varchar(100) NOT NULL DEFAULT '-',
  `tglrealisasi` date NOT NULL DEFAULT current_timestamp(),
  `keteranganrealisasi` varchar(100) DEFAULT '-',
  `nominalkeluar` int(11) NOT NULL DEFAULT 0,
  `nominalmasuk` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idrealisasi`),
  KEY `idrencana` (`idrencana`),
  CONSTRAINT `realisasikomisi_ibfk_1` FOREIGN KEY (`idrencana`) REFERENCES `rencanakomisi` (`idrencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realisasikomisi`
--

LOCK TABLES `realisasikomisi` WRITE;
/*!40000 ALTER TABLE `realisasikomisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `realisasikomisi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`inir8265`@`localhost`*/ /*!50003 TRIGGER `realisasikomisi_after_insert` AFTER INSERT ON `realisasikomisi` FOR EACH ROW BEGIN
UPDATE rencanakomisi SET nominalrealisasi = nominalrealisasi - NEW.nominalmasuk + NEW.nominalkeluar WHERE rencanakomisi.idrencana = NEW.idrencana;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`inir8265`@`localhost`*/ /*!50003 TRIGGER `updaterealisasi` AFTER UPDATE ON `realisasikomisi` FOR EACH ROW BEGIN
UPDATE rencanakomisi SET nominalrealisasi = nominalrealisasi + OLD.nominalmasuk - OLD.nominalkeluar - NEW.nominalmasuk + NEW.nominalkeluar;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`inir8265`@`localhost`*/ /*!50003 TRIGGER `deleterealisasi` BEFORE DELETE ON `realisasikomisi` FOR EACH ROW BEGIN
UPDATE rencanakomisi SET rencanakomisi.nominalrealisasi = rencanakomisi.nominalrealisasi + OLD.nominalmasuk - OLD.nominalkeluar WHERE rencanakomisi.idrencana = OLD.idrencana;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rencanakomisi`
--

DROP TABLE IF EXISTS `rencanakomisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rencanakomisi` (
  `idrencana` int(11) NOT NULL AUTO_INCREMENT,
  `thnanggaran` varchar(16) NOT NULL,
  `nkomisi` varchar(50) DEFAULT NULL,
  `rencanakerja` varchar(100) NOT NULL DEFAULT '-',
  `nominalanggaran` int(11) NOT NULL DEFAULT 0,
  `wakturencana` varchar(20) NOT NULL DEFAULT 'jan-des',
  `keterangan` varchar(500) NOT NULL DEFAULT '-',
  `nominalrealisasi` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idrencana`),
  KEY `nkomisi` (`nkomisi`),
  CONSTRAINT `rencanakomisi_ibfk_1` FOREIGN KEY (`nkomisi`) REFERENCES `komisis` (`nkomisi`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rencanakomisi`
--

LOCK TABLES `rencanakomisi` WRITE;
/*!40000 ALTER TABLE `rencanakomisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `rencanakomisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_laundry`
--

DROP TABLE IF EXISTS `t_laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_laundry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_laundry`
--

LOCK TABLES `t_laundry` WRITE;
/*!40000 ALTER TABLE `t_laundry` DISABLE KEYS */;
INSERT INTO `t_laundry` (`id`, `nama`, `alamat`, `telp`) VALUES (1,'Laundry Laris','Salatiga 001','0897867564'),(2,'Andro Laundry','Solo 001','06837987434'),(3,'Miaauu Laundry','Semarang 03','09323453453'),(4,'Joshua First Style Laundry','Salatiga 00202','082226184700'),(5,'Trombo Clean Laundrey','jl. trombo trombo','0329742897928'),(6,'Peacock Brightz','Palm Tree 12','09872384724'),(7,'Good Tabiek','Jl. Baik Saja 321','0852741963'),(8,'Yakobus:3 -4','Pdt. Helen Ruth Manurung S.Th.','20210919');
/*!40000 ALTER TABLE `t_laundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inir8265_test'
--

--
-- Dumping routines for database 'inir8265_test'
--

--
-- Final view structure for view `anggaranrealisasi`
--

/*!50001 DROP TABLE IF EXISTS `anggaranrealisasi`*/;
/*!50001 DROP VIEW IF EXISTS `anggaranrealisasi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`inir8265`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `anggaranrealisasi` AS select `realisasikomisi`.`idrealisasi` AS `idrealisasi`,`rencanakomisi`.`idrencana` AS `idrencana`,`rencanakomisi`.`thnanggaran` AS `thnanggaran`,`rencanakomisi`.`rencanakerja` AS `rencanakerja`,`rencanakomisi`.`nominalanggaran` AS `nominalanggaran`,`rencanakomisi`.`nominalrealisasi` AS `nominalrealisasi`,`rencanakomisi`.`wakturencana` AS `wakturencana`,`rencanakomisi`.`keterangan` AS `keterangan`,`realisasikomisi`.`keteranganrealisasi` AS `keteranganrealisasi`,`realisasikomisi`.`tglrealisasi` AS `tglrealisasi`,`realisasikomisi`.`nominalmasuk` AS `nominalmasuk`,`realisasikomisi`.`nominalkeluar` AS `nominalkeluar` from (`rencanakomisi` join `realisasikomisi` on(`rencanakomisi`.`idrencana` = `realisasikomisi`.`idrencana`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 13:00:39
