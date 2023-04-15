-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: j8b209.p.ssafy.io    Database: here
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `cur_quantity` int NOT NULL DEFAULT '0',
  `deadline` datetime(6) NOT NULL,
  `goal_quantity` int NOT NULL,
  `status` char(10) NOT NULL DEFAULT 'ACTIVE',
  `title` char(20) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `member_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsds8ox89wwf6aihinar49rmfy` (`member_id`),
  CONSTRAINT `FKsds8ox89wwf6aihinar49rmfy` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`id`, `content`, `created_date`, `cur_quantity`, `deadline`, `goal_quantity`, `status`, `title`, `updated_date`, `member_id`) VALUES (102,'<p>.</p>','2023-04-04 10:41:43.762682',4,'2023-04-05 00:00:00.000000',4,'INACTIVE','ㅇㅎㅇㅎㅇㅎㅇㅎ','2023-04-04 10:41:43.762682','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(103,'<p>허위 광고</p>','2023-04-04 10:42:41.201670',3,'2023-04-07 00:00:00.000000',5,'ACTIVE','give me the blood','2023-04-04 10:42:41.201670','7fadaead-bf24-466b-a642-24f191e54e86'),(104,'<p>헌혈증서 주세여</p>','2023-04-04 11:20:48.110481',2,'2023-04-08 00:00:00.000000',6,'ACTIVE','안녕하세요 반갑습니다','2023-04-04 11:20:48.110481','2cb4a9f8-d750-4bb0-b282-cd35d4af70f6'),(105,'<p>오늘 점심은 중화비빔밥</p>','2023-04-04 12:49:26.477011',7,'2023-04-05 00:00:00.000000',10,'INACTIVE','오늘 점심은 중화비빔밥','2023-04-04 12:49:26.477011','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(106,'<p>조용현선생의 조용한 용한 용용 병원</p>','2023-04-04 13:50:29.044672',10,'2023-04-05 00:00:00.000000',10,'INACTIVE','조용현선생의 조용한 용한 용용 병원','2023-04-04 13:50:29.044672','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(107,'<p>맛있닭!</p>','2023-04-04 14:00:29.988330',0,'2023-04-05 00:00:00.000000',2,'DELETE','용용선생 마라전골','2023-04-04 14:00:29.988330','c620bbb2-7c52-4e83-8368-de667d9f1f28'),(108,'<p>ㅎㅎ</p>','2023-04-04 14:03:20.907756',5,'2023-04-06 00:00:00.000000',5,'INACTIVE','마라향이 가득한 깻잎오이고수찌개','2023-04-04 14:03:20.907756','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(109,'<p>다시 태어난다면 코끼리로 태어날래요.</p>','2023-04-04 14:15:05.767605',2,'2023-04-05 00:00:00.000000',2,'INACTIVE','다시 태어난다면 코끼리로 태어날래요.','2023-04-04 14:15:05.767605','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(110,'<p>pop pop pop</p>','2023-04-04 14:16:16.426619',0,'2023-04-05 00:00:00.000000',1,'INACTIVE','pop cat','2023-04-04 14:16:16.426619','c620bbb2-7c52-4e83-8368-de667d9f1f28'),(111,'<p>.</p>','2023-04-04 15:16:55.023350',2,'2023-04-05 00:00:00.000000',2,'INACTIVE','오늘 저녁은 뭐 먹지?','2023-04-04 15:16:55.023350','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(112,'<p>헌혈증이 급하게 필요합니다헌혈증이 급하게 필요합니다헌혈증이 급하게 필요합니다헌혈증이 급하게 필요합니다</p>','2023-04-04 22:31:33.168433',0,'2023-04-05 00:00:00.000000',3,'INACTIVE','헌혈증이 급하게 필요합니다','2023-04-04 22:31:33.168433','8959a09c-308c-47cc-bbd8-73bc006c853a'),(113,'<p>현기증난단말이에요</p>','2023-04-04 23:36:39.193956',3,'2023-04-06 00:00:00.000000',3,'INACTIVE','도언님 에러 고쳐주세요','2023-04-04 23:36:39.193956','9d7b030b-59f9-4b66-9374-c0072399d9fc'),(114,'<p>ㅇㅇㅇ</p>','2023-04-05 10:12:41.794131',0,'2023-04-06 00:00:00.000000',1,'INACTIVE','언도도씨','2023-04-05 10:12:41.794131','ae4c93d4-67f0-4502-9a0c-04d003ce6f0c'),(115,'<p>dasdasdsa</p>','2023-04-05 12:25:06.224824',0,'2023-04-15 00:00:00.000000',3,'DELETE','dasdsa','2023-04-05 12:25:06.224824','813241d8-ac46-49d8-87f0-fa8f92a00168'),(116,'<p>테스트 중</p>','2023-04-05 14:40:58.725956',4,'2023-04-06 00:00:00.000000',5,'ACTIVE','김도언이 테스트','2023-04-05 14:40:58.725956','2cb4a9f8-d750-4bb0-b282-cd35d4af70f6'),(117,'<p>테스트 중!</p>','2023-04-05 17:39:18.410049',3,'2023-04-06 00:00:00.000000',3,'INACTIVE','제출 테스트 - 도언','2023-04-05 17:39:18.410049','2cb4a9f8-d750-4bb0-b282-cd35d4af70f6'),(118,'<p>ㅁㄴㅇ</p>','2023-04-05 17:40:07.615984',2,'2023-04-06 00:00:00.000000',5,'ACTIVE','제출테스트 규림','2023-04-05 17:40:07.615984','95067026-cfcc-458c-8bbe-e59eb235aea7'),(119,'<p>하하하</p>','2023-04-05 17:48:49.347316',3,'2023-04-06 00:00:00.000000',3,'INACTIVE','감사합니다','2023-04-05 17:48:49.347316','ae4c93d4-67f0-4502-9a0c-04d003ce6f0c'),(120,'<p>야무지게 먹어야지</p>','2023-04-05 17:49:48.632057',4,'2023-04-06 00:00:00.000000',5,'ACTIVE','오늘 저녁은 닭볶음탕','2023-04-05 17:49:48.632057','67bae835-43bc-4b7f-a4e9-a15438ddd3cf'),(121,'<p>dasdsadasda</p>','2023-04-05 17:57:48.909329',0,'2023-04-06 00:00:00.000000',1,'DELETE','adassad','2023-04-05 17:57:48.909329','813241d8-ac46-49d8-87f0-fa8f92a00168'),(122,'<p>.</p>','2023-04-05 19:50:29.732115',1,'2023-04-06 00:00:00.000000',1,'INACTIVE','하이하이','2023-04-05 19:50:29.732115','8793cd9d-4986-410c-bb3f-f9bd347ce5d7'),(123,'<p>안녕하세요.</p><p>현재 초등학교에 다니고 있는 6학년 학생입니다.</p><p>저희 엄마가 이번에 수술을 하시고 나서 헌혈증이 필요합니다.</p><p>많은 분들의 도움 부탁드리겠습니다.</p><p>감사합니다 </p>','2023-04-05 20:45:50.470746',0,'2023-04-07 00:00:00.000000',6,'ACTIVE','엄마가 아파서 헌혈증이 필요해요','2023-04-05 20:45:50.470746','ae4f8845-83ce-45d6-b60c-1b36b2c0c7fd'),(124,'<p>아버지께서 입원중이신데, 헌혈증서가 필요할 것 같습니다. 혹시 나눔해주실 분 계신가요?</p>','2023-04-05 20:46:08.026048',1,'2023-04-06 00:00:00.000000',5,'ACTIVE','헌혈증서가 필요합니다..','2023-04-05 20:46:08.026048','9d7b030b-59f9-4b66-9374-c0072399d9fc'),(125,'<p>급하게 수술을 받게 되어서 헌혈증이 부족합니다.</p><p>혹시 헌혈증 있으신 분 계시다면 기부 부탁드립니다.</p><p>감사합니다.</p>','2023-04-05 20:46:49.158712',2,'2023-04-06 00:00:00.000000',10,'ACTIVE','헌혈증 급하게 구합니다','2023-04-05 20:46:49.158712','2cb4a9f8-d750-4bb0-b282-cd35d4af70f6'),(126,'<p>헌혈증서 혹시 나눔 가능하신 분 계실까요? </p>','2023-04-05 20:52:43.777894',0,'2023-04-06 00:00:00.000000',5,'ACTIVE','교통사고를 당했습니다...','2023-04-05 20:52:43.777894','b9dbb0ef-ef09-420a-be0c-ea1cf3ec3f95'),(127,'<p>ㅁㄴㅇㄴㅁㅇㅁㄴㅇ</p>','2023-04-05 20:54:21.583807',0,'2023-04-06 00:00:00.000000',1,'DELETE','ㅁㄴㅇㄴㅁㅇ','2023-04-05 20:54:21.583807','813241d8-ac46-49d8-87f0-fa8f92a00168'),(128,'<p>ㄴㅇㄹㅇㄴㄹㄴㅇㄹ</p>','2023-04-05 20:54:38.221580',0,'2023-04-06 00:00:00.000000',1,'DELETE','ㅇㅇㄴㄹㅇㄴㄹ','2023-04-05 20:54:38.221580','ae4f8845-83ce-45d6-b60c-1b36b2c0c7fd'),(129,'<p>헌혈증서가 급하게 필요한데 구할 데가 없어서 글 써봅니다 ㅠㅠ</p>','2023-04-05 20:55:51.611709',0,'2023-04-06 00:00:00.000000',3,'ACTIVE','사고를 당해서 헌혈증서가 부족해요','2023-04-05 20:55:51.611709','f84e2b03-ef87-4883-adc1-aa887618cdab'),(130,'<p>헌혈증 부탁드려요 급합니다..</p>','2023-04-05 20:58:50.648190',0,'2023-04-06 00:00:00.000000',4,'ACTIVE','헌혈증 부탁드려요 급합니다..','2023-04-05 20:58:50.648190','42fe7697-498b-4ea0-bb40-5553c50c26fd'),(131,'<p>안녕하세요.</p><p>현재 초등학교에 다니고 있는 6학년 학생입니다.</p><p>저희 엄마가 이번에 수술을 하시고 나서 헌혈증이 필요합니다.</p><p>많은 분들의 도움 부탁드리겠습니다.</p><p>감사합니다</p>','2023-04-05 21:06:15.787220',0,'2023-04-06 00:00:00.000000',6,'DELETE','엄마가 아파서 헌혈증이 필요해요','2023-04-05 21:06:15.787220','813241d8-ac46-49d8-87f0-fa8f92a00168'),(132,'<p>안녕하세요.</p><p>현재 초등학교에 다니고 있는 6학년 학생입니다.</p><p>저희 엄마가 이번에 수술을 하시고 나서 헌혈증이 필요합니다.</p><p>많은 분들의 도움 부탁드리겠습니다.</p><p>감사합니다</p>','2023-04-05 21:08:03.541156',0,'2023-04-06 00:00:00.000000',5,'DELETE','엄마가 아파서 헌혈증이 필요해요','2023-04-05 21:08:03.541156','813241d8-ac46-49d8-87f0-fa8f92a00168'),(133,'<p>안녕하세요.</p><p>현재 초등학교에 다니고 있는 6학년 학생입니다.</p><p>저희 엄마가 이번에 수술을 하시고 나서 헌혈증이 필요합니다.</p><p>많은 분들의 도움 부탁드리겠습니다.</p><p>감사합니다</p>','2023-04-05 21:09:15.938883',0,'2023-04-06 00:00:00.000000',5,'ACTIVE','엄마가 아파서 헌혈증이 필요해요','2023-04-05 21:09:15.938883','813241d8-ac46-49d8-87f0-fa8f92a00168'),(134,'<p>ㅇㅇㅇㅇ</p>','2023-04-05 22:57:12.866757',2,'2023-04-06 00:00:00.000000',1,'INACTIVE','헌혈증 급구','2023-04-05 22:57:12.866757','67bae835-43bc-4b7f-a4e9-a15438ddd3cf'),(135,'<p>너무필요합니다....너무필요합니다....너무필요합니다....너무필요합니다....</p>','2023-04-05 23:16:15.271038',2,'2023-04-06 00:00:00.000000',1,'INACTIVE','헌혈증 급구','2023-04-05 23:16:15.271038','67bae835-43bc-4b7f-a4e9-a15438ddd3cf');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-06  3:08:28
