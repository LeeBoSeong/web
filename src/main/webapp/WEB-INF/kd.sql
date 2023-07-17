-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        11.0.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kd 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kd`;

-- 테이블 kd.board_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_info` (
  `BI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `BI_TITLE` varchar(400) NOT NULL,
  `BI_CONTENT` text NOT NULL,
  `BI_WRITER` int(11) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`),
  KEY `FK_UI_NUM` (`BI_WRITER`),
  CONSTRAINT `FK_UI_NUM` FOREIGN KEY (`BI_WRITER`) REFERENCES `user_info` (`UI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~1 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(10, 'TEST', '			ASD\r\n			', 12, '2023-07-17 04:58:57', 0);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~0 rows (대략적) 내보내기

-- 테이블 kd.market_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `market_info` (
  `MK_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `MK_NAME` varchar(30) NOT NULL,
  `MK_TYPE` varchar(30) NOT NULL,
  `MK_PRICE` int(11) NOT NULL,
  PRIMARY KEY (`MK_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.market_info:~1 rows (대략적) 내보내기
INSERT INTO `market_info` (`MK_NUM`, `MK_NAME`, `MK_TYPE`, `MK_PRICE`) VALUES
	(1, '사과', '과일', 1000);

-- 테이블 kd.movie_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `movie_info` (
  `MI_NUM` int(11) NOT NULL AUTO_INCREMENT COMMENT '영화 번호',
  `MI_TITLE` varchar(200) NOT NULL COMMENT '영화 제목',
  `MI_DIRECTOR` varchar(30) NOT NULL COMMENT '감독',
  `MI_DESC` varchar(4000) NOT NULL COMMENT '영화 설명',
  `MI_GENRE` varchar(100) NOT NULL COMMENT '영화 장르',
  `MI_CREDAT` datetime DEFAULT current_timestamp() COMMENT '상영일',
  `MI_CNT` int(11) DEFAULT 0 COMMENT '관객수',
  PRIMARY KEY (`MI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.movie_info:~2 rows (대략적) 내보내기
INSERT INTO `movie_info` (`MI_NUM`, `MI_TITLE`, `MI_DIRECTOR`, `MI_DESC`, `MI_GENRE`, `MI_CREDAT`, `MI_CNT`) VALUES
	(3, '명관이의 꿈', '이원기', '명관이의 꿈은 원기와 행복하게 사는 것이랍니다~', '공포', '2023-07-17 17:38:40', 0),
	(4, '원기의 장래희망', '이보성', '강원기가 되눈것이 꿈인 원기', '드라마', '2023-07-17 17:39:07', 0);

-- 테이블 kd.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `UI_ID` varchar(30) NOT NULL,
  `UI_PWD` varchar(30) NOT NULL,
  `UI_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`),
  UNIQUE KEY `UI_ID` (`UI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.user_info:~5 rows (대략적) 내보내기
INSERT INTO `user_info` (`UI_NUM`, `UI_ID`, `UI_PWD`, `UI_NAME`) VALUES
	(12, 'TEST2', 'TEST1', '동동이'),
	(14, 'TEST3', 'TEST2', '이원기짱멋져'),
	(15, 'cs', '1234', ' 이바보'),
	(21, 'qwer', '1234', '이보성'),
	(22, 'wqe', 'rwe', 'qwe');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
