-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopping_cart
-- ------------------------------------------------------
-- Server version	8.0.29

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

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (3,'veeresh','12345'),(5,'veeresh','123456'),(6,'tarun','123'),(7,'manoj','123'),(8,'chetan','12345'),(9,'ashu','12345'),(10,'as','asd'),(11,'admin','123'),(12,'admin1','admin'),(13,'admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `discount_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (89,'white sofa','1',4999,20,'admin','https://www.ulcdn.net/images/products/309981/original/FNSF52WCNW3_-_main_1.png?1606711207',28);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  `category_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'light','light'),(2,'mobile','accesories');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` varchar(45) NOT NULL,
  `stocks` int NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (32,'black chair','chair',599,'nice chair',97,'http://cdn.home-designing.com/wp-content/uploads/2017/11/black-highback-sitting-room-chairs-600x629.jpg'),(33,'Red chair','chair',299,'nice chair',100,'https://www.ulcdn.net/opt/www.ulcdn.net/images/taxon_images/taxon/305/taxon_col_3/Lounge-chairs.jpg'),(34,'yellow chair','chair',799,'nice chair',98,'https://5.imimg.com/data5/ANDROID/Default/2022/5/SH/OB/GP/35676527/product-jpeg-500x500.jpg'),(35,'Green chair','chair',799,'nice chair',99,'https://rukminim1.flixcart.com/image/612/612/k5lcvbk0/living-room-chair/b/9/v/green-plywood-ph0121-flipkart-perfect-homes-green-original-imafz8mh9guu3vgx.jpeg?q=70'),(36,'White Sofa','sofa',1000,'nice chair',99,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmEWSvG3G6uZ_gcwEOXEL7Y3J6sTduH8OAF3AdBeXggcjw_wNg-BP6oEmQSN9Dmd-xvtY&usqp=CAU'),(37,'Leather Sofa','sofa',5999,'nice chair',99,'http://cdn.home-designing.com/wp-content/uploads/2020/05/Camel-Mid-Century-Modern-Leather-Couch-With-Tufted-Cushions-600x600.jpg'),(38,'Blue Sofa','sofa',3999,'nice chair',100,'http://cdn.home-designing.com/wp-content/uploads/2017/08/stylish-sofas-600x600.jpg'),(39,'Black Sofa','sofa',1999,'nice chair',100,'https://st.hzcdn.com/simgs/pictures/living-rooms/u-shape-sectional-sleeper-sofa-alpine-by-nordholtz-5-695-mig-furniture-design-inc-img~8c0105ed0a1f15f0_4-2497-1-7d105a5.jpg'),(40,'Red Sofa','sofa',1999,'nice chair',100,'https://cdn.decoist.com/wp-content/uploads/2016/10/Ingenious-design-of-the-sofa-combines-the-classic-chaise-lounge-form-with-the-comfort-of-a-couch.jpg'),(41,'Wooden Dinning','dinning',10000,'nice chair',99,'https://cdn4.thearmchair.in/spree/images/large/FRTBDT11WN10015/clovis-capra-6-seater-dining-table-set-FRTBDT11WN10015-lifestyle.jpg?1502916601'),(42,'Modern Dinning','dinning',10000,'nice chair',100,'https://stylesatlife.com/wp-content/uploads/2021/03/Small-Dining-Table-Design-1.jpg.webp'),(43,'Glass Dinning','dinning',10000,'nice ',100,'http://cdn.home-designing.com/wp-content/uploads/2019/11/glass-top-dining-table-design-ideas-and-where-to-buy-600x600.jpg'),(44,'Classic Dinning','dinning',10000,'nice ',99,'https://i.ytimg.com/vi/5MybWq5b2is/maxresdefault.jpg'),(45,'Large Dinning','dinning',10000,'nice ',100,'https://i.pinimg.com/736x/5c/ba/8b/5cba8bae63f24406a1fbb1b842adcf1b--dining-table-design-dining-room-tables.jpg'),(46,'King Size Bed','beds',5000,'nice ',99,'https://i.pinimg.com/736x/5c/ba/8b/5cba8bae63f24406a1fbb1b842adcf1b--dining-table-design-dining-room-tables.jpg'),(47,'Queen Size Bed','beds',3000,'nice ',100,'https://cdn.shopify.com/s/files/1/0044/1208/0217/products/MRIVQKBWEN_LS_900x.jpg?v=1610476692'),(48,'Single Size Bed','beds',2000,'nice ',99,'https://ii1.pepperfry.com/media/catalog/product/c/l/800x880/clara-upholstered-single-size-bed-in-natural-finish-clara-upholstered-single-size-bed-in-natural-fin-dsofog.jpg'),(49,'Bunk Size Bed','beds',8000,'nice ',100,'https://m.media-amazon.com/images/I/71gtNu-M76L._SL1280_.jpg'),(50,'Modern Bed','beds',8000,'nice ',100,'https://cdn.trendir.com/wp-content/uploads/2017/07/low-mod-loft-king-contemporary.jpg'),(51,'White chair','chair',299,'nice',100,'https://www.ikea.com/in/en/images/products/skruvsta-swivel-chair-ysane-white__0724712_pe734595_s5.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_log`
--

DROP TABLE IF EXISTS `sales_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_log`
--

LOCK TABLES `sales_log` WRITE;
/*!40000 ALTER TABLE `sales_log` DISABLE KEYS */;
INSERT INTO `sales_log` VALUES (15,'beds','beds',4999,1,'26/6/2022-15:35:7'),(16,'beds','beds',4999,1,'26/6/2022-15:35:7'),(17,'sofa','sofa',4999,1,'26/6/2022-18:27:22'),(18,'sofa','sofa',4999,1,'26/6/2022-18:27:22'),(19,'sofa','sofa',4999,1,'26/6/2022-18:30:22'),(20,'sofa','sofa',4999,1,'26/6/2022-18:30:22'),(21,'dinning','dinning',4999,1,'26/6/2022-18:40:22'),(22,'dinning','dinning',4999,1,'26/6/2022-18:40:22'),(23,'dinning','dinning',1000,1,'26/6/2022-18:40:22'),(24,'chair','chair',599,1,'26/6/2022-18:40:22');
/*!40000 ALTER TABLE `sales_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john','admin','john123'),(3,'romo','admin','romo123'),(6,'veeresh','user','123456789'),(14,'admin','admin','admin123'),(17,'user1','user','user123'),(18,'user2','user','user123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `quantity` int NOT NULL,
  `total_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (10,'white sofa',1,4999,4979,'admin','https://www.ulcdn.net/images/products/309981/original/FNSF52WCNW3_-_main_1.png?1606711207'),(14,'Leather Sofa',1,5999,5979,'veeresh','http://cdn.home-designing.com/wp-content/uploads/2020/05/Camel-Mid-Century-Modern-Leather-Couch-With-Tufted-Cushions-600x600.jpg'),(15,'Single Size Bed',1,2000,1980,'veeresh','https://ii1.pepperfry.com/media/catalog/product/c/l/800x880/clara-upholstered-single-size-bed-in-natural-finish-clara-upholstered-single-size-bed-in-natural-fin-dsofog.jpg');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-26 19:30:00
