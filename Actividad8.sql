-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Carreras
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_usuario` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'AREA 1: Ciencias Físico-Matemáticas y de las Ingen'),(2,'AREA 2: Ciencias Biológicas y de la Salud'),(3,'AREA 3: Ciencias Sociales'),(4,'AREA 4: Artes y Humanidades');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `Carrera` varchar(200) DEFAULT NULL,
  `Facultad` varchar(200) DEFAULT NULL,
  `Promedio` float DEFAULT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'101','Actuaría','Facultad de Ciencias',8.3),(2,'101','Actuaría','FES Acatlán',8.2),(3,'102','Arquitectura','Facultad de Arquitectura',7.2),(4,'102','Arquitectura','FES Acatlán',8.4),(5,'102','Arquitectura','FES Aragón',7.9),(6,'103','Arquitectura de Paisaje','Facultad de Arquitectura',8.1),(7,'138','Ciencias de Datos','Instituto de Investigaciones en Matemáticas Aplicadas y en Sistemas',7.6),(8,'133','Ciencia de Materiales Sustentables','ENES Unidad Morelia Mich.',7.8),(9,'104','Ciencias de la Computación','Facultad de Ciencias',7.9),(10,'127','Ciencias de la Tierra','Esc. Nacional de Ciencias de la Tierra',7.6),(11,'127','Ciencias de la Tierra','Facultad de Ciencias',7.8),(12,'127','Ciencias de la Tierra','ENES Juriquilla/ Qro.',8.3),(13,'127','Ciencias de la Tierra','ENES Unidad Mérida/ Yuc.',0),(14,'105','Diseño Industrial','Facultad de Arquitectura',8),(15,'105','Diseño Industrial','FES Aragón',8.1),(16,'106','Física','Facultad de Ciencias',7.3),(17,'134','Física Biomédica','Facultad de Ciencias',8),(18,'131','Geociencias','ENES Unidad Morelia/ Mich.',7.5),(19,'139','Ing. Aeroespacial','Facultad de Ingeniería',8.1),(20,'137','Ing. Ambiental','Facultad de Ingeniería',8),(21,'107','Ing. Civil','Facultad de Ingeniería',7.6),(22,'107','Ing. Civil','FES Acatlán',8.9),(23,'107','Ing. Civil','FES Aragón',7.4),(24,'108','Ing. de Minas y Metalurgia','Facultad de Ingeniería',8),(25,'109','Ing. Eléctrica y Electrónica','Facultad de Ingeniería',7.3),(26,'109','Ing. Eléctrica y Electrónica','FES Aragón',8),(27,'110','Ing. en Computación','Facultad de Ingeniería',8.8),(28,'110','Ing. en Computación','FES Aragón',7),(29,'128','Ing. en Energías Renovables','ENES Juriquilla/ Qro.',8.3),(30,'128','Ing. en Energías Renovables','Instituto de Energías Renovables',7.5),(31,'135','Ing. en Sistemas Biomédicos','Facultad de Ingeniería',7.9),(32,'111','Ing. en Telecomunicaciones','Facultad de Ingeniería',8.5),(33,'130','Ing. en Telecomunicaciones/ Sistemas y Electrónica','FES Cuautitlán',8.6),(34,'112','Ing. Geofísica','Facultad de Ingeniería',7),(35,'113','Ing. Geológica','Facultad de Ingeniería',7.3),(36,'120','Ing. Geomática','Facultad de Ingeniería',8.3),(37,'114','Ing. Industrial','Facultad de Ingeniería',8.2),(38,'114','Ing. Industrial','FES Aragón',7.2),(39,'114','Ing. Industrial','FES Cuautitlán',8.4),(40,'115','Ing. Mecánica','Facultad de Ingeniería',7.9),(41,'115','Ing. Mecánica','FES Aragón',8.1),(42,'116','Ing. Mecánica Eléctrica','FES Cuautitlán',7.6),(43,'124','Ing. Mecatrónica','Facultad de Ingeniería',7.8),(44,'117','Ing. Petrolera','Facultad de Ingeniería',7.9),(45,'118','Ing. Química','Facultad de Química',7.6),(46,'118','Ing. Química','FES Cuautitlán',7.8),(47,'118','Ing. Química','FES Zaragoza',8.3),(48,'119','Ing. Química Metalúrgica','Facultad de Química',0),(49,'122','Matemáticas','Facultad de Ciencias',8),(50,'136','Matemáticas Aplicadas','Facultad de Ciencias',8.1),(51,'121','Matemáticas Aplicadas y Computación','FES Acatlán',7.3),(52,'129','Nanotecnología','Centro de Nanociencias y Nanotecnología. Ensenada/ B. C.',8),(53,'126','Tecnología','ENES Juriquilla/ Qro.',7.5),(54,'126','Tecnología','FES Cuautitlán',8.1),(55,'132','Tecnologías para la Información en Ciencias','ENES Unidad Morelia/ Mich.',8),(56,'123','Urbanismo','Facultad de Arquitectura',7.6),(57,'201','Biología','Facultad de Ciencias',8.9),(58,'201','Biología','FES Iztacala',7.4),(59,'201','Biología','FES Zaragoza',8),(60,'201','Biología','FES Zaragoza Campus 3 Tlaxcala',7.3),(61,'218','Bioquímica Diagnóstica','FES Cuautitlán',8),(62,'231','Ciencia de la Nutrición Humana','Facultad de Medicina',8.8),(63,'216','Ciencias Ambientales','ENES Unidad Morelia/ Mich.',7),(64,'216','Ciencias Ambientales','ENES Unidad Mérida/ Yuc.',8.3),(65,'230','Ciencias Agroforestales','ENES Unidad Morelia/ Mich.',7.5),(66,'223','Ciencias Agrogenómicas','ENES Unidad León/ Gto.',7.9),(67,'224','Ciencia Forense','Facultad de Medicina',8.5),(68,'215','Ciencias Genómicas','Instituto de Biotecnología',8.6),(69,'215','Ciencias Genómicas','ENES Juriquilla/ Qro.',7),(70,'202','Cirujano Dentista','Facultad de Odontología',7.3),(71,'202','Cirujano Dentista','FES Iztacala',8.3),(72,'202','Cirujano Dentista','FES Zaragoza',8.2),(73,'225','Ecología','ENES Unidad Mérida/ Yuc.',7.2),(74,'225','Ecología','ENES Unidad Morelia/ Mich.',8.4),(75,'220','Enfermería','Escuela Nacional de Enfermería y Obstetricia',7.9),(76,'220','Enfermería','Escuela Nacional de Enfermería y Obstetricia',8.1),(77,'220','Enfermería','FES Iztacala',7.6),(78,'220','Enfermería','FES Zaragoza',7.8),(79,'220','Enfermería','FES Zaragoza Campus 3 Tlaxcala',7.9),(80,'203','Enfermería y Obstetricia','Escuela Nacional de Enfermería y Obstetricia',7.6),(81,'203','Enfermería y Obstetricia','Escuela Nacional de Enfermería y Obstetricia',7.8),(82,'219','Farmacia','FES Cuautitlán',8.3),(83,'221','Fisioterapia','ENES Unidad León/ Gto.',0),(84,'221','Fisioterapia','Facultad de Medicina',8),(85,'204','Ing. Agrícola','FES Cuautitlán',8.1),(86,'205','Ing. en Alimentos','FES Cuautitlán',7.3),(87,'206','Investigación Biomédica Básica','Facultad de Medicina',8),(88,'217','Manejo Sustentable de Zonas Costeras','ENES Unidad Mérida/ Yuc.',7.5),(89,'207','Medicina Veterinaria y Zootecnia','Facultad de Medicina Veterinaria y Zootecnia',8.1),(90,'207','Medicina Veterinaria y Zootecnia','FES Cuautitlán',8),(91,'208','Médico Cirujano','Facultad de Medicina',7.6),(92,'208','Médico Cirujano','FES Iztacala',8.9),(93,'208','Médico Cirujano','FES Zaragoza',7.4),(94,'226','Neurociencias','ENES Juriquilla/ Qro.',8),(95,'226','Neurociencias','Facultad de Medicina',7.3),(96,'227','Nutriología','FES Zaragoza',8),(97,'222','Odontología','ENES Unidad León/ Gto.',8.8),(98,'209','Optometría','ENES Unidad León/ Gto.',7),(99,'209','Optometría','FES Iztacala',8.3),(100,'228','Órtesis y Prótesis','ENES Juriquilla/ Qro.',7.5),(101,'210','Psicología','Facultad de Psicología',7.9),(102,'210','Psicología','FES Iztacala',8.5),(103,'210','Psicología','Facultad de Psicología',8.6),(104,'210','Psicología','FES Iztacala',7),(105,'210','Psicología','FES Zaragoza',7.3),(106,'210','Psicología','FES Zaragoza Campus 3 Tlaxcala',8.3),(107,'211','Química','Facultad de Química',8.2),(108,'211','Química','FES Cuautitlán',7.2),(109,'212','Química de Alimentos','Facultad de Química',8.4),(110,'229','Química e Ingeniería en Materiales','Facultad de Química',7.9),(111,'213','Química Farmacéutico Biológica','Facultad de Química',8.1),(112,'213','Química Farmacéutico Biológica','FES Zaragoza',7.6),(113,'214','Química Industrial','FES Cuautitlán',7.8),(114,'301','Administración','Facultad de Contaduría y Administración',7.9),(115,'301','Administración','Facultad de Contaduría y Administración',7.6),(116,'301','Administración','Facultad de Contaduria y Administración',7.8),(117,'301','Administración','FES Cuautitlán',8.3),(118,'319','Antropología','Facultad de Ciencias Políticas y Sociales',0),(119,'314','Administración Agropecuaria','ENES Unidad León/ Gto.',8),(120,'302','Ciencias de la Comunicación','Facultad de Ciencias Políticas y Sociales',8.1),(121,'302','Ciencias de la Comunicación','Facultad de Ciencias Políticas y Sociales',7.3),(122,'302','Ciencias de la Comunicación','Facultad de Ciencias Políticas y Sociales',8),(123,'303','Ciencias Políticas y Administración Pública','Facultad de Ciencias Políticas y Sociales',7.5),(124,'303','Ciencias Políticas y Administración Pública','Facultad de Ciencias Políticas y Sociales',8.1),(125,'303','Ciencias Políticas y Administración Pública','Facultad de Ciencias Políticas y Sociales',8),(126,'303','Ciencias Políticas y Administración Pública','FES Acatlán',7.6),(127,'315','Comunicación','FES Acatlán',8.9),(128,'316','Comunicación y Periodismo','FES Aragón',7.4),(129,'304','Contaduría','Facultad de Contaduría y Administración',8),(130,'304','Contaduría','Facultad de Contaduría y Administración',7.3),(131,'304','Contaduría','Facultad de Contaduría y Administración',8),(132,'304','Contaduría','FES Cuautitlán',8.8),(133,'305','Derecho','Facultad de Derecho',7),(134,'305','Derecho','FES Acatlán',8.3),(135,'305','Derecho','FES Aragón',7.5),(136,'305','Derecho','Facultad de Derecho',7.9),(137,'305','Derecho','Facultad de Derecho',8.5),(138,'305','Derecho','FES Acatlán',8.6),(139,'305','Derecho','FES Aragón',7),(140,'318','Desarrollo Comunitario para el Envejecimiento','FES Zaragoza',7.3),(141,'318','Desarrollo Comunitario para el Envejecimiento','FES Zaragoza Campus 3 Tlaxcala',8.3),(142,'320','Desarrollo Territorial','ENES Unidad León/ Gto.',8.2),(143,'306','Economía','Facultad de Economía',7.2),(144,'306','Economía','FES Aragón',8.4),(145,'306','Economía','Facultad de Economía',7.9),(146,'306','Economía','Facultad de Economía',8.1),(147,'306','Economía','FES Acatlán',7.6),(148,'306','Economía','FES Aragón',7.8),(149,'313','Economía Industrial','ENES Unidad León/ Gto.',7.9),(150,'317','Estudios Sociales y Gestión Local','ENES Unidad Morelia/ Mich.',7.6),(151,'307','Geografía','Facultad de Filosofía y Letras',7.8),(152,'322','Geografía Aplicada','Esc. Nacional de Ciencias de la Tierra',8.3),(153,'322','Geografía Aplicada','ENES Unidad Mérida/ Yuc.',0),(154,'307','Geografía','Facultad de Filosofía y Letras',8),(155,'308','Informática','Facultad de Contaduría y Administración',8.1),(156,'308','Informática','Facultad de Contaduría y Administración',7.3),(157,'308','Informática','Facultad de Contaduría y Administración',8),(158,'308','Informática','FES Cuautitlán',7.5),(159,'321','Negocios Internacionales','ENES Juriquilla/ Qro.',8.1),(160,'321','Negocios Internacionales','Facultad de Contaduría y Administración',8),(161,'309','Planificación para el Desarrollo Agropecuario','FES Aragón',7.6),(162,'310','Relaciones Internacionales','Facultad de Ciencias Políticas y Sociales',8.9),(163,'310','Relaciones Internacionales','FES Acatlán',7.4),(164,'310','Relaciones Internacionales','FES Aragón',8),(165,'310','Relaciones Internacionales','Facultad de Ciencias Políticas y Sociales',7.3),(166,'310','Relaciones Internacionales','Facultad de Ciencias Políticas y Sociales',8),(167,'310','Relaciones Internacionales','FES Acatlán',8.8),(168,'310','Relaciones Internacionales','FES Aragón',7),(169,'311','Sociología','Facultad de Ciencias Políticas y Sociales',8.3),(170,'311','Sociología','Facultad de Ciencias Políticas y Sociales',7.5),(171,'311','Sociología','Facultad de Ciencias Políticas y Sociales',7.9),(172,'311','Sociología','FES Acatlán',8.5),(173,'311','Sociología','FES Aragón',8.6),(174,'312','Trabajo Social','Escuela Nacional de Trabajo Social',7),(175,'312','Trabajo Social','Escuela Nacional de Trabajo Social',7.3),(176,'312','Trabajo Social','Escuela Nacional de Trabajo Social',8.3),(177,'437','Administración de Archivos y Gestión Documental','ENES Unidad Morelia/ Mich.',8.2),(178,'437','Administración de Archivos y Gestión Documental','ENES Unidad Morelia/ Mich.',7.2),(179,'437','Administración de Archivos y Gestión Documental','Facultad de Filosofía y Letras',8.4),(180,'401','Artes Visuales','Facultad de Artes y Diseño',7.9),(181,'401','Artes Visuales','Facultad de Artes y Diseño/ Taxco/ Gro.',8.1),(182,'434','Arte y Diseño','Facultad de Artes y Diseño',7.6),(183,'434','Arte y Diseño','Facultad de Artes y Diseño/ Taxco/ Gro.',7.8),(184,'434','Arte y Diseño','ENES Unidad Morelia/ Mich.',7.9),(185,'402','Bibliotecología y Estudios de la información','Facultad de Filosofía y Letras',7.6),(186,'402','Bibliotecología y Estudios de la información','Facultad de Filosofía y Letras',7.8),(187,'403','Canto','Facultad de Música',8.3),(188,'435','Cinematografía','Escuela Nacional de Artes Cinematográficas',0),(189,'404','Composición','Facultad de Música',8),(190,'429','Desarrollo y Gestión Interculturales','ENES Unidad Mérida/ Yuc.',8.1),(191,'429','Desarrollo y Gestión Interculturales','ENES Unidad León/ Gto.',7.3),(192,'429','Desarrollo y Gestión Interculturales','Facultad de Filosofía y Letras',8),(193,'406','Diseño Gráfico','FES Acatlán',7.5),(194,'405','Diseño y Comunicación Visual','Facultad de Artes y Diseño',8.1),(195,'405','Diseño y Comunicación Visual','FES Cuautitlán',8),(196,'405','Diseño y Comunicación Visual','FES Cuautitlán',7.6),(197,'407','Educación Musical','Facultad de Música',8.9),(198,'408','Enseñanza de Inglés','FES Acatlán',7.4),(199,'424/ 425/ 426/ 427/ 428','Enseñanza de (Alemán; Español; Francés; Inglés o Italiano) como Lengua Extranjera','FES Acatlán',8),(200,'424/ 425/ 426/ 427/ 428','Enseñanza de (Alemán; Español; Francés; Inglés o Italiano) como Lengua Extranjera','FES Acatlán',7.3),(201,'409','Estudios Latinoamericanos','Facultad de Filosofía y Letras',8),(202,'410','Etnomusicología','Facultad de Música',8.8),(203,'411','Filosofía','Facultad de Filosofía y Letras',7),(204,'411','Filosofía','Facultad de Filosofía y Letras',8.3),(205,'411','Filosofía','FES Acatlán',7.5),(206,'431','Geohistoria','ENES Unidad Morelia/ Mich.',7.9),(207,'412','Historia','Facultad de Filosofía y Letras',8.5),(208,'412','Historia','Facultad de Filosofía y Letras',8.6),(209,'412','Historia','FES Acatlán',7),(210,'433','Historia del Arte','ENES Unidad Morelia/ Mich.',7.3),(211,'413','Instrumentista','Facultad de Música',8.3),(212,'414','Lengua y Literaturas Hispánicas','Facultad de Filosofía y Letras',8.2),(213,'414','Lengua y Literaturas Hispánicas','Facultad de Filosofía y Letras',7.2),(214,'414','Lengua y Literaturas Hispánicas','FES Acatlán',8.4),(215,'415','Lengua y Literaturas Modernas Alemanas','Facultad de Filosofía y Letras',7.9),(216,'416','Lengua y Literaturas Modernas Francesas','Facultad de Filosofía y Letras',8.1),(217,'417','Lengua y Literaturas Modernas Inglesas','Facultad de Filosofía y Letras',7.6),(218,'417','Lengua y Literaturas Modernas Inglesas','Facultad de Filosofía y Letras',7.8),(219,'418','Lengua y Literaturas Modernas Italianas','Facultad de Filosofía y Letras',7.9),(220,'430','Lengua y Literaturas Modernas Portuguesas','Facultad de Filosofía y Letras',7.6),(221,'419','Letras Clásicas','Facultad de Filosofía y Letras',7.8),(222,'439','Lingüística Aplicada','Escuela Nacional de Lenguas/ Lingüística y Traducción',8.3),(223,'420','Literatura Dramática y Teatro','Facultad de Filosofía y Letras',0),(224,'432','Literatura Intercultural','ENES Unidad Morelia Mich.',8),(225,'438','Música y Tecnología Artistica','ENES Unidad Morelia Mich.',8.1),(226,'421','Pedagogía','Facultad de Filosofía y Letras',7.3),(227,'421','Pedagogía','Facultad de Filosofía y Letras',8),(228,'421','Pedagogía','Facultad de Filosofía y Letras',7.5),(229,'421','Pedagogía','FES Acatlán',8.1),(230,'421','Pedagogía','FES Aragón',8),(231,'422','Piano','Facultad de Música',7.6),(232,'436','Teatro y Actuación','Facultad de Música',8.9),(233,'440','Traducción','ENES Unidad León Gto.',7.4),(234,'440','Traducción','Escuela Nacional de Lenguas Lingüistica y Traducción',8);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Paterno` varchar(50) DEFAULT NULL,
  `Materno` varchar(50) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `Prom_4` float DEFAULT NULL,
  `Prom_5` float DEFAULT NULL,
  `Prom_6` float DEFAULT NULL,
  `id_area` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=1167890799 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 21:52:01
