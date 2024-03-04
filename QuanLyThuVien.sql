CREATE DATABASE  IF NOT EXISTS `se_proj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `se_proj`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: se_proj
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id_person` varchar(12) NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id_person`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('000000001111','test','japtor'),('100010001000','100010001000','1234'),('111111111111','PAYHD','1234'),('123456789111','payhd','123456');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id_book` int NOT NULL AUTO_INCREMENT,
  `name_book` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `publisher` varchar(64) NOT NULL,
  `types` varchar(64) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `storage` varchar(64) DEFAULT NULL,
  `content` varchar(64) NOT NULL,
  `borrowed` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Mein Kampf','Adolf Hitler','Gorth','Political philosophy',10,'New Gorland','',0),(2,'A Song of Ice and Fire','George R. R. Martin','Gorth','High fantasy',10,'La Gorta','',1),(3,'The Lord of the Rings','J. R. R. Tolkien','Allen & Unwin','High fantasy',10,'Henovia','',0),(4,'Batman','Bill Finger','DC Comics','Superhero',3,'La Gorta','',1),(5,'Demonsbane',' Robert B. Marks','Gorth','Fantasy',6,'Los Gortles','',1),(6,'The Hobbit','J. R. R. Tolkien','George Allen & Unwin','Juvenile fantasy',11,'St. Luna','',1),(7,'Harry Potter','J. K. Rowling','Bloomsbury','Fantasy',15,'San Görtaro','',1),(8,'One Thousand and One Nights','Antoine Galland','Gorth','folklore',13,'New Gorland','',0),(9,'The Lion, The Witch, and The Wardrobe','C.S. Lewis','Geoffrey Bles','Children\'s fantasy',6,'Henovia','',0),(10,'Howl\'s Moving Castle','Diana Wynne Jones','Greenwillow Books','Fantasy novel',9,'La Gorta','',0),(11,'A Wrinkle in Time','Madeleine L\'Engle','Ariel Books','science fantasy',11,'Gorrington','',0),(12,'Dune',' Frank Herbert','Gorth','fantasy novel',13,'La Gorta','',1),(13,'A Wizard of Earthsea','Ursula K. Le Guin','Parnassus Press','Bildungsroman',15,'Willingham','',0),(14,'The Hitchhiker’s Guide to The Galaxy','Douglas Adams','Gorth','Novel',2,'Loughan','',0),(15,'Outlander','Diana Gabaldon','Gorth','Novel',4,'Einmalow','',0),(16,'Ella Enchanted','Gail Carson Levine','Gorth','Fantastical adventure',7,'La Gorta','',0),(17,'American Gods','Neil Gaiman','Gorth','Fantasy ',20,'Frozthew','',0),(18,'Snow White and the Seven Dwarfs','Wilhelm Grimm','Grimms','Fairy Tales',15,'La Gorta','',0),(19,'Rapunzel','Jacob Grimm','Grimms','Fairy Tales',16,'Loughan','',0),(20,'Hänsel and Grethel','Wilhelm Grimm','Grimms','Fairy Tales',17,'Hermonie','',0),(21,'Fisherman and the Fish','Alexander Pushkin\n','Grimms','Fairy Tales',18,'Henovia','',0),(22,'Milano is the Fashion capital','Japtor I. G. de Gortheia','Gorth','Fashionista',22,'Rio de Gortaro','',0),(23,'The Buried Giant','Kazuo Ishiguro','Faber and Faber','Fantasy',31,'Zenovia','',0),(24,'An Ember in the Ashes','Sabaa Tahir','Razorbill','Young adult',8,'La Gorta','',0),(25,'Who Fears Death','Nnedi Okorafor','Gorth','Science fantasy',10,'Gorvertz','',0),(26,'We Hunt the Flame','Hafsah Faizal','Farrar, Straus & Giroux','Young adult',14,'La Gorta','',0),(27,'The Hunger Games','Suzanne Collins','Scholastic','Dystopian',5,'Willingham','',0),(28,'To Kill a Mockingbird','Harper Lee','HarperCollins','Gothic',20,'Gorrington','',0),(29,'Nineteen Eighty-Four','George Orwell','Secker & Warburg','political fiction',8,'Henovia','',0),(30,'The Catcher in the Rye','J. D. Salinger','Little, Brown and Company','Realistic fiction, Coming-of-age fiction',15,'Gorvertz','',0),(31,'The Great Gatsby','F. Scott Fitzgerald','Charles Scribner\'s Sons','Tragedy',25,'St. Luna','',0),(32,'Lord of the Flies','William Golding','Faber and Faber','Allegorical novel',10,'New Gorland','',0),(33,'Animal Farm','George Orwell','Gorth','Political satire',6,'San Görtaro','',1),(34,'The Grapes of Wrath','John Steinbeck','The Viking Press-James Lloyd','Novel',7,'La Gorta','',1),(35,'Gone with the Wind','Margaret Mitchell','Macmillan Publishers (United States)','Historical Fiction',12,'Loughan','',0),(36,'Slaughterhouse-Five','Kurt Vonnegut','Delacorte','Dark comedy',13,'La Gorta','',0),(37,'One Flew Over the Cuckoo\'s Nest','Ken Kesey','Viking Press & Signet Books','Tragedy',20,'San Görtaro','',0),(38,'Lolita','Vladimir Nabokov','Olympia Press','Novel',8,'Los Gortles','',1),(39,'Atonement','Ian McEwan','Jonathan Cape','Novel',17,'Los Gortles','',1),(40,'Never Let Me Go','Kazuo Ishiguro','Faber and Faber','Bildungsroman',3,'New Gorland','',1),(41,'Imperium Romanum - Italia','Japtor I. G. de Gortheia','Gorth','History',5,'Rio de Gortaro','',0),(42,'Greek mythology','Japtor I. G. de Gortheia','Gorth','Legendary',5,'Rio de Gortaro','',0),(43,'Sherlock Holmes','Arthur Conan Doyle','Gorth','Detective',9,'Henovia','',0),(44,'Peter Pan','J. M. Barrie','Gorth','Fairy Tales',8,'Loughan','',1),(45,'Portuguese Indian Armadas','Thanh Pahm','Gorth','History',6,'Henovia','',0),(46,'San Siro - Derby della Madonnina','Japtor I. G. de Gortheia','Gorth','Football history',4,'Gorvertz','',0),(47,'The Duke of Death and His Maid','Koharu Inoue','Gorth','Romantic, Comedy',10,'La Forta','',0),(48,'Rascal Does Not Dream','Hajime Kamoshida','Gorth','Romantic, Supernatural',10,'La Forta','',0),(49,'Pinocchio','Park Hye-ryun','Gorth','Romantic',10,'La Forta','',1),(50,'While You Were Sleeping','Park Hye-ryun','Gorth','Romantic',10,'La Forta','',0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowedform`
--

DROP TABLE IF EXISTS `borrowedform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowedform` (
  `formkey` int NOT NULL AUTO_INCREMENT,
  `id_person` varchar(12) NOT NULL,
  `id_book` varchar(12) NOT NULL,
  `borrowed_date` date NOT NULL,
  `deadline` date NOT NULL,
  PRIMARY KEY (`formkey`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowedform`
--

LOCK TABLES `borrowedform` WRITE;
/*!40000 ALTER TABLE `borrowedform` DISABLE KEYS */;
INSERT INTO `borrowedform` VALUES (16,'100010001000','4','2023-10-01','2023-10-07'),(17,'100010001000','6','2023-10-01','2023-10-07'),(18,'100010001000','5','2023-10-01','2023-10-07'),(19,'100010001000','12','2023-10-18','2023-10-25'),(20,'100010001000','15','2023-10-18','2023-10-25'),(21,'100010001000','44','2023-10-18','2023-10-25'),(22,'100010001000','49','2023-10-18','2023-10-25'),(23,'100010001000','38','2023-10-01','2023-10-07'),(24,'200020002000','33','2023-10-18','2023-10-25'),(25,'200020002000','40','2023-10-18','2023-10-25'),(26,'200020002000','39','2023-10-18','2023-10-25'),(27,'200020002000','2','2023-10-18','2023-10-25'),(28,'100010001000','4','2023-12-25','2024-01-01'),(29,'100010001000','7','2023-12-25','2024-01-01'),(30,'100010001000','12','2023-12-25','2024-01-01'),(31,'100010001000','33','2024-01-04','2024-01-11'),(32,'100010001000','34','2024-01-04','2024-01-11');
/*!40000 ALTER TABLE `borrowedform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrower` (
  `id_person` varchar(12) NOT NULL DEFAULT '000000000000',
  `full_name` varchar(64) NOT NULL,
  `gender` varchar(16) DEFAULT NULL,
  `birth_day` date NOT NULL,
  `address` varchar(64) NOT NULL,
  `can_borrow` tinyint DEFAULT '0',
  `origin` tinyint DEFAULT '0',
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES ('100010001000','Einmalow','male','1999-08-08','La Forta',1,1),('200020002000','Frozthew','male','1999-07-20','Zenovia',0,0),('300030003000','Hernarow','female','2003-09-20','St. Luna',0,0),('400040004000','Jalizberg','male','2003-09-20','La Forta',0,0),('500050005000','Mawilton','male','2003-09-20','San Görtaro',0,0),('600060006000','Rosei','female','2003-09-20','Los Gortles',0,0),('700070007000','Zavenstein','female','2003-09-20','New Gorland',0,0),('800080008000','El Sancra','female','2003-09-20','Rio de Gortaro',0,0),('900090009000','Henovia','female','2003-09-20','La Forta',0,0);
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dates` (
  `date` date NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` VALUES ('1001-01-01'),('2023-10-01'),('2023-10-18'),('2023-12-24'),('2023-12-25'),('2024-01-04');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarian` (
  `id_librarian` varchar(12) NOT NULL,
  `full_name` varchar(64) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `birth_day` date NOT NULL,
  `address` varchar(64) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_librarian`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian`
--

LOCK TABLES `librarian` WRITE;
/*!40000 ALTER TABLE `librarian` DISABLE KEYS */;
INSERT INTO `librarian` VALUES ('000000000000','J','male','2003-06-10','St. Luna','1234'),('000000001111','Japtor Gortheia','male','2003-08-20','La Gorta','1234'),('111111111111','PAYHD','male','2003-06-10','a','1234');
/*!40000 ALTER TABLE `librarian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnedform`
--

DROP TABLE IF EXISTS `returnedform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returnedform` (
  `formkey` int NOT NULL AUTO_INCREMENT,
  `id_person` varchar(12) NOT NULL,
  `id_book` varchar(12) NOT NULL,
  `borrowed_date` date NOT NULL,
  `returned_date` date NOT NULL DEFAULT '1001-01-01',
  PRIMARY KEY (`formkey`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnedform`
--

LOCK TABLES `returnedform` WRITE;
/*!40000 ALTER TABLE `returnedform` DISABLE KEYS */;
INSERT INTO `returnedform` VALUES (16,'100010001000','4','2023-10-01','2023-10-18'),(17,'100010001000','6','2023-10-01','2023-12-24'),(18,'100010001000','5','2023-10-01','1001-01-01'),(19,'100010001000','12','2023-10-18','2023-10-18'),(20,'100010001000','15','2023-10-18','1001-01-01'),(21,'100010001000','44','2023-10-18','1001-01-01'),(22,'100010001000','49','2023-10-18','2023-10-18'),(23,'100010001000','38','2023-10-01','2023-10-18'),(24,'200020002000','33','2023-10-18','1001-01-01'),(25,'200020002000','40','2023-10-18','1001-01-01'),(26,'200020002000','39','2023-10-18','1001-01-01'),(27,'200020002000','2','2023-10-18','2023-10-18'),(28,'100010001000','4','2023-12-25','1001-01-01'),(29,'100010001000','7','2023-12-25','1001-01-01'),(30,'100010001000','12','2023-12-25','1001-01-01'),(31,'100010001000','33','2024-01-04','1001-01-01'),(32,'100010001000','34','2024-01-04','1001-01-01');
/*!40000 ALTER TABLE `returnedform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id_book` int NOT NULL AUTO_INCREMENT,
  `name_book` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `types` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `storage` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'Name of Book','Author of Book','Publisher of Book','Type of Book','Quantity of Book','Storaged of Book','Content of Book'),(2,'Name of Book','Author of Book','Publisher of Book','Type of Book','Quantity of Book','Storaged of Book','Content of Book'),(3,'Gor','Japtor','Gorth','g','1','g','g'),(4,'Name of Book','Author of Book','Publisher of Book','Type of Book','9','Storaged of Book','Content of Book'),(5,'Name of Book','Author of Book','Publisher of Book','Type of Book','10','Storaged of Book','Content of Book');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04 15:27:49
