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
  `BI_WRITER` varchar(30) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~8 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(2, '명관이 정처기 필ㄷㄷ기 합격', '			명관이 정처기 필기 합격기원합니다 아멘\r\n	ㄹㄷㄹㅈㄷㄹㅈ		', '이보성ㅈㅈ', '2023-07-10 07:08:00', 1),
	(3, '첫번째 게시물', '냉무', '글쓴이', '2023-07-13 08:37:54', 0),
	(4, 'adasd', 'null', 'rtughj', '2023-07-13 07:08:22', 4),
	(5, 'qwe', 'null', 'qwe', '2023-07-14 01:30:44', 1),
	(6, 'ㅂㅈㄷㅂㅈㄱㄱ', '			ㅂㅈㄷㅂㅈㄷㅈㅂㄷㅂㅈㄷ			null\r\n		454545	\r\n			', 'ㅂㅈㄷㅂㅈㄷ', '2023-07-14 01:31:11', 1),
	(7, '이원기 베스트', '원기는 베스트 나이스 최고', '이보성', '2023-07-14 03:03:30', 1),
	(8, '일기', '안녕안녕안녕하세요\r\n			', '안녕하세요', '2023-07-14 03:04:52', 1),
	(9, '이명관 화이팅', '이명관 화이팅 정처기 꼭 떨어져리', '이왕균', '2023-07-14 03:05:18', 1);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~9 rows (대략적) 내보내기
INSERT INTO `class_info` (`CI_NUM`, `CI_NAME`, `CI_DESC`) VALUES
	(1, '이보성', 'QWEASDZXC'),
	(2, '이원기', 'sd'),
	(3, 'asdf', 'null'),
	(4, '이보성', '나는 열심히 하겠습니다'),
	(5, '이명관', '정처기 황ㅌㅇ'),
	(6, '이왕귬', 'ㅗㅗㅗㅗㅗㅗㅗ'),
	(7, '이왕귬', 'ㅗㅗㅗㅗㅗㅗㅗ'),
	(8, '이왕귬', 'ㅗㅗㅗㅗㅗㅗㅗ'),
	(9, '이왕귬3123', 'ㅗㅗㅗㅗㅗㅗㅗ123');

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
