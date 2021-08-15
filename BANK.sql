DROP DATABASE IF EXISTS BANK;
CREATE DATABASE BANK;
USE BANK;

CREATE TABLE `Card` (
  `Account_Name` varchar(255) NOT NULL,
  `Account_Number` varchar(255),
  `Card_Number` varchar(13) NOT NULL,
  `CVV` varchar(255) NOT NULL,
  `Card_Type` varchar(255),
  PRIMARY KEY (`Card_Number`)
  
);

INSERT INTO `Card` (`Account_Name`,`Account_Number`,`Card_Number`,`CVV`,`Card_Type`) VALUES ("Kadeem Pratt","1690061536599","1610021457099","913","4556309699319"),("Cade Clements","1693111281599","1623082245099","924","4485766495583"),("Emmanuel Hoffman","1684020197499","1664082587499","192","4716206208979146"),("Neil Floyd","1609092864799","1669073005899","581","424 67665 29396 451"),("Stuart Delaney","1650041949099","1615023069499","904","4716548674140871"),("Theodore Woods","1636111736899","1601050210899","279","453902 904429 8033"),("Ralph Robertson","1688030930099","1656090234599","295","4556580281985516"),("Keefe Potts","1625031622199","1645021187199","790","4716473336139569"),("Nash Wood","1639110339999","1643050324599","969","491667 4455949880"),("Armand Howell","1676060514399","1677101863799","458","455601 414249 2777");
INSERT INTO `Card` (`Account_Name`,`Account_Number`,`Card_Number`,`CVV`,`Card_Type`) VALUES ("Logan Alvarez","1641110458899","1603030419899","843","4005062494666"),("John Rodriguez","1676120399099","1664041898599","880","4532100960770"),("Colton Phillips","1666072509899","1633100672899","271","4024007183268704"),("Giacomo Austin","1652040415699","1683052600699","835","4461583913108"),("Clayton Rutledge","1681052151299","1677071365999","809","4532377180581"),("Rajah Dunn","1624120362499","1607123098899","491","4024007106650368"),("Mohammad Charles","1644031177899","1690070304699","425","4916 0085 7287 8518"),("Ivan Tanner","1642120415399","1673091012499","312","448 56105 85283 320"),("Xenos Hess","1699111767099","1633052890299","365","4916 649 63 6951"),("Victor Waters","1693113075599","1666091922699","942","4539196076544");

ALTER TABLE card DROP COLUMN Account_Name;

