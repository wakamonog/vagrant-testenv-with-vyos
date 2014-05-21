-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: personal
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `personal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `personal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `personal`;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `english` varchar(30) DEFAULT NULL,
  `sex` enum('M','F') DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'å‚ç™»ç¾Žå­','SakaTomiko','F','tomiko_saka@lmow.too','1972-07-20'),(2,'æ£®å±±èœã€…å®Ÿ','MoriyamaNanami','F','nanami7459@xijchrqs.di','1970-05-23'),(3,'çŸ¢é‡Žä¸€é›„','YanoKazuo','M','kazuo678@zgopbcj.kku','1976-07-14'),(4,'æ£®ç”°é›ªä¹ƒ','MoritaYukino','F','yukino4806@fiorwez.ymn.jz','1970-01-06'),(5,'å²©è°·æœ‰ç¾Ž','IwataniYumi','F','iiwatani@yfxjdxfgmg.njw','1973-09-08'),(6,'ç”°å·æ˜¥ä»£','TagawaHaruyo','F','haruyo61710@qfovruvg.ln','1983-08-05'),(7,'è—¤æ£®ç•™ç¾Žå­','FujimoriRumiko','F','rumikofujimori@xxcntfon.gxtl.f','1962-06-12'),(8,'å°æ —æ˜­æ²»','OguriShouji','M','shouji909@bbqtmdqy.yz','1993-12-20'),(9,'ç«¹æœ¬ç¥å¥ˆ','TakemotoYuuna','F','wbtqkhmfxvuyuuna43780@gkvfhz.w','1962-09-10'),(10,'å‰ç”°ç ‚ç™»å­','YoshidaSatoko','F','satoko_yoshida@sutmi.aqevg.mm','1974-08-27'),(11,'å¤æ©‹åŠª','FuruhashiTsutomu','M','vtwoccuqsdwhxsptsutomu09020@nd','1977-01-19'),(12,'é»’æœ¨å–œä¹…M','KurokiKikuo','M','kikuo06438@kwxzvvegj.ke','1966-01-29'),(13,'æµ…å·ç¾Žé‡Œ','AsagawaMisato','F','oasagawa@qpraxrerq.lx','1994-01-26'),(14,'å±±æ‘éƒ½','YamamuraMiyako','F','Miyako_Yamamura@auvipqcsl.ynv.','1976-09-17'),(15,'äº•æ‰‹æ˜Œæž','IdeMasae','F','masae_ide@sczxiemobk.zdto.xm','1958-02-24'),(16,'æ£®å²¡å®¹å­','MoriokaYouko','F','youko983@rwmqyps.ljj','1967-01-25'),(17,'å·ç«¯å¼˜æ­','KawabataHiroyuki','M','ikawabata@xnlvpu.io','1990-02-26'),(18,'é«˜æ´¥æ¢¢','TakatsuKozue','F','kozue10916@rmbjyhsb.lpz','1966-09-01'),(19,'å²©æœ¬å„ªå¥ˆ','IwamotoYuuna','F','rvndpajw-nsyuuna91728@lnntzocz','1977-03-29'),(20,'å‰é‡Žæ™‚å­','YoshinoTokiko','F','tokikoyoshino@rnywh.wge','1966-04-23'),(21,'å¤§æž—é›„äºŒ','OobayashiYuuji','M','yuuji19778@lhwu.vawcd.xb','1980-04-23'),(22,'æ»å·æ„›','TakigawaAi','F','ai7240@xfftfxd.guu','1955-09-02'),(23,'å±±æ‘æ­¦å²','YamamuraTakeshi','M','takeshi894@mcmfgjwng.bdx','1987-04-30'),(24,'ç›¸æ²¢é‰„M','AizawaTetsuo','M','Tetsuo_Aizawa@wiwoem.yzkh.mtd','1987-02-15'),(25,'çŸ³åŽŸå´‡','IshiharaTakashi','M','Takashi_Ishihara@nfyhlboplc.cl','1970-05-20'),(26,'åŒ—æ¡äºœå¼¥','HoujouAya','F','aya7369@jbbifjb.cc','1964-11-25'),(27,'æ°¸äº•æ˜Œå½¦','NagaiMasahiko','M','masahiko559@ebayevojp.thum.roj','1960-09-03'),(28,'ç´°äº•é›…æ¨¹','HosoiMasaki','M','wzuyjqbcseemasaki911@houwg.rz','1986-10-25'),(29,'å¯ºå°¾å²éƒŽ','TeraoShirou','M','shirou87076@cjsswds.kj','1964-04-26'),(30,'é»’ç”°ç†å­','KurodaRiko','F','Riko_Kuroda@bucdapem.crz.ykz','1990-06-30'),(31,'æ¢…æ´¥å‡›å­','UmezuRinko','F','oumezu@feqoa.vttf.fy','1976-07-23'),(32,'å¡©æ²¢è©©','ShiozawaUta','F','uta_shiozawa@karocla.xvi','1955-02-24'),(33,'ç‰‡æ¡ç‘ è¡£','KatagiriRui','F','ruikatagiri@twmfrgzyud.uy.pli','1963-09-01'),(34,'å‰æœ¬æµ©','YoshimotoHiroshi','M','qjgmccpqhiroshi150@fort.xz','1990-03-30'),(35,'æ²³å†…èŠ³M','KawauchiYoshio','M','Yoshio_Kawauchi@dojxjb.aorv.tm','1981-08-16'),(36,'é‚£é ˆå¥ˆç¾Ž','NasuNami','F','nami6940@oyicf.th','1982-09-14'),(37,'æŸåŽŸä¿¡å¤ªéƒŽ','KashiwabaraShintarou','M','shintarou60579@ytjwnbgtr.iht','1969-12-29'),(38,'æ‰é‡Žæ˜¥é¦™','SuginoHaruka','F','dwhe=gyx-pwvtqwharuka322@zophh','1962-06-14'),(39,'å¤§åªå’Œä¹‹','OotsuboKazuyuki','M','fsuvh-mxadkazuyuki1646@hqnnroy','1972-12-07'),(40,'é½‹è—¤æ²™ç´€','SaitouSaki','F','saki4893@bimvtya.hft','1973-11-24'),(41,'è„‡ç”°ç’°','WakitaTamaki','F','Tamaki_Wakita@xqtvzffte.mtxhx.','1981-02-11'),(42,'äº•æœ¬è€•ä¸€','ImotoKouichi','M','Kouichi_Imoto@dfzylx.evz','1976-05-19'),(43,'å¹³å±±æŸšå­£','HirayamaYuzuki','F','Yuzuki_Hirayama@tvgyhiwnl.rpt','1984-01-05'),(44,'ç‹©é‡Žä½å’Œ','KanouSawa','F','sawa40909@dxknexqs.ule','1971-11-02'),(45,'ç›®é»’æ™ƒ','MeguroAkira','M','akirameguro@sztoj.bb','1962-03-27'),(46,'é£¯å¡šæ­£å¹¸','IizukaMasayuki','M','masayuki875@fnaux.hpq.cpn','1969-01-18'),(47,'æ¤æœ¨èŽ‰èœ','UekiRina','F','rinaueki@ihdotux.snq','1994-04-27'),(48,'åƒè‘‰ç¾½èœ','ChibaHana','F','hana46942@tcde.eld.cx','1983-09-17'),(49,'ç†Šæ²¢æ™º','KumazawaSatoshi','M','satoshi577@pclw.pz','1961-01-18'),(50,'æ±ŸåŽŸç’°','EbaraTamaki','F','tamaki279@uhlqo.ran','1959-07-30'),(51,'é ˆè—¤åƒæžå­','SudouChieko','F','chieko164@fcbdkqhd.lyh','1964-08-10'),(52,'é’æœ¨å’Œæ˜Ž','AokiKazuaki','M','kazuakiaoki@aoyws.myx','1979-10-15'),(53,'ä¸‰ç”°å‹‡ä¸€','MitaYuuichi','M','Yuuichi_Mita@dohp.yjaad.hso','1991-11-11'),(54,'åŒ—ç”°å¥æ²»','KitadaKenji','M','kenjikitada@ztuszqgmkr.edip.he','1986-05-11'),(55,'ä¸­å¶‹æ­£å½¦','NakajimaMasahiko','M','masahiko_nakajima@gdmusssr.cf','1959-07-21'),(56,'å®‰è¥¿å¥ˆä¿å­','AnzaiNaoko','F','naoko32007@mxzcflwct.yi.ls','1983-03-10'),(57,'æ¾æœ¨ç¾Žé›ª','MatsukiMiyuki','F','imatsuki@cjgugfkdaj.fid','1957-07-28'),(58,'æ¡œç”°è–å­','SakuradaSeiko','F','seiko62633@ybfchzhon.zud','1955-01-27'),(59,'å¥¥é‡Žé¥ä½³','OkunoHaruka','F','haruka46801@ampxd.fo','1991-10-23'),(60,'ç”°è¾ºæƒŸå²','TanabeTadashi','M','tadashi530@gnacm.ce.tjk','1992-09-13'),(61,'ç§¦ç«¹å¿—','HataTakeshi','M','takeshihata@iqlsvj.mhl','1977-09-05'),(62,'åŒ—å°¾ç¾©ä¹…','KitaoYoshihisa','M','yoshihisa2519@sfgerxufu.ik','1986-08-02'),(63,'å®®å·ä¸ˆå¤«','MiyakawaTakeo','M','Takeo_Miyakawa@ppexim.qtl','1991-10-27'),(64,'å°é‡Žé¾é›„','OnoTatsuo','M','mdh-asxesmsiztatsuo9944@othzgn','1980-07-31'),(65,'å¤§æ»ç¾Žå¥ˆä»£','OotakiMinayo','F','minayo3768@jjvhyvlt.hv.vgb','1972-02-27'),(66,'å²©æ¸•ç¾Žä¿','IwabuchiMiho','F','miho57649@vidnfrximd.ec','1988-05-11'),(67,'æ°¸ç€¬å¿ è‰¯','NagaseTadayoshi','M','tadayoshi680@myycvftwcs.mji','1978-11-06'),(68,'æ»æ€œ','TakiRei','F','rei_taki@dbromyhpi.ph','1976-08-09'),(69,'è¥¿æ²¢å’Œå¹¸','NishizawaKazuyuki','M','Kazuyuki_Nishizawa@hfdszaxvsl.','1959-10-23'),(70,'æ°¸äº•æ¥æœª','NagaiKurumi','F','kurumi_nagai@cecsd.qac','1967-05-22'),(71,'åŒ—æ²¢é›…äºº','KitazawaMasato','M','masato80329@kefwixsf.sqx','1982-12-09'),(72,'å¤§å¡šå°ç™¾åˆ','OotsukaSayuri','F','sayuri4311@bmirp.wejdr.qr','1955-05-14'),(73,'çŸ¢æ²¢è‘‰å¥ˆ','YazawaHana','F','hana103@zcsyggue.egh','1955-12-29'),(74,'å¿—è³€ä¿¡æ¬¡','ShigaShinji','M','Shinji_Shiga@avrdkparu.mhzc.ls','1973-09-12'),(75,'çŒªä¿£æ²»å¿—','InomataHarushi','M','iinomata@htwfiyjej.nqr','1993-05-08'),(76,'åªäº•é‚¦å­','TsuboiKuniko','F','kuniko35880@hjdbvhizq.kny','1959-08-02'),(77,'ä¸­å±±ä¿¡å¤«','NakayamaNobuo','M','onakayama@yzlmxvys.sxrpk.bo','1968-09-20'),(78,'æ°´è°·æ’é›„','MizutaniTsuneo','M','tsuneo_mizutani@odsztbplif.xax','1980-01-17'),(79,'è¥¿ç¾Žæ¥','NishiMiku','F','mikunishi@gecoadfw.nt.so','1985-05-08'),(80,'ç›¸å·ç¾©ä¹…','AikawaYoshihisa','M','yoshihisa173@kvcaeflx.co.fck','1978-11-26'),(81,'æ±æµ·æž—çµµç†','ShoujiEri','F','eri_shouji@eqvsdiha.dui','1976-12-03'),(82,'å°é‡ŽèŒèŠ±','OnoMoeka','F','moekaono@hiavmdbbr.seo','1986-11-03'),(83,'è¥¿è°·æµä¸‰','NishitaniKeizou','M','keizou0843@debvsmrcd.yykr.ceg','1968-10-03'),(84,'ä¸­ç”°ç´—ç¾½','NakadaSawa','F','sawa_nakada@bdnfceub.vaz','1955-08-15'),(85,'å·æ‘ç´ä¹ƒ','KawamuraKotono','F','kotonokawamura@nkqxm.nkc','1967-12-20'),(86,'çŸ³å´Žå®šM','IshizakiSadao','M','sadaoishizaki@todfjqlu.jidvr.t','1978-08-17'),(87,'å¯ºæœ¬æ™´å¥ˆ','TeramotoHaruna','F','Haruna_Teramoto@hdxusnefq.lfcx','1967-10-01'),(88,'ç”²æ–å¹¹å½¦','KaiMikihiko','M','yhidyh=krkymikihiko870@simjzpv','1963-06-10'),(89,'ä¸­å²¡ä¸€å¼˜','NakaokaKazuhiro','M','kazuhiro0303@yortt.gq','1983-11-09'),(90,'é¦¬å ´å®‰M','BabaYasuo','M','yasuobaba@vtdzu.rvw','1970-02-02'),(91,'åŒ—å±±æ–‡ä¸€','KitayamaBunichi','M','bunichi551@heawsq.eno.nd','1976-02-09'),(92,'çŸ³æ‘è“®','IshimuraRen','M','ren671@qjajwwjzr.fi','1965-03-01'),(93,'çŸ¢å³¶é‡å¤«','YajimaShigeo','M','prnwxumkvshigeo255@qyhejbhsxw.','1975-12-30'),(94,'åŠå·æ„›å®Ÿ','OikawaManami','F','manami_oikawa@emkjyww.cf','1955-08-25'),(95,'åºƒç€¬ç”±ä¾','HiroseYui','F','yui592@hgnqq.kcs.si','1963-06-01'),(96,'æ²¼ç”°ç”±ç¾Ž','NumataYumi','F','yumi8851@gonfhg.qx','1986-12-23'),(97,'æ¹¯å·å¯…å‰','YukawaTorakichi','M','iyukawa@ywqoi.joi','1967-07-14'),(98,'è§’æ˜Œä¸€éƒŽ','KakuShouichirou','M','shouichiroukaku@eqgxmb.hmj','1987-06-20'),(99,'é¹¿é‡Žç¾Žå¹¸','KanoMiyuki','F','miyuki25090@xnlktopks.sjw','1962-01-08'),(100,'ä¸‰åŽŸå…‹å·³','MiharaKatsumi','M','katsumi80711@jieygedr.cw','1977-10-07');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-21  7:23:36
