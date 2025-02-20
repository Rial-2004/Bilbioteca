-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para rialmar
CREATE DATABASE IF NOT EXISTS `rialmar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `rialmar`;

-- Volcando estructura para tabla rialmar.books
CREATE TABLE IF NOT EXISTS `books` (
  `ISBN` varchar(13) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla rialmar.books: ~2 rows (aproximadamente)
INSERT INTO `books` (`ISBN`, `titulo`, `autor`) VALUES
	('119312411733A', 'nuevolibro', 'autorlibro'),
	('136519571590A', 'nuevolibro', 'autorlibro');

-- Volcando estructura para tabla rialmar.users
CREATE TABLE IF NOT EXISTS `users` (
  `DNI` char(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla rialmar.users: ~5 rows (aproximadamente)
INSERT INTO `users` (`DNI`, `nombre`, `email`) VALUES
	('18088228Q', 'Rialmar', 'rialmar2004@gmail.com'),
	('24147157A', 'nuevousuario', 'usuario8723@gmail.com'),
	('50872081A', 'nuevousuario', 'usuario7313@gmail.com'),
	('92574230A', 'nuevousuario', 'usuario7821@gmail.com'),
	('95989808A', 'nuevousuario', 'usuario6633@gmail.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