CREATE TABLE `Customer` (
  `Names` varchar(255) NOT NULL,
  `ID_Number` varchar(13) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Account_Number` varchar(13) NOT NULL,
  PRIMARY KEY (`ID_Number`)
);

INSERT INTO `Customer` (`Names`,`ID_Number`,`Address`,`Phone_Number`,`Email`,`Account_Number`) VALUES ("Claudia Z. Lowery","1621121553499","P.O. Box 540, 8923 Nibh. Ave","1-140-572-2950","dui.Suspendisse@uteros.edu","1690061536599"),("Brielle W. Carney","1677060702599","P.O. Box 689, 8083 Tincidunt, St.","1-810-786-2411","eros.turpis.non@Curabiturconsequat.net","1693111281599"),("Quyn R. Crawford","1624020408799","817-4384 Non, Road","1-902-147-5493","scelerisque@nislsem.co.uk","1684020197499"),("Azalia Atkins","1654100238199","5556 Eu Street","1-153-818-6959","Quisque.tincidunt@eliterat.co.uk","1609092864799"),("Lysandra Castillo","1649021666499","5345 Netus Ave","1-625-951-7440","Nullam.lobortis@ultriciesdignissimlacus.org","1650041949099"),("Hiroko Mathis","1694042916599","Ap #943-5172 Elit. Street","1-242-486-7590","nibh.vulputate@nibhsitamet.net","1636111736899"),("Olga Lowery","1638101000199","8286 Egestas Road","1-796-773-8865","gravida@purusDuis.ca","1688030930099"),("Liberty Mclaughlin","1637032887199","2513 Dolor Av.","1-178-204-7955","sed.pede.Cum@SuspendissesagittisNullam.org","1625031622199"),("Allistair N. Rivera","1602010107899","6977 Odio Avenue","1-652-998-1427","malesuada.fames.ac@euismodurnaNullam.edu","1639110339999"),("Hammett Sears","1672101218999","P.O. Box 428, 1252 Est. St.","1-625-128-9700","ante@erat.com","1676060514399");
INSERT INTO `Customer` (`Names`,`ID_Number`,`Address`,`Phone_Number`,`Email`,`Account_Number`) VALUES ("Salvador K. Stewart","1683110314299","550-8593 Eu Street","1-451-625-4031","Maecenas.libero@molestie.edu","1641110458899"),("Kaden Stewart","1606073064699","P.O. Box 344, 2608 Magnis St.","1-406-319-8011","elit.dictum.eu@non.com","1676120399099"),("Erasmus G. Flores","1690040831899","650-9461 Dolor. Rd.","1-304-213-3427","commodo@tincidunt.org","1666072509899"),("Judah Craig","1602102190899","Ap #422-510 Mi Rd.","1-654-390-1218","in@eratsemperrutrum.edu","1652040415699"),("Luke K. Kelly","1685102848199","3899 Sed Road","1-688-311-4230","Duis@lorem.com","1681052151299"),("Rhona L. Mcdaniel","1630012458199","P.O. Box 362, 6849 Sapien. Road","1-336-295-6170","amet.lorem@rhoncus.ca","1624120362499"),("Faith B. Garcia","1671021228599","Ap #906-8885 Sem Rd.","1-913-835-6825","ipsum.primis@augueporttitorinterdum.com","1644031177899"),("Shea Odom","1689020115099","960-7577 Ligula Rd.","1-497-330-7198","mauris@Donecegestas.edu","1642120415399"),("Fiona Pierce","1666012223299","Ap #681-7419 Eu St.","1-938-546-5032","sociosqu@eratEtiam.co.uk","1699111767099"),("Carter Flores","1677032657499","367-3519 Morbi St.","1-772-108-9917","eleifend.egestas.Sed@Integermollis.co.uk","1693113075599");


CREATE TABLE `Mobi_Banking` (
  `Phone_Number` varchar(100) NOT NULL,
  `Account_Number` varchar(13) NOT NULL,
  PRIMARY KEY (`Phone_Number`)
);

INSERT INTO `Mobi_Banking` (`Phone_Number`,`Account_Number`) VALUES ("1-140-572-2950","1690061536599"),("1-810-786-2411","1693111281599"),("1-902-147-5493","1684020197499"),("1-153-818-6959","1609092864799"),("1-625-951-7440","1650041949099"),("1-242-486-7590","1636111736899"),("1-796-773-8865","1688030930099"),("1-178-204-7955","1625031622199"),("1-652-998-1427","1639110339999"),("1-625-128-9700","1676060514399");
INSERT INTO `Mobi_Banking` (`Phone_Number`,`Account_Number`) VALUES ("1-451-625-4031","1641110458899"),("1-406-319-8011","1676120399099"),("1-304-213-3427","1666072509899"),("1-654-390-1218","1652040415699"),("1-688-311-4230","1681052151299"),("1-336-295-6170","1624120362499"),("1-913-835-6825","1644031177899"),("1-497-330-7198","1642120415399"),("1-938-546-5032","1699111767099"),("1-772-108-9917","1693113075599");



CREATE TABLE `Employee` (
  `Name` varchar(255) NOT NULL,
  `Employee_ID` varchar(11) NOT NULL,
  `ID_Number` varchar(13) NOT NULL,
  `Department_ID` varchar(11) NOT NULL,
  `Date_Of_Employment` varchar(255),
  `Address` varchar(255) NOT NULL,
  `Branch_ID` varchar(11) NOT NULL,
  PRIMARY KEY (`Employee_ID`)
);

INSERT INTO `Employee` (`Name`,`Employee_ID`,`ID_Number`,`Department_ID`,`Date_Of_Employment`,`Address`,`Branch_ID`) VALUES ("Signe Y. Houston","73230614299","1678032967199","23225187999","2021-03-04 07:14:19","882-8330 Egestas Street","38651935899"),("Zeph M. Hinton","93255113499","1653022742999","99313935099","2022-06-06 13:16:17","2412 Proin Ave","38651935899"),("Honorato L. Cooley","91698872099","1628071491499","31682480299","2022-03-13 17:36:18","P.O. Box 262, 5220 Faucibus Rd.","50362318299"),("Wade G. Cannon","67855246599","1672042382699","03637532399","2021-06-23 09:39:47","P.O. Box 674, 4076 Duis St.","50362318299"),("Shelby T. Reese","43521752299","1627110958099","43985176399","2021-09-10 09:44:26","Ap #931-9908 Eu, Rd.","75365258799"),("Chloe B. Mays","64263852499","1697022502899","98339473899","2021-09-10 17:36:10","Ap #894-5579 Nec Avenue","75365258799"),("Anjolie T. Figueroa","59584501499","1603080255199","29972900199","2020-06-22 12:44:28","2044 Aliquam Rd.","78949510099"),("Nayda P. Pena","53815067899","1664122529199","60421341299","2021-06-02 18:35:50","4278 Consectetuer Rd.","78949510099"),("Suki D. Shannon","65453165799","1657020682799","95777690099","2022-06-10 05:41:28","845-9430 Consequat, Ave","21698397799"),("Baker E. Snider","28330328499","1682011097499","96200574399","2021-10-23 22:31:31","558-4050 Urna Av.","21698397799");


CREATE TABLE `Department` (
  `Department_Name` TEXT NOT NULL,
  `Department_ID` varchar(11) NOT NULL,
  `Department_Head` varchar(255) NOT NULL,
  `Branch_ID` varchar(11) NOT NULL,
  PRIMARY KEY (`Department_ID`)
);

INSERT INTO `Department` (`Department_Name`,`Department_ID`,`Department_Head`,`Branch_ID`) VALUES ("mollis","68451949999","Elton C. Vaughn","21698397799"),("lobortis,","09857311099","Tate W. Delgado","38651935899"),("vitae","51701055099","Cairo O. Powell","50362318299"),("risus.","42896985199","Rama B. Santana","75365258799"),("neque.","27543729299","Hakeem O. Kaufman","78949510099");


CREATE TABLE `Transaction` (
  `Account_Number` varchar(13) default NULL,
  `Transaction_ID` varchar(13) NOT NULL,
  `Transaction_Date` varchar(255),
  `Transaction_Type` TEXT default NULL,
  `Amount` varchar(100) default NULL,
  PRIMARY KEY (`Transaction_ID`)
);

INSERT INTO `Transaction` (`Account_Number`,`Transaction_ID`,`Transaction_Date`,`Transaction_Type`,`Amount`) VALUES ("1639090623499","16681111 5523","2020-10-10 00:32:10","non","$5,952"),("1699122196999","16080624 2749","2021-12-31 15:57:51","nascetur","$8,559"),("1630041846799","16580102 4224","2020-08-02 21:48:18","aliquet,","$7,371"),("1631051602999","16750109 8649","2020-09-01 09:48:19","enim","$5,865"),("1606122579799","16721208 7170","2020-08-23 09:54:43","sociis","$8,563"),("1661061010799","16670827 9838","2020-06-12 15:41:00","volutpat","$5,787"),("1692042663599","16300314 1433","2021-08-24 03:10:25","pede","$6,718"),("1640070872999","16091006 9681","2021-06-16 16:41:56","magna.","$9,897"),("1691082770499","16770420 5447","2021-04-05 06:26:15","Proin","$9,458"),("1664030821099","16070508 4127","2021-12-23 10:46:32","Fusce","$5,355");
INSERT INTO `Transaction` (`Account_Number`,`Transaction_ID`,`Transaction_Date`,`Transaction_Type`,`Amount`) VALUES ("1672122045899","16960222 1740","2020-11-23 14:46:45","senectus","$5,406"),("1698102447499","16041130 3126","2022-01-11 09:14:39","ut","$8,845"),("1699061605199","16570525 6872","2021-05-11 17:16:00","nonummy","$8,387"),("1655011487499","16960912 4087","2022-01-29 09:23:33","augue","$9,423"),("1647061831899","16150312 1251","2021-12-09 23:31:48","vestibulum","$9,245"),("1680113039199","16870513 2069","2022-02-25 03:03:00","Aliquam","$8,457"),("1658121541599","16401013 7745","2022-01-25 19:30:22","Quisque","$5,905"),("1617101536599","16220222 3489","2021-03-04 06:34:08","ligula.","$7,642"),("1604121057899","16931218 6001","2022-05-02 03:49:04","mauris","$5,124"),("1656111446899","16061014 7936","2021-01-30 10:42:31","nec","$6,931");



CREATE TABLE `Account` (
  `Account_Number` varchar(13) NOT NULL,
  `Account_Type` TEXT NOT NULL,
  `Account_Balance` varchar(100) NOT NULL,
  PRIMARY KEY (`Account_Number`)
);

INSERT INTO `Account` (`Account_Number`,`Account_Type`,`Account_Balance`) VALUES ("1636111736899","nunc","$5,072"),("1641110458899","interdum.","$5,393"),("1624120362499","eu,","$5,734"),("1690061536599","Proin","$9,913"),("1650041949099","orci,","$5,395"),("1693111281599","Nunc","$8,213"),("1699111767099","nec","$7,565"),("1666072509899","Nullam","$5,279"),("1639110339999","ullamcorper","$7,018"),("1625031622199","nisl.","$9,574");
INSERT INTO `Account` (`Account_Number`,`Account_Type`,`Account_Balance`) VALUES ("1688030930099","augue","$6,707"),("1676120399099","aliquet","$9,730"),("1684020197499","amet","$6,794"),("1693113075599","ut,","$5,155"),("1609092864799","convallis","$7,506"),("1642120415399","malesuada","$6,303"),("1681052151299","Lorem","$7,856"),("1676060514399","montes,","$6,552"),("1652040415699","enim","$9,945"),("1644031177899","sollicitudin","$9,988");



CREATE TABLE `Branch` (
  `Branch_Name` TEXT NOT NULL,
  `Branch_ID` varchar(11) NOT NULL,
  PRIMARY KEY (`Branch_ID`)
);

INSERT INTO `Branch` (`Branch_Name`,`Branch_ID`) VALUES ("odio.","75365258799"),("scelerisque,","78949510099"),("nec,","38651935899"),("adipiscing,","21698397799"),("justo","50362318299");

show tables;
SELECT * FROM EMPLOYEE;
SELECT BRANCH.* , DEPARTMENT.* FROM DEPARTMENT INNER JOIN BRANCH ON BRANCH.BRANCH_ID = DEPARTMENT.BRANCH_ID;
SELECT * FROM BRANCH;
