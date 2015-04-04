/*
Navicat MySQL Data Transfer

Source Server         : vagrant
Source Server Version : 50541
Source Host           : localhost:8889
Source Database       : ama

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-04-05 01:06:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for absent
-- ----------------------------
DROP TABLE IF EXISTS `absent`;
CREATE TABLE `absent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) DEFAULT NULL,
  `uniformId` int(11) DEFAULT NULL,
  `day` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

-- ----------------------------
-- Records of absent
-- ----------------------------
INSERT INTO `absent` VALUES ('1', '1', '2', '25/03/2015');
INSERT INTO `absent` VALUES ('2', '2', '3', '25/03/2015');
INSERT INTO `absent` VALUES ('3', '1', '2', null);
INSERT INTO `absent` VALUES ('4', '1', '2', null);
INSERT INTO `absent` VALUES ('5', '1', '2', null);
INSERT INTO `absent` VALUES ('6', '2', '3', null);
INSERT INTO `absent` VALUES ('7', '3', '3', null);
INSERT INTO `absent` VALUES ('8', '2', '3', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `ic` varchar(20) DEFAULT NULL,
  `matrix` varchar(25) DEFAULT NULL,
  `uniform` varchar(50) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'syukri', '111', '222', '1', 'Pendidikan');
INSERT INTO `student` VALUES ('2', 'kamal', '333', '444', '2', 'Kejururawatan');
INSERT INTO `student` VALUES ('3', 'Manaf', '555', '666', '3', 'Kejuruteraan');
INSERT INTO `student` VALUES ('4', 'Siti', '777', '888', '1', 'JTMK');
INSERT INTO `student` VALUES ('5', 'MOHAMMAD NAZREEN BIN NASIR', null, '25DET14F2001', null, 'DET1A');
INSERT INTO `student` VALUES ('6', 'NURATIKAH BINTI ATAN', null, '25DET14F2001', null, 'DET1A');
INSERT INTO `student` VALUES ('7', 'MOHAMAD RAZI BIN HAMIN', null, '25DET14F2003', null, 'DET1A');
INSERT INTO `student` VALUES ('8', 'MUHAMMAD UDZIR BIN ABDUL RAHMAN MANISELVAN', null, '25DET14F2005', null, 'DET1A');
INSERT INTO `student` VALUES ('9', 'AHMAD SYAMIM BIN MUHAMAD NASIR', null, '25DET14F2007', null, 'DET1A');
INSERT INTO `student` VALUES ('10', 'MOHAMAD ZULHELMI BIN HAMZAH', null, '25DET14F2009', null, 'DET1A');
INSERT INTO `student` VALUES ('11', 'NOOR HELMY RAFIE BIN ABDULLAH', null, '25DET14F2011', null, 'DET1A');
INSERT INTO `student` VALUES ('12', 'MOHAMAD SYAZWAN BIN AB AZIZ', null, '25DET14F2013', null, 'DET1A');
INSERT INTO `student` VALUES ('13', 'MOHAMAD RUSYAIDI BIN NORDIN', null, '25DET14F2015', null, 'DET1A');
INSERT INTO `student` VALUES ('14', 'MOHAMAD NOOR FITRI BIN ABDULLAH', null, '25DET14F2017', null, 'DET1A');
INSERT INTO `student` VALUES ('15', 'SITI NOR\'AIN FATIHAH BINTI ALIAS', null, '25DET14F2019', null, 'DET1A');
INSERT INTO `student` VALUES ('16', 'NORAINI BINTI ZAKARIA', null, '25DET14F2021', null, 'DET1A');
INSERT INTO `student` VALUES ('17', 'MUHAMMAD SHAHRUL AZAMER BIN SAMURI', null, '25DET14F2023', null, 'DET1A');
INSERT INTO `student` VALUES ('18', 'MOHAMMAD SYAZWAN BIN MAZLAN', null, '25DET14F2025', null, 'DET1A');
INSERT INTO `student` VALUES ('19', 'MUHAMMAD KHAIRULNIZAM BIN ZAINI', null, '25DET14F2027', null, 'DET1A');
INSERT INTO `student` VALUES ('20', 'MUHAMAD FARIZ BIN MESNI', null, '25DET14F2029', null, 'DET1A');
INSERT INTO `student` VALUES ('21', 'SHUKRI BIN NORDIN', null, '25DET14F2031', null, 'DET1A');
INSERT INTO `student` VALUES ('22', 'MUHAMMAD SYAHMI BIN AMINRUDDIN', null, '25DET14F2033', null, 'DET1A');
INSERT INTO `student` VALUES ('23', 'NURUL SABARINA BINTI NORMALIK', null, '25DET14F2035', null, 'DET1A');
INSERT INTO `student` VALUES ('24', 'NASRULLAH KHAIRULLAH BIN ABD RAZAK', null, '25DET14F2037', null, 'DET1A');
INSERT INTO `student` VALUES ('25', 'MOHAMAD AMIRUL IZWAN BIN ARIFFIN', null, '25DET14F2039', null, 'DET1A');
INSERT INTO `student` VALUES ('26', 'MUHAMMAD HAFIZUDDIN BIN IBRAHIM', null, '25DET14F2041', null, 'DET1A');
INSERT INTO `student` VALUES ('27', 'MUHAMMAD FARIS SHAH BIN AMIR HAMZAH', null, '25DET14F2043', null, 'DET1A');
INSERT INTO `student` VALUES ('28', 'NUR ZAINULARIFFIN BIN YUNUS', null, '25DET14F1096', null, 'DET1B');
INSERT INTO `student` VALUES ('29', 'SITI SYAZWANI BINTI MD ISA', null, '25DET14F2002', null, 'DET1B');
INSERT INTO `student` VALUES ('30', 'MOHAMAD NIZAMMUDDIN BIN MOHD SAIFUL', null, '25DET14F2004', null, 'DET1B');
INSERT INTO `student` VALUES ('31', 'MUHAMMAD SAFIQ BIN ABD MAJID', null, '25DET14F2006', null, 'DET1B');
INSERT INTO `student` VALUES ('32', 'AHMAD SHAHRIL BIN SEBIRIN', null, '25DET14F2008', null, 'DET1B');
INSERT INTO `student` VALUES ('33', 'AHMAD ALIF SULAIMAN BIN MOHD JOHARI', null, '25DET14F2010', null, 'DET1B');
INSERT INTO `student` VALUES ('34', 'MUHAMMAD WA\'EI BIN ZAINUDDIN', null, '25DET14F2012', null, 'DET1B');
INSERT INTO `student` VALUES ('35', 'MUHAMAD AIDIL BIN JAMALUDDIN', null, '25DET14F2016', null, 'DET1B');
INSERT INTO `student` VALUES ('36', 'AIMAN ARIS BIN MOHAMMAD ANIS', null, '25DET14F2018', null, 'DET1B');
INSERT INTO `student` VALUES ('37', 'NURSYAZANI SYAZWAN BIN AHMAD SOBKI', null, '25DET14F2020', null, 'DET1B');
INSERT INTO `student` VALUES ('38', 'NURUL FATEHA BINTI AB JABBAR', null, '25DET14F2022', null, 'DET1B');
INSERT INTO `student` VALUES ('39', 'NURUL RABIATUL ADAWIYAH BTE MD SAID', null, '25DET14F2024', null, 'DET1B');
INSERT INTO `student` VALUES ('40', 'MUHAMAD HAFIZUL ISMI BIN ABDUL HAFIZ', null, '25DET14F2026', null, 'DET1B');
INSERT INTO `student` VALUES ('41', 'MOHAMMAD ADHAHAKIM BIN OSMAN', null, '25DET14F2028', null, 'DET1B');
INSERT INTO `student` VALUES ('42', 'MUHAMMAD SAIFUL BIN HUSSIN', null, '25DET14F2030', null, 'DET1B');
INSERT INTO `student` VALUES ('43', 'MOHAMAD FAKHRUL HAZIQ BIN MD IZAMKHIR', null, '25DET14F2032', null, 'DET1B');
INSERT INTO `student` VALUES ('44', 'NOR IKHMAL AZAHARI BIN ISMIL', null, '25DET14F2034', null, 'DET1B');
INSERT INTO `student` VALUES ('45', 'CHRISTOPHER GELAU ANAK JOHN', null, '25DET14F2036', null, 'DET1B');
INSERT INTO `student` VALUES ('46', 'ZULFAHMEY BIN MOHD ZULKIPLI', null, '25DET14F2038', null, 'DET1B');
INSERT INTO `student` VALUES ('47', 'MOHAMAD NOR FAHMI BIN BAHRAN', null, '25DET14F2040', null, 'DET1B');
INSERT INTO `student` VALUES ('48', 'MOHD ANUAR BIN MOHAMED SUMERI', null, '25DET14F2042', null, 'DET1B');
INSERT INTO `student` VALUES ('49', 'MUHAMMAD RAFIQ ZAKWAN BIN RAPIZA', null, '25DET14F2044', null, 'DET1B');
INSERT INTO `student` VALUES ('50', 'SITI NURFARAHIN BINTI ABDUL HAMID', null, '25DET14F1001', null, 'DET2A');
INSERT INTO `student` VALUES ('51', 'MOHD ZULFIKRI BIN ELVIS SYEFRIZAL', null, '25DET14F1002', null, 'DET2A');
INSERT INTO `student` VALUES ('52', 'MUHAMMAD ASYRAF ZARHAN BIN ABU KHALID', null, '25DET14F1003', null, 'DET2A');
INSERT INTO `student` VALUES ('53', 'MOHAMAD AFIQ BIN MOHD ADHA', null, '25DET14F1004', null, 'DET2A');
INSERT INTO `student` VALUES ('54', 'MUHAMMAD FAIZ ISKANDAR', null, '25DET14F1005', null, 'DET2A');
INSERT INTO `student` VALUES ('55', 'MUHAMMAD AFIQ ASHRIFF BIN ALPARID', null, '25DET14F1006', null, 'DET2A');
INSERT INTO `student` VALUES ('56', 'MUHAMMAD NUR FIRDAUS BIN SABARUDIN', null, '25DET14F1007', null, 'DET2A');
INSERT INTO `student` VALUES ('57', 'MUHAMMAD AFIQ ASYRAN BIN JUSMARI', null, '25DET14F1008', null, 'DET2A');
INSERT INTO `student` VALUES ('58', 'MUHAMMAD AMIRUDDIN BIN ISHAK', null, '25DET14F1009', null, 'DET2A');
INSERT INTO `student` VALUES ('59', 'MOHAMMAD SYAZWAN BIN MOHD ALI', null, '25DET14F1010', null, 'DET2A');
INSERT INTO `student` VALUES ('60', 'MUHAMMAD ISKANDAR BIN DZULKAHAR', null, '25DET14F1011', null, 'DET2A');
INSERT INTO `student` VALUES ('61', 'MUHAMMAD NURAIEMAN BIN HASSAN', null, '25DET14F1012', null, 'DET2A');
INSERT INTO `student` VALUES ('62', 'PRAVIEN A/L RAMOO', null, '25DET14F1013', null, 'DET2A');
INSERT INTO `student` VALUES ('63', 'AZHARI BIN ADNAN', null, '25DET14F1014', null, 'DET2A');
INSERT INTO `student` VALUES ('64', 'MOHD AMIRRUDIN BIN ZAINAL', null, '25DET14F1015', null, 'DET2A');
INSERT INTO `student` VALUES ('65', 'NUR NAZWA ATALIA BINTI DAUD', null, '25DET14F1016', null, 'DET2A');
INSERT INTO `student` VALUES ('66', 'MUHAMMAD AMIN BIN NAJAMUDIN', null, '25DET14F1017', null, 'DET2A');
INSERT INTO `student` VALUES ('67', 'MUHAMMAD FARIS AIZAT BIN IKHWAN', null, '25DET14F1018', null, 'DET2A');
INSERT INTO `student` VALUES ('68', 'AMIRUL HAKIM BIN JORARI', null, '25DET14F1019', null, 'DET2A');
INSERT INTO `student` VALUES ('69', 'ABDUL RASYID BIN ABDUL RAHIM', '1', '25DET14F1020', '2', 'DET2A');
INSERT INTO `student` VALUES ('70', 'MUAZ NAJMI BIN SHUHADI', null, '25DET14F1021', null, 'DET2A');
INSERT INTO `student` VALUES ('71', 'MUHAMMAD AMIRUL BIN RAHIMAN', null, '25DET14F1022', null, 'DET2A');
INSERT INTO `student` VALUES ('72', 'AHMAD IZZUDDIN BIN ABU SAMAH', null, '25DET14F1023', null, 'DET2A');
INSERT INTO `student` VALUES ('73', 'MUHAMMAD ROZAIDI BIN ROSLY @ ROSLI', null, '25DET14F1024', null, 'DET2A');
INSERT INTO `student` VALUES ('74', 'MOHAMAD HAFIZUDIN BIN BASIMAN', null, '25DET14F1025', null, 'DET2A');
INSERT INTO `student` VALUES ('75', 'MUHAMMAD NURZAIM ASHRAFF BIN ZAKARIA', null, '25DET14F1026', null, 'DET2A');
INSERT INTO `student` VALUES ('76', 'NURSYAZWANI BINTI SAMSURI', null, '25DET14F1027', null, 'DET2A');
INSERT INTO `student` VALUES ('77', 'MOHAMAD ARSHAD BIN JAMALUDIN', null, '25DET14F1028', null, 'DET2A');
INSERT INTO `student` VALUES ('78', 'MUHAMMAD AIDIL HAFIZ BIN AZMAN', null, '25DET14F1029', null, 'DET2A');
INSERT INTO `student` VALUES ('79', 'NURUL NADIRA BINTI MOHD KHAIRUDDIN', null, '25DET14F1030', null, 'DET2A');
INSERT INTO `student` VALUES ('80', 'MOHAMAD NAZFI BIN MOHAMAD MASRUKI', null, '25DET14F1031', null, 'DET2A');
INSERT INTO `student` VALUES ('81', 'MUHAMMAD FAHMI BIN ISMAIL', null, '25DET14F1032', null, 'DET2A');
INSERT INTO `student` VALUES ('82', 'ZULHILMI BIN ZAKARIYA', null, '25DET14F1033', null, 'DET2A');
INSERT INTO `student` VALUES ('83', 'MOHD. AZRUL AZDLI BIN SHAMSUL', null, '25DET14F1034', null, 'DET2B');
INSERT INTO `student` VALUES ('84', 'MUHAMMAD FIRDAUS BIN MOKHTAR', null, '25DET14F1035', null, 'DET2B');
INSERT INTO `student` VALUES ('85', 'SITI KHAIRUNISA BINTI KHAIRUNIZAM', null, '25DET14F1036', null, 'DET2B');
INSERT INTO `student` VALUES ('86', 'MOHAMED NADZMI BIN AB RAHMAN', null, '25DET14F1037', null, 'DET2B');
INSERT INTO `student` VALUES ('87', 'MOHAMAD FAKHRURADZI BIN AHMAD', null, '25DET14F1038', null, 'DET2B');
INSERT INTO `student` VALUES ('88', 'MUHAMAD IZZUDDIN BIN KHAIRUL ANUAR', null, '25DET14F1039', null, 'DET2B');
INSERT INTO `student` VALUES ('89', 'MOHAMAD IQBAL HAZIQ BIN MOHAMMAD', null, '25DET14F1040', null, 'DET2B');
INSERT INTO `student` VALUES ('90', 'MUHAMMAD AFIQ BIN ASMAN', null, '25DET14F1041', null, 'DET2B');
INSERT INTO `student` VALUES ('91', 'HAZIQ BIN ABDULLAH', null, '25DET14F1042', null, 'DET2B');
INSERT INTO `student` VALUES ('92', 'MUHAMMAD LUTFI BIN ROSLAN', null, '25DET14F1043', null, 'DET2B');
INSERT INTO `student` VALUES ('93', 'NAZARUL BIN AB RAZAK', null, '25DET14F1045', null, 'DET2B');
INSERT INTO `student` VALUES ('94', 'NORFADZLEEN NADIA BINTI MOHD RAZAKI', null, '25DET14F1046', null, 'DET2B');
INSERT INTO `student` VALUES ('95', 'FAKHRUL RAZI BIN ABDUL ILLAH', null, '25DET14F1047', null, 'DET2B');
INSERT INTO `student` VALUES ('96', 'MOHD FADHLI BIN ISMAIL', null, '25DET14F1048', null, 'DET2B');
INSERT INTO `student` VALUES ('97', 'ZAINAL\'ARIFIN BIN MUHAMAD', null, '25DET14F1049', null, 'DET2B');
INSERT INTO `student` VALUES ('98', 'MOHAMAD HAFIEZ BIN JASMANI', null, '25DET14F1050', null, 'DET2B');
INSERT INTO `student` VALUES ('99', 'MOHAMMAD NAZRI SHAH BIN ZAIDI', null, '25DET14F1051', null, 'DET2B');
INSERT INTO `student` VALUES ('100', 'MOHD YAZID BIN MOHD NOOR', null, '25DET14F1052', null, 'DET2B');
INSERT INTO `student` VALUES ('101', 'NURUL NAJIHAH SYAZWANI BINTI ARSAD', null, '25DET14F1053', null, 'DET2B');
INSERT INTO `student` VALUES ('102', 'NOR ATIKAH BINTI MOHAMAD RADZI', null, '25DET14F1054', null, 'DET2B');
INSERT INTO `student` VALUES ('103', 'MUHAMAD SHAUQIE BIN DAUD', null, '25DET14F1055', null, 'DET2B');
INSERT INTO `student` VALUES ('104', 'MUHAMMAD FARIS AKMAL BIN ZAINAL ABIDIN', null, '25DET14F1056', null, 'DET2B');
INSERT INTO `student` VALUES ('105', 'MUHAMMAD FAZLYFITRI BIN SAHRIN', null, '25DET14F1057', null, 'DET2B');
INSERT INTO `student` VALUES ('106', 'MUHAMMAD RUSYDI BIN MD RAJIB', null, '25DET14F1058', null, 'DET2B');
INSERT INTO `student` VALUES ('107', 'MUHAMMAD FAIQ BIN SAMSUDIN', null, '25DET14F1059', null, 'DET2B');
INSERT INTO `student` VALUES ('108', 'MAGESWAREN A/L KRISHNAN', null, '25DET14F1060', null, 'DET2B');
INSERT INTO `student` VALUES ('109', 'MUHAMAD AJMAIEN BIN MOHD NASIR', null, '25DET14F1061', null, 'DET2B');
INSERT INTO `student` VALUES ('110', 'MOHAMAD HAFIZ BIN JAMIAN', null, '25DET14F1062', null, 'DET2B');
INSERT INTO `student` VALUES ('111', 'MUHAMMAD AMIRUL RASYID BIN ZAMZURI', null, '25DET14F1063', null, 'DET2B');
INSERT INTO `student` VALUES ('112', 'MUHAMMAD ZAHASNIE BIN ZAMRI', null, '25DET14F1064', null, 'DET2B');
INSERT INTO `student` VALUES ('113', 'MUHAMMAD MUIZ BIN MOHD ZALI', null, '25DET14F1065', null, 'DET2B');
INSERT INTO `student` VALUES ('114', 'MUHAMAD YUSRI BIN HUSIN', null, '25DET14F1066', null, 'DET2B');
INSERT INTO `student` VALUES ('115', 'SYAZWAN SYAZWANI BIN ANNUAR', null, '25DET14F1067', null, 'DET2C');
INSERT INTO `student` VALUES ('116', 'FATIN NABILA BINTI ARIS', null, '25DET14F1068', null, 'DET2C');
INSERT INTO `student` VALUES ('117', 'MUHAMMAD FARIZ BIN BAHARUDIN', null, '25DET14F1069', null, 'DET2C');
INSERT INTO `student` VALUES ('118', 'KHAIRUL SAMSUDDIN BIN SAIDIN', null, '25DET14F1070', null, 'DET2C');
INSERT INTO `student` VALUES ('119', 'MOHAMMAD BAHRUL ULUM BIN SHOMAD', null, '25DET14F1071', null, 'DET2C');
INSERT INTO `student` VALUES ('120', 'AMEERA AMYNA BINTI MOHD KHIR JUHARI', null, '25DET14F1072', null, 'DET2C');
INSERT INTO `student` VALUES ('121', 'ZARUL IKHWAN BIN MOHD IDRIS', null, '25DET14F1073', null, 'DET2C');
INSERT INTO `student` VALUES ('122', 'MUHAMMAD FIRDAUS BIN KAMARUZAMAN', null, '25DET14F1074', null, 'DET2C');
INSERT INTO `student` VALUES ('123', 'MUHAMMAD SYUKRI BIN MOHD PAUDZI', null, '25DET14F1075', null, 'DET2C');
INSERT INTO `student` VALUES ('124', 'MOHD SAIFUDDIN BIN ARIFIN', null, '25DET14F1076', null, 'DET2C');
INSERT INTO `student` VALUES ('125', 'MOHAMAD ADY SYAZANI BIN HAZARASIM', null, '25DET14F1077', null, 'DET2C');
INSERT INTO `student` VALUES ('126', 'MOHAMAD AZAMUDDIN BIN SANI', null, '25DET14F1078', null, 'DET2C');
INSERT INTO `student` VALUES ('127', 'AHMAD SYAZWAN BIN ABD RAZAK', null, '25DET14F1079', null, 'DET2C');
INSERT INTO `student` VALUES ('128', 'MUHAMMAD SYAIFUDDIN BIN NOOR RIZAM', null, '25DET14F1080', null, 'DET2C');
INSERT INTO `student` VALUES ('129', 'SYARINA HANANIM BINTI ABDUL MALEK', null, '25DET14F1081', null, 'DET2C');
INSERT INTO `student` VALUES ('130', 'NUR SALHA BINTI ROSLAN', null, '25DET14F1082', null, 'DET2C');
INSERT INTO `student` VALUES ('131', 'MUHAMAD HAKIM BIN ABD RASID', null, '25DET14F1083', null, 'DET2C');
INSERT INTO `student` VALUES ('132', 'MOHAMAD HARIZ BIN MOHD ZALIS', null, '25DET14F1084', null, 'DET2C');
INSERT INTO `student` VALUES ('133', 'MOHAMMAD FIRDAUS BIN MOHD FAUZI', null, '25DET14F1085', null, 'DET2C');
INSERT INTO `student` VALUES ('134', 'MOHD AKMAL BIN AZMI', null, '25DET14F1086', null, 'DET2C');
INSERT INTO `student` VALUES ('135', 'MOHAMAD MUKHRIZ BIN ABD RAHIM', null, '25DET14F1087', null, 'DET2C');
INSERT INTO `student` VALUES ('136', 'SITI NUR ALWAHIDAH BINTI ABD MALIK', null, '25DET14F1088', null, 'DET2C');
INSERT INTO `student` VALUES ('137', 'MOHAMMAD AIDIL HANAN BIN SALIM', null, '25DET14F1089', null, 'DET2C');
INSERT INTO `student` VALUES ('138', 'AMIRUL FIRDAUS BIN ABDUL WAHAB', null, '25DET14F1090', null, 'DET2C');
INSERT INTO `student` VALUES ('139', 'MOHAMAD NAZRUL AMRY BIN NORMAN', null, '25DET14F1091', null, 'DET2C');
INSERT INTO `student` VALUES ('140', 'IKHMAL YUSRY BIN BAKHTIAR', null, '25DET14F1092', null, 'DET2C');
INSERT INTO `student` VALUES ('141', 'MUHAMAD FADZILAH BIN YAHYA', null, '25DET14F1093', null, 'DET2C');
INSERT INTO `student` VALUES ('142', 'AZIM BIN MOHAMAD AZMAN', null, '25DET14F1094', null, 'DET2C');
INSERT INTO `student` VALUES ('143', 'MUHAMMAD AZLAN BIN ASMAWI', null, '25DET14F1095', null, 'DET2C');
INSERT INTO `student` VALUES ('144', 'MUHAMMAD AKMAL BIN ZAITON', null, '25DET14F1097', null, 'DET2C');
INSERT INTO `student` VALUES ('145', 'NUR ZULAIKA BINTI ZULKIFLI', null, '25DET14F1098', null, 'DET2C');
INSERT INTO `student` VALUES ('146', 'MUHAMMED IQBAL BIN HAMDZAN', null, '25DNS14F2001', null, 'DNS1A');
INSERT INTO `student` VALUES ('147', 'NOR FATIHAH BINTI AZIZ', null, '25DNS14F2003', null, 'DNS1A');
INSERT INTO `student` VALUES ('148', 'NUR FATIHAH BINTI MD ZIN', null, '25DNS14F2005', null, 'DNS1A');
INSERT INTO `student` VALUES ('149', 'MUHAMMAD FIKRY BIN KHALID', null, '25DNS14F2007', null, 'DNS1A');
INSERT INTO `student` VALUES ('150', 'NURUL NAZIRA BINTI YUSOFF', null, '25DNS14F2009', null, 'DNS1A');
INSERT INTO `student` VALUES ('151', 'DARRSHAN A/L BHASKARAN', null, '25DNS14F2011', null, 'DNS1A');
INSERT INTO `student` VALUES ('152', 'SITI ANIS HAMZILA BINTI NOOR AZMAN', null, '25DNS14F2013', null, 'DNS1A');
INSERT INTO `student` VALUES ('153', 'SIMON RAJ A/L MANIAM', null, '25DNS14F2015', null, 'DNS1A');
INSERT INTO `student` VALUES ('154', 'NORFAZIRA HANI BINTI MOHD FADZIL', null, '25DNS14F2017', null, 'DNS1A');
INSERT INTO `student` VALUES ('155', 'MUHAMMAD MUZZAMMEL BIN MUSMAN', null, '25DNS14F2019', null, 'DNS1A');
INSERT INTO `student` VALUES ('156', 'NUR HAFIZAS BINTI EFFENDY BALA', null, '25DNS14F2021', null, 'DNS1A');
INSERT INTO `student` VALUES ('157', 'NUR AIN BINTI BAHARI', null, '25DNS14F2023', null, 'DNS1A');
INSERT INTO `student` VALUES ('158', 'PUTERI AMANINA BINTI ABDUL GHANI', null, '25DNS14F2025', null, 'DNS1A');
INSERT INTO `student` VALUES ('159', 'NUR FATIN BINTI IBRAHIM', null, '25DNS14F2027', null, 'DNS1A');
INSERT INTO `student` VALUES ('160', 'MOHAMAD HAZIQ BIN OTHMAN', null, '25DNS14F2029', null, 'DNS1A');
INSERT INTO `student` VALUES ('161', 'KUMARESAN A/L BALAKRISHNAN', null, '25DNS14F2031', null, 'DNS1A');
INSERT INTO `student` VALUES ('162', 'THIYAGGARAJ A/L UDIAKUMARAN', null, '25DNS14F2033', null, 'DNS1A');
INSERT INTO `student` VALUES ('163', 'AMIRUL IKHWAN BIN KHAIRUL AMIN', null, '25DNS14F2035', null, 'DNS1A');
INSERT INTO `student` VALUES ('164', 'MOHAMAD AMIRULDIN BIN GUMUN', null, '25DNS14F2037', null, 'DNS1A');
INSERT INTO `student` VALUES ('165', 'MOHAMED SAZREEN BIN SAZALI', null, '25DNS14F2039', null, 'DNS1A');
INSERT INTO `student` VALUES ('166', 'NUR NADIA NAJLA BINTI MOHD ZAKI', null, '25DNS14F2041', null, 'DNS1A');
INSERT INTO `student` VALUES ('167', 'QAMRATUL AALIAH BINTI RAMLAN', null, '25DNS14F2043', null, 'DNS1A');
INSERT INTO `student` VALUES ('168', 'MUHAMMAD FAKHRUDDIN BIN MOHD YAHYA', null, '25DNS14F2045', null, 'DNS1A');
INSERT INTO `student` VALUES ('169', 'AMIRUL ASHARAF BIN A HALIM', null, '25DNS14F2047', null, 'DNS1A');
INSERT INTO `student` VALUES ('170', 'NUR ZULAIKA BINTI ZAINUDDIN', null, '25DNS14F2049', null, 'DNS1A');
INSERT INTO `student` VALUES ('171', 'NORHAFIKA HANIS BINTI ALI', null, '25DNS14F2051', null, 'DNS1A');
INSERT INTO `student` VALUES ('172', 'MUHAMMAD IBNU ASYRAFF BIN MOHAMMAD FADZIL', null, '25DNS14F2053', null, 'DNS1A');
INSERT INTO `student` VALUES ('173', 'AHMAD NASRULLAH BIN AZMAN', null, '25DNS14F2055', null, 'DNS1A');
INSERT INTO `student` VALUES ('174', 'DINNISH A/L K RAJANDERAN', null, '25DNS14F2057', null, 'DNS1A');
INSERT INTO `student` VALUES ('175', 'BURHANUDDIN BIN MOHAMAD AHAD', null, '25DNS14F2059', null, 'DNS1A');
INSERT INTO `student` VALUES ('176', 'NURUL SHAFIKA BINTI MD IDROS', null, '25DNS14F2002', null, 'DNS1B');
INSERT INTO `student` VALUES ('177', 'ENDRA KUMAR A/L MUTHU KUMAR', null, '25DNS14F2004', null, 'DNS1B');
INSERT INTO `student` VALUES ('178', 'AMMAR ZAHID AKMAL BIN ZAKARIA', null, '25DNS14F2006', null, 'DNS1B');
INSERT INTO `student` VALUES ('179', 'SITI HUSYADA BINTI HUSSIN', null, '25DNS14F2008', null, 'DNS1B');
INSERT INTO `student` VALUES ('180', 'AHMAD FIKRUL AUZAIE BIN AHMAD TARMIDI', null, '25DNS14F2010', null, 'DNS1B');
INSERT INTO `student` VALUES ('181', 'DEVIKA A/P LETCHUMANAN', null, '25DNS14F2012', null, 'DNS1B');
INSERT INTO `student` VALUES ('182', 'LAVANIAH A/P RANGANATHAN', null, '25DNS14F2014', null, 'DNS1B');
INSERT INTO `student` VALUES ('183', 'NORLIAYANA BINTI MOHD ALI', null, '25DNS14F2016', null, 'DNS1B');
INSERT INTO `student` VALUES ('184', 'MOHD AZRIN IMAN BIN MOHD RIDUAN', null, '25DNS14F2018', null, 'DNS1B');
INSERT INTO `student` VALUES ('185', 'MUHAMMAD NAZHIIM BIN SELAIMAN', null, '25DNS14F2020', null, 'DNS1B');
INSERT INTO `student` VALUES ('186', 'ROHANA BINTI RAMLI', null, '25DNS14F2022', null, 'DNS1B');
INSERT INTO `student` VALUES ('187', 'NUR AMIRAH BINTI MAZLAN', null, '25DNS14F2024', null, 'DNS1B');
INSERT INTO `student` VALUES ('188', 'MUHAMMAD HAFIDZ AL AZRAEI BIN AMIN AL HAFIDZ', null, '25DNS14F2026', null, 'DNS1B');
INSERT INTO `student` VALUES ('189', 'NUR MASLINDA BINTI MAZALAN', null, '25DNS14F2028', null, 'DNS1B');
INSERT INTO `student` VALUES ('190', 'SITI MARYAM BINTI MOHAMMED ZAHARY', null, '25DNS14F2030', null, 'DNS1B');
INSERT INTO `student` VALUES ('191', 'AHMAD NURHAQIM BIN YUSOF', null, '25DNS14F2034', null, 'DNS1B');
INSERT INTO `student` VALUES ('192', 'NURUL UMIYI BINTI OMAR', null, '25DNS14F2036', null, 'DNS1B');
INSERT INTO `student` VALUES ('193', 'MUHAMAD MORSID BIN ARIFFIN', null, '25DNS14F2038', null, 'DNS1B');
INSERT INTO `student` VALUES ('194', 'NUR FARIZA BINTI AHMAD', null, '25DNS14F2040', null, 'DNS1B');
INSERT INTO `student` VALUES ('195', 'MUHAMMAD FARIDIL AJWAD BIN AHMAD ROZALI', null, '25DNS14F2042', null, 'DNS1B');
INSERT INTO `student` VALUES ('196', 'IZATUL IZLYNN BINTI MAZLAN', null, '25DNS14F2044', null, 'DNS1B');
INSERT INTO `student` VALUES ('197', 'MUHAMMAD AMIR AKMAL BIN ADOR', null, '25DNS14F2046', null, 'DNS1B');
INSERT INTO `student` VALUES ('198', 'SITI MUNIRAH BINTI MURID @ MURAD', null, '25DNS14F2048', null, 'DNS1B');
INSERT INTO `student` VALUES ('199', 'AMARAVATHI A/P LECHEMENAN', null, '25DNS14F2050', null, 'DNS1B');
INSERT INTO `student` VALUES ('200', 'MUHAMMAD SHAZUWAN BIN MOHD NORDIN', null, '25DNS14F2052', null, 'DNS1B');
INSERT INTO `student` VALUES ('201', 'NUUR AINAA BINTI IDROS', null, '25DNS14F2054', null, 'DNS1B');
INSERT INTO `student` VALUES ('202', 'SOFIAH SYAHIRA BINTI ZULKHAIRI', null, '25DNS14F2056', null, 'DNS1B');
INSERT INTO `student` VALUES ('203', 'MUHAMMAD SULAIMAN BIN MAHMOD', null, '25DNS14F2058', null, 'DNS1B');
INSERT INTO `student` VALUES ('204', 'MUHAMMAD YUSRI BIN AZMAN', null, '25DNS14F1001', null, 'DNS2A');
INSERT INTO `student` VALUES ('205', 'AZREL AIMAN BIN AZEMAN', null, '25DNS14F1005', null, 'DNS2A');
INSERT INTO `student` VALUES ('206', 'NUR IZZATI BINTI MOKTAR', null, '25DNS14F1007', null, 'DNS2A');
INSERT INTO `student` VALUES ('207', 'NURNAJWA BINTI MOHD.SUHAIMI', null, '25DNS14F1010', null, 'DNS2A');
INSERT INTO `student` VALUES ('208', 'NUR SYAFIQAH BINTI ISMAIL', null, '25DNS14F1013', null, 'DNS2A');
INSERT INTO `student` VALUES ('209', 'MUHAMAD HAZWAN BIN AZMAI @ AZMI', null, '25DNS14F1016', null, 'DNS2A');
INSERT INTO `student` VALUES ('210', 'SITI MARIAM BINTI ZAINAL', null, '25DNS14F1022', null, 'DNS2A');
INSERT INTO `student` VALUES ('211', 'IMELDA A/P CHARLES', null, '25DNS14F1025', null, 'DNS2A');
INSERT INTO `student` VALUES ('212', 'NUR HIDAYATUL NAQIAH BINTI MISMAN', null, '25DNS14F1028', null, 'DNS2A');
INSERT INTO `student` VALUES ('213', 'NUR ATIQAH BINTI OTHMAN', null, '25DNS14F1031', null, 'DNS2A');
INSERT INTO `student` VALUES ('214', 'SITI AIDA SHARINA BINTI A. KARIM', null, '25DNS14F1034', null, 'DNS2A');
INSERT INTO `student` VALUES ('215', 'NORSHAHIRAH BINTI OTHMAN', null, '25DNS14F1037', null, 'DNS2A');
INSERT INTO `student` VALUES ('216', 'SAIFUL ABID BIN MOHD RAZIB', null, '25DNS14F1040', null, 'DNS2A');
INSERT INTO `student` VALUES ('217', 'FAZRIL FARHAN BIN DANIAL', null, '25DNS14F1043', null, 'DNS2A');
INSERT INTO `student` VALUES ('218', 'NORSHAHIRA BINTI MOHD SHAH', null, '25DNS14F1046', null, 'DNS2A');
INSERT INTO `student` VALUES ('219', 'MUHAMAD FAUZIE BIN SUPANDI', null, '25DNS14F1049', null, 'DNS2A');
INSERT INTO `student` VALUES ('220', 'NUR ATIRA AFFIRA BINTI MUSTAFA', null, '25DNS14F1052', null, 'DNS2A');
INSERT INTO `student` VALUES ('221', 'EMIRUL IZZAT BIN EDON', null, '25DNS14F1055', null, 'DNS2A');
INSERT INTO `student` VALUES ('222', 'MUHAMMAD HAFIZ IZMAN BIN AB RAHIM', null, '25DNS14F1058', null, 'DNS2A');
INSERT INTO `student` VALUES ('223', 'NURHANANI BINTI JAMALUDIN', null, '25DNS14F1064', null, 'DNS2A');
INSERT INTO `student` VALUES ('224', 'MUHAMMAD AMIRUL SYAFIQ BIN MOHD KAMAL', null, '25DNS14F1067', null, 'DNS2A');
INSERT INTO `student` VALUES ('225', 'KUGAN A/L GANESAN', null, '25DNS14F1070', null, 'DNS2A');
INSERT INTO `student` VALUES ('226', 'VISHYWAAN A/L MANOGARAN', null, '25DNS14F1073', null, 'DNS2A');
INSERT INTO `student` VALUES ('227', 'MOHD NAZRI BIN KABURI', null, '25DNS14F1076', null, 'DNS2A');
INSERT INTO `student` VALUES ('228', 'SAKILLAH A/P SATTIAMOORTHY', null, '25DNS14F1079', null, 'DNS2A');
INSERT INTO `student` VALUES ('229', 'MUHAMMAD FIRDAUS BIN MOHD JASMAN', null, '25DNS14F1082', null, 'DNS2A');
INSERT INTO `student` VALUES ('230', 'ANDREW WONG WEI KEAT', null, '25DNS14F1085', null, 'DNS2A');
INSERT INTO `student` VALUES ('231', 'ABNER DEVAPRATHEEP A/L SELVADURAI', null, '25DNS14F1088', null, 'DNS2A');
INSERT INTO `student` VALUES ('232', 'SOMAN A/L SELVA RAJA', null, '25DNS14F1091', null, 'DNS2A');
INSERT INTO `student` VALUES ('233', 'NOR SHAFIKA BINTI SIDEK', null, '25DNS14F1095', null, 'DNS2A');
INSERT INTO `student` VALUES ('234', 'MUHAMMAD KHAIDIR BIN MD ALI', null, '25DNS14F1097', null, 'DNS2A');
INSERT INTO `student` VALUES ('235', 'MUHAMMAD MIFZAL BIN OTHMAN', null, '25DNS14F1002', null, 'DNS2B');
INSERT INTO `student` VALUES ('236', 'NUR SYAZA YUSRA BINTI SHUKOR', null, '25DNS14F1008', null, 'DNS2B');
INSERT INTO `student` VALUES ('237', 'C.EGAATHARSHINEE A/P CHANDRAN', null, '25DNS14F1011', null, 'DNS2B');
INSERT INTO `student` VALUES ('238', 'GANESH A/L ANPARASAN', null, '25DNS14F1014', null, 'DNS2B');
INSERT INTO `student` VALUES ('239', 'ALYA NATASHA BINTI HAZRAT', null, '25DNS14F1017', null, 'DNS2B');
INSERT INTO `student` VALUES ('240', 'NOOR ZAFIRAH AISHAH BINTI ABD RAHMAN', null, '25DNS14F1019', null, 'DNS2B');
INSERT INTO `student` VALUES ('241', 'SITI NUR MAIZURAH BINTI ISMAIL', null, '25DNS14F1020', null, 'DNS2B');
INSERT INTO `student` VALUES ('242', 'MUHAMAD NAZIM BIN ZAMRIN', null, '25DNS14F1023', null, 'DNS2B');
INSERT INTO `student` VALUES ('243', 'MUHAMMAD ZUL HANIF BIN ISMAIL', null, '25DNS14F1026', null, 'DNS2B');
INSERT INTO `student` VALUES ('244', 'MOHAMAD ZAIDI BIN ANIS', null, '25DNS14F1029', null, 'DNS2B');
INSERT INTO `student` VALUES ('245', 'MOHAMAD HAZWAN IFWAT BIN YAZID', null, '25DNS14F1032', null, 'DNS2B');
INSERT INTO `student` VALUES ('246', 'NORFAZLIANA BINTI JAAFAR', null, '25DNS14F1035', null, 'DNS2B');
INSERT INTO `student` VALUES ('247', 'MUHAMMAD AIDIL FITRI BIN RAHMAN', null, '25DNS14F1038', null, 'DNS2B');
INSERT INTO `student` VALUES ('248', 'ERNA KAMILA BINTI JOHARI', null, '25DNS14F1041', null, 'DNS2B');
INSERT INTO `student` VALUES ('249', 'NUR AZIELA BINTI SUHAIMI', null, '25DNS14F1044', null, 'DNS2B');
INSERT INTO `student` VALUES ('250', 'AKMAL AIZAD BIN ADZMAN', null, '25DNS14F1047', null, 'DNS2B');
INSERT INTO `student` VALUES ('251', 'AFIF AIMAN BIN SAMSOR NAHAR', null, '25DNS14F1050', null, 'DNS2B');
INSERT INTO `student` VALUES ('252', 'LINDA GRACE A/P MICHEAL', null, '25DNS14F1053', null, 'DNS2B');
INSERT INTO `student` VALUES ('253', 'RUEBANA GEORGE A/P EKAMBARAM', null, '25DNS14F1056', null, 'DNS2B');
INSERT INTO `student` VALUES ('254', 'NOOR MUHAMMAD RASYID BIN NOR AZMAN', null, '25DNS14F1059', null, 'DNS2B');
INSERT INTO `student` VALUES ('255', 'NURUL SYAZWANI BINTI ABDUL HALIM', null, '25DNS14F1062', null, 'DNS2B');
INSERT INTO `student` VALUES ('256', 'AMIRUL AFIQ BIN AHKAMAL', null, '25DNS14F1065', null, 'DNS2B');
INSERT INTO `student` VALUES ('257', 'SIVAM A/L JAYAPREKAS NARAYANAN', null, '25DNS14F1071', null, 'DNS2B');
INSERT INTO `student` VALUES ('258', 'NURALYANI AQIRA BINTI MOHAMED RAFEE', null, '25DNS14F1072', null, 'DNS2B');
INSERT INTO `student` VALUES ('259', 'FARAH SYAMILAH BINTI SAZALI', null, '25DNS14F1074', null, 'DNS2B');
INSERT INTO `student` VALUES ('260', 'MUHAMMAD SHUKRI BIN MAT RAIS', null, '25DNS14F1077', null, 'DNS2B');
INSERT INTO `student` VALUES ('261', 'NUR SYAZWANI BINTI MOHD SHAHRIMAN', null, '25DNS14F1080', null, 'DNS2B');
INSERT INTO `student` VALUES ('262', 'MUHAMAD HAZEQ AMIR BIN AZIS', null, '25DNS14F1083', null, 'DNS2B');
INSERT INTO `student` VALUES ('263', 'TIVAGAR A/L VADIVELU', null, '25DNS14F1086', null, 'DNS2B');
INSERT INTO `student` VALUES ('264', 'NUR IKHWANA BINTI MOHAMMAD NIZAM', null, '25DNS14F1092', null, 'DNS2B');
INSERT INTO `student` VALUES ('265', 'MUHAMMAD DIZAMUDDIN BIN MAHADI', null, '25DNS14F1094', null, 'DNS2B');
INSERT INTO `student` VALUES ('266', 'MUHAMAD IZUL HISHAM BIN ABDULLAH', null, '25DNS14F1096', null, 'DNS2B');
INSERT INTO `student` VALUES ('267', 'NOR HAFIZUDDIN BIN NOR HISHAM', null, '25DNS14F1003', null, 'DNS2C');
INSERT INTO `student` VALUES ('268', 'ROHAYU BINTI JAMIL', null, '25DNS14F1006', null, 'DNS2C');
INSERT INTO `student` VALUES ('269', 'NUR AQILAH BINTI ROSLI', null, '25DNS14F1009', null, 'DNS2C');
INSERT INTO `student` VALUES ('270', 'MUHAMMAD HUSAINI BIN AZLAN', null, '25DNS14F1012', null, 'DNS2C');
INSERT INTO `student` VALUES ('271', 'MUHAMMAD HARRAZ BIN MOHAMAD HAMZAH', null, '25DNS14F1015', null, 'DNS2C');
INSERT INTO `student` VALUES ('272', 'UMA A/P PALANY SAMY', null, '25DNS14F1018', null, 'DNS2C');
INSERT INTO `student` VALUES ('273', 'ALIF ISKANDAR BIN AZURA', null, '25DNS14F1021', null, 'DNS2C');
INSERT INTO `student` VALUES ('274', 'MOHAMAD HAFIZZI BIN ZAKARIA', null, '25DNS14F1024', null, 'DNS2C');
INSERT INTO `student` VALUES ('275', 'NURIL SAKINAH BINTI HUSSIEN', null, '25DNS14F1027', null, 'DNS2C');
INSERT INTO `student` VALUES ('276', 'OMAR AREFF BIN YAHYA', null, '25DNS14F1030', null, 'DNS2C');
INSERT INTO `student` VALUES ('277', 'PUTERI NATASA BINTI ABDUL WAHAB', null, '25DNS14F1033', null, 'DNS2C');
INSERT INTO `student` VALUES ('278', 'NUR ATIKAH NABILAH BINTI DOLLAH', null, '25DNS14F1036', null, 'DNS2C');
INSERT INTO `student` VALUES ('279', 'NUR AISYAH BINTI ABD RAZAK', null, '25DNS14F1039', null, 'DNS2C');
INSERT INTO `student` VALUES ('280', 'NUR AMIRA FAZIRA BINTI HISAMUDDIN', null, '25DNS14F1042', null, 'DNS2C');
INSERT INTO `student` VALUES ('281', 'NUR HAMIZAH BINTI MOHD RASHID', null, '25DNS14F1045', null, 'DNS2C');
INSERT INTO `student` VALUES ('282', 'MUHAMMAD AKHMAL BIN MAZLAN', null, '25DNS14F1048', null, 'DNS2C');
INSERT INTO `student` VALUES ('283', 'MUHAMMAD NAIMI BIN ABD GHANI', null, '25DNS14F1051', null, 'DNS2C');
INSERT INTO `student` VALUES ('284', 'NUR ANISAH BINTI MOHD NOOR', null, '25DNS14F1054', null, 'DNS2C');
INSERT INTO `student` VALUES ('285', 'RISHI A/L RAMAN', null, '25DNS14F1057', null, 'DNS2C');
INSERT INTO `student` VALUES ('286', 'AINA FATEHA BINTI ABDUL AZIZ', null, '25DNS14F1060', null, 'DNS2C');
INSERT INTO `student` VALUES ('287', 'FIZEE NATASYA BINTI SIDEK', null, '25DNS14F1063', null, 'DNS2C');
INSERT INTO `student` VALUES ('288', 'MUHAMMAD HAMNI BIN MOHD ADAM', null, '25DNS14F1066', null, 'DNS2C');
INSERT INTO `student` VALUES ('289', 'KUGENESWARI A/P MURUGAYA', null, '25DNS14F1068', null, 'DNS2C');
INSERT INTO `student` VALUES ('290', 'MUHAMMAD SYAHRIZZAT BIN ADNAN', null, '25DNS14F1069', null, 'DNS2C');
INSERT INTO `student` VALUES ('291', 'AHMAD AFIQ BIN AHMAD AINA', null, '25DNS14F1075', null, 'DNS2C');
INSERT INTO `student` VALUES ('292', 'DATCHINI A/P LECHEMENAN', null, '25DNS14F1078', null, 'DNS2C');
INSERT INTO `student` VALUES ('293', 'SHARMILAN A/L SHUNMUGANATHAN', null, '25DNS14F1081', null, 'DNS2C');
INSERT INTO `student` VALUES ('294', 'MUHAMMAD AIZAT BIN ZULKIFLE', null, '25DNS14F1084', null, 'DNS2C');
INSERT INTO `student` VALUES ('295', 'MUHAMMAD FARIDUDDIN BIN MOHD HUSNI', null, '25DNS14F1087', null, 'DNS2C');
INSERT INTO `student` VALUES ('296', 'THANABALAN A/L BALASANTHERAN', null, '25DNS14F1089', null, 'DNS2C');
INSERT INTO `student` VALUES ('297', 'MOHAMAD IBRAHEM BIN MOHAMED JAFER ALI', null, '25DNS14F1090', null, 'DNS2C');
INSERT INTO `student` VALUES ('298', 'NADIATUL SHAHIRA BINTI SAHARUDIN', null, '25DNS14F1093', null, 'DNS2C');

-- ----------------------------
-- Table structure for uniform
-- ----------------------------
DROP TABLE IF EXISTS `uniform`;
CREATE TABLE `uniform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `accessKey` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

-- ----------------------------
-- Records of uniform
-- ----------------------------
INSERT INTO `uniform` VALUES ('1', 'Pengakap', '3', null);
INSERT INTO `uniform` VALUES ('2', 'Bomba', '2', null);
INSERT INTO `uniform` VALUES ('3', 'Polis', '3', null);
INSERT INTO `uniform` VALUES ('4', 'Ambulans', '2', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `apikey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'karim razali', 'karim@gst.my', '0123456789', 'admin', null);
INSERT INTO `user` VALUES ('2', 'zarina', 'zarina', 'zarina laili', 'zarina@gst.my', '0123456789', 'user', null);
INSERT INTO `user` VALUES ('3', 'leman', 'leman', 'suleiman akhlaken', 'leman@gst.my', '0123456789', 'user', null);
