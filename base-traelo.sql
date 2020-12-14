CREATE DATABASE  IF NOT EXISTS `traelo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `traelo`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: traelo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id_actividades` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `estado` enum('Pendiente','Finalizado') NOT NULL DEFAULT 'Pendiente',
  `correo_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id_actividades`),
  KEY `fk_id_usuario_idx` (`correo_usuario`),
  CONSTRAINT `fk_correo_usuario` FOREIGN KEY (`correo_usuario`) REFERENCES `usuarios` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (2,'Viajar a ceiba','No he alistado nada de mi maleta y me quiero ir a dormir FINALIZADO','Finalizado','correodeejemplo1@unicah.edu'),(4,'Actividad cuatro','Actividad Realizada','Finalizado','correodeejemplo1@unicah.edu'),(5,'Comprar un Ferrari','color azul','Finalizado','correodeejemplo1@unicah.edu'),(10,'Pasear al Pitbull por el parque','El dia domingo','Pendiente','miltonserrano3000@gmail.com'),(11,'Quemar llantas en el puente','Llevar gasolina por si estan humedas JAJAJAJAAJ','Finalizado','miltonserrano3000@gmail.com'),(12,'Pasar Seminario','pues si wey, no mames','Finalizado','correodeejemplo1@unicah.edu'),(13,'Pasar calculo','con 120 puntos','Pendiente','correodeejemplo1@unicah.edu'),(16,'Polache ','hoy si papa','Pendiente','correodeejemplo1@unicah.edu'),(17,'Hacer baleadas','Con todo','Pendiente','miltonserrano3000@gmail.com'),(18,'Viaje a Italia','Vuelo el Sábado a las 12:00pm saliendo de San Salvador','Finalizado','hitlerlacoste777@gmail.com'),(20,'Cita con Karla','En el patio de mi casa a la luz de las estrellas con una colchoneta y dos latas de fourloko','Pendiente','elnegrojose3@gmail.com'),(22,'fiesta de noche','en la disco','Pendiente','correodeejemplo1@unicah.edu'),(24,'Comprar un Canguro','En Australia','Finalizado','kjcarvajalmakalister@gmail.com'),(25,'Correr','Por las mañanas','Pendiente','kjcarvajalmakalister@gmail.com'),(26,'Aprender a volar','Sin paracaidas','Pendiente','kjcarvajalmakalister@gmail.com'),(27,'Navidad','Cuetes, tamales, cerveza','Finalizado','kjcarvajalmakalister@gmail.com'),(28,'Viajar a Dubai','en canoa','Pendiente','hitlerlacoste777@gmail.com'),(29,'Guia de Invest','Ultima guia que me rompe los wevos','Pendiente','brif_chavezr@unicah.edu'),(30,'Mi hermana habla mucha paja','Ahora esta hablando bajito','Finalizado','brif_chavezr@unicah.edu');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `correo` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verificacion` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`correo`),
  UNIQUE KEY `correo_UNIQUE` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('brif_chavezr@unicah.edu','$2a$10$uZLiwsfOP3IM6gqYK6fMQumGRvAHybrBh1HKnEDVsXg7PbmVUVO6K',1),('correodeejemplo1@unicah.edu','$2a$10$DIpJ..z/EMIZws1F7mrTueH9YiYLyKIcEt2sj1RMP9oKuxXomwmhu',0),('elnegrojose3@gmail.com','$2a$10$P9M5/ooBZYwHrHexliqPXO.QhxbWKM8uBQXYH8rkZX9BfgRnxCsBq',0),('hitlerlacoste777@gmail.com','$2a$10$jTLOZFcRQykelYwGJ9DIauYcYDXG1znz99HXvMq.t7x97r8/1as5C',0),('jxirocxrvxjxl@gmail.com','$2a$10$GU9K5f0eVrY5eXXfbiPNu..tT1djrYj4ZD.FS3uA5gcz5wcnO8XEK',1),('kjcarvajalmakalister@gmail.com','$2a$10$yEqqVf8huUjKzUYpXwTrRe0.mfJcZYTtPDtANy0ucZ70/ibl5A62y',1),('loki123@gmail.com','$2a$10$15/K/RzZNZ17nt6Vg7IoP.YVNfXNS5tjm8zDzDFdTNe.Jv9ihJTNi',0),('miltonserrano3000@gmail.com','$2a$10$Ql1tV8zu2ywYFxqB0DIUB.4ZHKchXpl7Af53.HoN8LfmYVmCadbzu',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'traelo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 21:55:12
