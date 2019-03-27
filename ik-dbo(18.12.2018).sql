/*
Navicat SQL Server Data Transfer

Source Server         : mssql
Source Server Version : 110000
Source Host           : 172.41.41.9:1433
Source Database       : ik
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2018-12-18 11:07:50
*/


-- ----------------------------
-- Table structure for [dbo].[Arsiv_Ihaletip]
-- ----------------------------
DROP TABLE [dbo].[Arsiv_Ihaletip]
GO
CREATE TABLE [dbo].[Arsiv_Ihaletip] (
[id] int NOT NULL ,
[ihaletipi] nvarchar(25) NOT NULL 
)


GO

-- ----------------------------
-- Records of Arsiv_Ihaletip
-- ----------------------------
INSERT INTO [dbo].[Arsiv_Ihaletip] VALUES (N'1', N'MERKEZ');
GO
INSERT INTO [dbo].[Arsiv_Ihaletip] VALUES (N'2', N'KBB İHALESİZ ÇALIŞAN');
GO
INSERT INTO [dbo].[Arsiv_Ihaletip] VALUES (N'3', N'DOĞRUDAN TEMİN');
GO
INSERT INTO [dbo].[Arsiv_Ihaletip] VALUES (N'4', N'MAKİNE');
GO
INSERT INTO [dbo].[Arsiv_Ihaletip] VALUES (N'5', N'YOL');
GO

-- ----------------------------
-- Table structure for [dbo].[Arsiv_Personel]
-- ----------------------------
DROP TABLE [dbo].[Arsiv_Personel]
GO
CREATE TABLE [dbo].[Arsiv_Personel] (
[id] int NOT NULL ,
[adsoyad] nvarchar(50) NOT NULL ,
[sicilno] nvarchar(6) NULL ,
[giristarihi] date NOT NULL ,
[cikistarihi] date NOT NULL ,
[ihaletip] int NULL ,
[klasorno] int NULL 
)


GO

-- ----------------------------
-- Records of Arsiv_Personel
-- ----------------------------
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'2', N'İSMAİL ÖMÜR', N'125', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'3', N'İSMAİL AYNACI', N'129', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'4', N'AHMET AYDIN', N'133', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'5', N'HÜSEYİN ŞENOL', N'134', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'6', N'ABDURRAHMAN GEVREKÇİ', N'136', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'7', N'ABBAS ZENGİN', N'137', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'8', N'MEHMET BÖLÜK', N'138', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'9', N'BİROL FİDAN', N'139', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'10', N'MAZLUM AKYILDIZ', N'140', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'11', N'RAHİM GÖZAÇAN', N'144', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'12', N'HÜSEYİN RECEP TUTUN', N'145', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'13', N'RIZA ÇELİK', N'146', N'2005-08-26', N'2006-05-31', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'14', N'YUSUF ERDEM', N'', N'2005-04-19', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'15', N'MİNE YILMAZ UYAR', N'', N'2005-06-07', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'16', N'MEHMET ZAFER BAŞTEPE', N'', N'2005-04-18', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'17', N'ZAFER KILIÇ', N'', N'2005-06-07', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'18', N'ERGÜN HANE', N'', N'2005-04-21', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'19', N'MUSTAFA TERZİ', N'', N'2005-04-19', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'20', N'ARİF USTACIK', N'', N'2005-06-07', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'21', N'KÜRŞAT SAVAŞ', N'', N'2005-04-19', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'22', N'SEMA DENLİ', N'', N'2006-02-01', N'1900-01-01', N'1', N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'23', N'MUSTAFA SAKA', N'', N'2006-05-21', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'24', N'HALİL İBRAHİM BORAN', N'', N'2005-08-03', N'2006-02-28', N'1', N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'25', N'MERİÇ DENİZ', N'', N'2005-12-27', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'26', N'MESUT ÖNEM', N'', N'2005-04-18', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'27', N'HÜSEYİN KILIÇ', N'', N'2005-04-18', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'28', N'TUNCAY TÜRETKEN', N'', N'2005-04-19', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'29', N'YASİN YILMAZ', N'', N'2005-04-18', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'30', N'SEMA ŞAHİN', N'', N'2005-04-18', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'31', N'BİROL BALCI', N'', N'2005-04-18', N'1900-01-01', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'32', N'BADE BAYRAKTAR', N'113', N'2006-01-01', N'2007-04-19', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'33', N'İBRAHİM FATİH GÖKTÜRK', N'33', N'2005-06-07', N'2007-04-12', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'34', N'HAYRUNNİSA YILMAZ', N'112', N'2006-01-01', N'2007-04-13', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'35', N'AHMET ÇELEBİ', N'298', N'2007-02-05', N'2007-04-05', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'36', N'NEŞET ŞAHİN', N'296', N'2007-02-05', N'2007-04-05', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'37', N'HAKAN ALİÇ', N'277', N'2006-11-15', N'2007-03-31', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'38', N'MAHİR EŞBER BEKHANOĞLU', N'319', N'2007-02-12', N'2007-02-28', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'39', N'EDA KOLAYLI ATAK', N'123', N'2006-01-30', N'2007-04-02', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'40', N'MELEK BÜYÜKTERZİ', N'275', N'2006-11-02', N'2007-03-07', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'41', N'HATİCE OKKA', N'274', N'2006-11-03', N'2007-03-07', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'42', N'ENSAR EMİR', N'78', N'2005-11-10', N'2007-02-08', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'43', N'EMİN UZUNER', N'62', N'2005-06-22', N'2007-02-02', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'44', N'NESLİHAN DEMİRHAN', N'19', N'2005-04-18', N'2007-02-01', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'45', N'TUĞBA YÜRÜR', N'118', N'2006-01-17', N'2007-01-31', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'46', N'SERKAN IHLAMUR', N'168', N'2006-05-01', N'2007-01-31', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'47', N'ERGİN KAYA', N'232', N'2006-06-08', N'2006-12-19', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'48', N'ASLI ERBİL', N'', N'2006-05-18', N'2006-10-30', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'49', N'SELİM KASIMOĞLU', N'277', N'2005-12-07', N'2006-05-31', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'50', N'REYHAN KILIÇ', N'', N'2005-10-11', N'2006-12-11', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'51', N'NİHAL ÇOBAN', N'65', N'2005-10-25', N'2007-02-01', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'52', N'ALİ KEMAL DİLAVER', N'', N'2005-04-19', N'2006-10-10', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'53', N'ALİ BİLGİ', N'', N'2005-04-19', N'2006-10-10', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'54', N'MURAT KAVAS', N'', N'2005-06-07', N'2006-10-10', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'55', N'AFŞİN TURAN', N'1', N'2005-04-26', N'2006-09-30', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'56', N'YÜKSEL DEMİRCAN', N'', N'2005-04-18', N'2006-09-30', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'57', N'UĞUR SANDIKÇI', N'', N'2005-04-18', N'2006-09-30', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'58', N'SEVGİ ARAT', N'', N'2005-06-07', N'2006-09-08', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'59', N'HACER ÇAVUŞ', N'', N'2006-08-30', N'2006-09-08', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'60', N'MEHMET METE ÖNCÜ', N'', N'2005-10-28', N'2006-08-14', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'61', N'SEVİL  GÖKSU', N'', N'2006-07-04', N'1900-01-01', N'1', N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'62', N'ERHAN COŞAN', N'177', N'2006-05-01', N'2007-05-16', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'63', N'FATMA FÜSUN ÇAKIR', N'135', N'2005-04-18', N'2007-05-16', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'64', N'TOLGA CANKAYA', N'194', N'2006-05-01', N'2007-05-16', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'65', N'SELİM KASIMOĞLU', N'276', N'2005-12-07', N'2007-04-15', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'66', N'NUSRET ERBAY', N'', N'2005-06-07', N'2005-11-14', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'67', N'ŞÜKRAN GÜVENÇ', N'26', N'2005-04-19', N'2007-04-26', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'68', N'YASEMİN HACI MURTEZAOĞLU', N'36', N'2005-06-07', N'2007-04-26', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'69', N'FATMA AKIN (USLU)', N'38', N'2005-06-07', N'2007-04-26', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'70', N'HASAN ÖZTÜRK', N'10', N'2005-04-19', N'2007-04-26', null, N'2');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'71', N'SELÇUK BAYRAKTAR', N'128', N'2005-06-07', N'2007-04-26', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'72', N'MEHMET ALİ YAZAR', N'50', N'2005-05-06', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'73', N'YAVUZ ATICI', N'311', N'2007-02-12', N'2007-05-25', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'74', N'ZEYNEL ABİDİN ULUKUT', N'58', N'2005-06-07', N'2007-05-23', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'75', N'SEVGİ KURT', N'56', N'2005-06-07', N'2007-05-23', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'76', N'BETÜL KÖSTENCE', N'57', N'2005-06-07', N'2007-05-23', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'77', N'MURAT BALABAN', N'17', N'2005-04-18', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'78', N'DERYA TOKGÖZ', N'170', N'2006-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'79', N'KADİR KANDEMİR', N'182', N'2006-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'80', N'ŞEBNEM GENÇ', N'25', N'2005-04-18', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'81', N'MAHMUT GÜRHAN ERDOĞDU', N'246', N'2006-06-09', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'82', N'AYŞEGÜL ERDOĞAN', N'4', N'2005-04-18', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'83', N'YAKUP AKYÜZ', N'171', N'2007-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'84', N'MUSTAFA ALTAY', N'300', N'2007-02-12', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'85', N'ÖMER DEMİR', N'159', N'2006-05-18', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'86', N'MEHMET ALİ ALTUNKAYNAK', N'174', N'2006-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'87', N'MEHMET KASIM YILDIRIM', N'181', N'2006-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'88', N'TURGAY YILMAZ', N'189', N'2006-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'89', N'MURAT ALPARSLAN', N'15', N'2005-04-18', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'90', N'MURAT EFE', N'16', N'2005-04-18', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'91', N'HAKAN KAFADAR', N'185', N'2006-05-01', N'2007-05-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'92', N'MEHMET ZAFER ÖZTORUN', N'13', N'2005-04-19', N'2007-07-12', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'93', N'TUĞBA AYDEMİR', N'27', N'2005-04-19', N'2007-07-12', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'94', N'SEVAL AYGÖREN', N'222', N'2006-05-18', N'2007-07-12', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'95', N'HAKAN İLHAN', N'9', N'2005-04-19', N'2007-07-12', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'96', N'MEHMET SANCILI', N'210', N'2006-05-16', N'2007-07-12', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'97', N'SİNAN KARABULGU', N'24', N'2005-04-19', N'2007-07-12', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'98', N'CİHAT ÇINAR', N'263', N'2006-09-21', N'2007-07-23', N'1', N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'99', N'LEVENT YAPICI', N'343', N'2007-03-08', N'2007-09-18', N'1', N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'100', N'FATMA KARAGÖZ', N'163', N'2005-05-01', N'2007-08-16', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'101', N'İLKNUR AÇIKSÖZ', N'59', N'2005-06-07', N'2007-08-10', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'102', N'HACI SALİH BAYRAKTAR', N'229', N'2006-05-24', N'2007-08-29', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'103', N'ZİNET TURAN', N'35', N'2005-06-07', N'2007-08-10', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'104', N'ALİ BAL', N'358', N'2007-05-16', N'2007-08-31', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'105', N'ALİ BAYRAK', N'188', N'2006-05-01', N'2007-08-31', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'106', N'ZEYNEP GÜNEY', N'213', N'2006-05-18', N'2007-07-31', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'107', N'SABAHATTİN YAMAK', N'317', N'2007-02-12', N'2007-09-18', null, N'3');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'108', N'İLHAN ÇÖPOĞLU', N'75', N'2005-11-16', N'2007-09-18', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'109', N'YÜSRA KEMİK', N'32', N'2005-04-19', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'110', N'SEMA ERTÜRK', N'23', N'2005-04-18', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'111', N'SERKAN UĞUR', N'240', N'2006-06-10', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'112', N'HAKAN SİVRİ', N'241', N'2006-06-10', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'113', N'MİNE HACIBEKTAŞOĞLU', N'242', N'2006-06-10', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'114', N'HALUK DELİKTAŞ', N'143', N'2005-06-09', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'115', N'MEHMET OĞUR', N'12', N'2005-04-18', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'116', N'MERYEM KARAOĞLU', N'239', N'2006-06-10', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'117', N'MELİH AKDUMAN', N'237', N'2006-06-10', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'118', N'NURSEL DOĞAN', N'91', N'2005-04-18', N'2007-05-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'119', N'GAMZE TOPÇU', N'293', N'2007-01-15', N'2007-06-27', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'120', N'BAHADIR YILDIZ', N'211', N'2006-05-18', N'2007-07-12', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'121', N'SELİM SAYDAN', N'22', N'2005-04-18', N'2007-07-12', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'122', N'SEDAT ÖZKAN', N'218', N'2006-05-18', N'2007-07-12', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'123', N'AHMET GÜNAYDIN', N'304', N'2007-02-12', N'2007-12-31', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'124', N'FATİH İŞÇİ', N'390', N'2007-07-01', N'2007-12-12', N'1', N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'125', N'FATOŞ AKSÜT', N'341', N'2007-03-08', N'2008-02-01', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'126', N'ÖZGE SEVİNDİM', N'385', N'2007-07-01', N'2008-02-05', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'127', N'YASEMİN ÇOPUR', N'107', N'2005-12-15', N'2008-04-14', N'1', N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'128', N'TUNCAY KULAKSIZ', N'29', N'2005-04-18', N'2008-05-01', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'129', N'RAMAZAN KARADENİZ', N'120', N'2006-01-20', N'2008-04-29', N'1', N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'130', N'DUYGU YILMAZ', N'201', N'2006-05-03', N'2008-04-18', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'131', N'TURGUT CENGİZ', N'279', N'2006-12-06', N'2008-04-07', N'1', N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'132', N'CENGİZ SULUDAĞ', N'76', N'2005-11-29', N'2007-06-25', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'133', N'ARZU ÖNÜR', N'212', N'2006-05-18', N'2007-07-12', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'134', N'RAHMİ ERDAL TÜMPALAY', N'21', N'2005-04-18', N'2007-07-12', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'135', N'BAHAR GEMİCİ', N'251', N'2006-07-18', N'2007-07-12', null, N'4');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'136', N'ALİ SERKAN SİMAVLI', N'223', N'2006-05-23', N'2007-07-12', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'137', N'EBRU POSTALCIOĞLU', N'220', N'2005-05-18', N'2007-07-12', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'138', N'ÇİÇEK POLAT', N'5', N'2005-04-18', N'2007-07-12', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'139', N'HANİFE KARACAN DANACI', N'214', N'2006-05-18', N'2007-07-12', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'140', N'ÖZLEM KUTLUATA', N'20', N'2007-04-18', N'2007-07-12', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'141', N'BURHAN KAVŞUT', N'175', N'2006-05-01', N'2007-09-20', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'142', N'IŞIL BORA', N'353', N'2007-05-16', N'2007-10-01', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'143', N'MEHMET ALBAYRAK', N'287', N'2007-01-15', N'2007-10-09', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'144', N'GÖKÇE ÖZER', N'294', N'2007-01-18', N'2007-11-02', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'145', N'SEFER YAZICI', N'131', N'2005-07-25', N'2007-12-10', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'146', N'BÜLENT ÖZAY ABAKAN', N'392', N'2007-07-01', N'2007-12-04', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'147', N'HİLAL YÜCEL', N'172', N'2006-05-01', N'2008-08-25', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'148', N'HAKKI SAYIN', N'153', N'2006-04-25', N'2008-09-16', N'1', N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'149', N'MEHMET ALİ CİRİT', N'150', N'2006-03-02', N'2008-09-11', N'1', N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'150', N'ESRA BEKTAŞ', N'48', N'2005-06-07', N'2008-12-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'151', N'ORHAN BAŞHAN', N'173', N'2006-05-01', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'152', N'HÜSEYİN MURAT YILDIZ', N'203', N'2006-05-03', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'153', N'OKAN UÇKAN', N'204', N'2006-05-03', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'154', N'TACÜSER TURNA', N'338', N'2007-02-16', N'2008-07-16', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'155', N'RAMAZAN YENİGÜN', N'405', N'2007-09-19', N'2008-05-27', N'1', N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'156', N'MUSTAFA ÖZÜER', N'389', N'2007-07-01', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'157', N'EMRE ÖZDAL', N'51', N'2005-06-07', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'158', N'ÖMER AKOVA', N'192', N'2006-05-01', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'159', N'MUSTAFA ARSLAN', N'46', N'2005-06-07', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'160', N'İSMAİL SARAÇOĞLU', N'47', N'2005-06-07', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'161', N'YUSUF KALEMOĞLU', N'299', N'2007-02-12', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'162', N'MUAMMER ÖZCAN', N'236', N'2006-06-10', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'163', N'GÜNEŞ MUTMAN', N'8', N'2005-04-19', N'2008-10-13', null, N'5');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'164', N'GÜLŞEN BEKİROĞLU', N'354', N'2007-05-16', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'165', N'SERDAR ÖZDEMİR', N'61', N'2005-06-16', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'166', N'ÜMİT BAŞARIR', N'243', N'2006-06-09', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'167', N'SERAP CANIGENİŞ', N'238', N'2006-06-10', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'168', N'NAZLIHAN TORUN', N'235', N'2006-06-09', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'169', N'TOLGA KILIÇ', N'197', N'2006-05-03', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'170', N'ERCÜMENT FERRUH ÖZKAZANÇ', N'266', N'2006-10-05', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'171', N'MELEK KESKİN YENİCE', N'396', N'2007-08-06', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'172', N'ZUHAL EKŞİ', N'252', N'2006-07-19', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'173', N'DİLEK GÜZEL', N'291', N'2007-01-15', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'174', N'DİLEK AYDIN', N'208', N'2006-05-18', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'175', N'TUFAN YILMAZ', N'360', N'2007-01-15', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'176', N'ŞENER UYGUR', N'244', N'2006-06-09', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'177', N'MUHAMMET ÜSTÜN', N'200', N'2006-05-03', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'178', N'SİNAN KILIÇ', N'361', N'2007-05-17', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'179', N'FATİH GÜREL', N'318', N'2007-02-12', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'180', N'AHMET TAŞER', N'178', N'2006-05-01', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'181', N'ERGÜN İŞKODRA', N'386', N'2007-07-01', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'182', N'İMRAN VOLKAN SAN', N'45', N'2005-06-07', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'183', N'FEYZA CEYLAN ÇAKMAK', N'183', N'2006-05-01', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'184', N'HAMİDE DALGIÇ', N'332', N'2007-02-12', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'185', N'SELÇUK ÇALIK', N'367', N'2007-06-05', N'2008-10-13', null, N'6');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'186', N'FATİH ÖZKARAASLAN', N'198', N'2006-05-03', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'187', N'CEVAT ALTUNKANAT', N'387', N'2007-07-01', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'188', N'MUTLU ÖZAY', N'166', N'2006-05-04', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'189', N'EROL KÜÇÜK', N'156', N'2006-05-19', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'190', N'VOLKAN TORPİL', N'314', N'2007-02-12', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'191', N'BERKIT KARAHAN', N'312', N'2007-02-12', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'192', N'NUMAN BALABAN', N'158', N'2006-05-19', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'193', N'MUSTAFA DURSUN', N'155', N'2006-05-19', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'194', N'HAKAN YALÇINKAYA', N'303', N'2007-02-12', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'195', N'PINAR DEMİR', N'157', N'2006-05-19', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'196', N'GÜLTEN DOĞAN', N'258', N'2006-08-23', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'197', N'AÇELYA KAPANLAR', N'330', N'2007-02-13', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'198', N'DURDU AKBAY', N'234', N'2006-06-08', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'199', N'AYHAN IŞIK', N'301', N'2007-02-12', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'200', N'MEHMET AKİF ÇUHALILAR', N'190', N'2006-05-01', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'201', N'ŞİRİN GÜLEÇ', N'53', N'2005-06-07', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'202', N'BETÜL AKBULUT', N'337', N'2007-02-13', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'203', N'SERKAN AYTAR', N'41', N'2005-06-07', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'204', N'SERVET ARI', N'184', N'2006-05-01', N'2008-10-13', null, N'7');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'205', N'SULTAN YONARLAR', N'315', N'2007-02-12', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'206', N'ONUR UZCAN', N'40', N'2005-06-07', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'207', N'LEVENT MERAL', N'320', N'2007-02-12', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'208', N'ŞULE ÖZBAY', N'196', N'2006-05-01', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'209', N'AHMET ÖZDEMİR', N'176', N'2006-05-01', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'210', N'YAVUZ ABUT', N'307', N'2007-02-12', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'211', N'RUKİYE UĞURLU', N'324', N'2007-02-12', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'212', N'TUBA BAYRAK', N'395', N'2007-07-01', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'213', N'İBRAHİM SAÇÇIOĞLU', N'469', N'2008-11-01', N'2009-09-03', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'214', N'MEHMET ALİ UĞUR', N'441', N'2008-06-03', N'2009-08-04', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'215', N'MUSTAFA BAYRAKTAR', N'264', N'2006-09-26', N'2009-08-19', N'1', N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'216', N'BURHAN DEMİR', N'375', N'2007-06-13', N'2009-11-06', N'2', N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'217', N'RAİF ÇAVUŞOĞLU', N'67', N'2005-04-18', N'2009-09-25', N'1', N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'218', N'MÜCAHİT SEVİL', N'478', N'2008-12-27', N'2009-09-25', N'1', N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'219', N'CAFER YEŞİLYURT', N'474', N'2008-11-04', N'2009-09-25', N'1', N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'220', N'CUMHUR SOY', N'384', N'2007-07-01', N'2009-02-16', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'221', N'OKAN ALKAN', N'467', N'2008-10-21', N'2009-02-18', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'222', N'UFUK FATİH KÜÇÜKALİ', N'475', N'2008-11-15', N'2008-11-30', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'223', N'GÜNGÖR KOÇ', N'383', N'2007-07-01', N'2009-04-14', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'224', N'GÜLŞEN BİLGİN', N'268', N'2006-10-06', N'2008-10-13', null, N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'225', N'SELMA GÖZLEV', N'491', N'2009-03-18', N'2009-06-14', N'2', N'8');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'226', N'METİN TUNCER', N'77', N'2005-11-29', N'2009-08-31', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'227', N'CİHAT YÜCEL', N'447', N'2008-07-01', N'2009-08-31', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'228', N'GÖKALP ÇOBANOĞLU', N'7', N'2005-04-21', N'2009-06-30', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'229', N'SEDA ÖZKAT', N'285', N'2007-01-15', N'2009-09-24', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'230', N'ERDİNÇ ÖNCÜLER', N'485', N'2009-02-09', N'2009-09-25', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'231', N'MEHMET AKSU', N'440', N'2008-05-24', N'2010-04-14', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'232', N'SAİM KARAGÖZ', N'638', N'2010-10-01', N'2010-05-24', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'233', N'EYÜP ENSAR DEMİR', N'500', N'2009-07-30', N'2010-06-30', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'234', N'SEDA KAHVECİ', N'284', N'2007-01-15', N'2010-07-20', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'235', N'BİLAL EKREM KARAÇOBAN', N'743', N'2010-08-03', N'2010-09-17', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'236', N'FATİH KARAALP', N'397', N'2007-07-20', N'2009-12-31', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'237', N'HİKMET YİĞİT', N'557', N'2010-01-01', N'2010-01-08', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'238', N'VELİ DÖNMEZ', N'529', N'2009-11-05', N'2010-01-31', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'239', N'KEMAL HALICI', N'493', N'2009-05-07', N'2010-02-28', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'240', N'İDRİS AY', N'652', N'2010-02-16', N'2010-03-31', null, N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'241', N'TEKİN ÖZAYDIN', N'425', N'2008-03-26', N'2010-05-26', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'242', N'REŞİT SEKİTMEZ', N'407', N'2007-10-02', N'2009-08-25', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'243', N'HATİCE ŞEN', N'420', N'2008-02-23', N'2009-09-25', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'244', N'ZEKERİYA YILDIRIM', N'364', N'2007-05-22', N'2009-09-25', N'1', N'9');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'245', N'ÖMER SAĞLAM', N'516', N'2009-11-05', N'2009-11-30', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'246', N'BAYRAM KARATAY', N'308', N'2007-02-12', N'2009-11-30', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'247', N'GÜLDENİZ YILMAZ', N'256', N'2006-08-03', N'2008-10-05', N'1', N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'248', N'BEDRİYE BAYGINER', N'352', N'2007-05-15', N'2008-05-23', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'249', N'İSA ÖZDEMİR', N'642', N'2010-01-01', N'2010-09-20', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'250', N'NESLİHAN YETİŞ', N'543', N'2009-11-05', N'2010-08-09', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'251', N'GÜRKAN SEKMEN', N'586', N'2010-01-01', N'2010-07-28', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'252', N'YUSUF ÖZTEL', N'508', N'2009-11-05', N'2010-12-14', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'253', N'İBRAHİM ATLI', N'417', N'2008-02-18', N'2009-09-25', N'1', N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'254', N'ENİS HAŞİM TEKİN', N'342', N'2007-03-08', N'2010-08-05', N'1', N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'255', N'NAİM DAK', N'443', N'2008-06-12', N'2010-07-31', N'1', N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'256', N'SERAP AZAK', N'519', N'2009-11-05', N'2010-11-06', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'257', N'FATİH BULUT', N'501', N'2009-07-30', N'2010-11-10', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'258', N'ENİS YAZICI', N'505', N'2009-08-28', N'2010-12-06', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'259', N'NEDİM MALKOÇ', N'754', N'2010-09-03', N'2010-10-11', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'260', N'MEHMET YAVUZ BİNGÖL', N'755', N'2010-09-03', N'2010-10-31', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'261', N'MUSTAFA SİVRİ', N'404', N'2007-09-15', N'2010-10-31', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'262', N'DİLEK CEYLAN', N'6', N'2005-04-18', N'2010-10-31', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'263', N'AHMET FUAT DEMİRKOL', N'437', N'2008-08-05', N'2010-10-11', null, N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'264', N'CANDAN TAŞ', N'152', N'2006-03-22', N'2010-10-11', N'1', N'10');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'265', N'ASLI UYGUR', N'1267', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'266', N'ABDULLAH GÖKOĞLAN', N'1268', N'2006-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'267', N'SAKİNE AKTAŞ', N'1269', N'2001-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'268', N'SERAP GEDİKLİ', N'1270', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'269', N'SELİME ÇELİK', N'1271', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'270', N'HACI APAK', N'1272', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'271', N'HALİL BEŞER', N'1273', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'272', N'HAKAN ÖZHELVACI', N'1274', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'273', N'YASEMİN BEZİR', N'1275', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'274', N'MEHMET SALİH TARİL', N'1276', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'275', N'ZEKİ SEZEN', N'1277', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'276', N'ALİ AVSAR', N'1278', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'277', N'SAVAŞ GÖKDEMİR', N'1279', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'278', N'ÜMİT MEDİNE ŞEKER', N'1280', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'279', N'BURCU TOKSÖZ', N'1281', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'280', N'MERVE YILMAZ', N'1282', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'281', N'MÜŞERREF YILDIZ', N'1283', N'2011-06-11', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'282', N'GÖKHAN TAPCI', N'1249', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'283', N'SÜLEYMAN UĞUR ÖZCAN', N'1251', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'284', N'SEZAİ ALTUNEL', N'1253', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'285', N'EMRAH UÇAR', N'1254', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'286', N'ELİF ÖLMEZOĞLU', N'1255', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'287', N'BURCU BURDURLU', N'1257', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'288', N'SİBEL KÖKSAL', N'1259', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'289', N'RAMAZAN KIZKUN', N'1260', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'290', N'FATİH SÖZEN', N'1261', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'291', N'GÜLŞEN YARAR', N'1262', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'292', N'AKİF ATAY', N'1263', N'2011-06-10', N'2011-08-31', N'3', N'11');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'293', N'CAHİT EKDİ', N'1265', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'294', N'HABİP YILDIZ', N'1266', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'295', N'HULUSİ BABALIK', N'1300', N'2011-06-11', N'2011-08-12', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'296', N'GÜLSEHER KAHRAMAN', N'1299', N'2011-06-11', N'2011-08-12', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'297', N'VEYSEL ERKUZ', N'1258', N'2011-06-10', N'2011-07-15', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'298', N'ÜMİT ÖNCAL', N'1337', N'2011-07-02', N'2011-07-02', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'299', N'NEŞE ASLAN', N'1284', N'2011-06-10', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'300', N'MERVE ZÜMRE DOLAŞIK', N'1286', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'301', N'ZEHRA SÜLEYMANOĞLU', N'1287', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'302', N'SONER ŞIK', N'1288', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'303', N'SİNAN ÖZTÜRK', N'1289', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'304', N'YUSUF DURSUN', N'1290', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'305', N'AHMET MERCAN', N'1291', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'306', N'KADRİYE AVCI', N'1292', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'307', N'ŞENGÜL BULDAK', N'1293', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'308', N'MELEK KELEŞ', N'1294', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'309', N'ASUMAN ÖZASLAN', N'1295', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'310', N'ABDULLAH AYDEMİR', N'1247', N'2011-06-10', N'2011-08-12', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'311', N'ENVER METE ASLAN', N'1296', N'2011-06-11', N'2011-08-12', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'312', N'FİRDES ÇALIŞKAN', N'1298', N'2011-06-11', N'2011-08-12', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'313', N'ASLI ÖZTÜRK', N'1248', N'2011-06-10', N'2011-08-12', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'314', N'İBRAHİM ÖZBİLGİN', N'1256', N'2011-06-10', N'2011-06-30', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'315', N'ZEKAİ ÇEVİK', N'1338', N'2011-07-01', N'2011-07-02', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'316', N'ÖZGÜR ÖZGÜLER', N'1301', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'317', N'SENA ÖZBİNAR', N'1304', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'318', N'SERKAN MESUT HALİLİ', N'1305', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'319', N'SITKI SENCER ÖZBAY', N'1306', N'2011-06-11', N'2011-08-31', N'3', N'12');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'320', N'MELEK KARO', N'1316', N'2011-06-14', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'321', N'ABDULBAKİ GÜLTEKİN', N'1317', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'322', N'ALİ YÜCEL SALEP', N'1320', N'2011-06-20', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'323', N'ŞULE TEKCAN', N'1328', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'324', N'EDA GENÇ', N'1329', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'325', N'EMİNE UYSAL', N'1330', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'326', N'DİLARA ELAGÖZLÜ', N'1331', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'327', N'NURAY POLAT', N'1332', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'328', N'IŞIL BALTACI', N'1333', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'329', N'MAYA TSETSKHLADZE GÜLÇEBİ', N'1334', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'330', N'BAHADIR ÖZTÜRK', N'1335', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'331', N'NEŞE SARISÖZEN ADALI', N'1336', N'2011-07-01', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'332', N'ÖZKAN ÇUĞALİ', N'1302', N'2011-06-11', N'2011-08-12', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'333', N'SEDA BETÜL MOĞUL', N'1303', N'2011-06-11', N'2011-08-12', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'334', N'SEMENT AKÇAY', N'1252', N'2011-06-10', N'2011-08-12', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'335', N'TUĞÇE OCAKTAR', N'1307', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'336', N'RAGIP ÇAVUŞ', N'1308', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'337', N'FATMA NUR HÜKÜM', N'1309', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'338', N'HAKKI ÇAĞMAN', N'1310', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'339', N'NURŞEN TAKCI', N'1311', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'340', N'ÇETİN SAYDAN', N'1312', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'341', N'ÜMİT ÇANDIR', N'1313', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'342', N'SONGÜL ÖTÜM', N'1314', N'2011-06-11', N'2011-08-31', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'343', N'ERBİL AYDIN', N'1297', N'2011-06-11', N'2011-08-12', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'344', N'MAHMUT ŞAHİN', N'1250', N'2011-06-10', N'2011-08-12', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'345', N'GEDİZ ÇOROĞLU', N'1319', N'2011-06-17', N'2011-08-12', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'346', N'EMİN ARSLAN', N'1285', N'2011-06-11', N'2011-06-30', N'3', N'13');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'347', N'CEVDET AKIN TOSUNOĞLU', N'464', N'2008-10-14', N'2010-02-21', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'348', N'KÜRŞAT KARADELİ', N'288', N'2007-01-15', N'2009-11-30', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'349', N'TUBA KESİKBAŞ', N'44', N'2005-06-07', N'2011-09-14', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'350', N'GÜLAY GÜNTEPE', N'496', N'2009-05-07', N'2011-09-20', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'351', N'MEHMET FEHMİ YILMAZ', N'550', N'2009-11-05', N'2011-05-27', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'352', N'ŞEYDA TOPÇU', N'233', N'2006-06-08', N'2011-03-11', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'353', N'CEMAL ERENOĞLU', N'847', N'2011-01-01', N'2011-01-14', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'354', N'ZELİHA HAMŞİOĞLU GÜRCAN', N'334', N'2007-02-12', N'2010-12-31', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'355', N'ÖMER ESASTÜRK', N'738', N'2010-07-29', N'2010-12-31', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'356', N'MEHMET UZUN', N'272', N'2006-11-03', N'2011-10-14', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'357', N'SEMA ARAT GÜNİSTER', N'1204', N'2011-01-01', N'2011-09-15', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'358', N'ZEKERİYA YILMAZ', N'1125', N'2011-01-01', N'2011-06-30', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'359', N'ESMA HAPEL (KESKİN)', N'680', N'2010-03-01', N'2011-06-07', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'360', N'ORHAN TUNA', N'1113', N'2011-01-01', N'2011-08-05', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'361', N'YASİN BATUR', N'1048', N'2011-01-01', N'2011-05-12', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'362', N'ZEKİ BAYRAM', N'542', N'2009-11-05', N'2011-05-31', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'363', N'TEMEL FİDAN', N'655', N'2010-02-16', N'2011-05-09', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'364', N'ALİ AKGÜN', N'455', N'2008-10-14', N'2011-03-31', null, N'14');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'365', N'ÇETİN YETER', N'479', N'2009-11-30', N'2011-07-13', null, N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'366', N'ALİ YILMAZ', N'1133', N'2011-01-01', N'2011-02-22', null, N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'367', N'MEHTAP SALMAN', N'365', N'2007-06-05', N'2011-03-04', null, N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'368', N'SERCAN PEHLİVAN', N'1117', N'2011-01-01', N'2011-02-28', null, N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'369', N'NİLAY AYRAN', N'510', N'2009-11-05', N'2011-07-05', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'370', N'MUSTAFA ZAFER ÖRSDEMİR', N'295', N'2007-02-01', N'2009-09-25', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'371', N'ONUR GÜNGÖR BÜYÜK', N'84', N'2005-12-15', N'2007-08-15', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'372', N'ÇETİN SEYMEN', N'101', N'2005-12-15', N'2007-12-20', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'373', N'MELİH GÖNENÇ', N'103', N'2005-12-15', N'2006-11-19', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'374', N'EBUBEKİR AYHAN', N'740', N'2010-08-03', N'2011-11-17', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'375', N'MUHAMMET KERİM ORALOĞLU', N'411', N'2007-12-15', N'2011-11-14', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'376', N'MUSTAFA ARICI', N'110', N'2006-01-01', N'2010-07-31', N'1', N'15');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'377', N'MUSTAFA ADEM DEMİR', N'269', N'2006-10-19', N'2010-03-31', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'378', N'TAYLAN ÖZTAŞ', N'426', N'2008-04-10', N'2010-09-13', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'379', N'MURAT ALINCA', N'273', N'2006-11-03', N'2009-09-25', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'380', N'MEHMET PARLA', N'93', N'2005-08-09', N'2007-01-31', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'381', N'İBRAHİM YAKAR', N'484', N'2009-02-06', N'2010-08-14', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'382', N'RAGIP ARGEN BÖLGEN', N'', N'2005-08-16', N'2006-03-01', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'383', N'ABDULHAMİT CEM POLAT', N'97', N'2005-10-12', N'2006-11-22', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'384', N'İBRAHİM KAPTAN', N'', N'2005-08-03', N'2006-09-15', N'1', N'16');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'385', N'SEVERCAN KARA', N'', N'2005-10-12', N'2005-10-12', null, N'1');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'386', N'MUSTAFA SELVİ', N'', N'2007-02-05', N'2007-04-05', N'3', null);
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'387', N'ERKAN ARSLAN', N'', N'2011-06-11', N'2011-08-31', N'3', null);
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'388', N'MÜESSER İPEK', N'', N'2011-06-11', N'2011-08-31', N'3', null);
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'389', N'SEMIHA YILDIRIM', N'0037', N'2005-06-07', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'390', N'SENOL BILGIN', N'0039', N'2005-06-07', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'391', N'UGUR AKIN', N'0054', N'2005-06-07', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'392', N'BURAK HATIPOGLU', N'0055', N'2005-06-07', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'393', N'RIZA KAYA', N'0063', N'2005-09-08', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'394', N'BERNA ÇETIN', N'0087', N'2005-12-15', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'395', N'GÖKÇE SENOL', N'0104', N'2005-12-15', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'396', N'AYTEKIN YAKSI', N'0124', N'2005-06-07', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'397', N'IBRAHIM ELVERDI', N'0130', N'2005-06-09', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'398', N'IDRIS OKCAN', N'0132', N'2005-06-07', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'399', N'MURAT DOGRU', N'0141', N'2006-09-02', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'400', N'AYTEKIN KILIÇ', N'0162', N'2007-08-19', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'401', N'HASAN MOLLAHASAN', N'0193', N'2006-05-01', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'402', N'MEHMET EROL CEBE', N'0245', N'2006-06-10', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'403', N'ISMAIL KANAT', N'0265', N'2006-10-05', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'404', N'ASUMAN KARSLI', N'0378', N'2007-06-20', N'2011-12-31', N'4', N'17');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'405', N'MEHMET YILDIRIM', N'0391', N'2007-07-01', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'406', N'GAYE GENÇ', N'0393', N'2007-07-01', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'407', N'NIHAN ÖLMEZ', N'0394', N'2007-07-01', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'408', N'HILAL DURSUN SÖKMEN', N'0406', N'2007-09-20', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'409', N'VOLKAN  YILMAZ', N'0448', N'2008-08-12', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'410', N'GÖKAN  YAŞAR', N'0460', N'2008-10-14', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'411', N'ARİF USTACIK', N'0466', N'2008-10-14', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'412', N'ENGİN TOPRAK', N'0480', N'2009-01-21', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'413', N'MEHMET FATİH KANCA', N'0486', N'2009-02-16', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'414', N'MEHMET SALİH KUCUK', N'0487', N'2009-02-24', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'415', N'FURKAN SARPKEN', N'0488', N'2009-02-24', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'416', N'MENEKŞE EKŞİ', N'0489', N'2009-02-24', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'417', N'EMRAH EKREM', N'0492', N'2009-05-01', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'418', N'LOKMAN CEYHAN', N'0494', N'2009-05-07', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'419', N'HASAN BÖBER', N'0495', N'2009-05-07', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'420', N'DERYA DÜBÜŞAKTAN', N'0502', N'2009-07-30', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'421', N'ERTAN  AKGÜN', N'0507', N'2009-11-05', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'422', N'SELİM KADIOĞLU', N'0509', N'2009-11-05', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'423', N'MEMET VURAL', N'0511', N'2009-11-05', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'424', N'SELMAN AKDOĞAN', N'0513', N'2009-11-05', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'425', N'MEHMET UĞUR KAN', N'0520', N'2009-11-05', N'2011-12-31', N'4', N'18');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'426', N'ESAT ADİL ŞİRİNTAŞ', N'0522', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'427', N'SITKI ŞANLI', N'0527', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'428', N'ELİF KABACA', N'0530', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'429', N'ÜMİT ÖNEM', N'0531', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'430', N'FATİH ŞENER', N'0533', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'431', N'SERDAR FARUK BAŞYİĞİT', N'0535', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'432', N'LEYLA KOR', N'0536', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'433', N'KEMAL İBRAHİM MERMERKAYA', N'0537', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'434', N'MEVLÜT AĞRA', N'0538', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'435', N'NURİ KAYA', N'0544', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'436', N'EMRE KAPANLAR', N'0545', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'437', N'HIDIR AYDIN', N'0546', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'438', N'UĞUR ARAT', N'0547', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'439', N'BÜNYAMİN AYDIN', N'0548', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'440', N'MEHMET  TANIYAN', N'0551', N'2009-11-05', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'441', N'MAHMUT PELİT', N'0559', N'2009-11-21', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'442', N'AHMET PİŞTOFOĞLU', N'0587', N'2010-01-01', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'443', N'SERCAN KARAMAK', N'0588', N'2010-01-01', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'444', N'EYÜP KAHRAMAN', N'0589', N'2010-01-01', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'445', N'ŞABAN İTMİŞ', N'0590', N'2010-01-01', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'446', N'AHMET SAKLI', N'0591', N'2010-01-01', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'447', N'ATALAY COKA', N'0592', N'2010-01-01', N'2011-12-31', N'4', N'19');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'448', N'KAPTAN KARAER', N'0593', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'449', N'HASAN YUSUF', N'0594', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'450', N'RESUL AKYÜZ', N'0595', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'451', N'YAŞAR ÇAĞLAR', N'0596', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'452', N'KENAN İŞBİLEN', N'0597', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'453', N'AKİF VAROL', N'0611', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'454', N'NEBİ NEMLİ', N'0614', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'455', N'AKİF OZAKGUNES', N'0615', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'456', N'AYHAN DURMAZ', N'0616', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'457', N'ENGİN GÜNER', N'0622', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'458', N'ÖMER SARIKAYA', N'0634', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'459', N'RECEP  BOSTAN', N'0636', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'460', N'İSMAİL KAPLAN', N'0637', N'2010-01-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'461', N'BERİL PEHLIVANKUÇUK', N'0660', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'462', N'ALİ ÖZKARAASLAN', N'0662', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'463', N'GÜNER ŞAHİN', N'0663', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'464', N'YUSUF ÖZDER', N'0664', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'465', N'TUNCAY  ORAK', N'0666', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'466', N'AHMET CEYHUN TEZER', N'0667', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'467', N'RAMAZAN  GENİŞ', N'0669', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'468', N'RECEP SOLMAZ', N'0684', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'469', N'ERCAN GÜVERCİN', N'0704', N'2010-03-01', N'2011-12-31', N'4', N'20');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'470', N'OZGUR ERGIN', N'0705', N'2010-03-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'471', N'MUSTAFA KARAKAYA', N'0706', N'2010-03-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'472', N'BURAK EMRE  ALP', N'0707', N'2010-03-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'473', N'KAZIM GUR', N'0708', N'2010-03-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'474', N'TAHİR EKIZ', N'0710', N'2010-03-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'475', N'HUZEYFE GÖKBUDAK', N'0712', N'2010-04-13', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'476', N'MUSTAFA ARSLAN', N'0734', N'2010-06-03', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'477', N'UFUK ESER', N'0736', N'2010-06-21', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'478', N'TANER GÜLER', N'0759', N'2010-09-27', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'479', N'FARUK TAŞER', N'0762', N'2010-12-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'480', N'ADNAN OKATAN', N'0767', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'481', N'AHMET AKPINAR', N'0768', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'482', N'ARZU ATEŞ', N'0770', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'483', N'AŞKIM GÜNAN', N'0771', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'484', N'AYLİN BECERİKLİ', N'0772', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'485', N'BURCU KARTAL', N'0773', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'486', N'BÜŞRA DEMİRAY', N'0774', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'487', N'CEM AKSOY', N'0775', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'488', N'ÇAĞLA DENİZ', N'0776', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'489', N'DOĞAN DEVRİM DİNLER', N'0777', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'490', N'EMRE SİRİN', N'0778', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'491', N'ENFAL ÇOBAN', N'0779', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'492', N'ENGİN AYKUT', N'0780', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'493', N'FATİH KEMAN', N'0781', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'494', N'FATİH POYRAZ', N'0782', N'2011-01-01', N'2011-12-31', N'4', N'21');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'495', N'FATİH SARMAN', N'0783', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'496', N'FATMA NESRİN YÜCEL BİRİNCİ', N'0784', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'497', N'GÜLŞAH DEMİRTAŞ', N'0785', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'498', N'GÜNDOĞDU YİĞİT', N'0786', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'499', N'HATİCE GÖNÜLALAN', N'0787', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'500', N'HİLAL AKKAYA', N'0788', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'501', N'HÜLYA ÇETİN', N'0789', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'502', N'HÜLYA  ÜRKMEZ', N'0790', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'503', N'HÜSEYİN KEMAN', N'0791', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'504', N'HÜSEYİN OSKAN', N'0792', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'505', N'HÜSEYİN PAK', N'0793', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'506', N'İLKNUR PEHLİVAN', N'0794', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'507', N'MELİKE  HURUZCU', N'0795', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'508', N'MERVE KURTOĞLU', N'0796', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'509', N'MERYEM BAYRAKTAR', N'0797', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'510', N'NUMAN VENEDİK', N'0798', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'511', N'OĞUZ AŞIKOĞLU', N'0799', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'512', N'OLCAY YAVUZTÜRK', N'0800', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'513', N'ÖMER  TURHAN', N'0801', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'514', N'RIZA ÖZİRİÇ', N'0802', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'515', N'SALİHA ERBAY', N'0803', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'516', N'SARİYE GÜLŞEN', N'0804', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'517', N'SEDA TÜLAY TURAN', N'0805', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'518', N'SELİM AKMAN', N'0806', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'519', N'SİBEL ALMAZ', N'0807', N'2011-01-01', N'2011-12-31', N'4', N'22');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'520', N'ŞEVKİ BENGİ', N'0808', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'521', N'UMUT CAN CANPOLAT', N'0809', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'522', N'ÜNAL ALTINTAŞ', N'0810', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'523', N'ÜMRAN İNAL', N'0811', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'524', N'YASEMİN BAŞKÖYLÜ', N'0812', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'525', N'YAŞAR EVRAN', N'0813', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'526', N'ZEYNEP NUMAL', N'0814', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'527', N'MİNE PİR KAZAN', N'0815', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'528', N'ABDULSELİM YILDIZ', N'0816', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'529', N'AHMET AKGÜNEŞ', N'0817', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'530', N'AHMET ALKIŞ', N'0818', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'531', N'AHMET ESİN', N'0819', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'532', N'AHMET FAHRİ ÖNER', N'0820', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'533', N'AHMET TAŞKIN', N'0821', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'534', N'ALAETTİN SÖĞÜT', N'0822', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'535', N'ALİ BOSTAN', N'0823', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'536', N'ALİ ÇİMEN', N'0824', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'537', N'ALİ  DEVRİM', N'0825', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'538', N'ALİ DİŞLİ', N'0826', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'539', N'ALİFUAT CEBİR', N'0827', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'540', N'ALİ HÜSEYİN ÜLKER', N'0828', N'2011-01-01', N'2011-12-31', N'4', N'23');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'541', N'ALİ KAYHAN', N'0829', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'542', N'ALİ KOZMA', N'0830', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'543', N'ALİ ÖZTÜRK', N'0831', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'544', N'ARİF SOYANIT', N'0832', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'545', N'AYHAN ÇALIŞKAN', N'0833', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'546', N'AYTEKİN ARSLAN', N'0834', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'547', N'BAHATTİN CELIK', N'0835', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'548', N'BARAN CENGIZ', N'0836', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'549', N'BAYRAM BOSTAN', N'0837', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'550', N'BEKİR SOGUKOGLU', N'0838', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'551', N'BİLGİN SOYDAN', N'0839', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'552', N'BURHAN EKİNCİ', N'0840', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'553', N'BURHAN YAZAN', N'0841', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'554', N'BÜLENT ERGEN', N'0842', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'555', N'BÜLENT KANBUR', N'0843', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'556', N'CAHİT BAYRAM', N'0844', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'557', N'CAN SOY', N'0845', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'558', N'CAVİT CEYHAN', N'0846', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'559', N'CEMAL YILDIRIM', N'0848', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'560', N'CEMALETTIN TAZRI', N'0849', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'561', N'CEMALI MUTLU', N'0850', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'562', N'CENGİZ ALTAY', N'0851', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'563', N'ÇENKIZ BULBUL', N'0852', N'2011-01-01', N'2011-12-31', N'4', N'24');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'564', N'EMRAH KARAKUS', N'0853', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'565', N'EMİN BAYRAKTAR', N'0854', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'566', N'EMRE KUCUK', N'0855', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'567', N'EMRE OZCAN', N'0856', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'568', N'ENDER ELLIBES', N'0857', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'569', N'ENDER KORKMAZ', N'0858', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'570', N'ENES ÖZTÜRK', N'0859', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'571', N'ENGİN AKALIN', N'0860', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'572', N'ENGİN UZUN', N'0861', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'573', N'ENGİN ÜSTÜNEL', N'0862', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'574', N'ENİS ATILIR', N'0863', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'575', N'ERDEM DOMBAYCI', N'0864', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'576', N'ERDOĞAN BALCI', N'0865', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'577', N'ERCAN YILDIZ', N'0866', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'578', N'ERGÜN ALTUN', N'0867', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'579', N'ERGÜN ULUTAŞ', N'0868', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'580', N'ERKAN KESKİN', N'0869', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'581', N'ERKAN SIK', N'0870', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'582', N'ERKAN YAZAR', N'0871', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'583', N'ERKAN YORENTI', N'0872', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'584', N'EROL BALABAN', N'0873', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'585', N'EROL BAYRAM', N'0874', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'586', N'EROL BAYRAMOGLU', N'0875', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'587', N'EROL KAR', N'0876', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'588', N'ERSİN YILMAZ', N'0877', N'2011-01-01', N'2011-12-31', N'4', N'25');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'589', N'EYÜP KASAR', N'0878', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'590', N'FARUK BAYIR', N'0879', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'591', N'FARUK SANLI', N'0880', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'592', N'FATİH ADIYAMAN', N'0881', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'593', N'FATİH CİCİ', N'0882', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'594', N'FATİH  ÖZTATAR', N'0883', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'595', N'FERHAN UTAS', N'0884', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'596', N'FERİDUN YUCEL', N'0885', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'597', N'FEVZİ KARHAN', N'0886', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'598', N'FİKRET KARAKUS', N'0887', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'599', N'FİKRET ÜRKER', N'0888', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'600', N'GALIP KUSKU', N'0889', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'601', N'GÜNBEY ERGÜN SEVINC', N'0890', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'602', N'HAKAN AKTAŞ', N'0891', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'603', N'HAKAN CIKRIKCI', N'0892', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'604', N'HAKAN KARA', N'0893', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'605', N'HAKAN UZUNOGLU', N'0894', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'606', N'HALİL İBRAHİM ZENGİN', N'0895', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'607', N'HAMİT KARAKAS', N'0896', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'608', N'HASAN AYDINLI', N'0897', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'609', N'HASAN BILICI', N'0898', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'610', N'HASAN ÇETİN', N'0899', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'611', N'HASAN KIZILKAYA', N'0900', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'612', N'HAŞİM YELEK', N'0901', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'613', N'HAYRETTİN CEYLAN', N'0902', N'2011-01-01', N'2011-12-31', N'4', N'26');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'614', N'HAYRETTİN DİNER', N'0903', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'615', N'HULİSİ BASARAN', N'0904', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'616', N'HÜSEYİN TATOGLU', N'0905', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'617', N'HÜSEYİN TUFAN', N'0906', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'618', N'İBRAHİM CETİN', N'0907', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'619', N'İBRAHİM CIMEN', N'0908', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'620', N'İBRAHİM OKDEM', N'0909', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'621', N'İBRAHİM PAK', N'0910', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'622', N'İBRAHİM SIVRI', N'0911', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'623', N'İLHAN EFE', N'0912', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'624', N'İSMAİL AKCAN', N'0913', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'625', N'İSMAİL AKYILDIZ', N'0914', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'626', N'İSMAİL BEKİR', N'0915', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'627', N'İSMAİL DEMİR', N'0916', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'628', N'İSMAİL DEMİR', N'0917', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'629', N'İSMAİL ERIM', N'0918', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'630', N'İSMAİL ERYIGIT', N'0919', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'631', N'İSMAİL KARAL', N'0920', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'632', N'İSMAİL OZDIL', N'0921', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'633', N'İSMAİL YILMAZ', N'0922', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'634', N'İZZET EMENGEN', N'0923', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'635', N'KADİR ACAR', N'0924', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'636', N'KADİR ŞAHIN', N'0925', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'637', N'KASIM ÇELİK', N'0926', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'638', N'KAZANFER OZAYDIN', N'0927', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'639', N'EROL OBUZ', N'0928', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'640', N'KEMAL ÇORBACI', N'0929', N'2011-01-01', N'2011-12-31', N'4', N'27');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'641', N'KEMAL KAYA', N'0930', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'642', N'KEMAL SELCUK', N'0931', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'643', N'MAHMUT BACACI', N'0932', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'644', N'MAHMUT SAHIN', N'0933', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'645', N'MEHMET AKİF KARDAS', N'0934', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'646', N'MEHMET ALİ DEMIR', N'0935', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'647', N'MEHMET ALTUN', N'0936', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'648', N'MEHMET OZAY', N'0937', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'649', N'MEHMET PINAR', N'0938', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'650', N'MEHMET YÜCEL', N'0939', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'651', N'MEHMET YÜKSEL', N'0940', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'652', N'MELİH ZENGIN', N'0941', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'653', N'METİN ARSAL', N'0942', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'654', N'METİN GUNER', N'0943', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'655', N'METİN YILMAZ', N'0944', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'656', N'MEVLÜT OZKARADENİZ', N'0945', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'657', N'MUAMMER BALCI', N'0946', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'658', N'MURAT AKTAŞ', N'0947', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'659', N'MURAT AKTURK', N'0948', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'660', N'MURAT BOYAN', N'0949', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'661', N'MURAT ERDOGAN', N'0950', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'662', N'MURAT ERYÜREK', N'0951', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'663', N'MURAT GUNER', N'0952', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'664', N'MURAT KUZU', N'0953', N'2011-01-01', N'2011-12-31', N'4', N'28');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'665', N'MURAT ŞİMŞEK', N'0954', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'666', N'MURAT YAKUT', N'0955', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'667', N'MURTAZA KARAASLAN', N'0956', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'668', N'MUSTAFA AKARSU', N'0957', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'669', N'MUSTAFA AKTAS', N'0958', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'670', N'MUSTAFA AY', N'0959', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'671', N'MUSTAFA BORA', N'0960', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'672', N'MUSTAFA ERDOĞAN', N'0961', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'673', N'MUSTAFA CAN', N'0962', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'674', N'MUSTAFA MASALACI', N'0963', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'675', N'MUSTAFA OZDEMIR', N'0964', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'676', N'MUSTAFA SÖYLEMEZ', N'0965', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'677', N'MUSTAFA TANIŞ', N'0966', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'678', N'MUSTAFA YUKSEL', N'0967', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'679', N'MUZAFFER CIL', N'0968', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'680', N'MUZAFFER OZKAN', N'0969', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'681', N'MÜFİT OKTAY', N'0970', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'682', N'NAZIM ARAT', N'0971', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'683', N'NAZİM DENIZLI', N'0972', N'2011-01-01', N'2011-12-31', N'4', N'29');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'684', N'NAZMİ COLAK', N'0973', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'685', N'NEDİM OCAK', N'0974', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'686', N'NEDİM YILMAZ', N'0975', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'687', N'NEZİH ERIM', N'0976', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'688', N'NİHAT AKTOP', N'0977', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'689', N'NİHAT TORUNOĞULLARI', N'0978', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'690', N'NİHAT YELKEN', N'0979', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'691', N'NİYAZİ BALCI', N'0980', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'692', N'NUMAN SAGLIK', N'0981', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'693', N'NURETTİN KURNAZ', N'0982', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'694', N'ORHAN YILDIRIM', N'0983', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'695', N'OSMAN BASOGLU', N'0984', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'696', N'OSMAN KILINÇARSLAN', N'0985', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'697', N'ÖMER ARSLAN', N'0986', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'698', N'ÖMER YILDIRIM', N'0987', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'699', N'ÖNDER AKBABA', N'0988', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'700', N'ÖNDER SAGSOZ', N'0989', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'701', N'ÖNER GUNAY', N'0990', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'702', N'ÖZDEN ZORTEYMUR', N'0991', N'2011-01-01', N'2011-12-31', N'4', N'30');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'703', N'ÖZER TURAN', N'0992', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'704', N'ÖZGÜR AKYILMAZ', N'0993', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'705', N'ÖZGÜR KARAHAN', N'0994', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'706', N'ÖZGÜR TUNÇEL', N'0995', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'707', N'RAFET CALIK', N'0996', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'708', N'RAMİZ ILTER', N'0997', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'709', N'RECEP BAYRAM', N'0998', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'710', N'RECEP BİLGİÇ', N'0999', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'711', N'RECEP DINC', N'1000', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'712', N'RECEP MURAT YAVUZ', N'1001', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'713', N'RECEP ONER', N'1002', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'714', N'RECEP OZKARAASLAN', N'1003', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'715', N'REFİK CABUKEL', N'1004', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'716', N'REŞAT YILMAZ', N'1005', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'717', N'RIZVAN DEMIRCI', N'1006', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'718', N'RÜSTEM AYYILDIZ', N'1007', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'719', N'RUSTEM YILMAZ', N'1008', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'720', N'SADİ ÖZDEN', N'1009', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'721', N'SAMET SAĞIR', N'1010', N'2011-01-01', N'2011-12-31', N'4', N'31');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'722', N'SAMI YERDIBI', N'1011', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'723', N'SAVAŞ HELVACI', N'1012', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'724', N'SEBAHATTİN AYDIN', N'1013', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'725', N'SEBAHATTİN YILDIZ', N'1014', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'726', N'SELÇUK ALTAS', N'1015', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'727', N'SELİM POYRAZ', N'1016', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'728', N'SERDAR KOÇ', N'1017', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'729', N'SERKAN ERYIGIT', N'1018', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'730', N'SERKAN TURAN', N'1019', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'731', N'SERKAN UZUNER', N'1020', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'732', N'SERKAN UYSAL', N'1021', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'733', N'SERVET SULUN', N'1022', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'734', N'SERVET TAŞDEMİR', N'1023', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'735', N'SONER TATAR', N'1024', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'736', N'SÜLEYMAN TURAN', N'1025', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'737', N'SÜLEYMAN TURK', N'1026', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'738', N'ŞAHİN AK', N'1027', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'739', N'ŞAHİN AYDIN', N'1028', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'740', N'ŞAHİN EZBER', N'1029', N'2011-01-01', N'2011-12-31', N'4', N'32');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'741', N'ŞENOL GURKAN', N'1030', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'742', N'ŞENOL KARAKAŞ', N'1031', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'743', N'ŞENOL SÖZEN', N'1032', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'744', N'ŞENOL YILMAZ', N'1033', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'745', N'TAHSİN DEMIRCI', N'1034', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'746', N'TAHSİN KURT', N'1035', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'747', N'TAMER YARAN', N'1036', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'748', N'TARIK AYVAZ', N'1037', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'749', N'TEMEL KARA', N'1038', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'750', N'TURAN FURUNCU', N'1039', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'751', N'TURGAY SARIKAYA', N'1040', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'752', N'TURGUT ŞAMLI', N'1041', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'753', N'UĞUR EKİNCİ', N'1042', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'754', N'ÜNAL MET', N'1043', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'755', N'VEDAT FET', N'1044', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'756', N'VEDAT GUR', N'1045', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'757', N'VEYSEL DEMIR', N'1046', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'758', N'YAKUP SOLMAZ', N'1047', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'759', N'YAŞAR GUMUS', N'1049', N'2011-01-01', N'2011-12-31', N'4', N'33');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'760', N'YILMAZ YILDIZ', N'1050', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'761', N'YUSUF EROL', N'1051', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'762', N'YUSUF GÜL', N'1052', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'763', N'YÜKSEL AYÇİÇEK', N'1053', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'764', N'YÜKSEL DURAN', N'1054', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'765', N'ZAFER GURKAN', N'1055', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'766', N'ZAFER TOSUN', N'1056', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'767', N'ZEKERİYA TARCAN', N'1057', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'768', N'ZÜLFİKAR AK5', N'1058', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'769', N'ESİN SAYAR', N'1059', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'770', N'ENGİN CESUR', N'1060', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'771', N'İDRİS SAİM', N'1061', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'772', N'KADİR  ASAR', N'1062', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'773', N'SERHAN CATAL', N'1064', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'774', N'EBUBEKİR  CENGİZ', N'1065', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'775', N'MUHAMMET YURT', N'1066', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'776', N'ÖZKAN YILDIRIM', N'1067', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'777', N'FATİH BULUT', N'1068', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'778', N'MELİH KOLAYLI', N'1069', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'779', N'AYDIN SEYMENBASI', N'1071', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'780', N'CEM OZTURK', N'1072', N'2011-01-01', N'2011-12-31', N'4', N'34');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'781', N'DENİZ DUMAN', N'1073', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'782', N'ERDEM LEZGI', N'1074', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'783', N'FATİH SURUR', N'1075', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'784', N'HAMİT KILIÇASLAN', N'1076', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'785', N'İBRAHİM OZTATAR', N'1077', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'786', N'MEHMET PEHLIVAN', N'1078', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'787', N'MUAMMER AKDAS', N'1079', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'788', N'MUHARREM OZKARADENİZ', N'1080', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'789', N'MUSTAFA YILDIRIM', N'1081', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'790', N'OKAN CAKIR', N'1082', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'791', N'RECEP UYSAL', N'1083', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'792', N'SABİT ELGIN', N'1084', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'793', N'SEZER ERASLAN', N'1085', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'794', N'SEVKET AKTURKOGLU', N'1086', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'795', N'TURGAY GUNER', N'1087', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'796', N'YÜCEL 5DAÇ', N'1088', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'797', N'ADEM BALTÜRK', N'1089', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'798', N'AHMET AKKUS', N'1090', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'799', N'AHMET CALI', N'1091', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'800', N'ALİ KEMAL GÜNHAN', N'1092', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'801', N'ALİ KEMAL ÖZTÜRK', N'1093', N'2011-01-01', N'2011-12-31', N'4', N'35');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'802', N'ALİ YASİN KOKSAL', N'1094', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'803', N'BARIŞ COBAN', N'1095', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'804', N'BÜLENT GUZEL', N'1096', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'805', N'CELAL BAYRAM', N'1097', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'806', N'CELAL DEMIR', N'1098', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'807', N'ERHAN KAYA', N'1099', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'808', N'GÜNDAY TÜRKDAL', N'1101', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'809', N'HASAN ÖMER BAYRAK', N'1102', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'810', N'HÜSEYİN AVNİ ERGUN', N'1103', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'811', N'HÜSEYİN KARAHAN', N'1104', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'812', N'HÜSEYİN PEKTAS', N'1105', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'813', N'İLHAN YILMAZ', N'1106', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'814', N'MEHMET KURT', N'1107', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'815', N'MURAT BAYRAM', N'1108', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'816', N'MURAT YILMAZ', N'1109', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'817', N'MUSTAFA TAŞTEKİN', N'1110', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'818', N'NİHAT YAŞLICA', N'1111', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'819', N'NURULLAH KARAOSMANOGLU', N'1112', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'820', N'RAMAZAN CAKICI', N'1114', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'821', N'SELAHATTİN ÖMER YAMALI', N'1115', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'822', N'SALİH USLU', N'1116', N'2011-01-01', N'2011-12-31', N'4', N'36');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'823', N'SEZGIN GUNCAN', N'1118', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'824', N'ŞİNASİ OZER', N'1119', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'825', N'ŞÜKRÜ SAHİN', N'1120', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'826', N'YILMAZ BARLAS', N'1121', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'827', N'GÖZDE CALIK', N'1122', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'828', N'NURETTİN ALTUN', N'1123', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'829', N'VİLDAN GÜNAYDIN', N'1124', N'2011-01-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'830', N'AYNUR KABAK', N'1126', N'2011-01-05', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'831', N'SEMİH YENİSEY', N'1227', N'2011-02-22', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'832', N'ALPER KORAL', N'1228', N'2011-02-22', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'833', N'MUSTAFA KOCA', N'1244', N'2011-03-29', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'834', N'MEHMET MURAT TEMIZER', N'1339', N'2011-08-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'835', N'FEYZULLAH USLU', N'1340', N'2011-08-01', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'836', N'TUGBA YIGIT', N'1343', N'2011-09-12', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'837', N'ZAFER CAKMAK', N'1344', N'2011-09-19', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'838', N'NURAY  ESEROGLU', N'1345', N'2011-09-28', N'2011-12-31', N'4', N'37');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'839', N'İBRAHİM HAKKI  TANIŞ', N'0042', N'2005-06-07', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'840', N'FATMA METEER', N'0049', N'2005-06-07', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'841', N'DILEK ALBAYRAKOĞLU', N'0052', N'2005-06-07', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'842', N'SÜLEYMAN ALPER YILDIRIM', N'0060', N'2005-06-07', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'843', N'YUSUF CEMAL KÜÇÜK', N'0071', N'2005-05-24', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'844', N'HAKAN DEMIR', N'0079', N'2005-12-15', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'845', N'FERIDUN SISMAN', N'0080', N'2005-12-15', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'846', N'IRFAN KORKUT', N'0081', N'2005-12-15', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'847', N'MÜZEYYEN ULUTÜRK', N'0085', N'2005-12-15', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'848', N'GÖZDE DEMIR', N'0102', N'2005-12-15', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'849', N'ALPTEKIN CEVHERLI', N'0117', N'2006-01-18', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'850', N'MUSTAFA AGAR', N'0127', N'2005-06-07', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'851', N'ORHAN KARALOGLU', N'0142', N'2005-06-07', N'2011-12-31', N'5', N'38');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'852', N'DURSUN KARAMAN', N'0154', N'2006-05-23', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'853', N'FERHAT KOÇ', N'0160', N'2006-05-09', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'854', N'YUKSEL GURCAN', N'0161', N'2006-05-19', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'855', N'HALE DOGUS', N'0164', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'856', N'MURAT CANER', N'0165', N'2006-05-04', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'857', N'ÖZLEM EKIM', N'0167', N'2006-05-02', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'858', N'UMUT KORAY KAYA', N'0169', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'859', N'MUHITTIN YALCIN', N'0179', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'860', N'HUSEYIN OKAN BALCIOGLU', N'0180', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'861', N'SEVKI USTA', N'0186', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'862', N'FIRDEVS SAK', N'0187', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'863', N'HUSEYIN CAN', N'0191', N'2006-05-01', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'864', N'HAKAN ÖZDEN', N'0199', N'2006-05-03', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'865', N'MURAT EMINOGLU', N'0202', N'2006-05-03', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'866', N'ERDAL BÜYÜKAYDIN', N'0205', N'2006-05-23', N'2011-12-31', N'5', N'39');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'867', N'TAYFUN KAVAKLI', N'0207', N'2006-05-18', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'868', N'BARIS DAGDELEN', N'0209', N'2006-05-18', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'869', N'ÜMMÜGÜL ERDOGANOGLU', N'0215', N'2006-05-18', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'870', N'ZELIHA UYGUN', N'0216', N'2006-05-18', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'871', N'FUNDA ÇAKIT', N'0217', N'2006-05-08', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'872', N'MELTEM ISIK', N'0219', N'2006-05-18', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'873', N'MEHMET KORCAN ERGIN', N'0221', N'2006-05-18', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'874', N'TUGBA KARTALTEPE', N'0224', N'2006-05-19', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'875', N'ENIS EFTAL KARATAS', N'0225', N'2006-05-19', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'876', N'HÜSEYIN ÖÇAL', N'0226', N'2006-05-19', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'877', N'TURGAY KÖR', N'0227', N'2006-05-19', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'878', N'TUBA ÖZDAL', N'0230', N'2006-05-23', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'879', N'HAKAN YAZICI', N'0231', N'2006-05-23', N'2011-12-31', N'5', N'40');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'880', N'ÖZLEM ÇEPOGLU', N'0259', N'2006-08-25', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'881', N'HAKAN KIPRITÇI', N'0262', N'2006-09-06', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'882', N'RUKIYE YELIZ FITÖZ', N'0267', N'2006-10-05', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'883', N'SELMIN AĞIL', N'0282', N'2007-01-15', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'884', N'SERDAL DINÇ', N'0283', N'2007-01-15', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'885', N'ARZU TEKOGUL', N'0286', N'2007-01-15', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'886', N'ZAFER KÖSE', N'0289', N'2007-01-15', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'887', N'RAZIYE KÖROGLU', N'0290', N'2007-01-15', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'888', N'MEHMET FATIH MALCOK', N'0292', N'2007-01-15', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'889', N'EREN SAHIN', N'0302', N'2007-02-12', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'890', N'ERKAN DAROL', N'0305', N'2007-02-12', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'891', N'FIKRI DURMUS', N'0306', N'2007-02-12', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'892', N'OZAY ERDEM', N'0309', N'2007-02-12', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'893', N'YAVUZ DURMUS', N'0310', N'2007-02-12', N'2011-12-31', N'5', N'41');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'894', N'AHMET ÖZDEMIR', N'0313', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'895', N'HARUN EMISTEKIN', N'0316', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'896', N'MAHIR ESBER BEKHANOGLU', N'0319', N'2007-07-01', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'897', N'ZEYNEP VAROL', N'0321', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'898', N'DILEK KERSE', N'0322', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'899', N'SENEM DİVAR', N'0323', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'900', N'BURCU TÜRKMEN', N'0325', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'901', N'HALIL TORTUM', N'0326', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'902', N'EMINE GÜLER MAVİLİ', N'0327', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'903', N'SEMRA DEMIRTAS ÇAKIROĞLU', N'0328', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'904', N'ELIF BAYRAMOĞLU', N'0329', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'905', N'BERNA DEMIRER', N'0331', N'2007-02-12', N'2011-12-31', N'5', N'42');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'906', N'NAZAN ERTUĞRUL', N'0335', N'2007-02-13', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'907', N'ESRA BAL', N'0336', N'2007-02-13', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'908', N'FEYZULLAH YILDIZ', N'0340', N'2007-02-22', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'909', N'CELAL ÇAGAY', N'0346', N'2007-04-17', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'910', N'NUSRET ERBAY', N'0347', N'2007-05-01', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'911', N'HASAN ADA', N'0350', N'2007-05-15', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'912', N'KENAN EKREM', N'0351', N'2007-05-15', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'913', N'MUHARREM KANPARA', N'0355', N'2007-05-16', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'914', N'MURAT KURTAN', N'0356', N'2007-05-16', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'915', N'SERDAR DERIN', N'0357', N'2007-05-16', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'916', N'GAMZE SEÇKIN', N'0359', N'2007-05-16', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'917', N'TUGBA TEKKE', N'0362', N'2007-11-17', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'918', N'BETÜL KOÇ', N'0366', N'2007-06-05', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'919', N'ERAY KAVSUT', N'0368', N'2007-06-05', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'920', N'SONER ÇEVIK', N'0369', N'2007-06-05', N'2011-12-31', N'5', N'43');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'921', N'SEMRA TARAK', N'0376', N'2007-06-13', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'922', N'SALIHA AYDIN', N'0377', N'2007-06-13', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'923', N'FATMA TUGBA KALYONCU', N'0379', N'2007-06-20', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'924', N'ALI OSMAN ÜNLÜ', N'0381', N'2007-06-20', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'925', N'FATIH BUCAK', N'0382', N'2007-06-20', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'926', N'TÜRKER EMINOGLU', N'0388', N'2007-07-01', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'927', N'ISMAIL ÇAGLAR OKTAY', N'0398', N'2007-08-07', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'928', N'PAKIZE TEKEL', N'0399', N'2007-08-15', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'929', N'AYSEN DEMIR', N'0401', N'2007-08-30', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'930', N'TÜLAY TEMELLI', N'0403', N'2007-09-15', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'931', N'ZUHAL BULUT TEKİN', N'0409', N'2007-10-09', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'932', N'HAVA NUR TEKIN', N'0410', N'2007-11-17', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'933', N'MUSTAFA SALMAN', N'0412', N'2007-12-27', N'2011-12-31', N'5', N'44');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'934', N'YASEMİN BEKTAŞ ALTIN', N'0418', N'2008-02-18', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'935', N'AYŞE TÜREGÜN', N'0427', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'936', N'SİNEM SENOGLU', N'0428', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'937', N'SİBEL GÖÇMEN', N'0429', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'938', N'AŞKIN TUBA DOBU', N'0430', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'939', N'LEVENT DEMIRCAN', N'0431', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'940', N'HÜSEYİN GÜLÇEBİ', N'0432', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'941', N'ABDÜL ÖMER KABA', N'0433', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'942', N'NIHAT GOKTAS', N'0434', N'2008-05-01', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'943', N'ORHAN YÜCEL', N'0435', N'2009-11-30', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'944', N'ŞEYMA OĞUZ', N'0438', N'2008-05-08', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'945', N'ABDURRAHİM YALÇIN', N'0439', N'2008-05-24', N'2011-12-31', N'5', N'45');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'946', N'MEHMET ZAFER DEMİRER', N'0451', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'947', N'SUAT ALBAYRAKOĞLU', N'0452', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'948', N'SERKAN KUNT', N'0453', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'949', N'MURAT AKÇA', N'0454', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'950', N'ALİ  ERSOY', N'0456', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'951', N'GÜRKAN GUNER', N'0457', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'952', N'GÖKHAN TURGUT', N'0458', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'953', N'ADNAN ÖZCAN', N'0459', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'954', N'EMRE SEÇKİN', N'0461', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'955', N'SERKAN ŞİRİN', N'0462', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'956', N'BARIŞ BEKTAS', N'0463', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'957', N'HACI SALİH BAYRAKTAR', N'0465', N'2008-10-14', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'958', N'MEHMET BİLAL DÖLEŞ', N'0468', N'2008-10-27', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'959', N'NİLÜFER ERGÜÇ', N'0470', N'2008-11-01', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'960', N'GÜLTEN ERDİNE', N'0471', N'2008-11-01', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'961', N'BELGİN TAKAK', N'0476', N'2008-11-24', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'962', N'AKİF TAŞDEMİR', N'0477', N'2008-11-24', N'2011-12-31', N'5', N'46');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'963', N'YAVUZ SELİM SATIROĞLU', N'0481', N'2009-01-27', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'964', N'TUĞBA AKDENİZ', N'0482', N'2009-02-01', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'965', N'VELİ BALGAN', N'0490', N'2009-03-10', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'966', N'ERGUN HANE', N'0498', N'2009-06-25', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'967', N'DUYGU ÖZTEKİN', N'0499', N'2009-07-14', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'968', N'BURCU KELES', N'0503', N'2009-08-11', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'969', N'BURAK ERTAŞ', N'0512', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'970', N'FAHRİ KAZAN', N'0514', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'971', N'HİLAL MENEKŞE', N'0515', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'972', N'UĞUR ŞAHİN', N'0517', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'973', N'GÖKHAN TEZERER', N'0521', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'974', N'MURAT GÖKBUDAK', N'0523', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'975', N'ERSEN TOKGÖZ', N'0524', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'976', N'CÜNEYT MAVİLİ', N'0525', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'977', N'HACIHANIM ERASLAN', N'0528', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'978', N'HALİL KESİKBAŞ', N'0532', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'979', N'ARİF ÇAVUŞOĞLU', N'0534', N'2009-11-05', N'2011-12-31', N'5', N'47');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'980', N'HAVVA SÜLEYMANOĞLU', N'0539', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'981', N'MUHARREM  KELEŞ', N'0540', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'982', N'MÜCAHİT KÜÇÜKCİCİ', N'0541', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'983', N'ELİF YALI', N'0549', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'984', N'MURAT ÖZKAR', N'0552', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'985', N'RECEP AYDIN CEYHAN', N'0553', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'986', N'HİLAL GÜNEŞ', N'0554', N'2009-11-05', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'987', N'AHMET KAYHAN', N'0555', N'2009-11-06', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'988', N'HASAN KILIÇ', N'0556', N'2009-11-06', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'989', N'TUBA ATASOY', N'0560', N'2009-11-21', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'990', N'SERKAN GÖZÜN', N'0572', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'991', N'İSMAİL AKTURKOGLU', N'0573', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'992', N'CAVİT AYAZ', N'0574', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'993', N'ALAETTİN SÖĞÜT', N'0575', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'994', N'İBRAHİM TÜRKAY', N'0576', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'995', N'ERKAN SALTAN', N'0577', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'996', N'ERDİNÇ ŞEN', N'0578', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'997', N'FATİH KARAMAN', N'0579', N'2010-01-01', N'2011-12-31', N'5', N'48');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'998', N'SABRİ KAPLAN', N'0580', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'999', N'TUNCER DEMİRHAN', N'0581', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1000', N'MÜKERREM  DUMAN', N'0582', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1001', N'MUSTAFA CANGURU', N'0583', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1002', N'ŞENOL KÖSE', N'0584', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1003', N'MACİT AKDENİZ', N'0585', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1004', N'ALİ HASAN KARATAŞ', N'0598', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1005', N'ARİF ÖZDEMİR', N'0599', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1006', N'ERCAN YILDIZ', N'0600', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1007', N'HASAN EKİZ', N'0601', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1008', N'İBRAHİM SAFİ', N'0602', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1009', N'İHSAN ABA', N'0603', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1010', N'İLHAN CAN', N'0604', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1011', N'MURAT KANDEMİR', N'0605', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1012', N'NAFİZ YAZICI', N'0606', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1013', N'NİZAMETTİN EKİZ', N'0607', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1014', N'OSMAN CELEPCI', N'0608', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1015', N'HÜSEYİN ÖZDEN', N'0609', N'2010-01-01', N'2011-12-31', N'5', N'49');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1016', N'MEHMET KARAKOÇ', N'0610', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1017', N'ŞABAN  BAYKUŞ', N'0612', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1018', N'ŞERAFETTİN GÜLENER', N'0613', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1019', N'HASAN KARACA', N'0617', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1020', N'ADEM SEVİNÇ', N'0618', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1021', N'AHMET KAYKILAR', N'0619', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1022', N'ALİ ANKAZ', N'0620', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1023', N'COŞKUN ÇELİK', N'0621', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1024', N'ERTAN BEYTAS', N'0623', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1025', N'FARUK ŞAMLI', N'0624', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1026', N'KENAN ŞAHİN', N'0625', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1027', N'MERTKAN DİK', N'0626', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1028', N'MURAT ERGÜS', N'0627', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1029', N'MUSTAFA MUTLU', N'0628', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1030', N'NUMAN DERE', N'0629', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1031', N'NUSRET ÇETİN', N'0630', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1032', N'ŞERAFETTİN BEKTAS', N'0631', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1033', N'EYÜP KARHAN', N'0632', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1034', N'YAŞAR NACİ ERDEM', N'0633', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1035', N'CEMİL AKTOPRAK', N'0635', N'2010-01-01', N'2011-12-31', N'5', N'50');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1036', N'YAVUZ İNCE', N'0639', N'2010-01-01', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1037', N'OĞUZ ANKAZ', N'0640', N'2010-01-01', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1038', N'ARİF AKIN', N'0641', N'2010-01-01', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1039', N'ADİL ERGELEN', N'0643', N'2010-01-01', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1040', N'ETEM KOCAMAN', N'0644', N'2010-01-01', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1041', N'ARDA ÇİĞDEM TİLKİ', N'0645', N'2010-02-08', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1042', N'ÇİĞDEM  YORGANCILAR', N'0646', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1043', N'MUSTAFA  SERT', N'0647', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1044', N'TÜRKAN  ATAK', N'0648', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1045', N'KEREM ÇOLAK', N'0649', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1046', N'İLKNUR ALTIBAĞ', N'0650', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1047', N'ATAMAN SUAT ŞENOL', N'0651', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1048', N'UFUK YÜKSELMİŞ', N'0653', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1049', N'MÜRTEZA GÜNEY', N'0654', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1050', N'VEDAT MERT', N'0656', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1051', N'FİKRET FIRINCI', N'0657', N'2010-02-16', N'2011-12-31', N'5', N'51');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1052', N'HUZEYFE ÖKSÜZ', N'0658', N'2010-02-16', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1053', N'GÜLŞEN BİLGİN', N'0659', N'2010-02-25', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1054', N'ERGİN BEKTAŞ', N'0661', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1055', N'AHMET GENCER', N'0665', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1056', N'ÖNDER SÜLEYMAN  PERKTAŞ', N'0668', N'2010-03-12', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1057', N'ELİF ESRA ŞENGÜL', N'0670', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1058', N'FATİH ERDİL', N'0671', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1059', N'ERGÜN YILMAZ', N'0672', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1060', N'İBRAHİM AKANSU', N'0673', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1061', N'MUHİDDİN BİLGİÇ', N'0674', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1062', N'TUNCAY DEMİRTÜRK', N'0675', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1063', N'TEKİN AKÇAY', N'0676', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1064', N'VOLKAN CESUR ÜLKER', N'0677', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1065', N'DENİZ KARAL DURMUŞ', N'0678', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1066', N'MELİHA  TURAL', N'0679', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1067', N'MEHDİ TEK', N'0681', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1068', N'SEDA HAVUÇ', N'0682', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1069', N'KORAY ÖZTÜRK', N'0683', N'2010-03-01', N'2011-12-31', N'5', N'52');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1070', N'TALİP SORKUN', N'0685', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1071', N'MEHMET  GENİŞ', N'0686', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1072', N'İBRAHİM DEMİRHAN', N'0687', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1073', N'ALİ ÇETİN', N'0688', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1074', N'YAŞAR AKTOP', N'0689', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1075', N'GENÇAĞA AKKURT', N'0690', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1076', N'ENGİN YILMAZ', N'0691', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1077', N'REMZİ AKYILDIZ', N'0692', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1078', N'GENÇOSMAN DEMİRHAN', N'0693', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1079', N'KAZIM SURUCU', N'0694', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1080', N'FATİH UZUN', N'0695', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1081', N'SELAHATTİN KOCACIK', N'0696', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1082', N'METİN  ASUT', N'0697', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1083', N'AHMET ATASOY', N'0698', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1084', N'ABDULLAH CEYLAN', N'0699', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1085', N'RECEP SARIKAYA', N'0700', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1086', N'SÜREYYA KOCA', N'0701', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1087', N'ÖNDER KAMAR', N'0702', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1088', N'MUSTAFA DOGAN', N'0703', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1089', N'KERİM BAYOĞLU', N'0709', N'2010-03-01', N'2011-12-31', N'5', N'53');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1090', N'EVREN ÖÇBE', N'0715', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1091', N'VEYSEL ABDULLAH CİCİ', N'0716', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1092', N'SÜLEYMAN EKINCI', N'0717', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1093', N'SERDAR SELVI', N'0718', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1094', N'METİN NALBANT', N'0719', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1095', N'BURAK PAKSOY', N'0720', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1096', N'EGEMEN ARSLAN', N'0721', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1097', N'ECE NUR AKTAŞ', N'0722', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1098', N'KADİR ERGÜL', N'0723', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1099', N'ERTÜRK AKDİK', N'0724', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1100', N'DERYA UYAROĞLU', N'0725', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1101', N'MEHMET YÜKSEL', N'0726', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1102', N'MELEK  ÇAKAR', N'0727', N'2010-04-19', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1103', N'CİHAN  YETİŞ', N'0732', N'2010-05-04', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1104', N'MUHAMMET BİTİK', N'0733', N'2010-05-18', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1105', N'ALİ ACAR', N'0760', N'2010-10-22', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1106', N'BAHAR YILDIRIM', N'0761', N'2010-11-12', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1107', N'ERTUĞRUL KARAOSMAN', N'0765', N'2010-12-22', N'2011-12-31', N'5', N'54');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1108', N'ADİL SAVAŞ', N'1127', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1109', N'AHMET KABA', N'1128', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1110', N'AHMET KUBURLU', N'1129', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1111', N'ALAEDDİN SAĞLAM', N'1130', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1112', N'ALAY AYYILDIZ', N'1131', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1113', N'ALİ KARACA', N'1132', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1114', N'AYDIN BÜLBÜL', N'1134', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1115', N'BAYRAM YÜKSEL', N'1135', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1116', N'BİROL BEZİR', N'1136', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1117', N'DAVUT SEVİL', N'1137', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1118', N'DİLAVER AKYILDIZ', N'1138', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1119', N'EROL AYÇİÇEK', N'1139', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1120', N'FATİH OKCAN', N'1140', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1121', N'FATİH  TURAN', N'1141', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1122', N'GÜNER GÜNEŞ', N'1142', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1123', N'HAKAN KORKMAZ', N'1143', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1124', N'HAKAN KÖSE', N'1144', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1125', N'HARUN ŞİMŞAK', N'1145', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1126', N'HÜSEYİN ŞİMŞEK', N'1146', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1127', N'KENAN GÜLMEZ', N'1147', N'2011-01-01', N'2011-12-31', N'5', N'55');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1128', N'KÖKSAL KURT', N'1148', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1129', N'MEHMET KIR', N'1149', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1130', N'MEHMET KULLUKÇU', N'1150', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1131', N'MEHMET ÖZKARAASLAN', N'1151', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1132', N'MEHMET SARI', N'1152', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1133', N'MEHMET ŞAHİN', N'1153', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1134', N'MUSTAFA AKBABA', N'1154', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1135', N'MUSTAFA YUSUF', N'1155', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1136', N'OSMAN DEMİRTÜRK', N'1156', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1137', N'OSMAN KARAMAK', N'1157', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1138', N'OSMAN KIVANÇ', N'1158', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1139', N'OSMAN YILDIZHAN', N'1159', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1140', N'ÖMER ÖZTÜRK', N'1160', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1141', N'RECEP IŞIK', N'1161', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1142', N'SANİ TAHİR ÖRGÜÇ', N'1162', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1143', N'SELAHATTİN AYHAN', N'1163', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1144', N'SULTAN ALEMDAR', N'1164', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1145', N'ŞENOL MAMAK', N'1165', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1146', N'ŞEVKET TARI', N'1166', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1147', N'TANER ONGUR', N'1167', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1148', N'TUNCAY GENÇ', N'1168', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1149', N'TÜRKAN BAYRAM', N'1169', N'2011-01-01', N'2011-12-31', N'5', N'56');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1150', N'YASİN ERCAN', N'1170', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1151', N'YUSUF ASLAN', N'1171', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1152', N'YÜKSEL ÖZKARAASLAN', N'1172', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1153', N'ABDÜLHAMİT ALTUN', N'1173  ', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1154', N'ALİ İMAMOĞLU', N'1174', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1155', N'DAVUT ŞAHİN', N'1175', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1156', N'ENES ARAT', N'1176', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1157', N'MÜMİN YAĞIZ', N'1177', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1158', N'RAFİYE  USTA', N'1178', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1159', N'RAHMİ TAMTÜRK', N'1179', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1160', N'SELAHATTİN KÖKEN', N'1180', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1161', N'ŞAHABETTİN ALTUNTERİN', N'1181', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1162', N'TACETTİN DEMİREL', N'1182', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1163', N'TAKIN SOYER', N'1183', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1164', N'YUSUF TAN', N'1184', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1165', N'MUSTAFA SİVRİ', N'1185', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1166', N'EMİNE KAR', N'1186', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1167', N'İSMAİL BALLI', N'1187', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1168', N'MEHMET ŞEN', N'1188', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1169', N'MURAT ERTAN', N'1189', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1170', N'ZELİHA AYDEMİR', N'1190', N'2011-01-01', N'2011-12-31', N'5', N'57');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1171', N'AYGÜL AÇIŞ', N'1191', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1172', N'AYHAN VAROL', N'1192', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1173', N'MUHAMMED BARBAROS BAYRAM', N'1193', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1174', N'HÜSEYİN CAŞTUR', N'1194', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1175', N'HÜSEYİN YALÇIN', N'1195', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1176', N'KADRİYE ŞAHİN', N'1196', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1177', N'MEHMET EMİN SOYDABAŞ', N'1197', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1178', N'MERYEM MELEK', N'1198', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1179', N'NEBAHAT ÇALIŞKAN', N'1199', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1180', N'NİHAT SERT', N'1200', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1181', N'ÖNDER ÇATAN', N'1201', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1182', N'ÖZNUR TIRPANCI', N'1202', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1183', N'SABRİ BAŞ', N'1203', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1184', N'SEMİHA LAVAS ÖZKOL', N'1205', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1185', N'TURAN OCAK', N'1206', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1186', N'YASİN DURMUŞ', N'1207', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1187', N'CÜNEYT ÇETİNTAŞ', N'1208', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1188', N'EMEL ŞENER', N'1209', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1189', N'FATMANUR DANIŞ', N'1210', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1190', N'IŞIN ŞAHİN BOZKURT', N'1211', N'2011-01-01', N'2011-12-31', N'5', N'58');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1191', N'MURAT SEYREK', N'1212', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1192', N'MUSTAFA GÜRSOY', N'1213', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1193', N'TÜMAY CİVECİOĞLU KADIOĞL', N'1214', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1194', N'FATİH GENÇ', N'1215', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1195', N'FATİH KARAALP', N'1216', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1196', N'AYŞEGÜL ERİKCİ', N'1217', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1197', N'EZGİ MOĞUL', N'1218', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1198', N'FATMA KÜÇÜKAY', N'1219', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1199', N'HÜSEYİN TONBULOĞLU', N'1220', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1200', N'ÖMER  AKBAŞ', N'1221', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1201', N'RECEP ŞEYHOĞLU', N'1222', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1202', N'MÜSLÜM YILDIRIM', N'1223', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1203', N'VARAN AĞDEDE', N'1224', N'2011-01-01', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1204', N'ESRA SÜRÜM', N'1225', N'2011-01-22', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1205', N'MURAT GUT ATAK', N'1226', N'2011-01-29', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1206', N'YUSUF TIRYAKI', N'1241', N'2011-03-04', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1207', N'NIZAMETTIN YELMER', N'1242', N'2011-03-14', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1208', N'HASAN ASAR', N'1243', N'2011-03-14', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1209', N'ABDÜLAZİZ ÜNAL', N'1245', N'2011-05-23', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1210', N'ELİF ASLAN', N'1321', N'2011-06-20', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1211', N'SAVAŞ MURATOĞLU', N'1322', N'2011-06-20', N'2011-12-31', N'5', N'59');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1212', N'HAKAN HIRÇIN', N'1323', N'2011-06-20', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1213', N'SEVAL KARAGÜNLİ', N'1324', N'2011-06-20', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1214', N'ESRA HEPDURLUK', N'1325', N'2011-06-20', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1215', N'TAHİR ÖZDEMİR', N'1326', N'2011-06-20', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1216', N'HAYRİ ÇAKIR', N'1327', N'2011-06-20', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1217', N'SAMED ÖZDEMİR', N'1347', N'2011-12-14', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1218', N'KİBAR ALTINOK', N'1341', N'2011-08-15', N'2011-12-31', N'5', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1219', N'CEYHAN COŞAR', N'518', N'2009-11-05', N'2011-12-31', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1220', N'ADEM KAKALOĞLU', N'1229', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1221', N'MUSA  OZSENTURK', N'1230', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1222', N'HASAN ORAK', N'1231', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1223', N'SELÇUK ÇOBAN', N'1232', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1224', N'UGUR DEMİR', N'1233', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1225', N'MUSTAFA CIHAN', N'1234', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1226', N'HÜSNÜ KILIÇOĞLU', N'1236', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1227', N'YILDIZ UGURLU', N'1237', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1228', N'EYLEM FIRAT', N'1238', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1229', N'ZIYA TURGAY', N'1239', N'2011-03-01', N'2012-01-11', N'1', N'60');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1230', N'MEVLÜT SARI', N'0333', N'2007-02-12', N'2012-01-12', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1231', N'BAYRAM  KARAKUŞ', N'0564', N'2009-12-08', N'2012-02-03', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1232', N'BARIŞ HÜLÜR', N'0756', N'2010-09-14', N'2012-03-16', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1233', N'HALIL ZORLU', N'0371', N'2007-06-08', N'2012-04-13', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1234', N'ALİ SALKIM', N'0569', N'2010-01-18', N'2012-04-10', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1235', N'DERVIS YASIN IPSIROGLU', N'0281', N'2007-01-09', N'2012-05-21', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1236', N'SIDDIK AYDIN', N'0714', N'2010-04-19', N'2011-11-30', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1237', N'MUHAMMED TURAN', N'0526', N'2009-11-05', N'2011-11-30', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1238', N'HASAN BASARAN', N'0109', N'2005-12-30', N'2012-07-07', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1239', N'ERHAN ERKOÇAK', N'0751', N'2010-08-07', N'2012-07-26', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1240', N'ERHAN BAYRAKTAR', N'1346', N'2011-11-14', N'2012-09-14', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1241', N'MELEK UZUN', N'752', N'2010-08-16', N'2012-10-11', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1242', N'ABDULLAH KAĞANOĞLU', N'1350', N'2012-09-27', N'2012-11-28', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1243', N'TAHİR MURAT MACİT', N'1349', N'2012-09-01', N'2012-12-28', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1244', N'SİNAN SEZER', N'747', N'2010-08-03', N'2013-01-11', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1245', N'AZİZ BAYRAM', N'111', N'2006-01-01', N'2013-02-07', N'1', N'61');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1246', N'NURİ ALTIN', N'1235', N'2011-03-01', N'2013-04-30', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1247', N'ALİ YILDIZ', N'413', N'2008-02-18', N'2013-05-02', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1248', N'AYŞİN METİN KALAFAT', N'504', N'2009-08-26', N'2013-07-03', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1249', N'ŞABAN ÖZER', N'497', N'2009-06-02', N'2013-08-19', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1250', N'SALİH BURAK ÇEREZCİ', N'345', N'2007-09-08', N'2013-09-04', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1251', N'CEMHAN BÜYÜKKAYIKÇI', N'753', N'2010-09-02', N'2013-09-06', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1252', N'GÖKHAN KOÇYİĞİT', N'745', N'2010-08-03', N'2013-11-13', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1253', N'HÜRİYE ABİŞ', N'728', N'2010-04-19', N'2013-12-17', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1254', N'AHMET POYRAZ', N'729', N'2010-04-19', N'2013-12-17', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1255', N'ADNAN UYSAL', N'1318', N'2011-06-15', N'2013-12-31', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1256', N'GAMZE BÖKE', N'271', N'2006-11-01', N'2014-03-07', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1257', N'KEMAL KILIÇ', N'748', N'2010-08-03', N'2014-03-07', N'1', N'62');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1258', N'HAVVA BÜLBÜL', N'506', N'2009-09-29', N'2014-03-13', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1259', N'ALPER UZUN', N'1356', N'2013-02-01', N'2014-04-03', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1260', N'AYLA LEBLEBİCİ', N'151', N'2006-03-09', N'2014-07-01', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1261', N'MEHMET EMİN ÇALIŞKAN', N'750', N'2010-08-05', N'2014-07-01', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1262', N'ŞÜKRÜ AYDIN', N'567', N'2010-01-15', N'2014-07-01', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1263', N'RAMAZAN GÖKTÜRK', N'445', N'2008-06-30', N'2014-07-01', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1264', N'DEVRİM DEMİR', N'414', N'2014-02-18', N'2014-07-01', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1265', N'MEHMET YAZICI', N'121', N'2006-01-30', N'2014-07-01', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1266', N'MUHTEREM TANRIKULU', N'74', N'2005-10-12', N'2014-07-31', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1267', N'ALİ AÇIKGÖZ', N'149', N'2006-02-02', N'2014-07-31', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1268', N'CEYDA BOZACI (BELKAYA)', N'766', N'2011-01-01', N'2014-07-31', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1269', N'DUYGU EKİN', N'757', N'2010-09-15', N'2014-07-31', N'1', N'63');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1270', N'ABDULKADİR KARAOSMANOĞLU', N'107', N'2011-01-01', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1271', N'SERKAN BALCI', N'442', N'2008-06-10', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1272', N'HALİL YILMAN', N'1360', N'2013-03-04', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1273', N'BÜLENT ÖNEN', N'82', N'2005-12-15', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1274', N'İLHAN YILDIZ', N'260', N'2006-08-29', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1275', N'KORHAN ERDOĞAN', N'86', N'2005-12-15', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1276', N'İDRİS İNCE', N'98', N'2005-06-07', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1277', N'BURÇİN TOPRAK', N'1359', N'2013-02-12', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1278', N'HAYATİ ŞAHİN', N'255', N'2006-08-02', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1279', N'ERDAL POLAT', N'400', N'2007-08-16', N'2014-07-31', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1280', N'İLHAMİ BÜTÜN', N'563', N'2009-11-25', N'2014-08-04', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1281', N'AYDIN KOCAMAN', N'1347', N'2012-06-01', N'2014-11-05', N'1', N'64');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1282', N'NUMAN ÖZAKPINAR', N'249', N'2006-07-04', N'2015-01-20', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1284', N'SEYDA TÜTÜNCÜ', N'1362', N'2013-04-22', N'2015-02-17', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1285', N'HASAN ZER', N'99', N'2005-11-12', N'2015-03-02', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1286', N'OKTAY OK', N'568', N'2010-01-18', N'2015-03-31', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1287', N'NESRİN DURAN', N'1351', N'2012-10-01', N'2015-04-09', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1288', N'ÖZER TUNÇER', N'1369', N'2013-12-25', N'2015-07-20', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1289', N'ALİ OSMAN UYSAL', N'739', N'2010-08-03', N'2015-08-10', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1290', N'MERVE AYLİN SARIGÜL', N'566', N'2009-12-24', N'2015-08-31', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1291', N'KADİR KANDEMİR', N'561', N'2009-11-24', N'2015-10-12', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1292', N'DERYA BERBEROĞLU', N'1342', N'2011-09-12', N'2015-11-09', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1293', N'EMİNE ZER', N'247', N'2006-06-15', N'2015-01-05', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1294', N'MEHMET AKKAYA', N'339', N'2007-03-02', N'2015-01-05', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1295', N'ÇİĞDEM YILMAZ', N'248', N'2006-07-01', N'2015-01-05', N'1', N'66');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1296', N'YASİN AKIN', N'713', N'2010-04-16', N'2015-01-16', N'1', N'65');
GO
INSERT INTO [dbo].[Arsiv_Personel] VALUES (N'1297', N'HAKAN ÇELİKİZ', N'1366', N'2013-06-05', N'2017-08-01', N'1', N'67');
GO

-- ----------------------------
-- Table structure for [dbo].[Avanslar]
-- ----------------------------
DROP TABLE [dbo].[Avanslar]
GO
CREATE TABLE [dbo].[Avanslar] (
[id] int NOT NULL ,
[personelId] int NOT NULL ,
[tutar] int NOT NULL ,
[tarih] date NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Records of Avanslar
-- ----------------------------
INSERT INTO [dbo].[Avanslar] VALUES (N'11', N'741', N'500', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'167', N'754', N'400', N'2018-02-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'179', N'754', N'500', N'2018-03-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'196', N'754', N'800', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'399', N'761', N'500', N'2018-10-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'105', N'761', N'750', N'2017-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'417', N'761', N'750', N'2018-11-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'145', N'761', N'1000', N'2017-12-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'157', N'761', N'1000', N'2018-01-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'197', N'761', N'1000', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'159', N'761', N'1500', N'2018-02-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'173', N'761', N'1750', N'2018-03-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'48', N'769', N'600', N'2017-05-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'41', N'769', N'700', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'168', N'769', N'700', N'2018-02-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'203', N'769', N'700', N'2018-05-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'292', N'769', N'700', N'2018-08-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'339', N'769', N'700', N'2018-09-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'368', N'769', N'700', N'2018-10-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'68', N'769', N'800', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'94', N'769', N'800', N'2017-08-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'109', N'769', N'800', N'2017-09-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'128', N'769', N'800', N'2017-11-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'447', N'769', N'800', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'459', N'769', N'800', N'2018-12-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'84', N'769', N'900', N'2017-07-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'119', N'769', N'900', N'2017-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'140', N'769', N'900', N'2017-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'149', N'769', N'900', N'2018-01-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'181', N'769', N'900', N'2018-03-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'235', N'769', N'900', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'160', N'779', N'500', N'2018-02-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'4', N'779', N'700', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'20', N'779', N'700', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'32', N'779', N'700', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'46', N'779', N'700', N'2017-05-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'58', N'779', N'700', N'2017-06-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'75', N'779', N'700', N'2017-07-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'86', N'779', N'700', N'2017-08-02');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'108', N'779', N'700', N'2017-09-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'111', N'779', N'700', N'2017-10-02');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'123', N'779', N'700', N'2017-11-01');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'134', N'779', N'700', N'2017-12-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'147', N'779', N'700', N'2018-01-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'183', N'779', N'700', N'2018-04-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'171', N'779', N'750', N'2018-03-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'202', N'779', N'800', N'2018-05-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'218', N'779', N'800', N'2018-06-01');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'284', N'779', N'1000', N'2018-08-03');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'331', N'779', N'1000', N'2018-09-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'366', N'779', N'1000', N'2018-10-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'419', N'779', N'1000', N'2018-11-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'472', N'779', N'1000', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'245', N'779', N'1500', N'2018-07-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'198', N'780', N'500', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'175', N'780', N'700', N'2018-03-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'212', N'780', N'700', N'2018-05-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'230', N'780', N'700', N'2018-06-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'271', N'780', N'700', N'2018-07-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'282', N'780', N'700', N'2018-08-03');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'358', N'780', N'700', N'2018-10-01');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'371', N'780', N'700', N'2018-10-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'448', N'780', N'700', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'496', N'780', N'700', N'2018-12-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'73', N'780', N'900', N'2017-06-23');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'85', N'780', N'900', N'2017-07-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'2', N'908', N'1500', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'40', N'908', N'1500', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'47', N'908', N'1500', N'2017-05-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'62', N'908', N'1500', N'2017-06-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'82', N'908', N'1500', N'2017-07-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'93', N'908', N'1500', N'2017-08-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'107', N'908', N'1500', N'2017-09-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'113', N'908', N'1500', N'2017-10-03');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'126', N'908', N'1500', N'2017-11-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'139', N'908', N'1500', N'2017-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'154', N'908', N'1500', N'2018-01-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'169', N'908', N'2000', N'2018-02-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'180', N'908', N'2000', N'2018-03-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'193', N'908', N'2000', N'2018-04-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'214', N'908', N'2000', N'2018-05-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'236', N'908', N'2000', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'269', N'908', N'2000', N'2018-07-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'318', N'908', N'2000', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'325', N'908', N'2000', N'2018-08-29');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'330', N'908', N'2000', N'2018-09-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'401', N'908', N'2000', N'2018-10-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'415', N'908', N'2000', N'2018-11-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'474', N'908', N'2000', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'56', N'914', N'1000', N'2017-05-26');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'9', N'2198', N'1000', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'18', N'2198', N'1000', N'2017-03-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'36', N'2198', N'1000', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'54', N'2198', N'1000', N'2017-05-22');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'64', N'2198', N'1000', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'178', N'2198', N'1000', N'2018-03-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'200', N'2198', N'1000', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'201', N'2198', N'1000', N'2018-05-02');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'232', N'2198', N'1000', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'277', N'2198', N'1000', N'2018-07-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'373', N'2198', N'1000', N'2018-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'423', N'2198', N'1000', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'488', N'2198', N'1000', N'2018-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'29', N'2200', N'2000', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'39', N'2200', N'2000', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'55', N'2200', N'2000', N'2017-05-22');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'65', N'2200', N'2000', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'77', N'2200', N'2000', N'2017-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'90', N'2200', N'2000', N'2017-08-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'99', N'2200', N'2000', N'2017-09-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'122', N'2200', N'2000', N'2017-10-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'130', N'2200', N'2000', N'2017-11-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'142', N'2200', N'2000', N'2017-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'152', N'2200', N'2000', N'2018-01-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'213', N'2200', N'2000', N'2018-05-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'234', N'2200', N'2000', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'13', N'2203', N'1500', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'51', N'2203', N'1500', N'2017-05-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'63', N'2204', N'1400', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'78', N'2204', N'1400', N'2017-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'92', N'2204', N'1400', N'2017-08-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'98', N'2204', N'1400', N'2017-09-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'115', N'2204', N'1400', N'2017-10-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'124', N'2204', N'1400', N'2017-11-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'135', N'2204', N'1400', N'2017-12-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'12', N'2204', N'1500', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'25', N'2204', N'1500', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'37', N'2204', N'1500', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'44', N'2204', N'1500', N'2017-05-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'146', N'2204', N'1500', N'2018-01-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'194', N'2204', N'1500', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'414', N'2204', N'1500', N'2018-11-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'461', N'2204', N'1500', N'2018-12-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'162', N'2204', N'1700', N'2018-02-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'209', N'2204', N'1700', N'2018-05-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'231', N'2204', N'1700', N'2018-06-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'244', N'2204', N'1700', N'2018-07-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'287', N'2204', N'1700', N'2018-08-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'329', N'2204', N'1700', N'2018-09-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'364', N'2204', N'1700', N'2018-10-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'8', N'2223', N'1500', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'28', N'2223', N'1500', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'38', N'2223', N'1500', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'45', N'2223', N'1500', N'2017-05-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'67', N'2223', N'1750', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'74', N'2223', N'1750', N'2017-07-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'95', N'2223', N'1750', N'2017-08-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'104', N'2223', N'1750', N'2017-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'120', N'2223', N'1750', N'2017-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'133', N'2223', N'1750', N'2017-11-28');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'138', N'2223', N'1750', N'2017-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'148', N'2223', N'2000', N'2018-01-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'158', N'2223', N'2000', N'2018-02-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'170', N'2223', N'2000', N'2018-03-01');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'191', N'2223', N'2000', N'2018-04-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'208', N'2223', N'2000', N'2018-05-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'238', N'2223', N'2000', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'242', N'2223', N'2000', N'2018-07-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'286', N'2223', N'2000', N'2018-08-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'333', N'2223', N'2000', N'2018-09-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'362', N'2223', N'2000', N'2018-10-03');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'409', N'2223', N'2000', N'2018-11-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'15', N'2243', N'1250', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'27', N'2243', N'1300', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'52', N'2243', N'1400', N'2017-05-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'61', N'2243', N'1400', N'2017-06-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'80', N'2243', N'1400', N'2017-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'88', N'2243', N'1400', N'2017-08-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'42', N'2243', N'1500', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'103', N'2243', N'1500', N'2017-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'112', N'2243', N'1500', N'2017-10-02');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'127', N'2243', N'1500', N'2017-11-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'421', N'2243', N'1500', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'460', N'2243', N'1500', N'2018-12-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'137', N'2243', N'1600', N'2017-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'153', N'2243', N'1600', N'2018-01-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'233', N'2243', N'1600', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'264', N'2243', N'1600', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'280', N'2243', N'1600', N'2018-08-02');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'353', N'2243', N'1600', N'2018-09-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'385', N'2243', N'1600', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'161', N'2243', N'1700', N'2018-02-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'177', N'2243', N'1700', N'2018-03-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'189', N'2243', N'1700', N'2018-04-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'204', N'2243', N'1700', N'2018-05-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'454', N'2298', N'2000', N'2018-11-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'457', N'2298', N'2000', N'2018-12-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'3', N'2303', N'700', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'19', N'2303', N'700', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'31', N'2303', N'700', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'66', N'2303', N'700', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'83', N'2303', N'700', N'2017-07-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'97', N'2303', N'1000', N'2017-08-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'110', N'2303', N'1000', N'2017-09-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'144', N'2303', N'1000', N'2017-12-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'156', N'2303', N'1000', N'2018-01-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'163', N'2303', N'1000', N'2018-02-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'199', N'2303', N'1000', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'217', N'2303', N'1000', N'2018-05-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'237', N'2303', N'1000', N'2018-06-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'276', N'2303', N'1000', N'2018-07-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'294', N'2303', N'1000', N'2018-08-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'335', N'2303', N'1000', N'2018-09-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'405', N'2303', N'1200', N'2018-10-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'433', N'2303', N'1200', N'2018-11-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'455', N'2303', N'1200', N'2018-12-03');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'182', N'2303', N'1250', N'2018-03-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'407', N'2312', N'1500', N'2018-10-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'413', N'2312', N'1500', N'2018-11-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'491', N'2312', N'1500', N'2018-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'355', N'2316', N'1300', N'2018-09-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'403', N'2316', N'1300', N'2018-10-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'453', N'2316', N'1350', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'30', N'2321', N'500', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'17', N'2321', N'1000', N'2017-02-22');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'14', N'2322', N'1000', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'26', N'2322', N'1000', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'408', N'2332', N'3000', N'2018-10-30');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'443', N'2332', N'3000', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'492', N'2332', N'3000', N'2018-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'239', N'2338', N'700', N'2018-06-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'375', N'2338', N'1000', N'2018-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'422', N'2338', N'1000', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'6', N'2338', N'1300', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'22', N'2338', N'1300', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'34', N'2338', N'1300', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'49', N'2338', N'1300', N'2017-05-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'72', N'2338', N'1400', N'2017-06-16');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'81', N'2338', N'1400', N'2017-07-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'87', N'2338', N'1400', N'2017-08-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'101', N'2338', N'1400', N'2017-09-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'118', N'2338', N'1400', N'2017-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'131', N'2338', N'1400', N'2017-11-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'136', N'2338', N'1400', N'2017-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'155', N'2338', N'1500', N'2018-01-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'486', N'2338', N'1500', N'2018-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'165', N'2338', N'1700', N'2018-02-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'176', N'2338', N'1700', N'2018-03-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'192', N'2338', N'1700', N'2018-04-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'10', N'2340', N'1200', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'24', N'2340', N'1200', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'43', N'2340', N'1200', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'59', N'2340', N'1200', N'2017-06-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'96', N'2340', N'1500', N'2017-08-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'102', N'2340', N'1500', N'2017-09-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'114', N'2340', N'1500', N'2017-10-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'125', N'2340', N'1500', N'2017-11-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'141', N'2340', N'1500', N'2017-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'150', N'2340', N'1500', N'2018-01-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'164', N'2340', N'1500', N'2018-02-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'172', N'2340', N'1500', N'2018-03-05');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'190', N'2340', N'1750', N'2018-04-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'216', N'2340', N'1750', N'2018-05-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'219', N'2340', N'1750', N'2018-06-01');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'260', N'2340', N'1750', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'5', N'2357', N'1000', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'21', N'2357', N'1000', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'33', N'2357', N'1000', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'53', N'2357', N'1000', N'2017-05-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'60', N'2357', N'1000', N'2017-06-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'79', N'2357', N'1000', N'2017-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'89', N'2357', N'1250', N'2017-08-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'106', N'2357', N'1250', N'2017-09-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'121', N'2357', N'1250', N'2017-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'132', N'2357', N'1250', N'2017-11-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'143', N'2357', N'1250', N'2017-12-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'151', N'2357', N'1250', N'2018-01-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'174', N'2357', N'1250', N'2018-03-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'195', N'2357', N'1250', N'2018-04-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'215', N'2357', N'1250', N'2018-05-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'166', N'2357', N'1500', N'2018-02-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'229', N'2357', N'1500', N'2018-06-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'274', N'2357', N'1500', N'2018-07-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'321', N'2357', N'1500', N'2018-08-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'337', N'2357', N'1500', N'2018-09-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'396', N'2357', N'1500', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'446', N'2357', N'1500', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'478', N'2357', N'1500', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'494', N'2363', N'1000', N'2018-12-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'437', N'2363', N'1500', N'2018-11-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'369', N'2363', N'2000', N'2018-10-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'444', N'2364', N'1300', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'7', N'2366', N'1400', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'23', N'2366', N'1400', N'2017-03-21');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'35', N'2366', N'1400', N'2017-04-17');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'50', N'2366', N'1400', N'2017-05-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'57', N'2366', N'1400', N'2017-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'76', N'2366', N'1400', N'2017-07-04');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'91', N'2366', N'1400', N'2017-08-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'100', N'2366', N'1400', N'2017-09-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'116', N'2366', N'1400', N'2017-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'129', N'2366', N'1400', N'2017-11-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'323', N'2381', N'500', N'2018-08-15');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'263', N'2386', N'1000', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'450', N'2386', N'1000', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'498', N'2386', N'1000', N'2018-12-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'312', N'2386', N'1100', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'326', N'2386', N'1100', N'2018-09-03');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'383', N'2386', N'1100', N'2018-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'354', N'2391', N'1000', N'2018-09-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'357', N'2391', N'1000', N'2018-09-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'398', N'2391', N'1000', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'424', N'2391', N'1000', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'490', N'2391', N'1000', N'2018-12-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'16', N'2403', N'20000', N'2017-02-20');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'377', N'2406', N'500', N'2018-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'462', N'2406', N'500', N'2018-12-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'184', N'2414', N'750', N'2018-04-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'210', N'2414', N'1000', N'2018-05-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'484', N'2414', N'1000', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'390', N'2414', N'1200', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'425', N'2414', N'1200', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'224', N'2414', N'1250', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'254', N'2414', N'1250', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'300', N'2414', N'1250', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'346', N'2414', N'1300', N'2018-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'304', N'2417', N'1500', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'351', N'2417', N'1500', N'2018-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'392', N'2417', N'1500', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'427', N'2417', N'1500', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'482', N'2417', N'1500', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'228', N'2418', N'1500', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'308', N'2418', N'1500', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'279', N'2419', N'335', N'2018-07-31');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'185', N'2419', N'1250', N'2018-04-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'206', N'2419', N'1650', N'2018-05-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'220', N'2419', N'1650', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'252', N'2419', N'1650', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'296', N'2419', N'1650', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'480', N'2419', N'1750', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'188', N'2420', N'1000', N'2018-04-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'207', N'2420', N'1250', N'2018-05-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'223', N'2420', N'1500', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'258', N'2420', N'1500', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'302', N'2420', N'1500', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'342', N'2420', N'1500', N'2018-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'388', N'2420', N'1500', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'435', N'2420', N'1500', N'2018-11-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'470', N'2420', N'1500', N'2018-12-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'256', N'2421', N'1350', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'222', N'2421', N'1500', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'316', N'2421', N'1600', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'394', N'2421', N'1600', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'429', N'2421', N'1600', N'2018-11-12');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'211', N'2421', N'1650', N'2018-05-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'266', N'2421', N'1650', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'349', N'2421', N'2000', N'2018-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'476', N'2421', N'2000', N'2018-12-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'187', N'2422', N'500', N'2018-04-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'186', N'2423', N'1000', N'2018-04-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'205', N'2423', N'1500', N'2018-05-08');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'221', N'2423', N'1650', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'250', N'2423', N'1650', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'298', N'2423', N'1650', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'340', N'2423', N'1650', N'2018-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'386', N'2423', N'1650', N'2018-10-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'431', N'2423', N'1650', N'2018-11-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'290', N'2424', N'1000', N'2018-08-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'360', N'2424', N'1000', N'2018-10-02');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'452', N'2424', N'1000', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'464', N'2424', N'1000', N'2018-12-06');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'310', N'2428', N'1000', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'268', N'2442', N'1000', N'2018-07-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'319', N'2442', N'1000', N'2018-08-13');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'439', N'2442', N'1000', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'466', N'2442', N'1000', N'2018-12-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'379', N'2442', N'1400', N'2018-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'226', N'2455', N'1000', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'246', N'2455', N'1250', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'248', N'2456', N'1250', N'2018-07-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'227', N'2456', N'1350', N'2018-06-07');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'306', N'2456', N'1500', N'2018-08-09');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'344', N'2456', N'1500', N'2018-09-11');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'381', N'2457', N'1000', N'2018-10-10');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'441', N'2457', N'1000', N'2018-11-14');
GO
INSERT INTO [dbo].[Avanslar] VALUES (N'468', N'2457', N'1000', N'2018-12-07');
GO

-- ----------------------------
-- Table structure for [dbo].[birim]
-- ----------------------------
DROP TABLE [dbo].[birim]
GO
CREATE TABLE [dbo].[birim] (
[id] int NOT NULL ,
[birimad] nvarchar(50) NULL ,
[fullad] nvarchar(100) NULL ,
[sira] int NULL ,
[puantaj] bit NULL DEFAULT ((1)) ,
[birimAmiri] int NULL 
)


GO

-- ----------------------------
-- Records of birim
-- ----------------------------
INSERT INTO [dbo].[birim] VALUES (N'1', N'teknik işler', N'TEKNİK İŞLER MÜDÜRLÜĞÜ', N'1', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'2', N'mali işler1', N'MALİ İŞLER MÜDÜRLÜĞÜ', N'2', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'3', N'hukuk', N'HUKUK MÜŞAVİRLİĞİ', N'4', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'4', N'özel kalem', N'ÖZEL KALEM', N'5', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'5', N'pazarlama', N'KENTSEL DÖNÜŞÜM VE PAZARLAMA  MÜDÜRLÜĞÜ', N'6', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'6', N'şantiyeler1', N'ŞANTİYELER MÜDÜRLÜĞÜ', N'7', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'7', N'hafriyat1', N'HAFRİYAT MÜDÜRLÜĞÜ', N'9', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'8', N'şantiyeler2', N'ŞANTİYELER MÜDÜRLÜĞÜ', N'8', N'1', N'2365');
GO
INSERT INTO [dbo].[birim] VALUES (N'16', N'hafriyat2', N'HAFRİYAT MÜDÜRLÜĞÜ', N'10', N'1', null);
GO
INSERT INTO [dbo].[birim] VALUES (N'17', N'mali işler2', N'MALİ İŞLER MÜDÜRLÜĞÜ', N'3', N'1', null);
GO

-- ----------------------------
-- Table structure for [dbo].[Dava]
-- ----------------------------
DROP TABLE [dbo].[Dava]
GO
CREATE TABLE [dbo].[Dava] (
[id] int NOT NULL ,
[tcno] nvarchar(11) NOT NULL ,
[ad] nvarchar(50) NOT NULL ,
[soyadı] nvarchar(50) NOT NULL ,
[tarih] date NOT NULL ,
[belgeno] nvarchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Dava
-- ----------------------------
INSERT INTO [dbo].[Dava] VALUES (N'1', N'38476769890', N'MUSTAFA', N'YÜKSEL', N'2018-01-29', null);
GO

-- ----------------------------
-- Table structure for [dbo].[DiniGunler]
-- ----------------------------
DROP TABLE [dbo].[DiniGunler]
GO
CREATE TABLE [dbo].[DiniGunler] (
[id] int NOT NULL ,
[ad] nvarchar(100) NOT NULL ,
[tarih] date NOT NULL 
)


GO

-- ----------------------------
-- Records of DiniGunler
-- ----------------------------
INSERT INTO [dbo].[DiniGunler] VALUES (N'1', N'Üç Aylar''ın Başlangıcı', N'2017-03-29');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'2', N'Regaib Kandili', N'2017-03-30');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'3', N'Mirac Kandili', N'2017-04-23');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'4', N'Berat Kandili', N'2017-05-10');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'5', N'Ramazan''ın Başlangıcı', N'2017-05-27');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'6', N'Kadir Gecesi', N'2017-06-21');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'7', N'Arefe (Ramazan)', N'2017-06-24');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'8', N'Ramazan Bayramı', N'2017-06-25');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'9', N'Arefe (Kurban)', N'2017-08-31');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'10', N'Kurban Bayramı', N'2017-09-01');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'11', N'Hicri Yılbaşı', N'2017-09-21');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'12', N'Aşure Günü', N'2017-09-30');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'13', N'Mevlid Kandili', N'2017-11-29');
GO
INSERT INTO [dbo].[DiniGunler] VALUES (N'14', N'Test', N'2017-03-28');
GO

-- ----------------------------
-- Table structure for [dbo].[EtiketTanim]
-- ----------------------------
DROP TABLE [dbo].[EtiketTanim]
GO
CREATE TABLE [dbo].[EtiketTanim] (
[id] int NOT NULL ,
[ad] nvarchar(25) NOT NULL 
)


GO

-- ----------------------------
-- Records of EtiketTanim
-- ----------------------------
INSERT INTO [dbo].[EtiketTanim] VALUES (N'1', N'Mühendis');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'2', N'Mimar');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'3', N'Müdür');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'4', N'Şef');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'5', N'Kadın');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'6', N'Erkek');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'7', N'Merkez Bina');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'8', N'Şantiyeler');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'9', N'Dış Personel');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'10', N'Bankamatik Personel');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'11', N'Teknik Personel');
GO
INSERT INTO [dbo].[EtiketTanim] VALUES (N'12', N'Yönetici');
GO

-- ----------------------------
-- Table structure for [dbo].[EvrakListe]
-- ----------------------------
DROP TABLE [dbo].[EvrakListe]
GO
CREATE TABLE [dbo].[EvrakListe] (
[id] int NOT NULL ,
[ad] nvarchar(100) NOT NULL ,
[gerekli] bit NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of EvrakListe
-- ----------------------------
INSERT INTO [dbo].[EvrakListe] VALUES (N'1', N'Nüfus cüzdanı fotokopisi', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'2', N'Nüfus kayıt örneği', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'3', N' İkametgâh Belgesi', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'4', N'Diploma fotokopisi', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'5', N'Sağlık raporu', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'6', N'Kan grubu kartı', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'7', N'Adli sicil kaydı', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'8', N'6 adet resim', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'9', N'Aile durumunu bildirir belge', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'10', N'Askerlik durumunu gösteren belge', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'11', N'İş Sözleşmesi / Hizmet Sözleşmesi', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'12', N'SGK işe giriş bildirgesi', N'1');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'13', N'Eş ve Çocukların Nüfus Cüzdan Süretleri', N'0');
GO
INSERT INTO [dbo].[EvrakListe] VALUES (N'14', N'Evlenme Cüzdanı', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Firma]
-- ----------------------------
DROP TABLE [dbo].[Firma]
GO
CREATE TABLE [dbo].[Firma] (
[id] int NOT NULL ,
[firmaad] nvarchar(MAX) NOT NULL ,
[sgkkod] nvarchar(MAX) NULL ,
[sira] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Firma', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ihaleli çalışılan firma tablosu'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Firma'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ihaleli çalışılan firma tablosu'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Firma'
GO

-- ----------------------------
-- Records of Firma
-- ----------------------------
INSERT INTO [dbo].[Firma] VALUES (N'1', N'MAKRO TEMİZLİK OTOMASYON BİLGİ İŞLEM ORGA. SANAYİ VE TİC.LTD.ŞTİ.', N'4 4312 01 01 1154137 041 13 43 000', N'3');
GO
INSERT INTO [dbo].[Firma] VALUES (N'2', N'HAFRIYAT', N'2 4312 01 01 1145396 041 13 32 000', N'2');
GO
INSERT INTO [dbo].[Firma] VALUES (N'3', N'KENT KONUT A.Ş.', N'2 7010 01 01 0081575 041 13 10 000', N'1');
GO
INSERT INTO [dbo].[Firma] VALUES (N'4', N'MTG DANIŞMANLIK GÖZETİM SİTE YÖNETİMİ TEMİZLİK TAŞIMACILIK TİC.LTD.ŞTİ.', N'4 8129 01 01 1151205 041 13 21 000 001', N'5');
GO
INSERT INTO [dbo].[Firma] VALUES (N'5', N'TMG KOCAELİ ÖZEL GÜVENLİK HİZM.GÜV.EĞİT.VE GÜV.SİST.LTD.ŞTİ.', N'4 8010 01 01 1150409 041 13 01 000 001', N'4');
GO
INSERT INTO [dbo].[Firma] VALUES (N'6', N'HALDIZ A.Ş.', null, N'6');
GO

-- ----------------------------
-- Table structure for [dbo].[GeciciMazeret]
-- ----------------------------
DROP TABLE [dbo].[GeciciMazeret]
GO
CREATE TABLE [dbo].[GeciciMazeret] (
[id] int NOT NULL ,
[personelID] int NOT NULL ,
[tarih] date NOT NULL ,
[mazeret] nvarchar(MAX) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'GeciciMazeret', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ay içi eksik hareketi olan personellerde resmi mazeret bildirmeyenlerin mazeret beyan tablosı'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'GeciciMazeret'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ay içi eksik hareketi olan personellerde resmi mazeret bildirmeyenlerin mazeret beyan tablosı'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'GeciciMazeret'
GO

-- ----------------------------
-- Records of GeciciMazeret
-- ----------------------------
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'1', N'2381', N'2017-04-26', N'tapuya gideceği için kart basmayacakmış');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'2', N'914', N'2017-04-28', N'doktora gidecekmiş');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'3', N'915', N'2017-04-28', N'doktora gidecekmiş');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'4', N'2372', N'2017-05-02', N'RAPOR ALACAKMIŞ');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'5', N'2386', N'2017-05-02', N'rapor alacakmış');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'6', N'2383', N'2017-05-08', N'denkleştirme formu gelecek');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'7', N'746', N'2017-05-08', N'2 gün raporluymuş');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'8', N'2343', N'2017-05-09', N'doğum izni');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'9', N'746', N'2017-05-09', N'2 gün raporluymuş');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'10', N'2372', N'2017-05-10', N'izin yazdıracak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'11', N'2379', N'2017-05-11', N'görevlendirmesi varmış');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'12', N'2437', N'2017-05-11', N'yıllık izin alacakmış');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'13', N'2342', N'2017-05-12', N'izin alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'14', N'2386', N'2017-05-24', N'izin yazdıracak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'15', N'2386', N'2017-05-25', N'izin yazdıracak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'16', N'2373', N'2017-05-25', N'izin yazdıracak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'17', N'2387', N'2017-05-26', N'mazeret izni aldı');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'18', N'2322', N'2017-05-30', N'kart bastığını iddaa ediyor. metin beye mail atmadı');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'19', N'2405', N'2017-06-01', N'ameliyat olmuş rapor getirecek');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'20', N'2377', N'2017-06-01', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'21', N'2418', N'2017-06-07', N'ameliyat olmuş ');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'22', N'779', N'2017-06-13', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'23', N'2200', N'2017-06-14', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'24', N'2386', N'2017-06-13', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'25', N'2381', N'2017-06-20', N'TAPUDAYMIŞ');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'26', N'754', N'2017-10-13', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'27', N'2357', N'2017-10-13', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'28', N'2335', N'2017-10-13', N'izin onayda bekliyor');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'29', N'2298', N'2017-11-09', N'telefonla görüşüldü. mail attıracak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'30', N'2342', N'2017-11-10', N'izni onay bekliyor');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'31', N'2372', N'2017-11-10', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'32', N'746', N'2017-11-13', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'33', N'906', N'2017-11-13', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'34', N'2372', N'2018-01-10', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'35', N'2357', N'2018-01-10', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'36', N'2298', N'2018-01-10', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'37', N'2373', N'2018-01-10', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'38', N'2387', N'2018-01-10', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'39', N'2321', N'2018-01-15', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'40', N'2282', N'2018-01-18', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'41', N'2312', N'2018-02-23', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'42', N'2372', N'2018-03-01', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'43', N'2362', N'2018-03-12', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'44', N'754', N'2018-03-12', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'45', N'2299', N'2018-03-15', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'46', N'2132', N'2018-03-15', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'47', N'2372', N'2018-03-19', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'48', N'1082', N'2018-03-26', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'49', N'2322', N'2018-04-25', N'mail atacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'50', N'2322', N'2018-04-30', N'izni imzada');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'51', N'2362', N'2018-04-30', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'52', N'2373', N'2018-04-30', N'izni imzada');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'53', N'2340', N'2018-04-27', N'izni 23 nisanda gözüküyor');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'54', N'2349', N'2018-04-30', N'izni imzada');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'55', N'908', N'2018-04-30', N'izni imzada');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'56', N'754', N'2018-05-15', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'57', N'2381', N'2018-05-15', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'58', N'2405', N'2018-05-16', N'rapor veya izin alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'59', N'2132', N'2018-05-22', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'60', N'754', N'2018-06-13', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'61', N'2273', N'2018-06-18', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'62', N'2328', N'2018-06-18', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'63', N'2349', N'2018-06-18', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'64', N'906', N'2018-06-27', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'65', N'2384', N'2018-07-02', N'kamera kaydına bakılacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'66', N'2425', N'2018-07-05', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'67', N'2200', N'2018-07-05', N'izin alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'68', N'2241', N'2018-07-05', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'69', N'2381', N'2018-07-05', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'70', N'754', N'2018-07-05', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'71', N'2200', N'2018-07-09', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'72', N'2241', N'2018-07-09', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'73', N'906', N'2018-07-09', N'raporlu');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'74', N'779', N'2018-07-24', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'75', N'1771', N'2018-07-20', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'76', N'2328', N'2018-07-23', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'77', N'2340', N'2018-07-24', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'78', N'2381', N'2018-08-01', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'79', N'2386', N'2018-09-03', N'metin bey mail atacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'80', N'2364', N'2018-09-03', N'yarım izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'81', N'2386', N'2018-09-06', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'82', N'754', N'2018-09-06', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'83', N'2456', N'2018-10-03', N'denkleştirme');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'84', N'2456', N'2018-10-02', N'denkleştirme');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'85', N'779', N'2018-10-24', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'86', N'2406', N'2018-10-24', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'87', N'2343', N'2018-10-23', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'88', N'2343', N'2018-10-22', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'89', N'2273', N'2018-10-25', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'90', N'2372', N'2018-10-25', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'91', N'2414', N'2018-10-26', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'92', N'2372', N'2018-10-26', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'93', N'906', N'2018-10-26', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'94', N'1771', N'2018-10-30', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'95', N'2342', N'2018-10-30', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'96', N'2321', N'2018-10-30', N'öğleden sonra gelecek');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'97', N'2405', N'2018-10-30', N'izin veya rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'98', N'2320', N'2018-10-30', N'denkleştirme yazmış');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'99', N'2387', N'2018-11-05', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'100', N'2343', N'2018-11-05', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'101', N'2342', N'2018-11-05', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'102', N'2343', N'2018-11-02', N'rapor alacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'103', N'2299', N'2018-11-16', N'İZİNLİ');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'104', N'2386', N'2018-11-16', N'İZİNLİ');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'105', N'2424', N'2018-11-19', N'izin yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'106', N'2299', N'2018-11-19', N'mazeret yazacak');
GO
INSERT INTO [dbo].[GeciciMazeret] VALUES (N'107', N'746', N'2018-11-21', N'izinli');
GO

-- ----------------------------
-- Table structure for [dbo].[Gorev]
-- ----------------------------
DROP TABLE [dbo].[Gorev]
GO
CREATE TABLE [dbo].[Gorev] (
[id] int NOT NULL ,
[ad] nvarchar(MAX) NOT NULL 
)


GO

-- ----------------------------
-- Records of Gorev
-- ----------------------------
INSERT INTO [dbo].[Gorev] VALUES (N'1', N'Ofis Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'2', N'Saha Sorumlusu');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'3', N'Kantar Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'4', N'Kantar ve Yönlendirme Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'5', N'Yönlendirme Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'6', N'Gözetim Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'7', N'Hafriyat Şefi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'8', N'Muhasebe Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'9', N'Temizlik Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'10', N'Santral Memuru');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'11', N'Yazı İşleri Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'12', N'Genel Müdür');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'13', N'Özel Kalem');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'14', N'Halkla İlişkiler Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'15', N'İdari İşler Koordinatörü');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'16', N'İSG Uzmanı');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'17', N'Kalite Yönetimi Sorumlusu');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'18', N'Büro Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'19', N'Makam Şoförü');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'20', N'Hukuk Müşaviri');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'21', N'hukuk Müşaviri Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'22', N'Mali ve İdari İşler Müdürü');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'23', N'Mali Müşavir');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'24', N'Mali İşler Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'25', N'Çay Ocağı Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'26', N'Bilgi İşlem Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'27', N'İnsan Kaynakları Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'28', N'Satın Alma Şefi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'29', N'Satın Alma Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'30', N'İdari İşler Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'31', N'İdari İşler Arşiv Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'32', N'Temizlik Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'33', N'Güvenlik Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'34', N'Kentsel Dönüşüm ve Pazarlama Müdürü');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'35', N'Kentsel Dönüşüm ve Pazarlama Şefi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'36', N'Kentsel Dönüşüm ve Emlak Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'37', N'Pazarlama Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'38', N'Bekçi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'39', N'Teknik İşler Birim Şefi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'40', N'Peyzaj Mimarı');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'41', N'İnşaat Mühendisi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'42', N'Yüksek Mimar');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'43', N'İnşaat Teknikeri');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'44', N'Elektrik Mühendisi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'45', N'Hafriyat Müdürü');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'46', N'Hafriyat Birim Şefi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'47', N'Hafriyat Ofis Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'48', N'Hafriyat Saha Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'50', N'Koordinator');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'51', N'Çeribaşı');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'52', N'Dede');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'53', N'Gülen Yüzler Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'54', N'Hafriyat Muhasebe Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'55', N'Elektrik Teknikeri');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'56', N'Kontrol Amiri');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'57', N'Bakım Onarım Şefi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'58', N'Şantiyeler Müdürü');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'59', N'Tapu Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'60', N'Makine Mühendisi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'61', N'Harita Teknikeri');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'62', N'Makine Teknikeri');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'63', N'Mimar');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'64', N'Arşiv Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'65', N'Bakım Onarım Personeli');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'66', N'İşyeri Hemşiresi');
GO
INSERT INTO [dbo].[Gorev] VALUES (N'67', N'Jeodezi ve Fotogrametri Mühendisi');
GO

-- ----------------------------
-- Table structure for [dbo].[Gorev_Detay]
-- ----------------------------
DROP TABLE [dbo].[Gorev_Detay]
GO
CREATE TABLE [dbo].[Gorev_Detay] (
[id] int NOT NULL ,
[parentID] int NULL ,
[ad] nvarchar(100) NOT NULL ,
[aktif] bit NOT NULL DEFAULT ((1)) ,
[sira] int NULL 
)


GO

-- ----------------------------
-- Records of Gorev_Detay
-- ----------------------------
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'2', null, N'İşten Çıkış İşlemleri', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'3', N'2', N'Karakola Bildirim', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'4', N'2', N'BES Çıkışı', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'5', N'2', N'İşten Çıkış Bildirgesi', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'6', N'2', N'Özlük Dosyası ve İzin Defteri imzalar', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'7', N'2', N'Tazminat ödendi ise Excele yayıt', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'8', N'2', N'Personel kaydı Arşiv Excele kayıt', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'14', null, N'İşe Giriş İşlemleri', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'15', N'14', N'evraklar toplanacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'16', N'14', N'işe giriş oluru alınacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'17', N'14', N'işe giriş sözleşme imzalatılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'18', N'14', N'karakola bildirim yapılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'19', N'14', N'bes girişi varsa yapılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'20', N'14', N'mikro kaydı açılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'21', N'14', N'işe giriş bildirgesi yapılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'22', N'14', N'isg eğitim ve sağlık kontrole gönderilecek', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'23', null, N'Maaş işlemleri', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'24', N'23', N'Dış Puantajlar İmzalatılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'25', N'24', N'Kültür Sosyal', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'26', N'24', N'Gülen Yüzler', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'27', N'24', N'Fen İşleri', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'28', N'24', N'Ulaşım', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'29', N'23', N'İç Puantajlar İmzalatılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'30', N'29', N'Mali İşler', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'31', N'29', N'Şantiyeler', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'32', N'29', N'Teknik İşler', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'33', N'29', N'Kentsel Dönüşüm', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'34', N'29', N'Hukuk', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'35', N'29', N'Özel Kalem', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'36', N'29', N'Hafriyat', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'37', N'29', N'Güvenlik', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'38', N'23', N'Mesailer Hesaplanacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'39', N'38', N'Hafriyat', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'40', N'38', N'Fen İşleri', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'41', N'38', N'Ulaşım', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'42', N'38', N'Güvenlik', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'43', N'23', N'Mesai Oluru Alınacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'44', N'23', N'Raporlar kontrol edilecek', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'45', N'23', N'Avanslar kontrol edilecek', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'46', N'23', N'Mikro Puantaj yapılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'47', N'23', N'Yapılan Puantaj Kontrol edilecek', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'48', N'47', N'eksik günler, yemek parası ücretsiz izinler', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'49', N'23', N'Vakıfbank dosyaları yapılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'50', N'23', N'İcralar sisteme girilecek', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'51', N'50', N'Muharrem Öztürk', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'52', N'50', N'Metin Akay', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'53', N'23', N'Bes Excel hazırlanıp vakıfbanka yüklecek', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'54', N'23', N'İcra Maili atılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'55', N'23', N'Maaş sonu işleri yapılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'56', N'55', N'icra dekontları dosyalanacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'57', N'55', N'Maaş ödeme dekontu maaş klasörüne koyulacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'58', N'55', N'çarşaf bordro imzalatılacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'59', N'55', N'mesai oluru puantaj klasörüne koyulacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'60', N'55', N'icmal raporu maaş klasörüne koyulacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'61', N'55', N'sgk bildirimleri yapılıp maaş klasörüne koyulacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'62', N'55', N'raporlar ve mazeretler özlük dosyalarına koyulacak', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'74', null, N'test1', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'75', N'74', N'test2', N'1', null);
GO
INSERT INTO [dbo].[Gorev_Detay] VALUES (N'76', N'75', N'test3', N'1', null);
GO

-- ----------------------------
-- Table structure for [dbo].[Gorev_Detay_Not]
-- ----------------------------
DROP TABLE [dbo].[Gorev_Detay_Not]
GO
CREATE TABLE [dbo].[Gorev_Detay_Not] (
[id] int NOT NULL ,
[gorevDetayID] int NOT NULL ,
[Not] text NULL 
)


GO

-- ----------------------------
-- Records of Gorev_Detay_Not
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Grup]
-- ----------------------------
DROP TABLE [dbo].[Grup]
GO
CREATE TABLE [dbo].[Grup] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Grup
-- ----------------------------
INSERT INTO [dbo].[Grup] VALUES (N'1', N'BORDRO GRUBU');
GO
INSERT INTO [dbo].[Grup] VALUES (N'2', N'GİRİŞ ÇIKIŞ TAKİP GRUBU');
GO
INSERT INTO [dbo].[Grup] VALUES (N'3', N'HALDIZ A.Ş.');
GO
INSERT INTO [dbo].[Grup] VALUES (N'4', N'mazeret yönetmelik hakkında');
GO
INSERT INTO [dbo].[Grup] VALUES (N'5', N'Taleron Kadro Başvuru Dilekçesi');
GO
INSERT INTO [dbo].[Grup] VALUES (N'6', N'Zorunlu BES');
GO
INSERT INTO [dbo].[Grup] VALUES (N'7', N'KADROLU PERSONEL');
GO
INSERT INTO [dbo].[Grup] VALUES (N'8', N'Personel 113 kişi');
GO
INSERT INTO [dbo].[Grup] VALUES (N'9', N'İlk Yardım Eğitim Sertifika');
GO

-- ----------------------------
-- Table structure for [dbo].[Icralar]
-- ----------------------------
DROP TABLE [dbo].[Icralar]
GO
CREATE TABLE [dbo].[Icralar] (
[id] int NOT NULL ,
[dosyano] nvarchar(20) NOT NULL ,
[tebligtarih] date NOT NULL ,
[alacaklı] nvarchar(100) NOT NULL ,
[icradaire] nvarchar(50) NOT NULL ,
[tutar] decimal(18,2) NOT NULL ,
[personelid] int NOT NULL ,
[IBAN] nvarchar(35) NOT NULL ,
[tamamlanma] bit NULL ,
[not] nvarchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Icralar
-- ----------------------------
INSERT INTO [dbo].[Icralar] VALUES (N'0', N'2015/3995 E.', N'2015-09-15', N'DENİZBANK A.Ş.', N'KOCAELİ 2. İCRA MÜDÜRLÜĞÜ', N'18600.00', N'2402', N'TR 20 0001 5001 5800 7290 4992 12', N'1', N'personel devir oldu');
GO
INSERT INTO [dbo].[Icralar] VALUES (N'1', N'2015/6427 E.', N'2015-09-15', N'DENİZBANK A.Ş.', N'KOCAELİ 2. İCRA MÜDÜRLÜĞÜ', N'2000.00', N'2402', N'TR 20 0001 5001 5800 7290 4992 12', N'1', N'personel devir oldu');
GO
INSERT INTO [dbo].[Icralar] VALUES (N'2', N'2015/13199 E.', N'2016-02-08', N'GARANTİ BANKASI A.Ş.', N'KOCAELİ 3. İCRA MÜDÜRLÜĞÜ', N'27565.00', N'2402', N'TR 66 0001 5001 5800 7290 5003 24', N'1', N'personel devir oldu');
GO
INSERT INTO [dbo].[Icralar] VALUES (N'3', N'2016/12813 E.', N'2017-01-16', N'FİNANSBANK A.Ş.', N'KOCAELİ 3. İCRA MÜDÜRLÜĞÜ', N'25000.00', N'2402', N'TR 66 0001 5001 5800 7290 5003 24', N'1', N'personel devir oldu');
GO
INSERT INTO [dbo].[Icralar] VALUES (N'4', N'2015/3180', N'2015-08-08', N'T.GARANTİ BANKASI A.Ş.', N'KOCAELİ 6. İCRA MÜDÜRLÜĞÜ', N'6603.70', N'2370', N'TR 5600 0150 0158 0072 9770 4015', N'1', N'ödendi');
GO
INSERT INTO [dbo].[Icralar] VALUES (N'5', N'2017/25252', N'2018-06-06', N'YÖN AVM.', N'İST.  ANADOLU 12. İCRA DAİRESİ MÜD.', N'1305.05', N'2420', N'TR 1600 0150 0158 0072 9049 8120', N'1', N'borcu yoktur geldi');
GO
INSERT INTO [dbo].[Icralar] VALUES (N'6', N'2017/3822', N'2018-06-12', N'KÖRFEZ DAY. TÜK. MAL. TİC. LTD.ŞTİ.', N'KOCAELİ 8. İCRA DAİRESİ', N'5833.91', N'2420', N'TR 1400 0150 0158 0073 0661 1990', N'0', null);
GO
INSERT INTO [dbo].[Icralar] VALUES (N'9', N'2015/8208 ESAS', N'2018-10-31', N'VODAFONE TELEKOM. A.Ş.', N'GEBZE 2. İCRA DAİRESİ', N'1415.67', N'2406', N'TR360001500158007290501640', N'0', null);
GO

-- ----------------------------
-- Table structure for [dbo].[IcraOdeme]
-- ----------------------------
DROP TABLE [dbo].[IcraOdeme]
GO
CREATE TABLE [dbo].[IcraOdeme] (
[id] int NOT NULL ,
[icraid] int NOT NULL ,
[tarih] date NOT NULL ,
[tutar] decimal(18,2) NOT NULL ,
[aciklama] nvarchar(MAX) NULL 
)


GO

-- ----------------------------
-- Records of IcraOdeme
-- ----------------------------
INSERT INTO [dbo].[IcraOdeme] VALUES (N'13', N'0', N'2015-10-02', N'338.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'14', N'0', N'2015-11-16', N'338.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'15', N'0', N'2015-12-03', N'308.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'17', N'0', N'2016-01-04', N'326.50', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'18', N'0', N'2016-02-01', N'365.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'19', N'0', N'2016-03-01', N'292.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'20', N'0', N'2016-06-02', N'367.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'21', N'0', N'2016-07-01', N'345.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'22', N'0', N'2016-08-04', N'367.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'23', N'0', N'2016-09-01', N'324.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'24', N'0', N'2016-10-04', N'366.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'25', N'0', N'2016-11-02', N'366.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'26', N'0', N'2016-12-02', N'364.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'27', N'0', N'2017-01-03', N'352.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'28', N'0', N'2017-02-02', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'29', N'0', N'2016-06-01', N'366.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'30', N'0', N'2016-06-30', N'367.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'31', N'4', N'2016-03-21', N'239.50', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'32', N'4', N'2016-05-10', N'472.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'33', N'4', N'2016-06-02', N'517.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'34', N'4', N'2016-06-30', N'413.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'35', N'4', N'2016-08-04', N'445.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'36', N'4', N'2016-09-01', N'448.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'37', N'4', N'2016-10-04', N'390.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'38', N'4', N'2016-11-02', N'406.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'39', N'4', N'2016-12-02', N'388.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'40', N'4', N'2017-01-03', N'365.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'41', N'4', N'2017-02-02', N'421.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'42', N'4', N'2016-04-01', N'429.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'43', N'4', N'2017-03-01', N'1670.20', N'İCRA KAPAMA YAZISI');
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'44', N'0', N'2017-03-03', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'45', N'0', N'2017-04-03', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'46', N'0', N'2017-05-08', N'432.83', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'47', N'0', N'2017-06-01', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'48', N'0', N'2017-07-04', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'49', N'0', N'2017-08-03', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'50', N'0', N'2017-09-06', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'51', N'0', N'2017-10-02', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'52', N'0', N'2017-11-01', N'400.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'53', N'0', N'2017-12-05', N'412.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'54', N'0', N'2018-01-04', N'394.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'55', N'0', N'2018-02-02', N'455.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'56', N'0', N'2018-03-02', N'473.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'57', N'0', N'2018-04-04', N'473.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'58', N'0', N'2018-05-02', N'473.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'59', N'0', N'2018-06-01', N'473.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'60', N'5', N'2018-08-02', N'656.05', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'61', N'5', N'2018-08-04', N'649.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'62', N'6', N'2018-08-01', N'21.95', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'63', N'6', N'2018-08-31', N'628.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'64', N'6', N'2018-10-02', N'662.00', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'65', N'9', N'2018-11-01', N'485.25', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'66', N'6', N'2018-11-01', N'658.52', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'68', N'6', N'2018-11-30', N'628.69', null);
GO
INSERT INTO [dbo].[IcraOdeme] VALUES (N'69', N'9', N'2018-11-30', N'484.79', null);
GO

-- ----------------------------
-- Table structure for [dbo].[ihale]
-- ----------------------------
DROP TABLE [dbo].[ihale]
GO
CREATE TABLE [dbo].[ihale] (
[id] int NOT NULL ,
[dosyano] nvarchar(100) NOT NULL ,
[ihaleadi] nvarchar(150) NOT NULL ,
[isyeritescilno] nvarchar(50) NOT NULL ,
[yolucret] decimal(18,2) NULL ,
[yemekucret] decimal(18,2) NULL 
)


GO

-- ----------------------------
-- Records of ihale
-- ----------------------------
INSERT INTO [dbo].[ihale] VALUES (N'3', N'2009/131417', N'MAKİNE,ARAÇ,YOL VE HİZMET BİNALARI BAKIM-ONARIM HİZMETLERİ ALIM', N'443390101109580704110000', N'5.85', N'5.85');
GO
INSERT INTO [dbo].[ihale] VALUES (N'4', N'2010/130700', N'YOL, KÖPRÜ, GEÇİT, KAVŞAK, HİZMET BİNALARI VE ÇEVRE BAKIM-ONARIMI HİZMETLERİ ALIMI', N'442130101110238804101-92', N'5.85', N'5.85');
GO
INSERT INTO [dbo].[ihale] VALUES (N'7', N'2010/126044', N'MAKİNE VE ARAÇ BAKIM VE ONARIMI VE ULAŞIM VE DENETİMİ HİZMETLERİ ALIMI', N'44520010111023890410193', N'5.85', N'5.85');
GO

-- ----------------------------
-- Table structure for [dbo].[ImzaTakip]
-- ----------------------------
DROP TABLE [dbo].[ImzaTakip]
GO
CREATE TABLE [dbo].[ImzaTakip] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL ,
[tarih] date NOT NULL DEFAULT (getdate()) ,
[sonTarih] date NULL ,
[aciklama] text NULL 
)


GO

-- ----------------------------
-- Records of ImzaTakip
-- ----------------------------
INSERT INTO [dbo].[ImzaTakip] VALUES (N'11', N'BES Cayma Başvuru', N'2018-02-13', null, N'BES ten ayrılmak için başvuranlar');
GO
INSERT INTO [dbo].[ImzaTakip] VALUES (N'12', N'Yılıık İzin İmza Eksikleri', N'2018-03-12', N'2018-12-31', N'yıllık izinler için, izin defteri ve özlük dosyalarındaki eksikleri tamamlamak için');
GO
INSERT INTO [dbo].[ImzaTakip] VALUES (N'13', N'Yıllık İzin Defter Özlük', N'2018-01-01', N'2018-12-31', null);
GO
INSERT INTO [dbo].[ImzaTakip] VALUES (N'14', N'ilk yardım sertifika imzalat', N'2018-07-10', N'2018-12-31', null);
GO

-- ----------------------------
-- Table structure for [dbo].[ImzaTakipDetay]
-- ----------------------------
DROP TABLE [dbo].[ImzaTakipDetay]
GO
CREATE TABLE [dbo].[ImzaTakipDetay] (
[id] int NOT NULL ,
[takipid] int NOT NULL ,
[personelID] int NOT NULL ,
[imzaTarih] date NULL ,
[aciklama] text NULL 
)


GO

-- ----------------------------
-- Records of ImzaTakipDetay
-- ----------------------------
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'1', N'11', N'2223', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'2', N'11', N'2273', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'3', N'11', N'2299', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'4', N'11', N'2340', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'5', N'11', N'2364', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'6', N'11', N'2374', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'7', N'11', N'2401', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'8', N'11', N'761', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'9', N'11', N'2115', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'10', N'11', N'2132', N'2018-02-19', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'11', N'11', N'2403', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'12', N'11', N'769', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'13', N'11', N'779', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'14', N'11', N'780', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'15', N'11', N'783', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'16', N'11', N'1082', N'2018-02-14', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'17', N'11', N'2196', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'18', N'11', N'2282', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'19', N'11', N'2303', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'20', N'11', N'2321', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'21', N'11', N'2322', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'22', N'11', N'2332', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'23', N'11', N'2357', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'24', N'11', N'2365', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'25', N'11', N'2369', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'26', N'11', N'2381', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'27', N'11', N'2402', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'28', N'11', N'2444', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'29', N'11', N'2446', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'31', N'11', N'2194', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'32', N'11', N'2328', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'33', N'11', N'2372', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'34', N'11', N'2377', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'35', N'11', N'753', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'36', N'11', N'756', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'37', N'11', N'908', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'38', N'11', N'2320', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'39', N'11', N'2349', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'40', N'11', N'2350', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'41', N'11', N'2359', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'42', N'11', N'2389', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'43', N'11', N'2411', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'44', N'11', N'2412', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'45', N'11', N'2198', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'46', N'11', N'2199', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'47', N'11', N'2241', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'48', N'11', N'2298', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'49', N'11', N'2338', N'2018-02-21', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'50', N'11', N'2342', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'51', N'11', N'754', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'52', N'11', N'772', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'53', N'11', N'2193', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'54', N'11', N'2204', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'55', N'11', N'2243', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'56', N'11', N'2312', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'57', N'11', N'2335', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'58', N'11', N'2379', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'59', N'11', N'2400', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'60', N'11', N'746', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'61', N'11', N'762', N'2018-02-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'62', N'11', N'914', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'63', N'11', N'915', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'64', N'11', N'1771', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'65', N'11', N'2343', N'2018-02-15', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'66', N'11', N'2362', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'67', N'12', N'2203', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'68', N'12', N'2223', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'69', N'12', N'2273', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'70', N'12', N'2299', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'71', N'12', N'2340', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'72', N'12', N'2364', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'73', N'12', N'2373', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'74', N'12', N'2374', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'75', N'12', N'2401', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'76', N'12', N'761', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'77', N'12', N'2115', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'78', N'12', N'2132', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'79', N'12', N'2403', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'80', N'12', N'766', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'81', N'12', N'769', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'82', N'12', N'779', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'83', N'12', N'780', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'84', N'12', N'783', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'85', N'12', N'1082', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'86', N'12', N'2196', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'87', N'12', N'2282', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'88', N'12', N'2303', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'89', N'12', N'2321', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'90', N'12', N'2322', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'91', N'12', N'2332', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'92', N'12', N'2357', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'93', N'12', N'2363', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'94', N'12', N'2365', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'95', N'12', N'2369', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'96', N'12', N'2381', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'97', N'12', N'2399', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'98', N'12', N'2402', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'99', N'12', N'2444', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'100', N'12', N'2445', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'101', N'12', N'2446', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'102', N'12', N'2447', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'103', N'12', N'2448', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'105', N'12', N'2194', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'106', N'12', N'2328', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'107', N'12', N'2330', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'108', N'12', N'2372', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'109', N'12', N'2377', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'110', N'12', N'2388', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'111', N'12', N'753', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'112', N'12', N'756', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'113', N'12', N'906', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'114', N'12', N'908', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'115', N'12', N'2320', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'116', N'12', N'2349', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'117', N'12', N'2350', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'118', N'12', N'2359', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'119', N'12', N'2370', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'120', N'12', N'2389', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'121', N'12', N'2411', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'122', N'12', N'2412', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'123', N'12', N'2198', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'124', N'12', N'2199', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'125', N'12', N'2241', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'126', N'12', N'2298', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'127', N'12', N'2338', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'128', N'12', N'2342', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'129', N'12', N'754', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'130', N'12', N'772', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'131', N'12', N'2193', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'132', N'12', N'2200', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'133', N'12', N'2204', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'134', N'12', N'2243', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'135', N'12', N'2312', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'136', N'12', N'2316', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'137', N'12', N'2335', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'138', N'12', N'2379', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'139', N'12', N'2400', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'140', N'12', N'746', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'141', N'12', N'762', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'142', N'12', N'914', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'143', N'12', N'915', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'144', N'12', N'1771', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'145', N'12', N'2343', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'146', N'12', N'2362', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'147', N'13', N'2203', N'2018-08-06', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'148', N'13', N'2223', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'149', N'13', N'2273', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'150', N'13', N'2299', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'151', N'13', N'2340', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'152', N'13', N'2364', N'2018-07-20', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'153', N'13', N'2373', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'154', N'13', N'2374', N'2018-07-24', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'155', N'13', N'2401', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'156', N'13', N'2414', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'157', N'13', N'2417', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'158', N'13', N'2418', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'159', N'13', N'2419', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'160', N'13', N'2420', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'161', N'13', N'2421', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'162', N'13', N'2422', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'163', N'13', N'2423', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'164', N'13', N'2424', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'165', N'13', N'2425', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'166', N'13', N'2426', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'167', N'13', N'2428', N'2018-07-24', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'168', N'13', N'2442', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'169', N'13', N'2455', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'170', N'13', N'2456', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'171', N'13', N'2457', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'172', N'13', N'2458', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'173', N'13', N'761', N'2018-07-24', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'174', N'13', N'2115', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'175', N'13', N'2132', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'176', N'13', N'2403', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'177', N'13', N'2451', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'178', N'13', N'769', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'179', N'13', N'783', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'180', N'13', N'1082', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'181', N'13', N'2196', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'182', N'13', N'2282', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'183', N'13', N'2303', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'184', N'13', N'2321', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'185', N'13', N'2322', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'186', N'13', N'2332', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'187', N'13', N'2357', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'188', N'13', N'2363', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'189', N'13', N'2369', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'190', N'13', N'2381', N'2018-07-17', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'191', N'13', N'2399', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'192', N'13', N'2402', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'193', N'13', N'2407', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'194', N'13', N'2408', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'195', N'13', N'2410', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'196', N'13', N'2415', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'197', N'13', N'2444', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'198', N'13', N'2445', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'199', N'13', N'2446', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'200', N'13', N'2447', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'201', N'13', N'2453', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'202', N'13', N'766', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'203', N'13', N'779', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'204', N'13', N'2365', N'2018-07-05', N'test');
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'205', N'13', N'2384', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'206', N'13', N'2387', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'207', N'13', N'2405', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'208', N'13', N'2406', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'209', N'13', N'2409', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'210', N'13', N'2194', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'211', N'13', N'2328', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'212', N'13', N'2330', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'213', N'13', N'2372', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'214', N'13', N'2377', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'215', N'13', N'2388', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'216', N'13', N'2435', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'217', N'13', N'753', N'2018-07-25', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'218', N'13', N'756', N'2018-07-17', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'219', N'13', N'780', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'220', N'13', N'906', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'221', N'13', N'908', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'222', N'13', N'2320', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'223', N'13', N'2349', N'2018-07-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'224', N'13', N'2350', N'2018-07-09', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'225', N'13', N'2359', N'2018-07-16', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'226', N'13', N'2370', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'227', N'13', N'2385', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'228', N'13', N'2389', N'2018-07-24', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'229', N'13', N'2411', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'230', N'13', N'2412', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'231', N'13', N'2198', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'232', N'13', N'2199', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'233', N'13', N'2241', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'234', N'13', N'2298', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'235', N'13', N'2338', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'236', N'13', N'2342', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'237', N'13', N'2386', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'238', N'13', N'2391', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'239', N'13', N'2429', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'240', N'13', N'2431', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'241', N'13', N'2432', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'242', N'13', N'2454', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'243', N'13', N'754', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'244', N'13', N'772', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'245', N'13', N'2193', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'246', N'13', N'2200', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'247', N'13', N'2204', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'248', N'13', N'2243', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'249', N'13', N'2312', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'250', N'13', N'2316', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'251', N'13', N'2379', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'252', N'13', N'2400', N'2018-07-23', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'253', N'13', N'746', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'254', N'13', N'762', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'255', N'13', N'914', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'256', N'13', N'915', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'257', N'13', N'1771', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'258', N'13', N'2343', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'259', N'13', N'2362', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'260', N'14', N'2203', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'261', N'14', N'2364', N'2018-07-20', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'262', N'14', N'2422', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'263', N'14', N'2442', N'2018-07-20', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'264', N'14', N'2381', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'265', N'14', N'2384', N'2018-07-20', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'266', N'14', N'2405', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'267', N'14', N'2320', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'268', N'14', N'2349', N'2018-07-20', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'269', N'14', N'2385', N'2018-07-10', null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'270', N'14', N'2391', null, null);
GO
INSERT INTO [dbo].[ImzaTakipDetay] VALUES (N'271', N'14', N'2400', null, null);
GO

-- ----------------------------
-- Table structure for [dbo].[isg_egitim]
-- ----------------------------
DROP TABLE [dbo].[isg_egitim]
GO
CREATE TABLE [dbo].[isg_egitim] (
[id] int NOT NULL ,
[ad] nvarchar(250) NOT NULL 
)


GO

-- ----------------------------
-- Records of isg_egitim
-- ----------------------------
INSERT INTO [dbo].[isg_egitim] VALUES (N'1', N'Temel İsg eğitimi');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'2', N'Çalışma Mevzuatı ile ilgili bilgiler  ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'3', N'Çalışanların yasal hak ve sorumlulukları');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'4', N' İşyeri temizliği ve düzeni ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'5', N'İş kazası ve meslek hastalıklarından doğan sorumluluklar ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'6', N'İş kazalarının sebepleri ve korunma prensipleri   ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'7', N'İş sağlığı ve güvenliği genel kuralları ve güvenlik kültürü');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'8', N'Ergonomik risk etmenleri            ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'9', N'Kişisel koruyucu donalımların kullanımı');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'10', N'Güvenlik ve Sağlık İşaretleri ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'11', N'KKD Kullanımı ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'12', N'Elektrik tehlikeleri, riskleri ve önlemleri ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'13', N'Elle kaldırma ve taşıma ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'14', N'İş ekipmalarının güvenli  kullanımı  ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'15', N'Tahliye ve kurtarma ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'16', N' Ekranlı araçlarda çalışma ');
GO
INSERT INTO [dbo].[isg_egitim] VALUES (N'17', N'Parlayıcı Patlayıcı  ve Yanıcı  ve Yangın korunma');
GO

-- ----------------------------
-- Table structure for [dbo].[isg_egitim_saat]
-- ----------------------------
DROP TABLE [dbo].[isg_egitim_saat]
GO
CREATE TABLE [dbo].[isg_egitim_saat] (
[id] int NOT NULL ,
[egitimid] int NOT NULL ,
[saat] int NOT NULL 
)


GO

-- ----------------------------
-- Records of isg_egitim_saat
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[isg_egitim_yer]
-- ----------------------------
DROP TABLE [dbo].[isg_egitim_yer]
GO
CREATE TABLE [dbo].[isg_egitim_yer] (
[id] int NOT NULL ,
[ad] nvarchar(250) NOT NULL 
)


GO

-- ----------------------------
-- Records of isg_egitim_yer
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Izin]
-- ----------------------------
DROP TABLE [dbo].[Izin]
GO
CREATE TABLE [dbo].[Izin] (
[id] int NOT NULL ,
[personelid] int NOT NULL ,
[yil] int NOT NULL ,
[baslangictarih] datetime NOT NULL ,
[bitistarihi] datetime NOT NULL ,
[izintip] int NOT NULL ,
[aciklama] text NULL ,
[gun] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Izin
-- ----------------------------
INSERT INTO [dbo].[Izin] VALUES (N'1001', N'753', N'2006', N'2006-08-22 00:00:00.000', N'2006-08-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1002', N'754', N'2006', N'2006-09-18 00:00:00.000', N'2006-09-22 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1003', N'906', N'2006', N'2006-12-26 00:00:00.000', N'2006-12-29 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1004', N'754', N'2006', N'2007-02-09 00:00:00.000', N'2007-02-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1005', N'906', N'2006', N'2007-04-19 00:00:00.000', N'2007-04-21 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1006', N'754', N'2006', N'2007-05-24 00:00:00.000', N'2007-05-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1007', N'753', N'2006', N'2007-05-29 00:00:00.000', N'2007-06-09 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1008', N'756', N'2006', N'2007-06-14 00:00:00.000', N'2007-06-30 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1009', N'754', N'2006', N'2007-06-18 00:00:00.000', N'2007-06-22 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1010', N'745', N'2006', N'2007-08-13 00:00:00.000', N'2007-08-24 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1011', N'746', N'2006', N'2007-08-13 00:00:00.000', N'2007-08-23 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1012', N'754', N'2006', N'2007-08-20 00:00:00.000', N'2007-08-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1013', N'906', N'2006', N'2007-08-31 00:00:00.000', N'2007-09-10 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1014', N'745', N'2006', N'2007-10-11 00:00:00.000', N'2007-10-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1015', N'745', N'2006', N'2008-08-18 00:00:00.000', N'2008-08-19 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1016', N'746', N'2006', N'2009-06-15 00:00:00.000', N'2009-06-18 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1017', N'769', N'2007', N'2006-08-28 00:00:00.000', N'2006-09-02 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1018', N'761', N'2007', N'2007-02-06 00:00:00.000', N'2007-02-10 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1019', N'741', N'2007', N'2007-05-22 00:00:00.000', N'2007-05-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1020', N'753', N'2007', N'2007-07-02 00:00:00.000', N'2007-07-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1021', N'753', N'2007', N'2007-07-24 00:00:00.000', N'2007-08-03 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1022', N'761', N'2007', N'2007-07-24 00:00:00.000', N'2007-08-04 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1023', N'2312', N'2007', N'2007-08-06 00:00:00.000', N'2007-08-16 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1024', N'779', N'2007', N'2007-08-07 00:00:00.000', N'2007-08-20 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1025', N'762', N'2007', N'2007-08-17 00:00:00.000', N'2007-08-24 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1026', N'783', N'2007', N'2007-08-20 00:00:00.000', N'2007-09-05 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1027', N'780', N'2007', N'2007-08-20 00:00:00.000', N'2007-09-05 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1028', N'754', N'2007', N'2007-08-21 00:00:00.000', N'2007-08-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1029', N'766', N'2007', N'2007-09-13 00:00:00.000', N'2007-09-28 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1030', N'741', N'2007', N'2007-09-17 00:00:00.000', N'2007-09-21 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1031', N'779', N'2007', N'2007-09-25 00:00:00.000', N'2007-09-27 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1032', N'741', N'2007', N'2007-10-08 00:00:00.000', N'2007-10-11 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1033', N'772', N'2007', N'2007-10-22 00:00:00.000', N'2007-11-02 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1034', N'2312', N'2007', N'2007-10-30 00:00:00.000', N'2007-11-02 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1035', N'769', N'2007', N'2007-12-03 00:00:00.000', N'2007-12-13 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1036', N'906', N'2007', N'2007-12-10 00:00:00.000', N'2007-12-24 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1037', N'754', N'2007', N'2008-01-16 00:00:00.000', N'2008-01-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1038', N'906', N'2007', N'2008-02-28 00:00:00.000', N'2008-03-04 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1039', N'753', N'2007', N'2008-03-28 00:00:00.000', N'2008-03-28 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1040', N'741', N'2007', N'2008-04-21 00:00:00.000', N'2008-04-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1041', N'754', N'2007', N'2008-04-23 00:00:00.000', N'2008-04-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1042', N'754', N'2007', N'2008-04-24 00:00:00.000', N'2008-04-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1043', N'753', N'2007', N'2008-04-24 00:00:00.000', N'2008-04-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1044', N'756', N'2007', N'2008-05-12 00:00:00.000', N'2008-05-16 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1045', N'754', N'2007', N'2008-06-09 00:00:00.000', N'2008-06-11 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1046', N'762', N'2007', N'2008-06-16 00:00:00.000', N'2008-06-23 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1047', N'746', N'2007', N'2008-07-21 00:00:00.000', N'2008-08-01 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1048', N'745', N'2007', N'2008-08-20 00:00:00.000', N'2008-09-04 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1049', N'756', N'2007', N'2008-10-06 00:00:00.000', N'2008-10-15 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1050', N'746', N'2007', N'2009-06-19 00:00:00.000', N'2009-06-22 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1051', N'2303', N'2007', N'2009-08-25 00:00:00.000', N'2009-09-04 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1052', N'2303', N'2007', N'2010-05-26 00:00:00.000', N'2010-05-28 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1053', N'2303', N'2007', N'2011-03-14 00:00:00.000', N'2011-03-14 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1054', N'772', N'2007', N'2012-04-24 00:00:00.000', N'2012-04-27 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1055', N'761', N'2008', N'2008-02-06 00:00:00.000', N'2008-02-08 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1056', N'741', N'2008', N'2008-04-22 00:00:00.000', N'2008-04-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1057', N'769', N'2008', N'2008-04-24 00:00:00.000', N'2008-04-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1058', N'2312', N'2008', N'2008-05-27 00:00:00.000', N'2008-06-11 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1059', N'754', N'2008', N'2008-06-12 00:00:00.000', N'2008-06-13 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1060', N'779', N'2008', N'2008-06-26 00:00:00.000', N'2008-07-11 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1061', N'780', N'2008', N'2008-06-30 00:00:00.000', N'2008-07-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1062', N'772', N'2008', N'2008-07-07 00:00:00.000', N'2008-07-18 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1063', N'761', N'2008', N'2008-07-14 00:00:00.000', N'2008-07-25 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1064', N'1082', N'2008', N'2008-07-16 00:00:00.000', N'2008-07-18 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1065', N'769', N'2008', N'2008-07-21 00:00:00.000', N'2008-07-31 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1066', N'906', N'2008', N'2008-07-28 00:00:00.000', N'2008-08-12 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1067', N'908', N'2008', N'2008-08-04 00:00:00.000', N'2008-08-15 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1068', N'2115', N'2008', N'2008-08-04 00:00:00.000', N'2008-08-07 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1069', N'2204', N'2008', N'2008-08-06 00:00:00.000', N'2008-08-16 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1070', N'1082', N'2008', N'2008-08-11 00:00:00.000', N'2008-08-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1071', N'1771', N'2008', N'2008-08-11 00:00:00.000', N'2008-08-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1072', N'783', N'2008', N'2008-08-11 00:00:00.000', N'2008-08-26 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1073', N'741', N'2008', N'2008-08-11 00:00:00.000', N'2008-08-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1074', N'753', N'2008', N'2008-08-18 00:00:00.000', N'2008-08-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1075', N'914', N'2008', N'2008-08-19 00:00:00.000', N'2008-08-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1076', N'915', N'2008', N'2008-08-19 00:00:00.000', N'2008-08-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1077', N'766', N'2008', N'2008-09-01 00:00:00.000', N'2008-09-16 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1078', N'754', N'2008', N'2008-09-15 00:00:00.000', N'2008-09-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1079', N'753', N'2008', N'2008-11-26 00:00:00.000', N'2008-11-28 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1080', N'780', N'2008', N'2008-12-15 00:00:00.000', N'2008-12-25 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1081', N'769', N'2008', N'2009-01-02 00:00:00.000', N'2009-01-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1082', N'754', N'2008', N'2009-01-26 00:00:00.000', N'2009-01-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1083', N'769', N'2008', N'2009-05-18 00:00:00.000', N'2009-05-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1084', N'2204', N'2008', N'2009-05-28 00:00:00.000', N'2009-05-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1085', N'746', N'2008', N'2009-06-23 00:00:00.000', N'2009-07-08 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1086', N'2115', N'2008', N'2009-07-20 00:00:00.000', N'2009-07-30 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1087', N'756', N'2008', N'2009-08-03 00:00:00.000', N'2009-08-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1088', N'745', N'2008', N'2009-08-10 00:00:00.000', N'2009-08-25 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1089', N'914', N'2008', N'2009-09-07 00:00:00.000', N'2009-09-17 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1090', N'915', N'2008', N'2009-09-07 00:00:00.000', N'2009-09-17 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1091', N'762', N'2008', N'2009-09-14 00:00:00.000', N'2009-09-28 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1092', N'756', N'2008', N'2009-09-23 00:00:00.000', N'2009-09-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1093', N'908', N'2008', N'2009-12-23 00:00:00.000', N'2009-12-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1094', N'2303', N'2008', N'2010-07-26 00:00:00.000', N'2010-08-10 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1095', N'1771', N'2008', N'2011-03-01 00:00:00.000', N'2011-03-03 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1096', N'762', N'2008', N'2011-08-22 00:00:00.000', N'2011-08-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1097', N'772', N'2008', N'2012-07-05 00:00:00.000', N'2012-07-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1098', N'2204', N'2008', N'2015-01-19 00:00:00.000', N'2015-01-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1099', N'754', N'2009', N'2009-01-27 00:00:00.000', N'2009-01-30 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1100', N'906', N'2009', N'2009-03-09 00:00:00.000', N'2009-03-16 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1101', N'741', N'2009', N'2009-05-18 00:00:00.000', N'2009-05-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1102', N'2312', N'2009', N'2009-06-09 00:00:00.000', N'2009-06-12 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1103', N'741', N'2009', N'2009-06-15 00:00:00.000', N'2009-06-17 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1104', N'906', N'2009', N'2009-06-22 00:00:00.000', N'2009-06-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1105', N'1082', N'2009', N'2009-06-30 00:00:00.000', N'2009-07-10 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1106', N'741', N'2009', N'2009-07-06 00:00:00.000', N'2009-07-16 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1107', N'2243', N'2009', N'2009-07-06 00:00:00.000', N'2009-07-17 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1108', N'761', N'2009', N'2009-07-06 00:00:00.000', N'2009-07-21 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1109', N'2132', N'2009', N'2009-07-10 00:00:00.000', N'2009-07-12 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1110', N'2193', N'2009', N'2009-07-13 00:00:00.000', N'2009-07-24 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1111', N'753', N'2009', N'2009-07-13 00:00:00.000', N'2009-07-24 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1112', N'769', N'2009', N'2009-07-13 00:00:00.000', N'2009-07-17 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1113', N'2196', N'2009', N'2009-07-20 00:00:00.000', N'2009-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1114', N'2204', N'2009', N'2009-07-20 00:00:00.000', N'2009-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1115', N'2241', N'2009', N'2009-07-20 00:00:00.000', N'2009-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1116', N'2273', N'2009', N'2009-07-27 00:00:00.000', N'2009-08-07 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1117', N'1771', N'2009', N'2009-07-27 00:00:00.000', N'2009-08-07 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1118', N'772', N'2009', N'2009-07-27 00:00:00.000', N'2009-08-07 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1119', N'2115', N'2009', N'2009-07-30 00:00:00.000', N'2009-07-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1120', N'2199', N'2009', N'2009-08-03 00:00:00.000', N'2009-08-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1121', N'2223', N'2009', N'2009-08-03 00:00:00.000', N'2009-08-15 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1122', N'2200', N'2009', N'2009-08-03 00:00:00.000', N'2009-08-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1123', N'2203', N'2009', N'2009-08-03 00:00:00.000', N'2009-08-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1124', N'908', N'2009', N'2009-08-10 00:00:00.000', N'2009-08-21 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1125', N'783', N'2009', N'2009-08-10 00:00:00.000', N'2009-08-21 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1126', N'2312', N'2009', N'2009-08-11 00:00:00.000', N'2009-08-21 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1127', N'2282', N'2009', N'2009-08-12 00:00:00.000', N'2009-08-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1128', N'766', N'2009', N'2009-08-24 00:00:00.000', N'2009-09-08 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1129', N'906', N'2009', N'2009-09-10 00:00:00.000', N'2009-09-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1130', N'914', N'2009', N'2009-09-18 00:00:00.000', N'2009-09-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1131', N'915', N'2009', N'2009-09-18 00:00:00.000', N'2009-09-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1132', N'2273', N'2009', N'2009-09-23 00:00:00.000', N'2009-09-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1133', N'753', N'2009', N'2009-09-23 00:00:00.000', N'2006-09-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1134', N'2200', N'2009', N'2009-09-23 00:00:00.000', N'2009-09-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1135', N'780', N'2009', N'2009-09-28 00:00:00.000', N'2009-10-09 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1136', N'779', N'2009', N'2009-09-28 00:00:00.000', N'2009-10-09 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1137', N'2132', N'2009', N'2009-09-29 00:00:00.000', N'2009-10-10 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1138', N'906', N'2009', N'2009-09-29 00:00:00.000', N'2009-09-30 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1139', N'2282', N'2009', N'2009-10-02 00:00:00.000', N'2009-10-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1140', N'2203', N'2009', N'2009-11-11 00:00:00.000', N'2009-11-13 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1141', N'2196', N'2009', N'2009-11-23 00:00:00.000', N'2009-11-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1142', N'1082', N'2009', N'2009-12-01 00:00:00.000', N'2009-12-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1143', N'769', N'2009', N'2009-12-28 00:00:00.000', N'2009-01-08 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1144', N'2282', N'2009', N'2010-01-26 00:00:00.000', N'2010-02-05 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1145', N'754', N'2009', N'2010-06-21 00:00:00.000', N'2010-07-01 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1146', N'756', N'2009', N'2010-07-01 00:00:00.000', N'2010-07-16 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1147', N'745', N'2009', N'2010-07-06 00:00:00.000', N'2010-07-27 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1148', N'2243', N'2009', N'2010-07-12 00:00:00.000', N'2010-07-14 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1149', N'2299', N'2009', N'2010-07-19 00:00:00.000', N'2010-07-29 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1150', N'746', N'2009', N'2010-07-19 00:00:00.000', N'2010-07-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1151', N'2115', N'2009', N'2010-08-02 00:00:00.000', N'2010-08-04 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1152', N'762', N'2009', N'2010-08-09 00:00:00.000', N'2010-08-20 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1153', N'779', N'2009', N'2010-08-09 00:00:00.000', N'2010-08-11 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1154', N'746', N'2009', N'2010-09-01 00:00:00.000', N'2010-09-03 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1155', N'2298', N'2009', N'2010-09-03 00:00:00.000', N'2010-09-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1156', N'2298', N'2009', N'2010-09-27 00:00:00.000', N'2010-10-08 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1157', N'780', N'2009', N'2010-11-22 00:00:00.000', N'2010-11-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1158', N'2198', N'2009', N'2010-11-29 00:00:00.000', N'2010-12-10 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1159', N'1771', N'2009', N'2011-03-04 00:00:00.000', N'2011-03-04 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1160', N'2303', N'2009', N'2011-03-15 00:00:00.000', N'2011-03-30 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1161', N'1771', N'2009', N'2011-03-17 00:00:00.000', N'2011-03-18 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1162', N'2298', N'2009', N'2011-07-04 00:00:00.000', N'2011-07-05 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1163', N'2200', N'2009', N'2011-07-11 00:00:00.000', N'2011-07-16 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1164', N'2199', N'2009', N'2011-07-20 00:00:00.000', N'2011-07-22 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1165', N'914', N'2009', N'2011-08-08 00:00:00.000', N'2011-08-18 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1166', N'2194', N'2009', N'2011-08-15 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1167', N'2223', N'2009', N'2011-08-22 00:00:00.000', N'2011-08-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1168', N'762', N'2009', N'2011-08-26 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1169', N'783', N'2009', N'2011-09-05 00:00:00.000', N'2011-09-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1170', N'762', N'2009', N'2011-11-17 00:00:00.000', N'2011-11-18 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1171', N'915', N'2009', N'2011-11-23 00:00:00.000', N'2011-12-03 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1172', N'2198', N'2009', N'2012-02-13 00:00:00.000', N'2012-02-15 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1173', N'772', N'2009', N'2012-07-08 00:00:00.000', N'2012-07-11 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1174', N'2204', N'2009', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1175', N'2115', N'2009', N'2012-08-27 00:00:00.000', N'2012-09-07 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1176', N'2193', N'2010', N'2010-07-12 00:00:00.000', N'2010-07-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1177', N'2194', N'2009', N'2013-02-07 00:00:00.000', N'2013-02-08 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1178', N'908', N'2009', N'2013-03-28 00:00:00.000', N'2013-03-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1179', N'2193', N'2011', N'2011-06-20 00:00:00.000', N'2011-07-01 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1180', N'2194', N'2009', N'2013-05-24 00:00:00.000', N'2013-05-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1181', N'2282', N'2009', N'2013-07-03 00:00:00.000', N'2013-07-04 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1182', N'908', N'2009', N'2013-09-20 00:00:00.000', N'2013-09-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1183', N'2241', N'2009', N'2015-06-12 00:00:00.000', N'2016-06-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1184', N'2241', N'2009', N'2016-04-25 00:00:00.000', N'2016-04-26 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1185', N'2299', N'2010', N'2011-06-27 00:00:00.000', N'2011-07-08 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1186', N'2299', N'2011', N'2012-06-21 00:00:00.000', N'2012-07-06 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1187', N'761', N'2010', N'2010-01-27 00:00:00.000', N'2010-01-29 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1188', N'906', N'2010', N'2010-04-05 00:00:00.000', N'2010-04-15 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1189', N'2132', N'2010', N'2010-04-19 00:00:00.000', N'2010-04-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1190', N'769', N'2010', N'2010-05-17 00:00:00.000', N'2010-05-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1191', N'753', N'2010', N'2010-06-21 00:00:00.000', N'2010-07-02 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1192', N'741', N'2010', N'2010-06-21 00:00:00.000', N'2010-06-25 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1193', N'906', N'2010', N'2010-06-24 00:00:00.000', N'2010-06-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1194', N'754', N'2010', N'2010-07-02 00:00:00.000', N'2010-07-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1195', N'1082', N'2010', N'2010-07-05 00:00:00.000', N'2010-07-08 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1196', N'2132', N'2010', N'2010-07-05 00:00:00.000', N'2010-07-15 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1197', N'761', N'2010', N'2010-07-05 00:00:00.000', N'2010-07-16 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1198', N'2193', N'2012', N'2012-07-16 00:00:00.000', N'2012-07-27 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1199', N'2204', N'2010', N'2010-07-12 00:00:00.000', N'2010-07-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1200', N'769', N'2010', N'2010-07-12 00:00:00.000', N'2010-07-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1201', N'2243', N'2010', N'2010-07-15 00:00:00.000', N'2010-07-18 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1202', N'908', N'2010', N'2010-07-19 00:00:00.000', N'2010-07-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1203', N'2199', N'2010', N'2010-07-26 00:00:00.000', N'2010-08-06 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1204', N'783', N'2010', N'2010-07-26 00:00:00.000', N'2010-08-05 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1205', N'772', N'2010', N'2010-07-26 00:00:00.000', N'2010-08-06 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1206', N'2312', N'2010', N'2010-08-03 00:00:00.000', N'2010-08-06 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1207', N'754', N'2010', N'2010-08-04 00:00:00.000', N'2010-08-06 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1208', N'2115', N'2010', N'2010-08-05 00:00:00.000', N'2010-08-06 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1209', N'2273', N'2010', N'2010-08-09 00:00:00.000', N'2010-08-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1210', N'779', N'2010', N'2010-08-12 00:00:00.000', N'2010-08-16 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1211', N'914', N'2010', N'2010-08-16 00:00:00.000', N'2010-08-27 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1212', N'915', N'2010', N'2010-08-16 00:00:00.000', N'2010-08-27 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1213', N'766', N'2010', N'2010-08-16 00:00:00.000', N'2010-08-31 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1214', N'2200', N'2010', N'2010-08-23 00:00:00.000', N'2010-09-08 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1215', N'2196', N'2010', N'2010-08-25 00:00:00.000', N'2010-09-05 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1216', N'2273', N'2010', N'2010-09-06 00:00:00.000', N'2010-09-08 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1217', N'2312', N'2010', N'2010-09-13 00:00:00.000', N'2010-09-23 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1218', N'741', N'2010', N'2010-09-20 00:00:00.000', N'2010-09-24 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1219', N'2243', N'2010', N'2010-09-27 00:00:00.000', N'2010-10-08 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1220', N'741', N'2010', N'2010-10-21 00:00:00.000', N'2010-10-22 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1221', N'906', N'2010', N'2010-11-11 00:00:00.000', N'2010-11-12 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1222', N'780', N'2010', N'2010-11-25 00:00:00.000', N'2010-12-10 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1223', N'754', N'2010', N'2011-01-24 00:00:00.000', N'2011-01-28 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1224', N'753', N'2010', N'2011-02-09 00:00:00.000', N'2011-02-11 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1225', N'1771', N'2010', N'2011-03-19 00:00:00.000', N'2011-03-22 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1226', N'746', N'2010', N'2011-04-04 00:00:00.000', N'2011-04-06 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1227', N'2194', N'2010', N'2011-04-24 00:00:00.000', N'2011-04-27 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1228', N'2196', N'2010', N'2011-05-04 00:00:00.000', N'2011-05-06 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1229', N'754', N'2010', N'2011-06-02 00:00:00.000', N'2011-06-06 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1230', N'779', N'2010', N'2011-06-13 00:00:00.000', N'2011-06-23 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1231', N'756', N'2010', N'2011-06-20 00:00:00.000', N'2011-07-01 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1232', N'741', N'2010', N'2011-06-21 00:00:00.000', N'2011-06-22 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1233', N'2299', N'2012', N'2013-09-16 00:00:00.000', N'2013-09-28 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1234', N'2298', N'2010', N'2011-07-06 00:00:00.000', N'2011-07-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1235', N'746', N'2010', N'2011-07-11 00:00:00.000', N'2011-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1236', N'2303', N'2010', N'2011-07-13 00:00:00.000', N'2011-07-15 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1237', N'2200', N'2010', N'2011-07-17 00:00:00.000', N'2011-07-22 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1238', N'2316', N'2010', N'2011-07-18 00:00:00.000', N'2011-07-21 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1239', N'2241', N'2010', N'2011-07-21 00:00:00.000', N'2011-08-01 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1240', N'2199', N'2010', N'2011-07-23 00:00:00.000', N'2011-07-26 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1241', N'2203', N'2010', N'2011-07-25 00:00:00.000', N'2011-07-28 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1242', N'2200', N'2010', N'2011-08-15 00:00:00.000', N'2011-08-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1243', N'766', N'2010', N'2011-11-10 00:00:00.000', N'2011-11-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1244', N'914', N'2010', N'2011-08-19 00:00:00.000', N'2011-08-19 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1245', N'2223', N'2010', N'2011-08-24 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1246', N'2115', N'2010', N'2011-09-05 00:00:00.000', N'2011-09-16 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1247', N'783', N'2010', N'2011-09-08 00:00:00.000', N'2011-09-12 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1248', N'2298', N'2010', N'2011-09-26 00:00:00.000', N'2011-09-27 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1249', N'2316', N'2010', N'2011-10-03 00:00:00.000', N'2011-10-13 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1250', N'2298', N'2010', N'2011-10-24 00:00:00.000', N'2011-11-04 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1251', N'756', N'2010', N'2011-11-02 00:00:00.000', N'2011-11-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1252', N'2303', N'2010', N'2011-11-10 00:00:00.000', N'2011-11-21 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1253', N'766', N'2010', N'2012-07-23 00:00:00.000', N'2012-07-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1254', N'915', N'2010', N'2011-12-04 00:00:00.000', N'2011-12-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1255', N'914', N'2010', N'2011-12-22 00:00:00.000', N'2011-11-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1256', N'745', N'2010', N'2012-01-05 00:00:00.000', N'2012-01-06 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1257', N'2282', N'2010', N'2012-01-31 00:00:00.000', N'2012-02-03 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1258', N'2198', N'2010', N'2012-02-16 00:00:00.000', N'2012-02-17 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1259', N'2115', N'2010', N'2012-04-04 00:00:00.000', N'2012-04-04 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1260', N'2203', N'2010', N'2012-05-14 00:00:00.000', N'2012-05-24 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1261', N'2303', N'2010', N'2012-05-21 00:00:00.000', N'2012-05-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1262', N'2196', N'2010', N'2012-06-19 00:00:00.000', N'2012-06-19 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1263', N'745', N'2010', N'2012-06-28 00:00:00.000', N'2012-06-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1264', N'772', N'2010', N'2012-07-12 00:00:00.000', N'2012-07-14 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1265', N'2223', N'2010', N'2012-08-06 00:00:00.000', N'2012-08-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1266', N'2194', N'2010', N'2012-08-22 00:00:00.000', N'2012-09-04 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1267', N'762', N'2010', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1268', N'1082', N'2010', N'2012-08-27 00:00:00.000', N'2012-09-07 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1269', N'2198', N'2010', N'2012-09-17 00:00:00.000', N'2012-09-28 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1270', N'1771', N'2010', N'2012-10-08 00:00:00.000', N'2012-10-12 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1271', N'2193', N'2009', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1272', N'1771', N'2010', N'2013-02-26 00:00:00.000', N'2013-02-28 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1273', N'2193', N'2010', N'2012-12-20 00:00:00.000', N'2012-12-21 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1274', N'762', N'2010', N'2013-06-24 00:00:00.000', N'2013-07-05 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1275', N'908', N'2010', N'2013-07-03 00:00:00.000', N'2013-07-05 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1276', N'2282', N'2010', N'2013-07-05 00:00:00.000', N'2013-07-16 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1277', N'745', N'2010', N'2013-07-23 00:00:00.000', N'2013-08-02 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1278', N'756', N'2010', N'2013-08-05 00:00:00.000', N'2013-08-06 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1279', N'1771', N'2010', N'2013-08-05 00:00:00.000', N'2013-08-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1280', N'2223', N'2010', N'2014-07-15 00:00:00.000', N'2014-07-25 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1281', N'2241', N'2010', N'2014-07-31 00:00:00.000', N'2014-08-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1282', N'2204', N'2010', N'2015-01-21 00:00:00.000', N'2015-01-23 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1283', N'2299', N'2013', N'2014-08-11 00:00:00.000', N'2014-08-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1284', N'2198', N'2010', N'2016-01-04 00:00:00.000', N'2016-01-04 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1285', N'780', N'2011', N'2010-05-20 00:00:00.000', N'2010-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1286', N'745', N'2011', N'2011-04-11 00:00:00.000', N'2011-04-15 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1287', N'753', N'2011', N'2011-04-21 00:00:00.000', N'2011-04-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1288', N'2312', N'2011', N'2011-04-25 00:00:00.000', N'2010-04-29 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1289', N'2321', N'2011', N'2011-05-16 00:00:00.000', N'2011-05-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1290', N'761', N'2011', N'2011-05-20 00:00:00.000', N'2011-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1291', N'754', N'2011', N'2011-06-07 00:00:00.000', N'2011-06-17 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1292', N'906', N'2011', N'2011-06-07 00:00:00.000', N'2011-06-08 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1293', N'2328', N'2011', N'2011-06-20 00:00:00.000', N'2011-06-23 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1294', N'2193', N'2009', N'2013-03-28 00:00:00.000', N'2013-03-28 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1295', N'2338', N'2011', N'2011-06-21 00:00:00.000', N'2011-06-24 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1296', N'753', N'2011', N'2011-06-22 00:00:00.000', N'2011-06-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1297', N'741', N'2011', N'2011-06-23 00:00:00.000', N'2011-06-24 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1298', N'2335', N'2011', N'2011-06-30 00:00:00.000', N'2011-07-01 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1299', N'772', N'2011', N'2011-07-04 00:00:00.000', N'2011-07-15 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1300', N'914', N'2011', N'2011-07-07 00:00:00.000', N'2011-07-11 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1301', N'908', N'2011', N'2011-07-11 00:00:00.000', N'2011-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1302', N'2243', N'2011', N'2011-07-11 00:00:00.000', N'2011-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1303', N'761', N'2011', N'2011-07-13 00:00:00.000', N'2011-07-15 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1304', N'2320', N'2011', N'2011-07-15 00:00:00.000', N'2011-07-29 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1305', N'1771', N'2011', N'2011-07-18 00:00:00.000', N'2011-08-02 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1306', N'906', N'2011', N'2011-07-18 00:00:00.000', N'2011-07-30 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1307', N'2132', N'2011', N'2011-07-25 00:00:00.000', N'2011-08-13 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1308', N'2199', N'2011', N'2011-07-27 00:00:00.000', N'2011-07-29 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1309', N'2330', N'2011', N'2011-08-01 00:00:00.000', N'2011-08-12 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1310', N'2332', N'2011', N'2011-08-01 00:00:00.000', N'2011-08-16 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1311', N'2196', N'2011', N'2011-08-08 00:00:00.000', N'2011-08-19 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1312', N'761', N'2011', N'2011-08-08 00:00:00.000', N'2011-08-18 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1313', N'2273', N'2011', N'2011-08-15 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1314', N'753', N'2011', N'2011-08-15 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1315', N'2200', N'2011', N'2011-08-16 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1316', N'746', N'2011', N'2011-08-22 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1317', N'2342', N'2011', N'2011-09-05 00:00:00.000', N'2011-09-16 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1318', N'906', N'2011', N'2011-09-05 00:00:00.000', N'2011-09-06 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1319', N'2338', N'2011', N'2011-09-06 00:00:00.000', N'2011-09-16 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1320', N'741', N'2011', N'2011-09-08 00:00:00.000', N'2011-09-19 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1321', N'780', N'2011', N'2011-09-12 00:00:00.000', N'2011-09-13 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1322', N'783', N'2011', N'2011-09-15 00:00:00.000', N'2011-09-17 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1323', N'2322', N'2011', N'2011-09-19 00:00:00.000', N'2011-09-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1324', N'2328', N'2011', N'2011-09-19 00:00:00.000', N'2011-09-29 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1325', N'906', N'2011', N'2011-09-19 00:00:00.000', N'2011-09-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1326', N'2199', N'2011', N'2011-09-20 00:00:00.000', N'2011-09-30 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1327', N'2298', N'2011', N'2011-10-06 00:00:00.000', N'2011-10-07 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1328', N'779', N'2011', N'2011-10-10 00:00:00.000', N'2011-10-21 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1329', N'2316', N'2011', N'2011-10-14 00:00:00.000', N'2011-10-14 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1330', N'2335', N'2011', N'2011-11-10 00:00:00.000', N'2011-11-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1331', N'1082', N'2011', N'2011-11-10 00:00:00.000', N'2011-11-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1332', N'2115', N'2011', N'2011-11-10 00:00:00.000', N'2011-11-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1333', N'746', N'2011', N'2011-11-19 00:00:00.000', N'2011-11-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1334', N'2298', N'2011', N'2011-11-21 00:00:00.000', N'2010-11-22 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1335', N'915', N'2011', N'2011-12-08 00:00:00.000', N'2011-12-23 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1336', N'2273', N'2011', N'2011-12-14 00:00:00.000', N'2011-12-14 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1337', N'2340', N'2011', N'2012-01-16 00:00:00.000', N'2012-01-19 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1338', N'2115', N'2011', N'2012-04-05 00:00:00.000', N'2012-04-06 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1339', N'741', N'2011', N'2012-04-09 00:00:00.000', N'2012-04-10 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1340', N'2204', N'2011', N'2012-04-16 00:00:00.000', N'2012-04-27 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1341', N'753', N'2011', N'2012-04-30 00:00:00.000', N'2012-04-30 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1342', N'2321', N'2011', N'2012-05-21 00:00:00.000', N'2012-05-31 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1343', N'2303', N'2011', N'2012-05-22 00:00:00.000', N'2012-05-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1344', N'745', N'2011', N'2012-06-11 00:00:00.000', N'2012-06-27 00:00:00.000', N'1', null, N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1345', N'2316', N'2011', N'2012-06-18 00:00:00.000', N'2012-06-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1346', N'2340', N'2011', N'2012-06-18 00:00:00.000', N'2012-06-29 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1347', N'2196', N'2011', N'2012-06-20 00:00:00.000', N'2012-06-22 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1348', N'2299', N'2012', N'2015-04-16 00:00:00.000', N'2015-04-17 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1349', N'769', N'2011', N'2012-06-25 00:00:00.000', N'2012-07-06 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1350', N'2377', N'2011', N'2012-07-02 00:00:00.000', N'2012-07-13 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1351', N'779', N'2011', N'2012-07-02 00:00:00.000', N'2012-07-04 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1352', N'2349', N'2011', N'2012-07-05 00:00:00.000', N'2012-07-20 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1353', N'2350', N'2011', N'2012-07-09 00:00:00.000', N'2012-07-12 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1354', N'2335', N'2011', N'2012-07-16 00:00:00.000', N'2012-07-26 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1355', N'753', N'2011', N'2012-07-23 00:00:00.000', N'2012-07-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1356', N'766', N'2011', N'2011-08-15 00:00:00.000', N'2011-08-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1357', N'766', N'2011', N'2012-07-27 00:00:00.000', N'2012-08-06 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1358', N'2223', N'2011', N'2012-08-07 00:00:00.000', N'2012-08-10 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1359', N'2377', N'2011', N'2012-08-15 00:00:00.000', N'2012-08-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1360', N'2322', N'2011', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1361', N'2200', N'2011', N'2012-08-22 00:00:00.000', N'2012-09-03 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1362', N'2241', N'2011', N'2012-08-22 00:00:00.000', N'2012-09-07 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1363', N'2350', N'2011', N'2012-09-03 00:00:00.000', N'2012-09-13 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1364', N'783', N'2011', N'2012-09-03 00:00:00.000', N'2012-09-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1365', N'756', N'2011', N'2012-09-10 00:00:00.000', N'2012-09-21 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1366', N'762', N'2011', N'2012-09-19 00:00:00.000', N'2012-09-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1367', N'769', N'2011', N'2012-10-08 00:00:00.000', N'2012-10-08 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1368', N'2316', N'2011', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1369', N'2343', N'2011', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1370', N'754', N'2011', N'2012-10-22 00:00:00.000', N'2012-10-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1371', N'2243', N'2011', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1372', N'772', N'2011', N'2012-11-22 00:00:00.000', N'2012-11-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1373', N'769', N'2011', N'2012-11-28 00:00:00.000', N'2012-11-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1374', N'754', N'2011', N'2012-12-24 00:00:00.000', N'2013-01-04 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1375', N'1082', N'2011', N'2012-12-31 00:00:00.000', N'2012-12-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1376', N'2273', N'2011', N'2013-02-12 00:00:00.000', N'2013-02-13 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1377', N'2298', N'2011', N'2013-02-12 00:00:00.000', N'2013-02-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1378', N'2342', N'2011', N'2013-03-11 00:00:00.000', N'2013-03-13 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1379', N'2320', N'2011', N'2013-04-08 00:00:00.000', N'2013-04-08 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1380', N'2203', N'2011', N'2013-05-13 00:00:00.000', N'2013-05-14 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1381', N'756', N'2011', N'2013-06-10 00:00:00.000', N'2013-06-13 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1382', N'1082', N'2011', N'2013-06-24 00:00:00.000', N'2013-07-05 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1383', N'2243', N'2011', N'2013-07-08 00:00:00.000', N'2013-07-08 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1384', N'2115', N'2011', N'2013-07-09 00:00:00.000', N'2013-07-09 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1385', N'2282', N'2011', N'2013-07-17 00:00:00.000', N'2013-07-19 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1386', N'2282', N'2011', N'2013-07-22 00:00:00.000', N'2013-08-02 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1387', N'2343', N'2011', N'2013-08-01 00:00:00.000', N'2013-08-16 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1388', N'2312', N'2011', N'2013-08-12 00:00:00.000', N'2013-08-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1389', N'2194', N'2011', N'2013-08-12 00:00:00.000', N'2013-08-27 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1390', N'746', N'2011', N'2013-08-13 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1391', N'2193', N'2010', N'2013-03-29 00:00:00.000', N'2013-03-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1392', N'2377', N'2011', N'2013-09-24 00:00:00.000', N'2013-09-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1393', N'756', N'2011', N'2013-10-21 00:00:00.000', N'2013-10-25 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1394', N'2199', N'2011', N'2013-12-31 00:00:00.000', N'2013-12-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1395', N'908', N'2011', N'2014-01-17 00:00:00.000', N'2014-01-17 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1396', N'2203', N'2011', N'2014-02-27 00:00:00.000', N'2014-02-28 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1397', N'2198', N'2011', N'2014-03-10 00:00:00.000', N'2014-03-25 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1398', N'2303', N'2011', N'2014-03-17 00:00:00.000', N'2014-03-27 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1399', N'2330', N'2011', N'2014-03-24 00:00:00.000', N'2014-03-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1400', N'762', N'2011', N'2014-05-22 00:00:00.000', N'2014-05-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1401', N'2330', N'2011', N'2014-06-02 00:00:00.000', N'2014-06-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1402', N'762', N'2011', N'2014-06-30 00:00:00.000', N'2014-07-11 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1403', N'780', N'2011', N'2014-07-31 00:00:00.000', N'2014-08-12 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1404', N'908', N'2011', N'2014-08-25 00:00:00.000', N'2014-08-26 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1405', N'2203', N'2011', N'2015-05-25 00:00:00.000', N'2015-05-29 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1406', N'2223', N'2011', N'2015-07-07 00:00:00.000', N'2015-07-10 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1407', N'914', N'2011', N'2015-08-10 00:00:00.000', N'2015-08-20 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1408', N'2343', N'2011', N'2015-08-17 00:00:00.000', N'2015-08-17 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1409', N'2204', N'2011', N'2015-10-08 00:00:00.000', N'2015-10-09 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1410', N'2204', N'2011', N'2015-10-19 00:00:00.000', N'2015-10-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1411', N'2223', N'2011', N'2015-12-28 00:00:00.000', N'2015-12-31 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1412', N'2223', N'2011', N'2016-01-18 00:00:00.000', N'2016-01-19 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1413', N'2203', N'2011', N'2016-03-07 00:00:00.000', N'2016-03-11 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1414', N'2312', N'2012', N'2012-01-23 00:00:00.000', N'2012-01-05 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1415', N'753', N'2012', N'2012-01-31 00:00:00.000', N'2012-02-03 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1416', N'783', N'2012', N'2012-02-08 00:00:00.000', N'2012-02-09 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1417', N'754', N'2012', N'2012-02-13 00:00:00.000', N'2013-02-17 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1418', N'783', N'2012', N'2012-03-12 00:00:00.000', N'2012-02-16 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1419', N'2115', N'2012', N'2012-05-29 00:00:00.000', N'2012-06-01 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1420', N'2321', N'2012', N'2012-06-01 00:00:00.000', N'2012-06-01 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1421', N'2338', N'2012', N'2012-06-05 00:00:00.000', N'2012-06-15 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1422', N'906', N'2012', N'2012-06-06 00:00:00.000', N'2012-06-19 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1423', N'753', N'2012', N'2012-06-14 00:00:00.000', N'2012-06-15 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1424', N'2312', N'2012', N'2012-06-18 00:00:00.000', N'2012-06-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1425', N'2340', N'2012', N'2012-06-29 00:00:00.000', N'2012-06-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1426', N'746', N'2012', N'2012-07-02 00:00:00.000', N'2012-07-13 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1427', N'779', N'2012', N'2012-07-05 00:00:00.000', N'2012-07-14 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1428', N'741', N'2012', N'2012-07-09 00:00:00.000', N'2012-07-20 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1429', N'908', N'2012', N'2012-07-16 00:00:00.000', N'2012-07-27 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1430', N'2193', N'2011', N'2013-08-26 00:00:00.000', N'2013-08-28 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1431', N'772', N'2012', N'2012-07-16 00:00:00.000', N'2012-07-24 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1432', N'761', N'2012', N'2012-07-16 00:00:00.000', N'2012-07-07 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1433', N'2332', N'2012', N'2012-07-24 00:00:00.000', N'2012-08-03 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1434', N'753', N'2012', N'2012-07-24 00:00:00.000', N'2012-08-08 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1435', N'2335', N'2012', N'2012-07-27 00:00:00.000', N'2012-07-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1436', N'766', N'2012', N'2012-08-07 00:00:00.000', N'2012-08-22 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1437', N'2273', N'2012', N'2012-08-13 00:00:00.000', N'2013-08-31 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1438', N'2303', N'2012', N'2012-08-13 00:00:00.000', N'2012-08-31 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1439', N'2196', N'2012', N'2012-08-14 00:00:00.000', N'2012-08-17 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1440', N'2312', N'2012', N'2012-08-22 00:00:00.000', N'2012-08-28 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1441', N'2359', N'2012', N'2012-08-22 00:00:00.000', N'2012-09-07 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1442', N'2316', N'2012', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1443', N'2320', N'2012', N'2012-08-22 00:00:00.000', N'2012-09-04 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1444', N'2321', N'2012', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1445', N'2330', N'2012', N'2012-08-22 00:00:00.000', N'2012-09-03 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1446', N'1771', N'2012', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1447', N'754', N'2012', N'2012-08-22 00:00:00.000', N'2012-09-07 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1448', N'2132', N'2012', N'2012-08-22 00:00:00.000', N'2012-08-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1449', N'746', N'2012', N'2012-08-22 00:00:00.000', N'2012-08-31 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1450', N'2322', N'2012', N'2012-08-25 00:00:00.000', N'2012-08-29 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1451', N'780', N'2012', N'2012-08-27 00:00:00.000', N'2012-08-30 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1452', N'769', N'2012', N'2012-08-27 00:00:00.000', N'2012-08-31 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1453', N'906', N'2012', N'2012-08-31 00:00:00.000', N'2012-08-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1454', N'2328', N'2012', N'2012-09-04 00:00:00.000', N'2012-09-17 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1455', N'2200', N'2012', N'2012-09-04 00:00:00.000', N'2012-09-14 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1456', N'761', N'2012', N'2012-09-05 00:00:00.000', N'2012-09-14 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1457', N'2340', N'2012', N'2012-09-10 00:00:00.000', N'2012-09-12 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1458', N'2338', N'2012', N'2012-09-11 00:00:00.000', N'2012-09-14 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1459', N'2332', N'2012', N'2012-10-08 00:00:00.000', N'2012-10-11 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1460', N'766', N'2012', N'2012-10-08 00:00:00.000', N'2012-10-12 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1461', N'2243', N'2012', N'2012-10-17 00:00:00.000', N'2012-10-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1462', N'2335', N'2012', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1463', N'2349', N'2012', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1464', N'745', N'2012', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1465', N'741', N'2012', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1466', N'2200', N'2012', N'2012-10-22 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1467', N'754', N'2012', N'2012-10-23 00:00:00.000', N'2012-10-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1468', N'772', N'2012', N'2012-11-25 00:00:00.000', N'2012-12-04 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1469', N'2241', N'2012', N'2012-12-17 00:00:00.000', N'2012-12-28 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1470', N'769', N'2012', N'2012-12-24 00:00:00.000', N'2012-12-28 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1471', N'2303', N'2012', N'2013-01-29 00:00:00.000', N'2013-01-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1472', N'2298', N'2012', N'2013-01-31 00:00:00.000', N'2013-01-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1473', N'762', N'2012', N'2013-02-01 00:00:00.000', N'2013-02-05 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1474', N'2303', N'2012', N'2013-02-25 00:00:00.000', N'2013-03-01 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1475', N'762', N'2012', N'2013-03-10 00:00:00.000', N'2013-03-14 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1476', N'2223', N'2012', N'2013-03-11 00:00:00.000', N'2013-03-14 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1477', N'2132', N'2012', N'2013-03-15 00:00:00.000', N'2013-03-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1478', N'745', N'2012', N'2013-03-18 00:00:00.000', N'2013-03-25 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1479', N'2321', N'2012', N'2013-03-19 00:00:00.000', N'2013-03-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1480', N'2320', N'2012', N'2013-04-09 00:00:00.000', N'2013-04-12 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1481', N'1771', N'2012', N'2013-04-22 00:00:00.000', N'2013-04-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1482', N'2204', N'2012', N'2013-04-22 00:00:00.000', N'2013-05-03 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1483', N'779', N'2012', N'2013-05-06 00:00:00.000', N'2013-05-17 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1484', N'2298', N'2012', N'2013-05-07 00:00:00.000', N'2013-05-08 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1485', N'2203', N'2012', N'2013-05-15 00:00:00.000', N'2015-03-17 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1486', N'766', N'2012', N'2013-10-01 00:00:00.000', N'2013-10-01 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1487', N'2350', N'2012', N'2013-06-06 00:00:00.000', N'2013-06-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1488', N'2321', N'2012', N'2013-06-11 00:00:00.000', N'2013-06-17 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1489', N'906', N'2012', N'2013-06-14 00:00:00.000', N'2013-06-21 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1490', N'756', N'2012', N'2013-06-24 00:00:00.000', N'2013-06-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1491', N'756', N'2012', N'2013-07-01 00:00:00.000', N'2013-07-19 00:00:00.000', N'1', null, N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1492', N'2243', N'2012', N'2013-07-09 00:00:00.000', N'2013-07-19 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1493', N'914', N'2012', N'2013-07-15 00:00:00.000', N'2013-07-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1494', N'915', N'2012', N'2013-07-15 00:00:00.000', N'2013-07-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1495', N'2340', N'2012', N'2013-08-12 00:00:00.000', N'2013-08-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1496', N'2335', N'2012', N'2013-08-12 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1497', N'2199', N'2012', N'2013-08-12 00:00:00.000', N'2013-08-27 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1498', N'746', N'2012', N'2013-08-12 00:00:00.000', N'2013-08-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1499', N'2115', N'2012', N'2013-08-13 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1500', N'2322', N'2012', N'2013-08-15 00:00:00.000', N'2013-08-29 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1501', N'2350', N'2012', N'2013-08-22 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1502', N'745', N'2012', N'2013-08-23 00:00:00.000', N'2013-08-30 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1503', N'783', N'2012', N'2013-08-26 00:00:00.000', N'2013-09-10 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1504', N'2194', N'2012', N'2013-08-28 00:00:00.000', N'2013-08-31 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1505', N'2316', N'2012', N'2013-09-09 00:00:00.000', N'2013-09-20 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1506', N'769', N'2012', N'2013-09-09 00:00:00.000', N'2013-09-20 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1507', N'2299', N'2010', N'2015-06-15 00:00:00.000', N'2015-06-17 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1508', N'2377', N'2012', N'2013-09-26 00:00:00.000', N'2013-10-11 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1509', N'2132', N'2012', N'2013-10-21 00:00:00.000', N'2013-11-01 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1510', N'756', N'2012', N'2013-11-25 00:00:00.000', N'2013-11-26 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1511', N'2330', N'2012', N'2013-11-26 00:00:00.000', N'2013-11-29 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1512', N'2196', N'2012', N'2013-12-09 00:00:00.000', N'2013-12-19 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1513', N'2282', N'2012', N'2013-12-11 00:00:00.000', N'2013-12-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1514', N'745', N'2012', N'2014-02-24 00:00:00.000', N'2014-02-27 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1515', N'772', N'2012', N'2014-03-08 00:00:00.000', N'2014-03-12 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1516', N'2198', N'2012', N'2014-03-26 00:00:00.000', N'2014-03-28 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1517', N'2200', N'2012', N'2014-04-21 00:00:00.000', N'2014-04-30 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1518', N'2349', N'2012', N'2014-05-02 00:00:00.000', N'2014-05-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1519', N'2282', N'2012', N'2014-06-30 00:00:00.000', N'2014-07-14 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1520', N'1082', N'2012', N'2014-06-30 00:00:00.000', N'2014-07-11 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1521', N'1771', N'2012', N'2014-07-14 00:00:00.000', N'2014-07-24 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1522', N'1082', N'2012', N'2014-07-16 00:00:00.000', N'2014-07-18 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1523', N'2349', N'2012', N'2014-07-31 00:00:00.000', N'2014-08-12 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1524', N'2194', N'2012', N'2014-08-18 00:00:00.000', N'2014-08-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1525', N'2342', N'2012', N'2012-08-22 00:00:00.000', N'2012-09-06 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1526', N'908', N'2012', N'2014-08-27 00:00:00.000', N'2014-08-29 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1527', N'741', N'2012', N'2014-09-01 00:00:00.000', N'2014-09-08 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1528', N'2350', N'2012', N'2014-09-15 00:00:00.000', N'2014-09-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1529', N'2343', N'2012', N'2014-10-20 00:00:00.000', N'2014-10-24 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1530', N'762', N'2012', N'2014-11-06 00:00:00.000', N'2014-11-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1531', N'2328', N'2012', N'2014-12-10 00:00:00.000', N'2014-12-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1532', N'2343', N'2012', N'2015-01-26 00:00:00.000', N'2015-01-26 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1533', N'762', N'2012', N'2015-02-13 00:00:00.000', N'2015-02-13 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1534', N'2299', N'2014', N'2015-07-30 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1535', N'2343', N'2012', N'2015-04-16 00:00:00.000', N'2015-04-17 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1536', N'762', N'2012', N'2015-04-27 00:00:00.000', N'2015-04-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1537', N'762', N'2012', N'2015-04-30 00:00:00.000', N'2015-04-30 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1538', N'762', N'2012', N'2015-07-06 00:00:00.000', N'2015-07-10 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1539', N'915', N'2012', N'2015-08-10 00:00:00.000', N'2015-08-12 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1540', N'780', N'2012', N'2015-08-10 00:00:00.000', N'2015-08-27 00:00:00.000', N'1', null, N'16');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1541', N'2343', N'2012', N'2015-08-18 00:00:00.000', N'2015-08-22 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1542', N'914', N'2012', N'2015-08-21 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1543', N'762', N'2012', N'2015-09-17 00:00:00.000', N'2015-09-18 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1544', N'2223', N'2012', N'2015-09-28 00:00:00.000', N'2015-09-28 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1545', N'2298', N'2012', N'2015-10-05 00:00:00.000', N'2015-10-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1546', N'2298', N'2012', N'2015-10-16 00:00:00.000', N'2015-10-16 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1547', N'914', N'2012', N'2015-11-25 00:00:00.000', N'2015-11-26 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1548', N'2298', N'2012', N'2015-11-26 00:00:00.000', N'2015-11-27 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1549', N'2223', N'2012', N'2016-01-04 00:00:00.000', N'2016-01-08 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1550', N'2198', N'2012', N'2016-01-05 00:00:00.000', N'2016-01-16 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1551', N'2223', N'2012', N'2016-01-13 00:00:00.000', N'2016-01-16 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1552', N'2298', N'2012', N'2016-01-15 00:00:00.000', N'2016-01-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1553', N'2298', N'2012', N'2016-02-16 00:00:00.000', N'2016-02-19 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1554', N'2204', N'2012', N'2016-04-18 00:00:00.000', N'2016-04-21 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1555', N'2298', N'2012', N'2016-04-21 00:00:00.000', N'2016-04-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1556', N'2241', N'2012', N'2016-04-27 00:00:00.000', N'2016-04-29 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1557', N'2298', N'2012', N'2016-05-02 00:00:00.000', N'2016-05-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1558', N'2193', N'2013', N'2013-08-29 00:00:00.000', N'2013-09-13 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1559', N'2330', N'2013', N'2012-09-10 00:00:00.000', N'2012-09-12 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1560', N'2359', N'2013', N'2013-01-07 00:00:00.000', N'2013-01-10 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1561', N'783', N'2013', N'2013-01-14 00:00:00.000', N'2013-01-18 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1562', N'753', N'2013', N'2013-01-28 00:00:00.000', N'2013-02-01 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1563', N'761', N'2013', N'2013-01-28 00:00:00.000', N'2013-02-01 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1564', N'2115', N'2013', N'2013-02-05 00:00:00.000', N'2013-02-08 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1565', N'2321', N'2013', N'2013-03-04 00:00:00.000', N'2013-03-04 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1566', N'2357', N'2013', N'2013-03-07 00:00:00.000', N'2013-03-07 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1567', N'746', N'2013', N'2013-03-25 00:00:00.000', N'2013-03-29 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1568', N'754', N'2013', N'2013-04-15 00:00:00.000', N'2013-04-19 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1569', N'2332', N'2013', N'2013-04-22 00:00:00.000', N'2013-04-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1570', N'2200', N'2013', N'2013-04-22 00:00:00.000', N'2013-04-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1571', N'769', N'2013', N'2013-04-29 00:00:00.000', N'2013-05-03 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1572', N'2132', N'2013', N'2013-05-02 00:00:00.000', N'2013-05-17 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1573', N'741', N'2013', N'2013-05-02 00:00:00.000', N'2013-05-03 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1574', N'2332', N'2013', N'2013-05-09 00:00:00.000', N'2013-05-10 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1575', N'2316', N'2013', N'2013-05-15 00:00:00.000', N'2013-05-17 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1576', N'1771', N'2013', N'2013-06-03 00:00:00.000', N'2013-06-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1577', N'2357', N'2013', N'2013-06-06 00:00:00.000', N'2013-06-07 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1578', N'741', N'2013', N'2013-06-17 00:00:00.000', N'2013-06-21 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1579', N'2321', N'2013', N'2013-06-18 00:00:00.000', N'2013-06-28 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1580', N'906', N'2013', N'2013-06-22 00:00:00.000', N'2013-07-02 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1581', N'2303', N'2013', N'2013-06-24 00:00:00.000', N'2013-06-28 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1582', N'2340', N'2013', N'2013-07-01 00:00:00.000', N'2013-07-12 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1583', N'761', N'2013', N'2013-07-02 00:00:00.000', N'2013-07-12 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1584', N'753', N'2013', N'2013-07-09 00:00:00.000', N'2013-07-25 00:00:00.000', N'1', null, N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1585', N'2332', N'2013', N'2013-07-29 00:00:00.000', N'2013-08-13 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1586', N'2223', N'2013', N'2013-07-29 00:00:00.000', N'2013-08-16 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1587', N'761', N'2013', N'2013-08-02 00:00:00.000', N'2013-08-07 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1588', N'2320', N'2013', N'2013-08-12 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1589', N'2349', N'2013', N'2013-08-12 00:00:00.000', N'2013-08-15 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1590', N'2196', N'2013', N'2013-08-12 00:00:00.000', N'2013-08-15 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1591', N'741', N'2013', N'2013-08-12 00:00:00.000', N'2013-08-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1592', N'772', N'2013', N'2013-08-12 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1593', N'2342', N'2013', N'2013-08-19 00:00:00.000', N'2013-08-29 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1594', N'769', N'2013', N'2013-08-19 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1595', N'762', N'2013', N'2013-08-21 00:00:00.000', N'2013-08-29 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1596', N'2312', N'2013', N'2013-08-23 00:00:00.000', N'2013-09-16 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1597', N'2340', N'2013', N'2013-08-23 00:00:00.000', N'2013-08-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1598', N'2273', N'2013', N'2013-08-26 00:00:00.000', N'2013-09-06 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1599', N'2328', N'2013', N'2013-08-26 00:00:00.000', N'2013-09-06 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1600', N'2330', N'2013', N'2013-08-26 00:00:00.000', N'2013-09-06 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1601', N'2338', N'2013', N'2013-08-26 00:00:00.000', N'2013-09-11 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1602', N'2241', N'2013', N'2013-08-26 00:00:00.000', N'2013-09-06 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1603', N'2199', N'2013', N'2013-08-28 00:00:00.000', N'2013-08-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1604', N'2193', N'2014', N'2014-06-16 00:00:00.000', N'2014-06-20 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1605', N'1082', N'2013', N'2013-09-02 00:00:00.000', N'2013-09-06 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1606', N'2357', N'2013', N'2013-09-09 00:00:00.000', N'2013-09-20 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1607', N'2298', N'2013', N'2013-09-30 00:00:00.000', N'2013-10-03 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1608', N'779', N'2013', N'2013-09-30 00:00:00.000', N'2013-10-11 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1609', N'766', N'2013', N'2013-06-05 00:00:00.000', N'2013-06-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1610', N'766', N'2013', N'2013-10-02 00:00:00.000', N'2013-10-25 00:00:00.000', N'1', null, N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1611', N'754', N'2013', N'2013-10-07 00:00:00.000', N'2013-10-11 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1612', N'2200', N'2013', N'2013-10-21 00:00:00.000', N'2013-10-25 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1613', N'2363', N'2013', N'2013-10-22 00:00:00.000', N'2013-11-14 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1614', N'2316', N'2013', N'2013-11-04 00:00:00.000', N'2013-11-11 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1615', N'2273', N'2013', N'2013-11-14 00:00:00.000', N'2013-11-18 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1616', N'906', N'2013', N'2013-11-19 00:00:00.000', N'2013-11-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1617', N'2321', N'2013', N'2013-11-29 00:00:00.000', N'2013-11-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1618', N'769', N'2013', N'2013-12-02 00:00:00.000', N'2013-12-07 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1619', N'908', N'2013', N'2013-12-09 00:00:00.000', N'2013-12-13 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1620', N'2115', N'2013', N'2014-02-05 00:00:00.000', N'2014-02-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1621', N'2316', N'2013', N'2014-02-22 00:00:00.000', N'2014-02-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1622', N'2303', N'2013', N'2014-02-24 00:00:00.000', N'2014-03-27 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1623', N'772', N'2013', N'2014-02-26 00:00:00.000', N'2014-03-07 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1624', N'2377', N'2013', N'2014-03-03 00:00:00.000', N'2014-03-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1625', N'745', N'2013', N'2014-03-17 00:00:00.000', N'2014-03-25 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1626', N'2321', N'2013', N'2014-04-24 00:00:00.000', N'2014-04-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1627', N'756', N'2013', N'2014-04-24 00:00:00.000', N'2014-04-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1628', N'2362', N'2013', N'2014-05-02 00:00:00.000', N'2015-05-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1629', N'1771', N'2013', N'2014-05-02 00:00:00.000', N'2014-05-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1630', N'769', N'2013', N'2014-05-12 00:00:00.000', N'2014-05-16 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1631', N'908', N'2013', N'2014-05-15 00:00:00.000', N'2014-05-30 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1632', N'2335', N'2013', N'2014-05-20 00:00:00.000', N'2014-05-23 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1633', N'2322', N'2013', N'2014-06-18 00:00:00.000', N'2014-06-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1634', N'745', N'2013', N'2014-06-30 00:00:00.000', N'2014-07-11 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1635', N'783', N'2013', N'2014-06-30 00:00:00.000', N'2014-07-04 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1636', N'2330', N'2013', N'2014-07-09 00:00:00.000', N'2014-07-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1637', N'2282', N'2013', N'2014-07-15 00:00:00.000', N'2014-07-25 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1638', N'2359', N'2013', N'2014-07-31 00:00:00.000', N'2014-08-11 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1639', N'2342', N'2013', N'2014-07-31 00:00:00.000', N'2014-08-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1640', N'2377', N'2013', N'2014-07-31 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1641', N'914', N'2013', N'2014-07-31 00:00:00.000', N'2014-08-15 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1642', N'915', N'2013', N'2014-07-31 00:00:00.000', N'2014-08-15 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1643', N'754', N'2013', N'2014-07-31 00:00:00.000', N'2014-08-11 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1644', N'2241', N'2013', N'2014-08-05 00:00:00.000', N'2014-08-08 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1645', N'756', N'2013', N'2014-08-06 00:00:00.000', N'2014-08-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1646', N'2299', N'2009', N'2016-04-25 00:00:00.000', N'2016-04-25 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1647', N'746', N'2013', N'2014-08-11 00:00:00.000', N'2014-08-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1648', N'756', N'2013', N'2014-08-18 00:00:00.000', N'2014-08-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1649', N'2199', N'2013', N'2014-08-18 00:00:00.000', N'2014-08-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1650', N'2320', N'2013', N'2014-08-25 00:00:00.000', N'2014-08-27 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1651', N'2322', N'2013', N'2014-08-25 00:00:00.000', N'2014-09-09 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1652', N'783', N'2013', N'2014-08-25 00:00:00.000', N'2014-09-05 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1653', N'2328', N'2013', N'2014-09-01 00:00:00.000', N'2014-09-03 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1654', N'2303', N'2013', N'2014-09-01 00:00:00.000', N'2014-09-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1655', N'741', N'2013', N'2014-09-10 00:00:00.000', N'2014-09-12 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1656', N'2350', N'2013', N'2014-09-27 00:00:00.000', N'2014-10-11 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1657', N'2350', N'2013', N'2014-10-17 00:00:00.000', N'2014-10-17 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1658', N'779', N'2014', N'2014-06-09 00:00:00.000', N'2014-06-20 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1659', N'762', N'2013', N'2014-10-22 00:00:00.000', N'2014-10-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1660', N'745', N'2013', N'2014-11-04 00:00:00.000', N'2014-11-04 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1661', N'2377', N'2013', N'2014-12-03 00:00:00.000', N'2014-12-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1662', N'2328', N'2013', N'2014-12-12 00:00:00.000', N'2014-12-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1663', N'2196', N'2013', N'2014-12-25 00:00:00.000', N'2015-01-06 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1664', N'762', N'2013', N'2014-12-31 00:00:00.000', N'2014-12-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1665', N'2335', N'2013', N'2015-01-29 00:00:00.000', N'2015-01-30 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1666', N'1082', N'2013', N'2015-02-04 00:00:00.000', N'2015-02-04 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1667', N'756', N'2013', N'2015-02-10 00:00:00.000', N'2015-02-13 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1668', N'2364', N'2013', N'2015-02-19 00:00:00.000', N'2015-05-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1669', N'2362', N'2013', N'2015-03-03 00:00:00.000', N'2015-03-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1670', N'746', N'2013', N'2015-03-31 00:00:00.000', N'2015-04-03 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1671', N'1082', N'2013', N'2015-04-06 00:00:00.000', N'2015-04-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1672', N'2364', N'2013', N'2015-04-09 00:00:00.000', N'2015-04-10 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1673', N'2335', N'2013', N'2015-04-22 00:00:00.000', N'2015-04-24 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1674', N'1082', N'2013', N'2015-04-29 00:00:00.000', N'2015-04-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1675', N'1082', N'2013', N'2015-05-25 00:00:00.000', N'2015-05-29 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1676', N'2115', N'2013', N'2015-06-01 00:00:00.000', N'2015-06-06 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1677', N'2335', N'2013', N'2015-06-15 00:00:00.000', N'2015-06-16 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1678', N'2282', N'2013', N'2015-06-22 00:00:00.000', N'2015-06-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1679', N'2377', N'2013', N'2015-06-30 00:00:00.000', N'2015-07-10 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1680', N'2243', N'2013', N'2015-07-14 00:00:00.000', N'2015-07-27 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1681', N'2204', N'2013', N'2015-07-20 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1682', N'2362', N'2013', N'2015-07-21 00:00:00.000', N'2015-08-05 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1683', N'2115', N'2013', N'2015-07-22 00:00:00.000', N'2015-07-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1684', N'2364', N'2013', N'2015-08-06 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1685', N'908', N'2013', N'2015-08-10 00:00:00.000', N'2015-08-11 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1686', N'915', N'2013', N'2015-08-13 00:00:00.000', N'2015-08-19 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1687', N'2343', N'2013', N'2015-08-24 00:00:00.000', N'2015-09-08 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1688', N'2115', N'2013', N'2015-08-24 00:00:00.000', N'2015-08-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1689', N'780', N'2013', N'2015-08-28 00:00:00.000', N'2015-08-28 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1690', N'2364', N'2013', N'2015-08-31 00:00:00.000', N'2015-09-08 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1691', N'1771', N'2013', N'2015-09-07 00:00:00.000', N'2015-09-15 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1692', N'2194', N'2013', N'2015-09-07 00:00:00.000', N'2015-09-22 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1693', N'1082', N'2013', N'2015-09-08 00:00:00.000', N'2015-09-10 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1694', N'2335', N'2013', N'2015-09-11 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1695', N'1082', N'2013', N'2015-09-28 00:00:00.000', N'2015-10-01 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1696', N'2200', N'2013', N'2015-09-28 00:00:00.000', N'2015-10-02 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1697', N'762', N'2013', N'2015-10-02 00:00:00.000', N'2015-10-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1698', N'756', N'2013', N'2015-10-14 00:00:00.000', N'2015-10-15 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1699', N'2204', N'2013', N'2015-10-21 00:00:00.000', N'2015-10-23 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1700', N'762', N'2013', N'2015-11-02 00:00:00.000', N'2015-11-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1701', N'762', N'2013', N'2015-11-09 00:00:00.000', N'2015-11-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1702', N'2198', N'2013', N'2016-01-18 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1703', N'2115', N'2013', N'2016-02-03 00:00:00.000', N'2016-02-04 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1704', N'2362', N'2013', N'2016-02-23 00:00:00.000', N'2016-02-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1705', N'762', N'2013', N'2016-03-03 00:00:00.000', N'2016-03-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1706', N'2243', N'2013', N'2016-03-23 00:00:00.000', N'2016-03-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1707', N'2335', N'2013', N'2016-04-11 00:00:00.000', N'2016-04-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1708', N'779', N'2014', N'2014-10-13 00:00:00.000', N'2014-10-18 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1709', N'2298', N'2013', N'2016-05-03 00:00:00.000', N'2016-05-06 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1710', N'2204', N'2013', N'2016-04-22 00:00:00.000', N'2016-04-28 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1711', N'762', N'2013', N'2016-05-20 00:00:00.000', N'2016-05-25 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1712', N'2298', N'2013', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1713', N'2340', N'2013', N'2016-05-23 00:00:00.000', N'2016-05-24 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1714', N'2298', N'2013', N'2016-06-01 00:00:00.000', N'2016-06-03 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1715', N'779', N'2013', N'2014-10-20 00:00:00.000', N'2014-10-24 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1716', N'762', N'2013', N'2016-06-22 00:00:00.000', N'2016-06-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1717', N'914', N'2013', N'2016-07-11 00:00:00.000', N'2016-07-12 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1718', N'2298', N'2013', N'2016-07-11 00:00:00.000', N'2016-07-13 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1719', N'2299', N'2009', N'2016-08-09 00:00:00.000', N'2016-08-11 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1720', N'2335', N'2013', N'2016-08-15 00:00:00.000', N'2016-08-16 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1721', N'2349', N'2013', N'2016-08-15 00:00:00.000', N'2016-08-25 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1722', N'2243', N'2013', N'2016-08-29 00:00:00.000', N'2016-08-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1723', N'2193', N'2014', N'2014-07-17 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1724', N'754', N'2014', N'2014-01-07 00:00:00.000', N'2014-01-10 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1725', N'2321', N'2014', N'2014-01-24 00:00:00.000', N'2014-01-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1726', N'2312', N'2014', N'2014-01-28 00:00:00.000', N'2014-01-31 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1727', N'783', N'2014', N'2014-02-11 00:00:00.000', N'2014-02-15 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1728', N'2132', N'2014', N'2014-02-17 00:00:00.000', N'2014-02-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1729', N'2332', N'2014', N'2014-03-20 00:00:00.000', N'2014-03-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1730', N'2273', N'2014', N'2014-03-26 00:00:00.000', N'2014-03-28 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1731', N'2196', N'2014', N'2014-05-20 00:00:00.000', N'2014-06-06 00:00:00.000', N'1', null, N'16');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1732', N'2132', N'2014', N'2014-05-22 00:00:00.000', N'2014-05-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1733', N'2372', N'2014', N'2014-06-06 00:00:00.000', N'2014-06-17 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1734', N'2377', N'2014', N'2014-06-09 00:00:00.000', N'2014-06-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1735', N'779', N'2014', N'2015-02-25 00:00:00.000', N'2015-02-27 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1736', N'2320', N'2014', N'2014-06-16 00:00:00.000', N'2014-06-27 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1737', N'2193', N'2015', N'2015-07-20 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1738', N'761', N'2014', N'2014-06-18 00:00:00.000', N'2014-06-20 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1739', N'2359', N'2014', N'2014-06-20 00:00:00.000', N'2014-06-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1740', N'772', N'2014', N'2014-06-24 00:00:00.000', N'2014-06-26 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1741', N'2357', N'2014', N'2014-06-25 00:00:00.000', N'2014-06-27 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1742', N'2369', N'2014', N'2014-06-30 00:00:00.000', N'2014-07-11 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1743', N'2199', N'2014', N'2014-06-30 00:00:00.000', N'2014-07-10 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1744', N'753', N'2014', N'2014-07-03 00:00:00.000', N'2014-07-25 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1745', N'761', N'2014', N'2014-07-07 00:00:00.000', N'2014-07-18 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1746', N'2200', N'2014', N'2014-07-14 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1747', N'766', N'2014', N'2014-07-14 00:00:00.000', N'2014-07-25 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1748', N'2193', N'2015', N'2016-02-01 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1749', N'908', N'2014', N'2014-07-22 00:00:00.000', N'2014-07-25 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1750', N'1771', N'2014', N'2014-07-25 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1751', N'2312', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-12 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1752', N'2273', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1753', N'2321', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1754', N'2196', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1755', N'741', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1756', N'906', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-12 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1757', N'2243', N'2014', N'2014-07-31 00:00:00.000', N'2014-08-08 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1758', N'2381', N'2014', N'2014-08-04 00:00:00.000', N'2014-08-07 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1759', N'2373', N'2014', N'2014-08-04 00:00:00.000', N'2014-08-15 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1760', N'2338', N'2014', N'2014-08-04 00:00:00.000', N'2014-08-19 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1761', N'2342', N'2014', N'2014-08-05 00:00:00.000', N'2014-08-08 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1762', N'2273', N'2014', N'2014-08-11 00:00:00.000', N'2014-08-27 00:00:00.000', N'1', null, N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1763', N'2316', N'2014', N'2014-08-11 00:00:00.000', N'2014-08-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1764', N'2357', N'2014', N'2014-08-13 00:00:00.000', N'2014-08-25 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1765', N'769', N'2014', N'2014-08-18 00:00:00.000', N'2014-08-29 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1766', N'761', N'2014', N'2014-08-20 00:00:00.000', N'2014-08-26 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1767', N'2132', N'2014', N'2014-08-21 00:00:00.000', N'2014-09-04 00:00:00.000', N'1', null, N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1768', N'772', N'2014', N'2014-08-25 00:00:00.000', N'2014-09-10 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1769', N'2363', N'2014', N'2014-08-27 00:00:00.000', N'2014-09-19 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1770', N'2320', N'2014', N'2014-08-28 00:00:00.000', N'2014-08-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1771', N'2332', N'2014', N'2014-08-28 00:00:00.000', N'2014-09-09 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1772', N'908', N'2014', N'2014-09-01 00:00:00.000', N'2014-09-05 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1773', N'2328', N'2014', N'2014-09-04 00:00:00.000', N'2014-09-19 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1774', N'2115', N'2014', N'2014-09-07 00:00:00.000', N'2014-09-19 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1775', N'2340', N'2014', N'2014-09-10 00:00:00.000', N'2014-09-12 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1776', N'2369', N'2014', N'2014-09-15 00:00:00.000', N'2014-09-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1777', N'2332', N'2014', N'2014-10-08 00:00:00.000', N'2014-10-10 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1778', N'2335', N'2014', N'2014-10-08 00:00:00.000', N'2014-10-10 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1779', N'1082', N'2014', N'2014-10-08 00:00:00.000', N'2014-10-17 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1780', N'754', N'2014', N'2014-10-08 00:00:00.000', N'2014-10-10 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1781', N'2365', N'2014', N'2014-10-13 00:00:00.000', N'2014-10-24 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1782', N'779', N'2015', N'2015-07-28 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1783', N'2330', N'2014', N'2014-10-20 00:00:00.000', N'2014-10-31 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1784', N'741', N'2014', N'2014-10-20 00:00:00.000', N'2014-10-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1785', N'766', N'2014', N'2014-10-20 00:00:00.000', N'2014-10-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1786', N'2359', N'2014', N'2014-10-24 00:00:00.000', N'2014-10-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1787', N'2349', N'2014', N'2014-10-24 00:00:00.000', N'2014-10-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1788', N'2377', N'2014', N'2014-10-27 00:00:00.000', N'2014-10-28 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1789', N'745', N'2014', N'2014-10-27 00:00:00.000', N'2014-10-08 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1790', N'908', N'2014', N'2014-11-16 00:00:00.000', N'2014-11-07 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1791', N'2340', N'2014', N'2014-11-20 00:00:00.000', N'2014-11-25 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1792', N'2370', N'2014', N'2014-11-24 00:00:00.000', N'2014-11-28 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1793', N'769', N'2014', N'2014-12-05 00:00:00.000', N'2014-12-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1794', N'2330', N'2014', N'2014-12-12 00:00:00.000', N'2014-12-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1795', N'2335', N'2014', N'2014-12-12 00:00:00.000', N'2014-12-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1796', N'2377', N'2014', N'2014-12-19 00:00:00.000', N'2014-12-19 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1797', N'2316', N'2014', N'2014-12-22 00:00:00.000', N'2014-12-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1798', N'2303', N'2014', N'2014-12-22 00:00:00.000', N'2014-12-26 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1799', N'906', N'2014', N'2014-12-25 00:00:00.000', N'2014-01-05 00:00:00.000', N'1', null, N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1800', N'754', N'2014', N'2015-01-15 00:00:00.000', N'2015-01-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1801', N'1082', N'2014', N'2015-01-16 00:00:00.000', N'2015-01-16 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1802', N'2330', N'2014', N'2015-01-21 00:00:00.000', N'2015-01-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1803', N'2312', N'2014', N'2015-01-26 00:00:00.000', N'2015-01-30 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1804', N'2381', N'2014', N'2015-01-26 00:00:00.000', N'2015-01-30 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1805', N'908', N'2014', N'2015-01-29 00:00:00.000', N'2015-01-30 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1806', N'754', N'2014', N'2015-01-30 00:00:00.000', N'2015-01-30 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1807', N'741', N'2014', N'2015-02-02 00:00:00.000', N'2015-02-06 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1808', N'754', N'2014', N'2015-02-03 00:00:00.000', N'2015-02-06 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1809', N'2115', N'2014', N'2015-02-04 00:00:00.000', N'2015-02-06 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1810', N'1771', N'2014', N'2015-02-09 00:00:00.000', N'2015-02-24 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1811', N'766', N'2014', N'2015-02-09 00:00:00.000', N'2015-02-13 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1812', N'2330', N'2014', N'2015-02-13 00:00:00.000', N'2015-02-13 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1813', N'779', N'2013', N'2016-04-28 00:00:00.000', N'2016-04-29 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1814', N'2349', N'2014', N'2015-03-13 00:00:00.000', N'2015-03-13 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1815', N'908', N'2014', N'2015-03-17 00:00:00.000', N'2015-03-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1816', N'2322', N'2014', N'2015-04-10 00:00:00.000', N'2015-04-10 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1817', N'745', N'2014', N'2015-04-13 00:00:00.000', N'2015-04-24 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1818', N'754', N'2014', N'2015-04-15 00:00:00.000', N'2015-04-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1819', N'2359', N'2014', N'2015-04-17 00:00:00.000', N'2015-04-17 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1820', N'766', N'2014', N'2015-04-20 00:00:00.000', N'2015-04-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1821', N'2342', N'2014', N'2015-04-24 00:00:00.000', N'2015-04-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1822', N'754', N'2014', N'2015-04-24 00:00:00.000', N'2015-04-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1823', N'783', N'2014', N'2015-04-27 00:00:00.000', N'2015-04-30 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1824', N'1771', N'2014', N'2015-05-07 00:00:00.000', N'2015-05-08 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1825', N'754', N'2014', N'2015-05-22 00:00:00.000', N'2015-05-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1826', N'783', N'2014', N'2015-05-22 00:00:00.000', N'2015-05-29 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1827', N'769', N'2014', N'2015-05-26 00:00:00.000', N'2016-05-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1828', N'741', N'2014', N'2015-05-26 00:00:00.000', N'2015-05-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1829', N'2322', N'2014', N'2015-05-29 00:00:00.000', N'2015-06-02 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1830', N'741', N'2014', N'2015-06-01 00:00:00.000', N'2015-06-01 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1831', N'746', N'2014', N'2015-06-01 00:00:00.000', N'2015-06-05 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1832', N'741', N'2014', N'2015-06-08 00:00:00.000', N'2015-06-12 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1833', N'2369', N'2014', N'2015-06-12 00:00:00.000', N'2015-06-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1834', N'2321', N'2014', N'2015-06-15 00:00:00.000', N'2015-06-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1835', N'2322', N'2014', N'2015-06-15 00:00:00.000', N'2015-06-16 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1836', N'754', N'2014', N'2015-06-16 00:00:00.000', N'2015-06-16 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1837', N'783', N'2014', N'2015-06-19 00:00:00.000', N'2015-06-23 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1838', N'2282', N'2014', N'2015-06-26 00:00:00.000', N'2015-07-16 00:00:00.000', N'1', null, N'18');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1839', N'2303', N'2014', N'2015-06-29 00:00:00.000', N'2015-07-10 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1840', N'769', N'2014', N'2015-07-01 00:00:00.000', N'2015-07-01 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1841', N'746', N'2014', N'2015-07-02 00:00:00.000', N'2015-07-16 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1842', N'754', N'2014', N'2015-07-06 00:00:00.000', N'2015-07-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1843', N'2377', N'2014', N'2015-07-11 00:00:00.000', N'2015-07-15 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1844', N'2370', N'2014', N'2014-07-14 00:00:00.000', N'2014-08-01 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1845', N'2362', N'2014', N'2015-07-20 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1846', N'2322', N'2014', N'2015-07-20 00:00:00.000', N'2015-07-27 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1847', N'2342', N'2014', N'2015-07-20 00:00:00.000', N'2015-07-24 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1848', N'2200', N'2014', N'2015-07-20 00:00:00.000', N'2015-07-24 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1849', N'2241', N'2014', N'2015-07-20 00:00:00.000', N'2016-07-31 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1850', N'2243', N'2014', N'2015-07-28 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1851', N'2299', N'2013', N'2016-08-12 00:00:00.000', N'2016-08-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1852', N'2349', N'2014', N'2015-07-31 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1853', N'2320', N'2014', N'2015-08-03 00:00:00.000', N'2015-08-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1854', N'2374', N'2014', N'2015-08-04 00:00:00.000', N'2015-08-15 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1855', N'2365', N'2014', N'2015-08-05 00:00:00.000', N'2015-08-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1856', N'2373', N'2014', N'2015-08-05 00:00:00.000', N'2015-08-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1857', N'2330', N'2014', N'2015-08-05 00:00:00.000', N'2015-08-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1858', N'2359', N'2014', N'2015-08-10 00:00:00.000', N'2015-08-14 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1859', N'908', N'2014', N'2015-08-12 00:00:00.000', N'2015-08-14 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1860', N'2342', N'2014', N'2015-08-13 00:00:00.000', N'2015-08-14 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1861', N'769', N'2014', N'2015-08-17 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1862', N'915', N'2014', N'2015-08-20 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1863', N'2115', N'2014', N'2015-08-26 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1864', N'2359', N'2014', N'2015-08-31 00:00:00.000', N'2015-09-04 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1865', N'2372', N'2014', N'2015-08-31 00:00:00.000', N'2014-09-03 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1866', N'2335', N'2014', N'2015-08-31 00:00:00.000', N'2015-09-10 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1867', N'2199', N'2014', N'2015-08-31 00:00:00.000', N'2015-09-10 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1868', N'741', N'2014', N'2015-09-01 00:00:00.000', N'2015-09-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1869', N'2343', N'2014', N'2015-09-09 00:00:00.000', N'2015-09-28 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1870', N'2370', N'2014', N'2015-09-09 00:00:00.000', N'2015-09-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1871', N'2373', N'2014', N'2015-09-14 00:00:00.000', N'2015-09-14 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1872', N'2377', N'2014', N'2015-09-14 00:00:00.000', N'2015-09-18 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1873', N'745', N'2014', N'2015-09-28 00:00:00.000', N'2015-10-05 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1874', N'741', N'2014', N'2015-09-28 00:00:00.000', N'2015-09-28 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1875', N'1082', N'2014', N'2015-10-02 00:00:00.000', N'2015-10-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1876', N'2303', N'2014', N'2015-10-23 00:00:00.000', N'2015-10-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1877', N'2342', N'2014', N'2015-11-19 00:00:00.000', N'2015-11-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1878', N'915', N'2014', N'2015-11-25 00:00:00.000', N'2015-11-26 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1879', N'756', N'2014', N'2015-12-03 00:00:00.000', N'2015-12-04 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1880', N'2362', N'2014', N'2015-12-03 00:00:00.000', N'2015-12-04 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1881', N'2377', N'2014', N'2015-12-25 00:00:00.000', N'2015-12-25 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1882', N'769', N'2014', N'2016-01-22 00:00:00.000', N'2016-01-22 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1883', N'2369', N'2014', N'2016-01-25 00:00:00.000', N'2016-01-25 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1884', N'2204', N'2014', N'2016-01-25 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1885', N'915', N'2014', N'2016-01-25 00:00:00.000', N'2016-01-25 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1886', N'2282', N'2014', N'2016-01-27 00:00:00.000', N'2016-01-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1887', N'2381', N'2014', N'2016-01-28 00:00:00.000', N'2016-02-02 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1888', N'756', N'2014', N'2016-02-04 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1889', N'2223', N'2014', N'2016-02-15 00:00:00.000', N'2016-02-18 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1890', N'2359', N'2014', N'2016-02-18 00:00:00.000', N'2016-02-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1891', N'2194', N'2014', N'2016-02-25 00:00:00.000', N'2016-02-25 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1892', N'915', N'2014', N'2016-04-27 00:00:00.000', N'2016-04-28 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1893', N'2303', N'2014', N'2016-05-02 00:00:00.000', N'2016-05-04 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1894', N'754', N'2014', N'2016-05-18 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1895', N'2362', N'2014', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1896', N'1082', N'2014', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1897', N'2340', N'2014', N'2016-05-25 00:00:00.000', N'2016-05-31 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1898', N'746', N'2014', N'2016-05-27 00:00:00.000', N'2016-05-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1899', N'1082', N'2014', N'2016-05-30 00:00:00.000', N'2016-06-03 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1900', N'2198', N'2014', N'2016-05-30 00:00:00.000', N'2016-06-10 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1901', N'2204', N'2014', N'2016-05-05 00:00:00.000', N'2016-05-13 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1902', N'2298', N'2014', N'2016-06-21 00:00:00.000', N'2016-06-24 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1903', N'1082', N'2014', N'2016-06-21 00:00:00.000', N'2016-06-21 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1904', N'915', N'2014', N'2016-07-11 00:00:00.000', N'2016-07-12 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1905', N'756', N'2014', N'2016-07-18 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1906', N'2194', N'2014', N'2016-07-15 00:00:00.000', N'2016-07-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1907', N'746', N'2014', N'2016-07-11 00:00:00.000', N'2016-07-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1908', N'2374', N'2014', N'2016-08-11 00:00:00.000', N'2016-08-13 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1909', N'2282', N'2014', N'2016-08-15 00:00:00.000', N'2016-08-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1910', N'762', N'2014', N'2016-08-15 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1911', N'2373', N'2014', N'2016-08-15 00:00:00.000', N'2016-08-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1912', N'772', N'2014', N'2016-08-15 00:00:00.000', N'2016-08-17 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1913', N'766', N'2014', N'2016-08-15 00:00:00.000', N'2016-08-16 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1914', N'2349', N'2014', N'2016-08-26 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1915', N'2243', N'2014', N'2016-08-31 00:00:00.000', N'2016-09-01 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1916', N'2349', N'2014', N'2016-08-27 00:00:00.000', N'2016-09-08 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1917', N'2193', N'2016', N'2016-06-20 00:00:00.000', N'2016-07-01 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1918', N'1082', N'2014', N'2016-08-29 00:00:00.000', N'2016-08-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1919', N'769', N'2015', N'2015-01-15 00:00:00.000', N'2015-02-06 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1920', N'2196', N'2015', N'2015-01-16 00:00:00.000', N'2015-01-16 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1921', N'2357', N'2015', N'2015-01-23 00:00:00.000', N'2015-01-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1922', N'761', N'2015', N'2015-01-26 00:00:00.000', N'2015-01-30 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1923', N'2312', N'2015', N'2015-01-31 00:00:00.000', N'2015-02-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1924', N'2273', N'2015', N'2015-02-11 00:00:00.000', N'2015-02-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1925', N'906', N'2015', N'2015-02-12 00:00:00.000', N'2015-02-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1926', N'753', N'2015', N'2015-02-13 00:00:00.000', N'2015-02-13 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1927', N'2196', N'2015', N'2015-02-17 00:00:00.000', N'2015-02-17 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1928', N'753', N'2015', N'2015-02-17 00:00:00.000', N'2015-02-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1929', N'2196', N'2015', N'2015-02-26 00:00:00.000', N'2015-03-04 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1930', N'2316', N'2015', N'2015-03-02 00:00:00.000', N'2015-03-03 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1931', N'2132', N'2015', N'2015-03-20 00:00:00.000', N'2015-03-24 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1932', N'761', N'2015', N'2015-03-23 00:00:00.000', N'2015-03-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1933', N'2365', N'2015', N'2015-05-18 00:00:00.000', N'2015-05-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1934', N'2381', N'2015', N'2015-06-15 00:00:00.000', N'2015-06-26 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1935', N'766', N'2015', N'2015-06-15 00:00:00.000', N'2015-07-03 00:00:00.000', N'1', null, N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1936', N'753', N'2015', N'2015-06-18 00:00:00.000', N'2015-07-03 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1937', N'761', N'2015', N'2015-06-26 00:00:00.000', N'2015-06-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1938', N'2273', N'2015', N'2015-07-06 00:00:00.000', N'2015-07-10 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1939', N'761', N'2015', N'2015-07-06 00:00:00.000', N'2015-07-16 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1940', N'906', N'2015', N'2015-07-13 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1941', N'2363', N'2015', N'2015-07-20 00:00:00.000', N'2015-08-11 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1942', N'2374', N'2015', N'2015-07-20 00:00:00.000', N'2015-07-24 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1943', N'2373', N'2015', N'2015-07-20 00:00:00.000', N'2015-08-04 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1944', N'2193', N'2012', N'2016-09-05 00:00:00.000', N'2016-09-07 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1945', N'2357', N'2015', N'2015-07-21 00:00:00.000', N'2015-07-24 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1946', N'2330', N'2015', N'2015-07-23 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1947', N'2369', N'2015', N'2015-07-27 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1948', N'2338', N'2015', N'2015-07-27 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1949', N'2370', N'2015', N'2015-07-28 00:00:00.000', N'2015-08-14 00:00:00.000', N'1', null, N'16');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1950', N'2322', N'2015', N'2015-07-28 00:00:00.000', N'2015-07-31 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1951', N'2388', N'2015', N'2015-08-03 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1952', N'2316', N'2015', N'2015-08-03 00:00:00.000', N'2015-08-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1953', N'772', N'2015', N'2015-08-03 00:00:00.000', N'2015-08-14 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1954', N'2320', N'2015', N'2015-08-04 00:00:00.000', N'2015-08-19 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1955', N'2332', N'2015', N'2015-08-07 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1956', N'906', N'2015', N'2015-08-07 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1957', N'2312', N'2015', N'2015-08-10 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1958', N'2273', N'2015', N'2015-08-10 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1959', N'908', N'2015', N'2015-08-15 00:00:00.000', N'2015-08-21 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1960', N'2357', N'2015', N'2015-08-24 00:00:00.000', N'2015-08-28 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1961', N'2364', N'2015', N'2015-08-27 00:00:00.000', N'2015-08-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1962', N'2328', N'2015', N'2015-08-31 00:00:00.000', N'2015-09-15 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1963', N'2132', N'2015', N'2015-08-31 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1964', N'2196', N'2015', N'2015-09-02 00:00:00.000', N'2015-09-03 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1965', N'2372', N'2015', N'2015-09-04 00:00:00.000', N'2015-09-19 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1966', N'2369', N'2015', N'2015-09-07 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1967', N'2332', N'2015', N'2015-09-07 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1968', N'2364', N'2015', N'2015-09-09 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1969', N'2199', N'2015', N'2015-09-11 00:00:00.000', N'2015-09-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1970', N'1771', N'2015', N'2015-09-16 00:00:00.000', N'2015-09-18 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1971', N'2273', N'2015', N'2015-09-17 00:00:00.000', N'2015-09-18 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1972', N'2321', N'2015', N'2015-09-28 00:00:00.000', N'2015-10-02 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1973', N'2332', N'2015', N'2015-09-28 00:00:00.000', N'2015-09-09 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1974', N'2343', N'2015', N'2015-09-29 00:00:00.000', N'2015-10-15 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1975', N'2388', N'2015', N'2015-10-05 00:00:00.000', N'2015-10-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1976', N'745', N'2015', N'2015-10-06 00:00:00.000', N'2015-10-09 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1977', N'2338', N'2015', N'2015-10-07 00:00:00.000', N'2015-10-09 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1978', N'2330', N'2015', N'2015-10-13 00:00:00.000', N'2015-10-13 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1979', N'741', N'2015', N'2015-10-19 00:00:00.000', N'2015-10-21 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1980', N'2359', N'2015', N'2015-10-21 00:00:00.000', N'2015-10-22 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1981', N'906', N'2015', N'2015-11-06 00:00:00.000', N'2015-11-06 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1982', N'2364', N'2015', N'2015-11-09 00:00:00.000', N'2015-11-10 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1983', N'753', N'2015', N'2015-11-13 00:00:00.000', N'2015-11-13 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1984', N'2370', N'2015', N'2015-12-01 00:00:00.000', N'2015-12-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1985', N'2132', N'2015', N'2015-12-01 00:00:00.000', N'2015-12-04 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1986', N'2364', N'2015', N'2015-12-02 00:00:00.000', N'2015-12-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1987', N'745', N'2015', N'2015-12-11 00:00:00.000', N'2015-12-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1988', N'754', N'2015', N'2015-12-28 00:00:00.000', N'2015-12-31 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1989', N'2364', N'2015', N'2015-12-30 00:00:00.000', N'2015-12-30 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1990', N'2273', N'2015', N'2015-12-31 00:00:00.000', N'2015-12-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1991', N'2199', N'2015', N'2016-01-06 00:00:00.000', N'2016-01-08 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1992', N'2377', N'2015', N'2016-01-15 00:00:00.000', N'2016-01-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1993', N'2369', N'2015', N'2016-01-26 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1994', N'2364', N'2015', N'2016-01-26 00:00:00.000', N'2016-01-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1995', N'2342', N'2015', N'2016-01-29 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1996', N'783', N'2015', N'2016-02-01 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1997', N'2193', N'2013', N'2016-09-08 00:00:00.000', N'2016-09-08 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1998', N'741', N'2015', N'2016-02-03 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'1999', N'2381', N'2015', N'2016-02-03 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2000', N'2115', N'2015', N'2016-02-05 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2001', N'2332', N'2015', N'2016-02-05 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2002', N'2357', N'2015', N'2016-02-05 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2003', N'2364', N'2015', N'2016-02-08 00:00:00.000', N'2016-02-09 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2004', N'906', N'2015', N'2016-02-11 00:00:00.000', N'2016-02-12 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2005', N'2359', N'2015', N'2016-02-12 00:00:00.000', N'2016-02-17 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2006', N'2330', N'2015', N'2016-02-16 00:00:00.000', N'2016-02-16 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2007', N'2359', N'2015', N'2016-02-19 00:00:00.000', N'2016-02-19 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2008', N'2303', N'2015', N'2016-02-23 00:00:00.000', N'2016-02-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2009', N'2322', N'2015', N'2016-02-23 00:00:00.000', N'2016-02-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2010', N'772', N'2015', N'2016-02-26 00:00:00.000', N'2016-02-26 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2011', N'2200', N'2015', N'2016-02-26 00:00:00.000', N'2016-03-02 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2012', N'2316', N'2015', N'2016-02-29 00:00:00.000', N'2016-03-04 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2013', N'2377', N'2015', N'2016-03-09 00:00:00.000', N'2016-03-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2014', N'2196', N'2015', N'2016-02-18 00:00:00.000', N'2016-02-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2015', N'766', N'2015', N'2016-06-22 00:00:00.000', N'2016-06-24 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2016', N'2342', N'2015', N'2016-04-08 00:00:00.000', N'2016-04-08 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2017', N'745', N'2015', N'2016-04-11 00:00:00.000', N'2016-04-28 00:00:00.000', N'1', null, N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2018', N'908', N'2015', N'2016-04-11 00:00:00.000', N'2016-04-15 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2019', N'2364', N'2015', N'2016-04-11 00:00:00.000', N'2016-04-11 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2020', N'2312', N'2015', N'2016-04-25 00:00:00.000', N'2016-04-29 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2021', N'2364', N'2015', N'2016-04-25 00:00:00.000', N'2016-04-25 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2022', N'2303', N'2015', N'2016-05-05 00:00:00.000', N'2016-05-06 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2023', N'2196', N'2015', N'2016-03-15 00:00:00.000', N'2016-03-15 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2024', N'2321', N'2015', N'2016-05-16 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2025', N'2132', N'2015', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2026', N'2364', N'2015', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2027', N'2196', N'2015', N'2016-05-16 00:00:00.000', N'2016-05-25 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2028', N'1771', N'2015', N'2016-05-27 00:00:00.000', N'2016-05-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2029', N'2340', N'2015', N'2016-06-01 00:00:00.000', N'2016-06-03 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2030', N'2321', N'2015', N'2016-06-27 00:00:00.000', N'2016-07-01 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2031', N'2115', N'2015', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2032', N'779', N'2013', N'2016-06-13 00:00:00.000', N'2016-06-14 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2033', N'2282', N'2015', N'2016-06-13 00:00:00.000', N'2016-07-04 00:00:00.000', N'1', null, N'19');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2034', N'2243', N'2015', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2035', N'783', N'2015', N'2016-07-01 00:00:00.000', N'2016-07-01 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2036', N'2316', N'2015', N'2016-06-27 00:00:00.000', N'2016-06-28 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2037', N'2377', N'2015', N'2016-06-18 00:00:00.000', N'2016-06-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2038', N'761', N'2015', N'2016-07-11 00:00:00.000', N'2016-07-13 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2039', N'2377', N'2015', N'2016-07-18 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2040', N'2357', N'2015', N'2016-07-13 00:00:00.000', N'2016-07-15 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2041', N'2362', N'2015', N'2016-07-18 00:00:00.000', N'2016-07-19 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2042', N'2359', N'2015', N'2016-08-09 00:00:00.000', N'2016-08-12 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2043', N'2374', N'2015', N'2016-08-15 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2044', N'2335', N'2015', N'2016-08-17 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2045', N'772', N'2015', N'2016-08-18 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2046', N'756', N'2015', N'2016-08-22 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2047', N'2362', N'2015', N'2016-08-22 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2048', N'2241', N'2015', N'2016-08-29 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2049', N'2243', N'2015', N'2016-09-02 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2050', N'2332', N'2015', N'2016-08-29 00:00:00.000', N'2016-09-03 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2051', N'2199', N'2015', N'2016-01-27 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2052', N'756', N'2015', N'2016-08-27 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2053', N'2349', N'2015', N'2016-09-09 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2054', N'1082', N'2015', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2055', N'1771', N'2015', N'2016-08-29 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2056', N'2377', N'2015', N'2016-08-29 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2057', N'2303', N'2015', N'2016-09-05 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2058', N'783', N'2015', N'2016-08-22 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2059', N'761', N'2016', N'2016-01-25 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2060', N'753', N'2016', N'2016-01-26 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2061', N'2273', N'2016', N'2016-01-29 00:00:00.000', N'2016-01-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2062', N'2273', N'2016', N'2016-02-02 00:00:00.000', N'2016-02-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2063', N'2273', N'2016', N'2016-02-15 00:00:00.000', N'2016-02-16 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2064', N'2320', N'2016', N'2016-02-24 00:00:00.000', N'2016-02-26 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2065', N'2273', N'2016', N'2016-03-02 00:00:00.000', N'2016-03-03 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2066', N'2273', N'2016', N'2016-04-01 00:00:00.000', N'2016-04-01 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2067', N'906', N'2016', N'2016-04-05 00:00:00.000', N'2016-04-08 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2068', N'2381', N'2016', N'2016-05-16 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2069', N'766', N'2016', N'2016-04-05 00:00:00.000', N'2016-04-08 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2070', N'769', N'2016', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2071', N'2312', N'2016', N'2016-05-20 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2072', N'2196', N'2016', N'2016-05-26 00:00:00.000', N'2016-06-06 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2073', N'766', N'2016', N'2016-05-18 00:00:00.000', N'2016-05-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2074', N'766', N'2016', N'2016-06-06 00:00:00.000', N'2016-06-21 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2075', N'2193', N'2014', N'2016-09-09 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2076', N'2370', N'2016', N'2016-06-13 00:00:00.000', N'2016-06-24 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2077', N'2132', N'2016', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2078', N'2316', N'2016', N'2016-06-29 00:00:00.000', N'2016-07-01 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2079', N'2330', N'2016', N'2016-06-27 00:00:00.000', N'2016-06-27 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2080', N'753', N'2016', N'2016-06-06 00:00:00.000', N'2016-06-21 00:00:00.000', N'1', null, N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2081', N'2363', N'2016', N'2016-06-06 00:00:00.000', N'2016-06-28 00:00:00.000', N'1', null, N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2082', N'2369', N'2016', N'2016-03-03 00:00:00.000', N'2016-03-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2083', N'2389', N'2015', N'2016-06-10 00:00:00.000', N'2016-06-10 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2084', N'2364', N'2016', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2085', N'761', N'2016', N'2016-07-14 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2086', N'2328', N'2016', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2087', N'746', N'2016', N'2016-07-12 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2088', N'2312', N'2016', N'2016-08-15 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2089', N'2273', N'2016', N'2016-08-11 00:00:00.000', N'2016-08-12 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2090', N'2373', N'2016', N'2016-08-16 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2091', N'2369', N'2016', N'2016-08-22 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2092', N'741', N'2016', N'2016-08-22 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2093', N'2338', N'2016', N'2016-08-23 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2094', N'906', N'2016', N'2016-08-23 00:00:00.000', N'2016-08-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2095', N'2373', N'2016', N'2016-08-23 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2096', N'2132', N'2016', N'2016-08-29 00:00:00.000', N'2016-08-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2097', N'2320', N'2016', N'2016-08-29 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2098', N'2357', N'2016', N'2016-08-24 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2099', N'769', N'2016', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2100', N'2332', N'2016', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2101', N'2199', N'2016', N'2016-08-29 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2102', N'2273', N'2016', N'2016-08-29 00:00:00.000', N'2016-08-29 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2103', N'2381', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-29 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2104', N'741', N'2015', N'2016-09-01 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2105', N'2330', N'2016', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2106', N'2335', N'2016', N'2016-09-02 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2107', N'2312', N'2016', N'2016-09-02 00:00:00.000', N'2016-09-02 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2108', N'779', N'2015', N'2016-06-15 00:00:00.000', N'2016-06-25 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2109', N'906', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2110', N'2115', N'2015', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2111', N'915', N'2015', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2112', N'914', N'2014', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2113', N'2316', N'2016', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2114', N'2357', N'2016', N'2016-09-05 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2115', N'2321', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2116', N'908', N'2016', N'2016-09-06 00:00:00.000', N'2016-09-30 00:00:00.000', N'1', null, N'18');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2117', N'2338', N'2016', N'2016-09-06 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2118', N'2196', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-22 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2119', N'746', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2120', N'779', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2121', N'2364', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2122', N'2298', N'2014', N'2016-09-19 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2123', N'1771', N'2015', N'2016-09-19 00:00:00.000', N'2016-09-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2124', N'2204', N'2015', N'2016-09-19 00:00:00.000', N'2016-09-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2125', N'2342', N'2016', N'2016-07-11 00:00:00.000', N'2016-07-15 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2126', N'2342', N'2015', N'2016-09-22 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2127', N'741', N'2015', N'2016-09-23 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2128', N'2338', N'2016', N'2016-09-26 00:00:00.000', N'2016-10-07 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2129', N'2359', N'2015', N'2016-09-30 00:00:00.000', N'2016-09-30 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2130', N'1771', N'2016', N'2016-09-28 00:00:00.000', N'2016-09-28 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2131', N'2328', N'2016', N'2016-08-29 00:00:00.000', N'2016-09-03 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2132', N'783', N'2015', N'2016-10-03 00:00:00.000', N'2016-10-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2133', N'2357', N'2016', N'2016-10-03 00:00:00.000', N'2016-10-04 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2134', N'2369', N'2016', N'2016-10-07 00:00:00.000', N'2016-10-07 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2135', N'2357', N'2016', N'2016-10-05 00:00:00.000', N'2016-10-05 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2136', N'2194', N'2014', N'2016-09-19 00:00:00.000', N'2016-09-30 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2137', N'2340', N'2016', N'2016-10-27 00:00:00.000', N'2016-10-28 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2138', N'2194', N'2014', N'2016-10-25 00:00:00.000', N'2016-10-28 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2139', N'915', N'2015', N'2016-09-19 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2140', N'756', N'2014', N'2016-11-07 00:00:00.000', N'2016-11-08 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2141', N'2330', N'2015', N'2016-11-14 00:00:00.000', N'2016-11-14 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2142', N'2115', N'2015', N'2016-11-23 00:00:00.000', N'2016-12-07 00:00:00.000', N'1', null, N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2143', N'2115', N'2016', N'2016-12-08 00:00:00.000', N'2016-12-16 00:00:00.000', N'1', null, N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2144', N'2132', N'2016', N'2016-11-01 00:00:00.000', N'2016-11-07 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2145', N'906', N'2016', N'2016-11-23 00:00:00.000', N'2016-11-25 00:00:00.000', N'1', null, N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2146', N'1082', N'2014', N'2016-10-31 00:00:00.000', N'2016-10-31 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2147', N'754', N'2015', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2148', N'783', N'2015', N'2016-11-23 00:00:00.000', N'2016-11-24 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2151', N'2312', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2152', N'754', N'2015', N'2016-11-24 00:00:00.000', N'2016-11-25 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2153', N'2312', N'2016', N'2016-11-24 00:00:00.000', N'2016-11-24 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2154', N'2203', N'2012', N'2016-12-12 00:00:00.000', N'2016-12-23 00:00:00.000', N'1', null, N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2155', N'2223', N'2014', N'2016-12-13 00:00:00.000', N'2016-12-19 00:00:00.000', N'1', null, N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2156', N'2379', N'2016', N'2016-09-20 00:00:00.000', N'2016-09-23 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2157', N'2196', N'2016', N'2016-12-23 00:00:00.000', N'2016-12-23 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2158', N'2316', N'2016', N'2016-12-19 00:00:00.000', N'2016-12-20 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2159', N'2340', N'2016', N'2016-12-26 00:00:00.000', N'2016-12-27 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2160', N'2349', N'2015', N'2016-11-18 00:00:00.000', N'2016-11-18 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2161', N'2349', N'2016', N'2016-12-27 00:00:00.000', N'2016-12-30 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2162', N'2198', N'2014', N'2017-01-02 00:00:00.000', N'2017-01-06 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2163', N'2298', N'2016', N'2016-11-16 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2164', N'2316', N'2016', N'2016-12-26 00:00:00.000', N'2016-12-27 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2165', N'2374', N'2015', N'2017-01-16 00:00:00.000', N'2017-01-19 00:00:00.000', N'1', null, N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2166', N'2374', N'2016', N'2017-01-20 00:00:00.000', N'2017-01-20 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2167', N'2357', N'2016', N'2017-01-12 00:00:00.000', N'2017-01-12 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2168', N'2372', N'2016', N'2016-07-11 00:00:00.000', N'2016-07-21 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2170', N'2350', N'2016', N'2016-01-06 00:00:00.000', N'2016-07-04 00:00:00.000', N'3', N'DOĞUM İZNİ', N'180');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2171', N'2350', N'2013', N'2016-12-29 00:00:00.000', N'2016-12-30 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2172', N'2298', N'2014', N'2014-07-11 00:00:00.000', N'2015-01-06 00:00:00.000', N'3', N'DOĞUM İZNİ', N'180');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2173', N'746', N'2009', N'2009-07-13 00:00:00.000', N'2009-10-11 00:00:00.000', N'3', N'DOĞUM İZNİ', N'90');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2174', N'2132', N'2009', N'2009-05-06 00:00:00.000', N'2009-06-08 00:00:00.000', N'3', null, N'34');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2175', N'2332', N'2016', N'2017-01-12 00:00:00.000', N'2017-01-13 00:00:00.000', N'1', null, N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2176', N'2312', N'2016', N'2017-01-23 00:00:00.000', N'2017-02-02 00:00:00.000', N'1', null, N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2177', N'2312', N'2017', N'2017-02-03 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', null, N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2178', N'2332', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', null, N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2179', N'2364', N'2014', N'2014-05-14 00:00:00.000', N'2014-09-10 00:00:00.000', N'3', N'DOĞUM İZNİ', N'120');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2180', N'2320', N'2016', N'2017-01-31 00:00:00.000', N'2017-02-02 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2181', N'756', N'2014', N'2017-01-30 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2014 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2182', N'2377', N'2015', N'2017-01-30 00:00:00.000', N'2017-01-30 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2183', N'741', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2184', N'783', N'2016', N'2016-12-02 00:00:00.000', N'2016-12-02 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2185', N'783', N'2015', N'2016-12-01 00:00:00.000', N'2016-12-01 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2186', N'2342', N'2016', N'2017-01-31 00:00:00.000', N'2017-02-01 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2187', N'2335', N'2016', N'2017-02-02 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2188', N'783', N'2017', N'2017-02-01 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2189', N'2370', N'2016', N'2017-01-31 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2190', N'2372', N'2016', N'2017-01-18 00:00:00.000', N'2017-01-18 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2191', N'2372', N'2016', N'2017-02-06 00:00:00.000', N'2017-02-06 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2192', N'2322', N'2015', N'2016-07-11 00:00:00.000', N'2016-07-20 00:00:00.000', N'1', N'2015 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2193', N'2322', N'2016', N'2016-07-21 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2194', N'2322', N'2016', N'2017-02-17 00:00:00.000', N'2017-02-17 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2195', N'2377', N'2015', N'2017-02-21 00:00:00.000', N'2017-02-21 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2196', N'2330', N'2015', N'2017-02-22 00:00:00.000', N'2017-02-22 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2197', N'2303', N'2016', N'2016-12-12 00:00:00.000', N'2016-12-16 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2199', N'2365', N'2014', N'2016-12-08 00:00:00.000', N'2016-12-09 00:00:00.000', N'1', N'2014 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2200', N'1082', N'2015', N'2016-11-25 00:00:00.000', N'2016-11-25 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2201', N'2389', N'2015', N'2017-01-31 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2202', N'2379', N'2016', N'2016-12-16 00:00:00.000', N'2016-12-16 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2203', N'2379', N'2016', N'2017-01-13 00:00:00.000', N'2017-01-13 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2204', N'2379', N'2016', N'2017-02-28 00:00:00.000', N'2017-03-03 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2205', N'2404', N'2014', N'2014-12-08 00:00:00.000', N'2014-12-08 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2206', N'2404', N'2014', N'2015-04-22 00:00:00.000', N'2015-04-23 00:00:00.000', N'1', N'2014 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2219', N'2404', N'2014', N'2015-08-03 00:00:00.000', N'2015-08-07 00:00:00.000', N'1', N'2014 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2220', N'2404', N'2014', N'2015-11-06 00:00:00.000', N'2015-11-06 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2221', N'2404', N'2014', N'2015-11-30 00:00:00.000', N'2015-12-04 00:00:00.000', N'1', N'2014 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2222', N'2404', N'2015', N'2016-08-26 00:00:00.000', N'2016-08-26 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2223', N'2404', N'2015', N'2016-08-29 00:00:00.000', N'2016-08-29 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2224', N'2404', N'2016', N'2016-09-07 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2225', N'2404', N'2015', N'2016-09-27 00:00:00.000', N'2016-09-27 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2226', N'2404', N'2015', N'2016-09-28 00:00:00.000', N'2016-09-28 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2227', N'2404', N'2015', N'2016-10-03 00:00:00.000', N'2016-10-05 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2228', N'2404', N'2015', N'2017-02-02 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2229', N'2404', N'2015', N'2017-02-16 00:00:00.000', N'2017-02-16 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2230', N'2404', N'2015', N'2017-02-20 00:00:00.000', N'2017-02-20 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2231', N'2303', N'2015', N'2017-03-01 00:00:00.000', N'2017-03-01 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2233', N'746', N'2015', N'2015-07-20 00:00:00.000', N'2016-01-16 00:00:00.000', N'3', N'2015 IZNINDEN 180 GUN', N'180');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2234', N'746', N'2016', N'2017-02-08 00:00:00.000', N'2017-02-08 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2235', N'2194', N'2014', N'2017-01-19 00:00:00.000', N'2017-01-20 00:00:00.000', N'1', N'2014 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2236', N'2194', N'2014', N'2017-03-03 00:00:00.000', N'2017-03-03 00:00:00.000', N'1', N'2014 I IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2242', N'741', N'2017', N'2017-03-08 00:00:00.000', N'2017-03-10 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2243', N'762', N'2014', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', N'2014 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2245', N'2357', N'2016', N'2017-01-19 00:00:00.000', N'2017-01-20 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2246', N'2405', N'2015', N'2016-02-26 00:00:00.000', N'2016-03-09 00:00:00.000', N'1', N'2015 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2247', N'2405', N'2016', N'2016-06-29 00:00:00.000', N'2016-07-01 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2248', N'2405', N'2016', N'2016-08-29 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2249', N'2405', N'2016', N'2016-11-09 00:00:00.000', N'2016-11-10 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2250', N'762', N'2015', N'2017-03-09 00:00:00.000', N'2017-03-10 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2251', N'2386', N'2015', N'2016-05-09 00:00:00.000', N'2016-05-25 00:00:00.000', N'1', N'2015 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2252', N'2386', N'2016', N'2016-05-26 00:00:00.000', N'2016-05-27 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2253', N'2386', N'2016', N'2016-08-29 00:00:00.000', N'2016-08-29 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2254', N'2386', N'2016', N'2016-08-18 00:00:00.000', N'2016-08-19 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2255', N'2386', N'2016', N'2016-10-13 00:00:00.000', N'2016-10-14 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2256', N'2386', N'2016', N'2016-12-26 00:00:00.000', N'2016-12-26 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2261', N'2359', N'2015', N'2017-03-10 00:00:00.000', N'2017-03-10 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2262', N'2407', N'2016', N'2016-10-21 00:00:00.000', N'2016-10-24 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2263', N'2407', N'2016', N'2016-08-01 00:00:00.000', N'2016-08-07 00:00:00.000', N'1', N'2016 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2264', N'2407', N'2016', N'2017-01-09 00:00:00.000', N'2017-01-17 00:00:00.000', N'1', N'2016 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2265', N'2408', N'2016', N'2016-08-14 00:00:00.000', N'2016-08-21 00:00:00.000', N'1', N'2016 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2266', N'2408', N'2016', N'2016-10-12 00:00:00.000', N'2016-10-20 00:00:00.000', N'1', N'2016 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2267', N'2409', N'2016', N'2016-06-13 00:00:00.000', N'2016-06-28 00:00:00.000', N'1', N'2016 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2270', N'2349', N'2015', N'2017-02-27 00:00:00.000', N'2017-02-27 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2271', N'783', N'2016', N'2017-03-16 00:00:00.000', N'2017-03-16 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2272', N'2349', N'2016', N'2017-03-16 00:00:00.000', N'2017-03-17 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2273', N'2403', N'2015', N'2015-08-17 00:00:00.000', N'2015-08-28 00:00:00.000', N'1', N'2015 IZNI 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2274', N'2403', N'2015', N'2016-07-11 00:00:00.000', N'2016-07-13 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2275', N'2403', N'2016', N'2016-07-14 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', N'2016 IZNIDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2276', N'2403', N'2016', N'2017-01-30 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2277', N'754', N'2015', N'2017-01-02 00:00:00.000', N'2017-01-04 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2278', N'754', N'2016', N'2017-01-05 00:00:00.000', N'2017-01-06 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2279', N'2379', N'2016', N'2017-03-17 00:00:00.000', N'2017-03-17 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2280', N'2403', N'2016', N'2017-03-20 00:00:00.000', N'2017-03-20 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2281', N'1771', N'2016', N'2017-03-21 00:00:00.000', N'2017-03-24 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2282', N'2411', N'2012', N'2013-09-02 00:00:00.000', N'2013-09-05 00:00:00.000', N'1', N'2012 IZNI 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2283', N'2411', N'2012', N'2014-06-16 00:00:00.000', N'2014-06-26 00:00:00.000', N'1', N'2012 IZNI 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2284', N'2411', N'2013', N'2014-06-27 00:00:00.000', N'2014-07-08 00:00:00.000', N'1', N'2013 IZNI 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2285', N'2411', N'2013', N'2015-08-17 00:00:00.000', N'2015-08-20 00:00:00.000', N'1', N'2013 IZNI 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2286', N'2411', N'2014', N'2015-08-21 00:00:00.000', N'2015-09-04 00:00:00.000', N'1', N'2014 IZNI 13 GUN', N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2287', N'2411', N'2015', N'2017-03-22 00:00:00.000', N'2017-03-24 00:00:00.000', N'1', N'2015 IZNI 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2288', N'2412', N'2011', N'2011-09-05 00:00:00.000', N'2011-09-08 00:00:00.000', N'1', N'2011 IZNI 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2289', N'2412', N'2012', N'2012-02-06 00:00:00.000', N'2012-02-09 00:00:00.000', N'1', N'2012 ıznı 4 gun', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2290', N'2412', N'2011', N'2012-07-02 00:00:00.000', N'2012-07-12 00:00:00.000', N'1', N'2011 IZNI 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2291', N'2412', N'2012', N'2012-12-24 00:00:00.000', N'2013-01-03 00:00:00.000', N'1', N'2012 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2292', N'2412', N'2013', N'2013-08-26 00:00:00.000', N'2013-09-05 00:00:00.000', N'1', N'2013 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2293', N'2412', N'2014', N'2014-08-11 00:00:00.000', N'2014-08-21 00:00:00.000', N'1', N'2014 IZNI 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2294', N'2412', N'2013', N'2015-02-24 00:00:00.000', N'2015-02-27 00:00:00.000', N'1', N'2013 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2295', N'2412', N'2014', N'2015-08-24 00:00:00.000', N'2015-08-24 00:00:00.000', N'1', N'2014 IZNI 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2296', N'2412', N'2014', N'2015-08-28 00:00:00.000', N'2015-08-31 00:00:00.000', N'1', N'2014 IZNI 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2297', N'2412', N'2015', N'2015-09-01 00:00:00.000', N'2015-09-16 00:00:00.000', N'1', N'2015 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2298', N'2412', N'2016', N'2016-11-23 00:00:00.000', N'2016-11-25 00:00:00.000', N'1', N'2016 dan 3 gun', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2299', N'756', N'2014', N'2017-03-23 00:00:00.000', N'2017-03-24 00:00:00.000', N'1', N'2014 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2300', N'2132', N'2008', N'2008-05-28 00:00:00.000', N'2009-05-06 00:00:00.000', N'3', N'2008 IZNINDEN 255 GUN', N'255');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2301', N'2132', N'2016', N'2017-03-30 00:00:00.000', N'2017-03-31 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2302', N'2366', N'2014', N'2017-01-04 00:00:00.000', N'2017-01-06 00:00:00.000', N'1', N'2014 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2303', N'2362', N'2015', N'2016-12-12 00:00:00.000', N'2016-12-12 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2304', N'2389', N'2015', N'2017-03-29 00:00:00.000', N'2017-03-29 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2305', N'2194', N'2015', N'2017-03-31 00:00:00.000', N'2017-03-31 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2306', N'2340', N'2016', N'2017-04-03 00:00:00.000', N'2017-04-07 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2307', N'2338', N'2016', N'2017-04-03 00:00:00.000', N'2017-04-03 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2308', N'2379', N'2016', N'2017-04-04 00:00:00.000', N'2017-04-06 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2309', N'745', N'2016', N'2017-04-17 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2310', N'2193', N'2015', N'2017-01-23 00:00:00.000', N'2017-01-26 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2311', N'2193', N'2016', N'2017-01-27 00:00:00.000', N'2017-02-03 00:00:00.000', N'1', N'2016 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2312', N'2193', N'2016', N'2017-04-07 00:00:00.000', N'2017-04-07 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2313', N'2379', N'2017', N'2017-04-07 00:00:00.000', N'2017-04-07 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2314', N'2115', N'2016', N'2017-04-10 00:00:00.000', N'2017-04-10 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2315', N'2377', N'2016', N'2017-04-11 00:00:00.000', N'2017-04-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2316', N'2400', N'2010', N'2011-06-27 00:00:00.000', N'2011-07-08 00:00:00.000', N'1', N'2010 IZNI 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2317', N'2400', N'2011', N'2013-09-02 00:00:00.000', N'2013-09-13 00:00:00.000', N'1', N'2011 IZNINIDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2318', N'2400', N'2012', N'2014-06-10 00:00:00.000', N'2014-06-25 00:00:00.000', N'1', N'2012 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2319', N'2400', N'2010', N'2015-07-08 00:00:00.000', N'2015-07-10 00:00:00.000', N'1', N'2010 DAB 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2320', N'2400', N'2013', N'2015-08-31 00:00:00.000', N'2015-09-11 00:00:00.000', N'1', N'2013 IZNI 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2321', N'2400', N'2011', N'2016-02-01 00:00:00.000', N'2016-02-03 00:00:00.000', N'1', N'2011  IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2322', N'2400', N'2013', N'2016-02-04 00:00:00.000', N'2016-02-05 00:00:00.000', N'1', N'2013 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2323', N'2400', N'2013', N'2016-05-13 00:00:00.000', N'2016-05-13 00:00:00.000', N'1', N'2013 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2324', N'2400', N'2014', N'2016-08-29 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', N'2014 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2325', N'2400', N'2014', N'2016-12-30 00:00:00.000', N'2016-12-30 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2327', N'2400', N'2014', N'2017-04-12 00:00:00.000', N'2017-04-14 00:00:00.000', N'1', N'2014 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2328', N'766', N'2017', N'2017-03-02 00:00:00.000', N'2017-03-03 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2329', N'766', N'2017', N'2017-04-17 00:00:00.000', N'2017-04-19 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2330', N'761', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2331', N'2194', N'2015', N'2017-04-17 00:00:00.000', N'2017-04-17 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2332', N'761', N'2017', N'2017-04-19 00:00:00.000', N'2017-04-21 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2333', N'2298', N'2016', N'2017-01-10 00:00:00.000', N'2017-01-13 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2334', N'2401', N'2016', N'2016-08-29 00:00:00.000', N'2016-09-09 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2335', N'2340', N'2017', N'2017-04-21 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2017 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2336', N'2401', N'2016', N'2017-04-21 00:00:00.000', N'2017-04-21 00:00:00.000', N'1', N'2016 IZININDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2337', N'2342', N'2016', N'2017-04-19 00:00:00.000', N'2017-04-21 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2338', N'2298', N'2017', N'2017-04-24 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2339', N'2316', N'2016', N'2017-01-11 00:00:00.000', N'2017-01-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2340', N'2362', N'2015', N'2017-04-28 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2341', N'2316', N'2016', N'2017-04-25 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2342', N'754', N'2016', N'2017-05-02 00:00:00.000', N'2017-05-05 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2343', N'2366', N'2015', N'2017-04-27 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2344', N'2194', N'2015', N'2017-04-28 00:00:00.000', N'2017-04-28 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2345', N'2404', N'2015', N'2017-03-03 00:00:00.000', N'2017-03-03 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2346', N'2404', N'2015', N'2017-03-20 00:00:00.000', N'2017-03-20 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2347', N'2404', N'2017', N'2017-03-21 00:00:00.000', N'2017-03-24 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2348', N'2404', N'2015', N'2017-04-18 00:00:00.000', N'2017-04-18 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2349', N'2377', N'2016', N'2017-05-03 00:00:00.000', N'2017-05-05 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2350', N'2312', N'2017', N'2017-05-08 00:00:00.000', N'2017-05-08 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2351', N'2199', N'2013', N'2017-05-08 00:00:00.000', N'2017-05-08 00:00:00.000', N'1', N'2013 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2352', N'2199', N'2015', N'2017-05-09 00:00:00.000', N'2017-05-12 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2353', N'2335', N'2016', N'2017-05-11 00:00:00.000', N'2017-05-12 00:00:00.000', N'1', N'2016 IZININDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2354', N'2330', N'2015', N'2017-05-09 00:00:00.000', N'2017-05-09 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2355', N'2132', N'2017', N'2017-05-12 00:00:00.000', N'2017-05-12 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2356', N'908', N'2015', N'2017-05-15 00:00:00.000', N'2017-05-18 00:00:00.000', N'1', N'2015  IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2357', N'2365', N'2016', N'2017-05-15 00:00:00.000', N'2017-05-18 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2358', N'2372', N'2017', N'2017-05-10 00:00:00.000', N'2017-05-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2359', N'2321', N'2016', N'2017-01-12 00:00:00.000', N'2017-01-13 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2361', N'2342', N'2017', N'2017-05-12 00:00:00.000', N'2017-05-12 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2362', N'2204', N'2014', N'2017-05-15 00:00:00.000', N'2017-05-18 00:00:00.000', N'1', N'2014 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2363', N'2316', N'2016', N'2017-05-18 00:00:00.000', N'2017-05-18 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2364', N'2243', N'2016', N'2017-05-22 00:00:00.000', N'2017-05-26 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2365', N'762', N'2016', N'2017-05-22 00:00:00.000', N'2017-05-22 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2366', N'2273', N'2016', N'2017-05-22 00:00:00.000', N'2017-06-01 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2367', N'2273', N'2017', N'2017-06-02 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2017 IZNINDEN 19 GUN', N'19');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2368', N'2282', N'2015', N'2017-05-22 00:00:00.000', N'2017-05-22 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2369', N'2282', N'2016', N'2017-05-23 00:00:00.000', N'2017-06-14 00:00:00.000', N'1', N'2016 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2370', N'2282', N'2017', N'2017-06-15 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2017 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2371', N'2196', N'2016', N'2017-05-23 00:00:00.000', N'2017-05-23 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2372', N'753', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-24 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2373', N'753', N'2017', N'2017-05-29 00:00:00.000', N'2017-06-16 00:00:00.000', N'1', N'2017 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2374', N'906', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2375', N'2373', N'2016', N'2017-05-25 00:00:00.000', N'2017-05-25 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2376', N'906', N'2017', N'2017-06-19 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2017 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2377', N'2223', N'2015', N'2017-01-10 00:00:00.000', N'2017-01-13 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2378', N'915', N'2014', N'2017-05-30 00:00:00.000', N'2017-05-30 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2379', N'914', N'2013', N'2017-05-30 00:00:00.000', N'2017-05-30 00:00:00.000', N'1', N'2013 IZININDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2380', N'2223', N'2015', N'2017-06-05 00:00:00.000', N'2017-06-09 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2381', N'2402', N'2010', N'2010-07-22 00:00:00.000', N'2010-08-06 00:00:00.000', N'1', N'2010 IZNI', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2382', N'2402', N'2011', N'2011-07-20 00:00:00.000', N'2011-08-11 00:00:00.000', N'1', N'2011 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2383', N'2402', N'2012', N'2012-07-11 00:00:00.000', N'2012-08-02 00:00:00.000', N'1', N'2012 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2384', N'2402', N'2013', N'2013-07-22 00:00:00.000', N'2013-08-13 00:00:00.000', N'1', N'2013 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2385', N'2402', N'2014', N'2014-07-21 00:00:00.000', N'2014-08-12 00:00:00.000', N'1', N'2014 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2386', N'2402', N'2015', N'2015-08-31 00:00:00.000', N'2015-09-22 00:00:00.000', N'1', N'2015 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2387', N'2402', N'2016', N'2017-02-08 00:00:00.000', N'2017-02-10 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2388', N'2402', N'2016', N'2017-05-15 00:00:00.000', N'2017-05-18 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2389', N'2402', N'2016', N'2017-05-22 00:00:00.000', N'2017-05-26 00:00:00.000', N'1', N'2016 IZININDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2390', N'2404', N'2016', N'2017-05-11 00:00:00.000', N'2017-05-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2391', N'2400', N'2015', N'2017-05-12 00:00:00.000', N'2017-05-12 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2392', N'2198', N'2013', N'2017-06-12 00:00:00.000', N'2017-06-14 00:00:00.000', N'1', N'2013  İZNİNDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2393', N'2198', N'2014', N'2017-06-15 00:00:00.000', N'2017-06-19 00:00:00.000', N'1', N'2014 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2394', N'2198', N'2015', N'2017-06-20 00:00:00.000', N'2017-07-12 00:00:00.000', N'1', N'2015 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2395', N'2198', N'2016', N'2017-07-13 00:00:00.000', N'2017-07-21 00:00:00.000', N'1', N'2016 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2396', N'2379', N'2017', N'2017-06-01 00:00:00.000', N'2017-06-01 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2397', N'2298', N'2014', N'2017-06-02 00:00:00.000', N'2017-06-02 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2398', N'2400', N'2015', N'2017-06-12 00:00:00.000', N'2017-06-16 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2399', N'2321', N'2016', N'2017-06-05 00:00:00.000', N'2017-06-16 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2400', N'2328', N'2016', N'2017-06-06 00:00:00.000', N'2017-06-06 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2401', N'2338', N'2017', N'2017-06-06 00:00:00.000', N'2017-06-09 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2402', N'2349', N'2016', N'2017-06-08 00:00:00.000', N'2017-06-09 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2403', N'2332', N'2016', N'2017-06-28 00:00:00.000', N'2017-07-06 00:00:00.000', N'1', N'2016 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2404', N'2332', N'2017', N'2017-07-07 00:00:00.000', N'2017-07-07 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2405', N'2372', N'2017', N'2017-07-03 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2406', N'2399', N'2017', N'2017-04-20 00:00:00.000', N'2017-05-04 00:00:00.000', N'1', N'2017 IZNINDEN 13 GUN', N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2407', N'2373', N'2016', N'2017-06-12 00:00:00.000', N'2017-06-12 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2408', N'2330', N'2015', N'2017-06-13 00:00:00.000', N'2017-06-13 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2409', N'2303', N'2016', N'2017-06-13 00:00:00.000', N'2017-06-16 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2410', N'2200', N'2013', N'2015-11-17 00:00:00.000', N'2015-11-20 00:00:00.000', N'1', N'2013 IZNI 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2411', N'2200', N'2013', N'2017-06-19 00:00:00.000', N'2017-06-20 00:00:00.000', N'1', N'2013 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2412', N'2200', N'2014', N'2017-06-21 00:00:00.000', N'2017-06-21 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2413', N'2200', N'2016', N'2017-06-22 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2016 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2414', N'766', N'2017', N'2017-06-28 00:00:00.000', N'2017-06-29 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2415', N'2403', N'2017', N'2017-06-19 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2416', N'761', N'2016', N'2017-06-16 00:00:00.000', N'2017-06-16 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2417', N'2328', N'2016', N'2017-06-21 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2418', N'2115', N'2017', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2419', N'2132', N'2017', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2420', N'2316', N'2016', N'2017-06-19 00:00:00.000', N'2017-06-20 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2421', N'2316', N'2017', N'2017-06-21 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2422', N'2320', N'2017', N'2017-06-28 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2017 IZININDEN 15 GUN', N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2423', N'754', N'2016', N'2017-06-28 00:00:00.000', N'2017-07-07 00:00:00.000', N'1', N'2016 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2424', N'2366', N'2014', N'2017-07-03 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2014 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2425', N'2366', N'2015', N'2017-07-17 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2015 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2426', N'2193', N'2016', N'2017-06-21 00:00:00.000', N'2017-06-21 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2427', N'2193', N'2017', N'2017-06-22 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2428', N'2342', N'2017', N'2017-07-10 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2429', N'2299', N'2013', N'2017-01-12 00:00:00.000', N'2017-01-13 00:00:00.000', N'1', N'2013 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2430', N'2322', N'2016', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2431', N'2299', N'2015', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2432', N'2243', N'2016', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2433', N'2241', N'2014', N'2017-06-28 00:00:00.000', N'2017-07-03 00:00:00.000', N'1', N'2014 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2434', N'2241', N'2015', N'2017-07-04 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2015 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2435', N'2199', N'2017', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2436', N'2400', N'2015', N'2017-07-03 00:00:00.000', N'2017-07-07 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2437', N'1082', N'2015', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2438', N'756', N'2016', N'2017-07-09 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2439', N'756', N'2015', N'2017-06-28 00:00:00.000', N'2017-07-08 00:00:00.000', N'1', N'2015 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2440', N'2350', N'2013', N'2017-06-22 00:00:00.000', N'2017-06-22 00:00:00.000', N'1', N'2013 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2441', N'2350', N'2014', N'2017-06-23 00:00:00.000', N'2017-06-29 00:00:00.000', N'1', N'2014 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2442', N'2350', N'2015', N'2017-06-30 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2443', N'2349', N'2017', N'2017-06-28 00:00:00.000', N'2017-07-07 00:00:00.000', N'1', N'2017 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2444', N'2298', N'2014', N'2017-07-03 00:00:00.000', N'2017-07-13 00:00:00.000', N'1', N'2014 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2445', N'2298', N'2016', N'2017-07-14 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2016 IZNINDEN 12 GUN', N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2446', N'2340', N'2015', N'2017-06-22 00:00:00.000', N'2017-06-22 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2447', N'2340', N'2016', N'2017-06-23 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2448', N'2362', N'2015', N'2017-06-23 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2449', N'2357', N'2017', N'2017-06-28 00:00:00.000', N'2017-06-30 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2450', N'2379', N'2017', N'2017-06-23 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2451', N'2377', N'2016', N'2017-06-23 00:00:00.000', N'2017-06-23 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2452', N'2338', N'2017', N'2017-07-10 00:00:00.000', N'2017-07-21 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2453', N'2369', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2454', N'769', N'2016', N'2017-01-23 00:00:00.000', N'2017-01-27 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2455', N'2364', N'2016', N'2017-06-28 00:00:00.000', N'2017-06-28 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2456', N'2364', N'2017', N'2017-06-29 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2017 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2457', N'2379', N'2017', N'2017-06-28 00:00:00.000', N'2017-06-28 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2458', N'772', N'2015', N'2016-12-16 00:00:00.000', N'2016-12-16 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2459', N'762', N'2014', N'2017-07-10 00:00:00.000', N'2017-07-21 00:00:00.000', N'1', N'2014 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2460', N'769', N'2016', N'2017-07-24 00:00:00.000', N'2017-08-02 00:00:00.000', N'1', N'2016 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2461', N'769', N'2017', N'2017-08-03 00:00:00.000', N'2017-08-04 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2462', N'772', N'2015', N'2017-07-04 00:00:00.000', N'2017-07-04 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2463', N'2196', N'2016', N'2017-07-06 00:00:00.000', N'2017-07-07 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2464', N'2374', N'2016', N'2017-07-03 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2465', N'1082', N'2015', N'2017-07-10 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2466', N'2379', N'2017', N'2017-07-10 00:00:00.000', N'2017-07-14 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2467', N'2359', N'2016', N'2017-07-17 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2468', N'2203', N'2013', N'2017-08-01 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2013 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2469', N'2194', N'2015', N'2017-07-24 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2015 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2470', N'761', N'2016', N'2017-07-17 00:00:00.000', N'2017-07-17 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2471', N'761', N'2017', N'2017-07-18 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2472', N'746', N'2017', N'2017-07-17 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2473', N'2243', N'2017', N'2017-07-17 00:00:00.000', N'2017-07-25 00:00:00.000', N'1', N'2017 IZNIDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2476', N'783', N'2016', N'2017-07-24 00:00:00.000', N'2017-08-01 00:00:00.000', N'1', N'2016 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2477', N'783', N'2017', N'2017-08-02 00:00:00.000', N'2017-08-04 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2478', N'754', N'2016', N'2017-07-20 00:00:00.000', N'2017-07-25 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2479', N'754', N'2017', N'2017-07-26 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2480', N'745', N'2016', N'2017-07-20 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2016 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2481', N'2369', N'2016', N'2017-07-20 00:00:00.000', N'2017-07-21 00:00:00.000', N'1', N'2016 IZNINDEM 2  GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2482', N'2369', N'2017', N'2017-07-22 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2483', N'2388', N'2016', N'2016-09-19 00:00:00.000', N'2016-09-30 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2484', N'2388', N'2015', N'2017-07-24 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2485', N'2411', N'2015', N'2017-07-24 00:00:00.000', N'2017-08-04 00:00:00.000', N'1', N'2015 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2488', N'2338', N'2017', N'2017-07-22 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2489', N'1771', N'2015', N'2017-07-31 00:00:00.000', N'2017-08-10 00:00:00.000', N'1', N'2015 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2490', N'1771', N'2016', N'2017-08-11 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2491', N'2303', N'2016', N'2017-07-31 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2492', N'2362', N'2016', N'2017-07-31 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2493', N'2196', N'2017', N'2017-07-25 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2494', N'2335', N'2016', N'2017-07-31 00:00:00.000', N'2017-08-04 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2495', N'2299', N'2015', N'2017-07-31 00:00:00.000', N'2017-08-14 00:00:00.000', N'1', N'2015 IZNINDEN 13 GUN', N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2496', N'2370', N'2016', N'2017-07-26 00:00:00.000', N'2017-07-31 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2497', N'2370', N'2017', N'2017-08-01 00:00:00.000', N'2017-08-04 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2498', N'772', N'2015', N'2017-07-31 00:00:00.000', N'2017-08-03 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2499', N'772', N'2016', N'2017-08-04 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2016 IZNINDEN 13 GUN', N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2500', N'2357', N'2017', N'2017-07-27 00:00:00.000', N'2017-07-28 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2501', N'2381', N'2017', N'2017-07-31 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2502', N'2447', N'2013', N'2015-09-18 00:00:00.000', N'2015-10-10 00:00:00.000', N'1', N'2013 IZNINDEN 20 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2503', N'2447', N'2014', N'2015-10-15 00:00:00.000', N'2015-10-31 00:00:00.000', N'1', N'2014 IZNINDEN 15 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2505', N'2343', N'2016', N'2016-07-11 00:00:00.000', N'2016-07-22 00:00:00.000', N'1', N'2016 IZNI 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2506', N'2320', N'2017', N'2017-08-14 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2507', N'2132', N'2017', N'2017-08-07 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2508', N'761', N'2017', N'2017-08-04 00:00:00.000', N'2017-08-04 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2509', N'2332', N'2017', N'2017-08-07 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2510', N'2402', N'2016', N'2017-04-18 00:00:00.000', N'2017-04-18 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2511', N'779', N'2017', N'2017-08-08 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2518', N'2402', N'2016', N'2017-07-12 00:00:00.000', N'2017-07-12 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2519', N'2402', N'2016', N'2017-07-17 00:00:00.000', N'2017-07-21 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2522', N'2196', N'2016', N'2017-08-08 00:00:00.000', N'2017-08-09 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2523', N'2196', N'2017', N'2017-08-10 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2524', N'2330', N'2016', N'2017-08-14 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2528', N'2350', N'2014', N'2017-08-14 00:00:00.000', N'2017-08-24 00:00:00.000', N'1', N'2014 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2529', N'2350', N'2015', N'2017-08-25 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2531', N'2321', N'2016', N'2017-08-14 00:00:00.000', N'2017-08-15 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2532', N'2321', N'2017', N'2017-08-16 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2533', N'2403', N'2017', N'2017-08-21 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2534', N'906', N'2017', N'2017-09-05 00:00:00.000', N'2017-09-08 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2535', N'780', N'2013', N'2017-08-14 00:00:00.000', N'2017-08-29 00:00:00.000', N'1', N'2013 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2538', N'2400', N'2015', N'2017-08-14 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2539', N'2199', N'2017', N'2017-08-14 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2540', N'2379', N'2017', N'2017-08-11 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2541', N'2377', N'2016', N'2017-08-21 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2542', N'2379', N'2017', N'2017-08-14 00:00:00.000', N'2017-08-17 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2543', N'2401', N'2017', N'2017-08-16 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2544', N'2115', N'2017', N'2017-08-21 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2545', N'2373', N'2016', N'2017-08-17 00:00:00.000', N'2017-08-21 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2546', N'2373', N'2017', N'2017-08-22 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2547', N'908', N'2015', N'2017-09-05 00:00:00.000', N'2017-09-09 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2548', N'908', N'2016', N'2017-09-11 00:00:00.000', N'2017-09-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2549', N'908', N'2017', N'2017-09-12 00:00:00.000', N'2017-09-22 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2550', N'2349', N'2015', N'2017-08-14 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2015 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2551', N'2312', N'2017', N'2017-08-14 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 14 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2552', N'2243', N'2015', N'2017-08-21 00:00:00.000', N'2017-08-22 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2553', N'2243', N'2016', N'2017-08-23 00:00:00.000', N'2017-09-08 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2554', N'1771', N'2016', N'2017-08-16 00:00:00.000', N'2017-08-18 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2555', N'2322', N'2017', N'2017-08-21 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2556', N'2198', N'2017', N'2017-08-21 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2557', N'914', N'2013', N'2017-08-21 00:00:00.000', N'2017-08-23 00:00:00.000', N'1', N'2013 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2558', N'914', N'2014', N'2017-08-24 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2014 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2559', N'915', N'2016', N'2017-08-21 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2560', N'2335', N'2016', N'2017-08-25 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2561', N'2379', N'2018', N'2017-08-23 00:00:00.000', N'2017-08-25 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2562', N'2359', N'2016', N'2017-09-05 00:00:00.000', N'2017-09-07 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2563', N'2359', N'2017', N'2017-09-08 00:00:00.000', N'2017-09-08 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2564', N'2389', N'2015', N'2017-09-05 00:00:00.000', N'2017-09-15 00:00:00.000', N'1', N'2015 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2565', N'2316', N'2017', N'2017-09-05 00:00:00.000', N'2017-09-08 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2566', N'2357', N'2017', N'2017-09-05 00:00:00.000', N'2017-09-08 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2567', N'766', N'2017', N'2017-09-12 00:00:00.000', N'2017-09-13 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2569', N'2328', N'2017', N'2017-09-11 00:00:00.000', N'2017-09-15 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2570', N'2401', N'2017', N'2017-09-05 00:00:00.000', N'2017-09-08 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2571', N'769', N'2017', N'2017-09-11 00:00:00.000', N'2017-09-12 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2572', N'914', N'2014', N'2017-09-11 00:00:00.000', N'2017-09-22 00:00:00.000', N'1', N'2014 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2573', N'915', N'2014', N'2017-09-11 00:00:00.000', N'2017-09-21 00:00:00.000', N'1', N'2014 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2574', N'915', N'2016', N'2017-09-22 00:00:00.000', N'2017-09-22 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2575', N'2412', N'2016', N'2017-09-11 00:00:00.000', N'2017-09-15 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2576', N'2372', N'2016', N'2017-09-11 00:00:00.000', N'2017-09-12 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2577', N'2340', N'2017', N'2017-09-11 00:00:00.000', N'2017-09-13 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2578', N'2377', N'2016', N'2017-09-13 00:00:00.000', N'2017-09-15 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2579', N'2377', N'2016', N'2017-09-20 00:00:00.000', N'2017-09-20 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2580', N'2115', N'2017', N'2017-09-15 00:00:00.000', N'2017-09-15 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2581', N'783', N'2017', N'2017-09-14 00:00:00.000', N'2017-09-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2582', N'2388', N'2015', N'2017-09-25 00:00:00.000', N'2017-09-27 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2583', N'2412', N'2017', N'2017-09-25 00:00:00.000', N'2017-09-29 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2584', N'2374', N'2017', N'2017-09-18 00:00:00.000', N'2017-09-21 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2585', N'2200', N'2015', N'2017-09-26 00:00:00.000', N'2017-09-26 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2586', N'2198', N'2016', N'2017-09-26 00:00:00.000', N'2017-09-26 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2587', N'2298', N'2016', N'2017-09-26 00:00:00.000', N'2017-09-26 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2588', N'783', N'2017', N'2017-09-27 00:00:00.000', N'2017-09-29 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2589', N'754', N'2017', N'2017-10-02 00:00:00.000', N'2017-10-02 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2590', N'2198', N'2016', N'2017-10-03 00:00:00.000', N'2017-10-03 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2591', N'2338', N'2018', N'2017-10-03 00:00:00.000', N'2017-10-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2592', N'2196', N'2017', N'2017-10-03 00:00:00.000', N'2017-10-03 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2593', N'756', N'2014', N'2017-10-05 00:00:00.000', N'2017-10-06 00:00:00.000', N'1', N'2014 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2594', N'906', N'2017', N'2017-10-09 00:00:00.000', N'2017-10-10 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2595', N'762', N'2015', N'2017-10-06 00:00:00.000', N'2017-10-06 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2596', N'2377', N'2016', N'2017-10-11 00:00:00.000', N'2017-10-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2597', N'2365', N'2015', N'2017-10-16 00:00:00.000', N'2017-10-26 00:00:00.000', N'1', N'2015 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2598', N'2365', N'2017', N'2017-10-27 00:00:00.000', N'2017-10-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2599', N'2400', N'2015', N'2017-10-12 00:00:00.000', N'2017-10-13 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2600', N'2243', N'2017', N'2017-10-12 00:00:00.000', N'2017-10-13 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2601', N'769', N'2017', N'2017-10-13 00:00:00.000', N'2017-10-13 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2602', N'2196', N'2017', N'2017-10-11 00:00:00.000', N'2017-10-11 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2603', N'2193', N'2017', N'2017-10-18 00:00:00.000', N'2017-10-20 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2604', N'2335', N'2016', N'2017-10-13 00:00:00.000', N'2017-10-13 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2605', N'2328', N'2017', N'2017-10-30 00:00:00.000', N'2017-11-03 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2606', N'2349', N'2016', N'2017-10-16 00:00:00.000', N'2017-10-18 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2607', N'2349', N'2017', N'2017-10-19 00:00:00.000', N'2017-10-20 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2608', N'2372', N'2017', N'2017-10-17 00:00:00.000', N'2017-10-18 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2609', N'2132', N'2017', N'2017-10-20 00:00:00.000', N'2017-10-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2610', N'2359', N'2017', N'2017-10-19 00:00:00.000', N'2017-10-19 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2611', N'745', N'2017', N'2017-10-23 00:00:00.000', N'2017-10-24 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2612', N'2322', N'2016', N'2017-10-19 00:00:00.000', N'2017-10-20 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2613', N'754', N'2017', N'2017-10-16 00:00:00.000', N'2017-10-18 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2614', N'2273', N'2017', N'2017-10-19 00:00:00.000', N'2017-10-19 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2615', N'2321', N'2017', N'2017-10-23 00:00:00.000', N'2017-10-27 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2616', N'2340', N'2016', N'2017-10-25 00:00:00.000', N'2017-10-25 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2617', N'2373', N'2017', N'2017-10-25 00:00:00.000', N'2017-10-27 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2618', N'2335', N'2016', N'2017-10-23 00:00:00.000', N'2017-10-23 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2619', N'754', N'2017', N'2017-10-24 00:00:00.000', N'2017-10-24 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2620', N'2196', N'2017', N'2017-10-30 00:00:00.000', N'2017-10-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2621', N'2312', N'2017', N'2017-10-27 00:00:00.000', N'2017-10-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2622', N'745', N'2017', N'2017-11-06 00:00:00.000', N'2017-11-07 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2623', N'2402', N'2016', N'2017-10-18 00:00:00.000', N'2017-10-18 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2624', N'2402', N'2017', N'2017-10-20 00:00:00.000', N'2017-10-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2625', N'2330', N'2016', N'2017-11-10 00:00:00.000', N'2017-11-10 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2626', N'2373', N'2017', N'2017-11-09 00:00:00.000', N'2017-11-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2627', N'2223', N'2014', N'2017-11-13 00:00:00.000', N'2017-11-23 00:00:00.000', N'1', N'2014 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2628', N'2342', N'2017', N'2017-11-10 00:00:00.000', N'2017-11-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2629', N'745', N'2016', N'2017-11-14 00:00:00.000', N'2017-11-14 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2630', N'766', N'2017', N'2017-11-27 00:00:00.000', N'2017-12-08 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2631', N'762', N'2015', N'2017-11-14 00:00:00.000', N'2017-11-17 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2632', N'745', N'2016', N'2017-11-16 00:00:00.000', N'2017-11-16 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2633', N'2196', N'2017', N'2017-11-17 00:00:00.000', N'2017-11-17 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2634', N'2370', N'2017', N'2017-11-20 00:00:00.000', N'2017-12-01 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2635', N'762', N'2015', N'2017-11-20 00:00:00.000', N'2017-11-20 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2636', N'2299', N'2015', N'2017-11-21 00:00:00.000', N'2017-11-22 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2637', N'2132', N'2017', N'2017-11-27 00:00:00.000', N'2017-11-29 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2638', N'756', N'2016', N'2017-11-23 00:00:00.000', N'2017-11-24 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2639', N'1771', N'2016', N'2017-11-24 00:00:00.000', N'2017-11-24 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2640', N'2273', N'2018', N'2017-11-29 00:00:00.000', N'2017-11-29 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2641', N'2200', N'2015', N'2017-11-28 00:00:00.000', N'2017-12-01 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2642', N'2402', N'2017', N'2017-11-22 00:00:00.000', N'2017-11-24 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2643', N'2389', N'2017', N'2017-12-05 00:00:00.000', N'2017-12-05 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2644', N'2389', N'2015', N'2017-12-14 00:00:00.000', N'2017-12-15 00:00:00.000', N'1', N'2015 IZININDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2645', N'2366', N'2016', N'2017-12-07 00:00:00.000', N'2017-12-22 00:00:00.000', N'1', N'2016 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2646', N'2303', N'2017', N'2017-12-07 00:00:00.000', N'2017-12-08 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2647', N'2362', N'2015', N'2017-12-07 00:00:00.000', N'2017-12-07 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2648', N'780', N'2013', N'2017-12-11 00:00:00.000', N'2017-12-12 00:00:00.000', N'1', N'2013 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2649', N'780', N'2014', N'2017-12-13 00:00:00.000', N'2018-01-05 00:00:00.000', N'1', N'2014 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2650', N'2400', N'2015', N'2017-12-12 00:00:00.000', N'2017-12-12 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2651', N'756', N'2016', N'2017-12-14 00:00:00.000', N'2017-12-15 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2652', N'762', N'2015', N'2017-12-14 00:00:00.000', N'2017-12-14 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2653', N'2445', N'2016', N'2017-12-04 00:00:00.000', N'2017-12-26 00:00:00.000', N'1', N'2016 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2654', N'2445', N'2017', N'2017-12-27 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2655', N'914', N'2014', N'2017-12-19 00:00:00.000', N'2017-12-19 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2656', N'915', N'2016', N'2017-12-19 00:00:00.000', N'2017-12-19 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2657', N'2350', N'2017', N'2017-12-15 00:00:00.000', N'2017-12-15 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2658', N'746', N'2016', N'2017-12-20 00:00:00.000', N'2017-12-20 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2659', N'915', N'2016', N'2017-12-21 00:00:00.000', N'2017-12-21 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2660', N'914', N'2014', N'2017-12-21 00:00:00.000', N'2017-12-21 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2661', N'2444', N'2016', N'2017-12-04 00:00:00.000', N'2017-12-26 00:00:00.000', N'1', N'2016 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2662', N'2444', N'2017', N'2017-12-27 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2664', N'2312', N'2017', N'2017-12-22 00:00:00.000', N'2017-12-22 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2665', N'2199', N'2017', N'2017-12-25 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2017 IZINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2666', N'2381', N'2017', N'2017-12-22 00:00:00.000', N'2017-12-22 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2668', N'2400', N'2016', N'2017-12-28 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2669', N'2193', N'2017', N'2017-12-28 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2670', N'906', N'2017', N'2017-12-29 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2671', N'2321', N'2017', N'2018-01-02 00:00:00.000', N'2018-01-12 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2672', N'2412', N'2017', N'2018-01-02 00:00:00.000', N'2018-01-05 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2673', N'2328', N'2017', N'2017-12-29 00:00:00.000', N'2017-12-29 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2676', N'2328', N'2017', N'2018-01-03 00:00:00.000', N'2018-01-04 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2677', N'2335', N'2016', N'2018-01-05 00:00:00.000', N'2018-01-05 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2678', N'2322', N'2016', N'2018-01-08 00:00:00.000', N'2018-01-19 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2679', N'2400', N'2016', N'2018-01-04 00:00:00.000', N'2018-01-05 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2680', N'2330', N'2016', N'2018-01-10 00:00:00.000', N'2018-01-10 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2681', N'2132', N'2018', N'2018-01-11 00:00:00.000', N'2018-01-12 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2682', N'2373', N'2017', N'2018-01-05 00:00:00.000', N'2018-01-05 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2683', N'2299', N'2015', N'2018-01-11 00:00:00.000', N'2018-01-12 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2684', N'2298', N'2016', N'2018-01-10 00:00:00.000', N'2018-01-10 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2685', N'2359', N'2017', N'2018-01-09 00:00:00.000', N'2018-01-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2686', N'2320', N'2016', N'2018-01-22 00:00:00.000', N'2018-01-25 00:00:00.000', N'1', N'2016 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2687', N'2320', N'2018', N'2018-01-26 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2688', N'2446', N'2016', N'2018-01-08 00:00:00.000', N'2018-01-30 00:00:00.000', N'1', N'2016 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2689', N'2446', N'2017', N'2018-01-31 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2690', N'908', N'2018', N'2018-01-17 00:00:00.000', N'2018-01-17 00:00:00.000', N'1', N'2018 İZNİNDEN 1 GÜN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2691', N'1082', N'2016', N'2018-01-16 00:00:00.000', N'2018-01-17 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2692', N'2303', N'2017', N'2018-01-17 00:00:00.000', N'2018-01-17 00:00:00.000', N'1', N'2017 İZNİNDEN 1 GÜN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2693', N'906', N'2017', N'2018-01-18 00:00:00.000', N'2018-01-18 00:00:00.000', N'1', N'2017 İZNİNDEN 1 GÜN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2694', N'2389', N'2017', N'2018-01-15 00:00:00.000', N'2018-01-15 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2700', N'2362', N'2015', N'2018-01-22 00:00:00.000', N'2018-01-24 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2701', N'2362', N'2016', N'2018-01-25 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2702', N'2377', N'2016', N'2018-01-19 00:00:00.000', N'2018-01-19 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2703', N'762', N'2015', N'2018-01-19 00:00:00.000', N'2018-01-19 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2704', N'762', N'2016', N'2018-01-22 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2705', N'2203', N'2013', N'2018-01-22 00:00:00.000', N'2018-01-25 00:00:00.000', N'1', N'2013 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2706', N'2203', N'2014', N'2018-01-26 00:00:00.000', N'2018-02-09 00:00:00.000', N'1', N'2014 IZINDEN 13 GUN', N'13');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2707', N'2381', N'2017', N'2018-01-22 00:00:00.000', N'2018-01-22 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2708', N'2381', N'2018', N'2018-01-23 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2709', N'2373', N'2017', N'2018-01-24 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2710', N'2359', N'2017', N'2018-01-25 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2711', N'2312', N'2017', N'2018-01-29 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2712', N'2377', N'2016', N'2018-01-26 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2713', N'906', N'2017', N'2018-01-30 00:00:00.000', N'2018-02-01 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2714', N'906', N'2018', N'2018-02-02 00:00:00.000', N'2018-02-09 00:00:00.000', N'1', N'2018 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2715', N'761', N'2017', N'2018-01-25 00:00:00.000', N'2018-01-31 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2716', N'783', N'2018', N'2018-01-26 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2717', N'769', N'2017', N'2018-01-29 00:00:00.000', N'2018-01-31 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2718', N'2379', N'2018', N'2018-01-29 00:00:00.000', N'2018-01-29 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2719', N'2330', N'2017', N'2018-01-31 00:00:00.000', N'2018-01-31 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2720', N'2321', N'2017', N'2018-01-25 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2721', N'2357', N'2017', N'2018-01-31 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2722', N'2328', N'2017', N'2018-01-31 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2723', N'2298', N'2017', N'2018-01-31 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2724', N'2322', N'2016', N'2018-02-01 00:00:00.000', N'2018-02-01 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2725', N'2115', N'2017', N'2018-02-02 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2726', N'2349', N'2016', N'2018-01-08 00:00:00.000', N'2018-01-08 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2727', N'2349', N'2016', N'2018-02-02 00:00:00.000', N'2018-02-02 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2728', N'2132', N'2018', N'2018-02-05 00:00:00.000', N'2018-02-05 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2729', N'2402', N'2017', N'2018-01-09 00:00:00.000', N'2018-01-12 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2730', N'2402', N'2018', N'2018-01-23 00:00:00.000', N'2018-01-26 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2731', N'2340', N'2015', N'2018-02-06 00:00:00.000', N'2018-02-08 00:00:00.000', N'1', N'2015 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2732', N'2298', N'2017', N'2018-02-05 00:00:00.000', N'2018-02-05 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2733', N'2381', N'2017', N'2018-02-07 00:00:00.000', N'2018-02-07 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2734', N'2193', N'2017', N'2018-02-07 00:00:00.000', N'2018-02-09 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2735', N'2303', N'2017', N'2018-02-09 00:00:00.000', N'2018-02-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2736', N'756', N'2016', N'2018-02-13 00:00:00.000', N'2018-02-13 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2737', N'2359', N'2017', N'2018-02-09 00:00:00.000', N'2018-02-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2738', N'762', N'2016', N'2018-02-12 00:00:00.000', N'2018-02-12 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2739', N'2362', N'2016', N'2018-02-13 00:00:00.000', N'2018-02-13 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2740', N'908', N'2016', N'2018-02-16 00:00:00.000', N'2018-02-16 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2741', N'746', N'2016', N'2018-01-22 00:00:00.000', N'2018-01-22 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2742', N'769', N'2017', N'2018-02-20 00:00:00.000', N'2018-02-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2743', N'761', N'2018', N'2018-02-20 00:00:00.000', N'2018-02-20 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2744', N'2335', N'2016', N'2018-02-21 00:00:00.000', N'2018-02-23 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2745', N'2193', N'2017', N'2018-02-19 00:00:00.000', N'2018-02-23 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2746', N'762', N'2016', N'2018-02-21 00:00:00.000', N'2018-02-23 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2747', N'761', N'2018', N'2018-02-21 00:00:00.000', N'2018-02-21 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2748', N'2350', N'2015', N'2018-02-22 00:00:00.000', N'2018-02-23 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2749', N'779', N'2016', N'2018-02-22 00:00:00.000', N'2018-02-22 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2750', N'2303', N'2017', N'2018-02-27 00:00:00.000', N'2018-03-02 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2751', N'2349', N'2016', N'2018-02-27 00:00:00.000', N'2018-02-27 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2752', N'2340', N'2015', N'2018-02-28 00:00:00.000', N'2018-03-01 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2753', N'2402', N'2018', N'2018-02-27 00:00:00.000', N'2018-03-01 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2755', N'2377', N'2016', N'2018-03-02 00:00:00.000', N'2018-03-02 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2756', N'766', N'2018', N'2018-03-05 00:00:00.000', N'2018-03-09 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2757', N'2321', N'2018', N'2018-03-05 00:00:00.000', N'2018-03-05 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2758', N'908', N'2018', N'2018-03-07 00:00:00.000', N'2018-03-09 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2759', N'2335', N'2016', N'2018-03-08 00:00:00.000', N'2018-03-08 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2760', N'2194', N'2016', N'2018-03-08 00:00:00.000', N'2018-03-09 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2761', N'2365', N'2017', N'2018-03-07 00:00:00.000', N'2018-03-07 00:00:00.000', N'1', N'2017  IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2762', N'2330', N'2016', N'2018-03-08 00:00:00.000', N'2018-03-08 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2763', N'2298', N'2017', N'2018-03-08 00:00:00.000', N'2018-03-08 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2764', N'2372', N'2018', N'2018-03-09 00:00:00.000', N'2018-03-09 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2765', N'783', N'2018', N'2018-03-13 00:00:00.000', N'2018-03-13 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2766', N'2196', N'2018', N'2018-03-13 00:00:00.000', N'2018-03-13 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2767', N'2316', N'2017', N'2018-03-14 00:00:00.000', N'2018-03-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2768', N'762', N'2015', N'2018-03-13 00:00:00.000', N'2018-03-13 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2769', N'906', N'2018', N'2018-03-21 00:00:00.000', N'2018-03-22 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2770', N'2359', N'2017', N'2018-03-14 00:00:00.000', N'2018-03-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2771', N'2299', N'2016', N'2018-03-15 00:00:00.000', N'2018-03-16 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2772', N'746', N'2016', N'2018-03-13 00:00:00.000', N'2018-03-13 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2773', N'2364', N'2018', N'2018-03-19 00:00:00.000', N'2018-03-23 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2774', N'779', N'2016', N'2018-03-20 00:00:00.000', N'2018-03-21 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2775', N'2316', N'2018', N'2018-03-20 00:00:00.000', N'2018-03-23 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2777', N'2349', N'2016', N'2018-03-20 00:00:00.000', N'2018-03-21 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2778', N'2193', N'2018', N'2018-03-22 00:00:00.000', N'2018-03-23 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2779', N'2196', N'2018', N'2018-03-27 00:00:00.000', N'2018-03-30 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2780', N'2369', N'2018', N'2018-03-27 00:00:00.000', N'2018-03-27 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2782', N'2298', N'2018', N'2018-04-02 00:00:00.000', N'2018-04-02 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2783', N'2362', N'2017', N'2018-04-06 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2784', N'2335', N'2016', N'2018-04-02 00:00:00.000', N'2018-04-03 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2785', N'1082', N'2016', N'2018-03-26 00:00:00.000', N'2018-03-30 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2786', N'2402', N'2017', N'2018-03-30 00:00:00.000', N'2018-03-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2787', N'2303', N'2017', N'2018-04-04 00:00:00.000', N'2018-04-04 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2788', N'2350', N'2017', N'2018-04-05 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2789', N'2273', N'2018', N'2018-04-04 00:00:00.000', N'2018-04-04 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2790', N'2204', N'2014', N'2018-04-04 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2014 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2793', N'2198', N'2016', N'2018-04-05 00:00:00.000', N'2018-04-17 00:00:00.000', N'1', N'2016 YILI IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2794', N'908', N'2017', N'2018-04-06 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2795', N'2349', N'2016', N'2018-04-06 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2796', N'762', N'2015', N'2018-04-06 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2797', N'2369', N'2017', N'2018-04-09 00:00:00.000', N'2018-04-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2798', N'2330', N'2017', N'2018-04-09 00:00:00.000', N'2018-04-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2799', N'2132', N'2018', N'2018-04-16 00:00:00.000', N'2018-04-18 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2800', N'2389', N'2017', N'2018-04-13 00:00:00.000', N'2018-04-13 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2801', N'783', N'2018', N'2018-04-12 00:00:00.000', N'2018-04-12 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2802', N'746', N'2017', N'2018-04-13 00:00:00.000', N'2018-04-13 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2803', N'2204', N'2016', N'2018-04-16 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2016 IZNINDEN 15 GUN', N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2804', N'2377', N'2017', N'2018-04-16 00:00:00.000', N'2018-04-16 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2805', N'2377', N'2017', N'2018-04-17 00:00:00.000', N'2018-04-20 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2806', N'2400', N'2016', N'2018-04-19 00:00:00.000', N'2018-04-20 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2807', N'2340', N'2017', N'2018-04-19 00:00:00.000', N'2018-04-26 00:00:00.000', N'1', N'2017 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2808', N'2349', N'2016', N'2018-04-17 00:00:00.000', N'2018-04-17 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2809', N'2364', N'2018', N'2018-04-20 00:00:00.000', N'2018-04-20 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2810', N'908', N'2017', N'2018-04-20 00:00:00.000', N'2018-04-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2811', N'2405', N'2018', N'2018-04-24 00:00:00.000', N'2018-04-27 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2812', N'2423', N'2017', N'2018-04-11 00:00:00.000', N'2018-04-13 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2813', N'2422', N'2018', N'2018-04-13 00:00:00.000', N'2018-04-13 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2814', N'2425', N'2017', N'2018-04-17 00:00:00.000', N'2018-04-17 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2815', N'2422', N'2018', N'2018-04-18 00:00:00.000', N'2018-04-18 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2816', N'2350', N'2017', N'2018-04-25 00:00:00.000', N'2018-04-25 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2817', N'2417', N'2018', N'2018-04-20 00:00:00.000', N'2018-04-20 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2818', N'2417', N'2018', N'2018-04-10 00:00:00.000', N'2018-04-10 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2819', N'2442', N'2018', N'2018-04-16 00:00:00.000', N'2018-04-16 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2820', N'2412', N'2017', N'2018-04-30 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2017 İZNİNDEN 4 GÜN(1 mayıs resmi tatil)', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2821', N'2193', N'2017', N'2018-04-24 00:00:00.000', N'2018-04-24 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2822', N'2328', N'2017', N'2018-04-27 00:00:00.000', N'2018-04-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2823', N'2417', N'2018', N'2018-04-17 00:00:00.000', N'2018-04-17 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2824', N'2417', N'2018', N'2018-04-13 00:00:00.000', N'2018-04-13 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2825', N'769', N'2018', N'2018-05-02 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2826', N'2386', N'2017', N'2018-04-26 00:00:00.000', N'2018-04-26 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2827', N'2448', N'2010', N'2017-11-01 00:00:00.000', N'2017-11-22 00:00:00.000', N'1', N'2010 IZNINDEN 19 GUN', N'19');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2828', N'2401', N'2017', N'2018-04-27 00:00:00.000', N'2018-04-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2829', N'2298', N'2018', N'2018-05-02 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2831', N'754', N'2017', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2832', N'2357', N'2017', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2833', N'908', N'2017', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2834', N'2349', N'2016', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2835', N'753', N'2017', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2836', N'2370', N'2017', N'2018-05-02 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2837', N'2373', N'2017', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2838', N'2402', N'2017', N'2018-04-03 00:00:00.000', N'2018-04-06 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2839', N'2322', N'2017', N'2018-04-30 00:00:00.000', N'2018-04-30 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2840', N'2349', N'2016', N'2018-05-02 00:00:00.000', N'2018-05-02 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2841', N'756', N'2017', N'2018-05-03 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2842', N'914', N'2015', N'2018-05-03 00:00:00.000', N'2018-05-03 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2843', N'915', N'2016', N'2018-05-03 00:00:00.000', N'2018-05-03 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2844', N'2328', N'2017', N'2018-05-03 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2845', N'2428', N'2018', N'2018-05-04 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2846', N'2373', N'2018', N'2018-05-07 00:00:00.000', N'2018-05-08 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2847', N'772', N'2016', N'2018-05-07 00:00:00.000', N'2018-05-08 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2848', N'2420', N'2018', N'2018-05-03 00:00:00.000', N'2018-05-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2849', N'2407', N'2017', N'2018-05-05 00:00:00.000', N'2018-05-10 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2850', N'2312', N'2018', N'2018-05-11 00:00:00.000', N'2018-05-14 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2851', N'2421', N'2018', N'2018-05-07 00:00:00.000', N'2018-05-07 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2852', N'2273', N'2018', N'2018-05-09 00:00:00.000', N'2018-05-09 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2853', N'2417', N'2018', N'2018-05-10 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2854', N'2424', N'2017', N'2018-05-10 00:00:00.000', N'2018-05-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2855', N'2421', N'2018', N'2018-05-10 00:00:00.000', N'2018-05-10 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN ', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2856', N'2418', N'2017', N'2018-05-10 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2857', N'2423', N'2017', N'2018-05-10 00:00:00.000', N'2018-05-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2858', N'2414', N'2017', N'2018-05-10 00:00:00.000', N'2018-05-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2859', N'2418', N'2017', N'2018-05-04 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2860', N'2359', N'2017', N'2018-05-10 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2861', N'2402', N'2017', N'2017-12-22 00:00:00.000', N'2017-12-22 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2862', N'756', N'2017', N'2018-05-25 00:00:00.000', N'2018-05-31 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2863', N'756', N'2016', N'2018-05-14 00:00:00.000', N'2018-05-24 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2864', N'2377', N'2016', N'2018-05-11 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2865', N'779', N'2016', N'2018-05-14 00:00:00.000', N'2018-05-18 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2866', N'2379', N'2018', N'2018-05-11 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2867', N'2299', N'2016', N'2018-05-10 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2868', N'772', N'2016', N'2018-05-11 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2869', N'2343', N'2017', N'2018-05-28 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2017 IZNINDEN 16 GUN', N'16');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2870', N'2343', N'2016', N'2018-05-16 00:00:00.000', N'2018-05-26 00:00:00.000', N'1', N'2016 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2871', N'915', N'2017', N'2018-05-14 00:00:00.000', N'2018-05-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2872', N'914', N'2015', N'2018-05-14 00:00:00.000', N'2018-05-14 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2873', N'783', N'2018', N'2018-05-14 00:00:00.000', N'2018-05-14 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2874', N'2349', N'2017', N'2018-05-14 00:00:00.000', N'2018-05-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2875', N'753', N'2018', N'2018-05-18 00:00:00.000', N'2018-06-07 00:00:00.000', N'1', N'2018 IZNINDEN 18 GUN', N'18');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2876', N'753', N'2017', N'2018-05-16 00:00:00.000', N'2018-05-17 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2877', N'2424', N'2017', N'2018-05-16 00:00:00.000', N'2018-05-18 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2878', N'754', N'2017', N'2018-05-17 00:00:00.000', N'2018-05-17 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2879', N'908', N'2017', N'2018-05-17 00:00:00.000', N'2018-05-17 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2880', N'2363', N'2017', N'2018-05-21 00:00:00.000', N'2018-06-12 00:00:00.000', N'1', N'2017 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2881', N'2359', N'2017', N'2018-05-18 00:00:00.000', N'2018-05-18 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2882', N'746', N'2016', N'2018-05-18 00:00:00.000', N'2018-05-18 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2883', N'2420', N'2018', N'2018-05-18 00:00:00.000', N'2018-05-18 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2884', N'2409', N'2018', N'2018-05-21 00:00:00.000', N'2018-06-06 00:00:00.000', N'1', N'2018 IZNINDEN 15 GUN', N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2885', N'2200', N'2016', N'2018-05-21 00:00:00.000', N'2018-05-25 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2886', N'2349', N'2017', N'2018-05-21 00:00:00.000', N'2018-05-21 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2887', N'2423', N'2017', N'2018-05-21 00:00:00.000', N'2018-05-25 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2888', N'2193', N'2018', N'2018-05-22 00:00:00.000', N'2018-05-25 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2889', N'906', N'2018', N'2018-05-22 00:00:00.000', N'2018-05-22 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2890', N'2223', N'2015', N'2018-05-28 00:00:00.000', N'2018-06-08 00:00:00.000', N'1', N'2015 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2891', N'2223', N'2016', N'2018-06-09 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2892', N'754', N'2018', N'2018-05-24 00:00:00.000', N'2018-05-24 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2893', N'2447', N'2014', N'2018-04-30 00:00:00.000', N'2018-05-04 00:00:00.000', N'1', N'2014 YILINDAN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2894', N'2447', N'2015', N'2018-05-05 00:00:00.000', N'2018-05-28 00:00:00.000', N'1', N'2015 YILINDAN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2895', N'2447', N'2016', N'2018-05-29 00:00:00.000', N'2018-05-31 00:00:00.000', N'1', N'2016 IZNIDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2896', N'2282', N'2017', N'2018-06-04 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2897', N'2388', N'2017', N'2018-06-04 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2898', N'2388', N'2015', N'2018-06-01 00:00:00.000', N'2018-06-02 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2899', N'762', N'2015', N'2018-05-30 00:00:00.000', N'2018-05-30 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2900', N'2423', N'2017', N'2018-05-11 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2901', N'2402', N'2017', N'2018-05-10 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2902', N'1771', N'2016', N'2018-06-04 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2903', N'1771', N'2017', N'2018-06-15 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2017 IZNINDEN 17 GUN(3GUNBAYRAM)', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2904', N'769', N'2017', N'2018-06-08 00:00:00.000', N'2018-06-08 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2905', N'769', N'2017', N'2018-06-06 00:00:00.000', N'2018-06-06 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2906', N'2386', N'2017', N'2018-06-04 00:00:00.000', N'2018-06-06 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2908', N'2400', N'2015', N'2018-06-05 00:00:00.000', N'2018-06-05 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2909', N'2417', N'2018', N'2018-06-01 00:00:00.000', N'2018-06-01 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2910', N'2414', N'2017', N'2018-06-05 00:00:00.000', N'2018-06-05 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2911', N'1082', N'2016', N'2018-05-25 00:00:00.000', N'2018-05-25 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2912', N'2203', N'2014', N'2018-06-04 00:00:00.000', N'2018-06-11 00:00:00.000', N'1', N'2014 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2913', N'2203', N'2015', N'2018-06-12 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2015 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2914', N'2447', N'2016', N'2018-06-04 00:00:00.000', N'2018-06-16 00:00:00.000', N'1', N'2016 IZNINDEN 12 GUN(2013-2014 FAZLA KULLANILAN)', N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2915', N'2200', N'2016', N'2018-06-07 00:00:00.000', N'2018-06-08 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2916', N'754', N'2017', N'2018-06-07 00:00:00.000', N'2018-06-07 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2917', N'908', N'2017', N'2018-06-07 00:00:00.000', N'2018-06-07 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2918', N'780', N'2013', N'2018-06-11 00:00:00.000', N'2018-06-13 00:00:00.000', N'1', N'2013 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2919', N'780', N'2015', N'2018-06-14 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2015 IZNINDEN 18 GUN', N'18');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2920', N'2342', N'2017', N'2018-06-11 00:00:00.000', N'2018-06-12 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2921', N'2374', N'2016', N'2018-06-06 00:00:00.000', N'2018-06-06 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2922', N'766', N'2018', N'2018-06-07 00:00:00.000', N'2018-06-08 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2923', N'779', N'2017', N'2018-06-11 00:00:00.000', N'2018-06-13 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2924', N'915', N'2016', N'2018-06-11 00:00:00.000', N'2018-06-11 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2925', N'914', N'2015', N'2018-06-11 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2926', N'2421', N'2018', N'2018-06-01 00:00:00.000', N'2018-06-01 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2927', N'2421', N'2018', N'2018-06-11 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2928', N'2364', N'2018', N'2018-06-04 00:00:00.000', N'2018-06-04 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2929', N'2349', N'2017', N'2018-06-12 00:00:00.000', N'2018-06-13 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2930', N'2273', N'2018', N'2018-06-11 00:00:00.000', N'2018-06-11 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2931', N'754', N'2017', N'2018-06-12 00:00:00.000', N'2018-06-12 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2932', N'2377', N'2017', N'2018-06-18 00:00:00.000', N'2018-06-26 00:00:00.000', N'1', N'2017 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2933', N'2332', N'2018', N'2018-07-04 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2018 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2934', N'2332', N'2017', N'2018-06-18 00:00:00.000', N'2018-07-03 00:00:00.000', N'1', N'2017 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2935', N'2132', N'2018', N'2018-06-18 00:00:00.000', N'2018-06-22 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2936', N'2417', N'2018', N'2018-06-05 00:00:00.000', N'2018-06-05 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2937', N'2417', N'2018', N'2018-06-12 00:00:00.000', N'2018-06-12 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2938', N'2298', N'2018', N'2018-06-18 00:00:00.000', N'2018-06-19 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2939', N'2193', N'2018', N'2018-06-18 00:00:00.000', N'2018-06-22 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2940', N'2403', N'2018', N'2018-06-18 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2941', N'2357', N'2018', N'2018-06-18 00:00:00.000', N'2018-06-22 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2942', N'2349', N'2017', N'2018-06-14 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2943', N'2349', N'2018', N'2018-06-18 00:00:00.000', N'2018-06-22 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2944', N'2328', N'2017', N'2018-06-18 00:00:00.000', N'2018-06-18 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2945', N'2402', N'2006', N'2006-10-31 00:00:00.000', N'2006-11-15 00:00:00.000', N'1', N'2006 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2946', N'2402', N'2007', N'2007-09-26 00:00:00.000', N'2007-10-11 00:00:00.000', N'1', N'2007 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2947', N'2402', N'2008', N'2008-10-06 00:00:00.000', N'2008-10-21 00:00:00.000', N'1', N'2008 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2948', N'2402', N'2009', N'2009-06-29 00:00:00.000', N'2009-07-14 00:00:00.000', N'1', N'2009 İZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2949', N'2372', N'2018', N'2018-07-02 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2950', N'772', N'2016', N'2018-06-20 00:00:00.000', N'2018-06-20 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2951', N'754', N'2017', N'2018-06-20 00:00:00.000', N'2018-06-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2952', N'779', N'2018', N'2018-07-02 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2953', N'908', N'2017', N'2018-06-19 00:00:00.000', N'2018-06-19 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2954', N'762', N'2015', N'2018-06-22 00:00:00.000', N'2018-06-22 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2955', N'2408', N'2018', N'2018-06-29 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2018 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2956', N'746', N'2017', N'2018-06-26 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2957', N'2400', N'2016', N'2018-06-25 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2958', N'2338', N'2018', N'2018-06-21 00:00:00.000', N'2018-06-21 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2959', N'2198', N'2017', N'2018-06-25 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2960', N'2412', N'2016', N'2018-07-16 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2961', N'2357', N'2018', N'2018-06-26 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2962', N'2362', N'2017', N'2018-07-02 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2963', N'2424', N'2017', N'2018-07-02 00:00:00.000', N'2018-07-09 00:00:00.000', N'1', N'2017 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2964', N'2424', N'2018', N'2018-07-10 00:00:00.000', N'2018-07-14 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2965', N'2414', N'2017', N'2018-06-27 00:00:00.000', N'2018-06-28 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2966', N'2374', N'2016', N'2018-06-22 00:00:00.000', N'2018-06-22 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2967', N'906', N'2018', N'2018-06-27 00:00:00.000', N'2018-06-27 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2968', N'2359', N'2017', N'2018-06-28 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2969', N'783', N'2016', N'2018-07-02 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2970', N'2203', N'2015', N'2018-07-02 00:00:00.000', N'2018-07-07 00:00:00.000', N'1', N'2015 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2971', N'2203', N'2016', N'2018-07-09 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2972', N'2453', N'2011', N'2011-07-20 00:00:00.000', N'2011-08-04 00:00:00.000', N'1', N'2011 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2973', N'2453', N'2012', N'2012-07-11 00:00:00.000', N'2012-07-26 00:00:00.000', N'1', N'2012 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2974', N'2453', N'2014', N'2014-07-21 00:00:00.000', N'2014-08-05 00:00:00.000', N'1', N'2014 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2975', N'2453', N'2015', N'2016-10-03 00:00:00.000', N'2016-10-08 00:00:00.000', N'1', N'2015 DEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2976', N'2453', N'2015', N'2016-12-23 00:00:00.000', N'2016-12-24 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2977', N'2453', N'2015', N'2017-07-31 00:00:00.000', N'2017-07-31 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2978', N'2453', N'2016', N'2017-08-01 00:00:00.000', N'2017-08-11 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2979', N'2453', N'2015', N'2018-02-26 00:00:00.000', N'2018-03-02 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2980', N'2453', N'2016', N'2018-03-13 00:00:00.000', N'2018-03-13 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2981', N'2453', N'2013', N'2013-07-29 00:00:00.000', N'2013-08-13 00:00:00.000', N'1', N'2013 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2982', N'2453', N'2016', N'2018-05-10 00:00:00.000', N'2018-05-11 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2983', N'2343', N'2017', N'2018-07-09 00:00:00.000', N'2018-07-12 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2984', N'2343', N'2018', N'2018-07-13 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2985', N'2423', N'2017', N'2018-06-29 00:00:00.000', N'2018-06-29 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2986', N'761', N'2018', N'2018-07-03 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2987', N'2338', N'2018', N'2018-07-02 00:00:00.000', N'2018-07-02 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2988', N'2423', N'2017', N'2018-07-03 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2990', N'2328', N'2018', N'2018-07-04 00:00:00.000', N'2018-07-04 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2991', N'2381', N'2018', N'2018-07-03 00:00:00.000', N'2018-07-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2992', N'2342', N'2017', N'2018-07-09 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2993', N'2417', N'2018', N'2018-06-04 00:00:00.000', N'2018-06-04 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2995', N'2386', N'2017', N'2018-07-05 00:00:00.000', N'2018-07-06 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2996', N'762', N'2015', N'2018-07-09 00:00:00.000', N'2018-07-09 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2997', N'762', N'2016', N'2018-07-10 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2998', N'1082', N'2016', N'2018-07-09 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2016 IZNINDEN11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'2999', N'2349', N'2017', N'2018-07-10 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3000', N'754', N'2017', N'2018-07-10 00:00:00.000', N'2018-07-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3001', N'2196', N'2018', N'2018-07-11 00:00:00.000', N'2018-07-11 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3002', N'2405', N'2018', N'2018-07-11 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3003', N'2359', N'2017', N'2018-07-10 00:00:00.000', N'2018-07-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3004', N'2381', N'2018', N'2018-07-11 00:00:00.000', N'2018-07-11 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3005', N'2446', N'2015', N'2015-12-24 00:00:00.000', N'2016-01-15 00:00:00.000', N'1', N'2015 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3006', N'2446', N'2014', N'2015-12-01 00:00:00.000', N'2015-12-23 00:00:00.000', N'1', N'2014 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3007', N'2446', N'2013', N'2013-10-04 00:00:00.000', N'2013-10-26 00:00:00.000', N'1', N'2013 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3008', N'2446', N'2012', N'2012-09-21 00:00:00.000', N'2012-10-06 00:00:00.000', N'1', N'2012 IZNI 14 GUN ', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3009', N'2446', N'2011', N'2012-09-06 00:00:00.000', N'2012-09-21 00:00:00.000', N'1', N'2011 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3010', N'2446', N'2010', N'2012-08-17 00:00:00.000', N'2012-09-05 00:00:00.000', N'1', N'2010 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3011', N'2446', N'2009', N'2012-08-01 00:00:00.000', N'2012-08-16 00:00:00.000', N'1', N'2009 DAN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3012', N'2446', N'2008', N'2008-07-07 00:00:00.000', N'2008-07-22 00:00:00.000', N'1', N'2008 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3013', N'2320', N'2018', N'2018-07-16 00:00:00.000', N'2018-08-02 00:00:00.000', N'1', N'2018 IZNINDEN 16 GUN', N'16');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3014', N'783', N'2018', N'2018-07-12 00:00:00.000', N'2018-07-12 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3015', N'2428', N'2018', N'2018-07-16 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3016', N'2365', N'2017', N'2018-07-12 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3017', N'2357', N'2017', N'2018-07-13 00:00:00.000', N'2018-07-13 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3018', N'2350', N'2017', N'2018-07-16 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3019', N'2340', N'2016', N'2018-07-13 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2016 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3020', N'2374', N'2018', N'2018-08-17 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3021', N'2374', N'2017', N'2018-08-06 00:00:00.000', N'2018-08-16 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3022', N'2370', N'2017', N'2018-07-16 00:00:00.000', N'2018-07-16 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3023', N'2370', N'2018', N'2018-07-17 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3024', N'2410', N'2018', N'2018-07-14 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2018 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3025', N'753', N'2018', N'2018-07-12 00:00:00.000', N'2018-07-12 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3026', N'2322', N'2017', N'2018-07-16 00:00:00.000', N'2018-07-17 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3027', N'2321', N'2018', N'2018-07-23 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3028', N'2379', N'2018', N'2018-07-16 00:00:00.000', N'2018-07-16 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3029', N'761', N'2018', N'2018-07-19 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3030', N'2243', N'2016', N'2018-08-06 00:00:00.000', N'2018-08-06 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3031', N'2243', N'2017', N'2018-08-07 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3032', N'2243', N'2018', N'2018-08-18 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3033', N'2194', N'2016', N'2018-08-06 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2016 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3034', N'2373', N'2018', N'2018-07-23 00:00:00.000', N'2018-08-03 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3035', N'2420', N'2018', N'2018-07-16 00:00:00.000', N'2018-07-25 00:00:00.000', N'1', N'2018 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3036', N'2365', N'2017', N'2018-07-20 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3037', N'2303', N'2017', N'2018-07-19 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3038', N'908', N'2018', N'2018-07-23 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3039', N'2338', N'2018', N'2018-07-20 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3040', N'2386', N'2017', N'2018-07-20 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3041', N'756', N'2017', N'2018-07-20 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3042', N'2316', N'2018', N'2018-07-23 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3043', N'2349', N'2018', N'2018-07-23 00:00:00.000', N'2018-07-23 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3044', N'1771', N'2017', N'2018-07-20 00:00:00.000', N'2018-07-20 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3045', N'2312', N'2018', N'2018-08-06 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3046', N'2340', N'2015', N'2018-07-23 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2015 IZINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3047', N'2328', N'2018', N'2018-07-23 00:00:00.000', N'2018-07-23 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3048', N'2444', N'2008', N'2012-03-01 00:00:00.000', N'2012-03-16 00:00:00.000', N'1', N'2008 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3049', N'2444', N'2009', N'2012-03-17 00:00:00.000', N'2012-04-02 00:00:00.000', N'1', N'2009 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3050', N'2444', N'2010', N'2012-04-03 00:00:00.000', N'2012-04-18 00:00:00.000', N'1', N'2010 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3051', N'2444', N'2011', N'2012-04-19 00:00:00.000', N'2012-05-04 00:00:00.000', N'1', N'2011 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3052', N'2444', N'2012', N'2012-05-05 00:00:00.000', N'2012-05-21 00:00:00.000', N'1', N'2012 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3053', N'2444', N'2013', N'2013-09-02 00:00:00.000', N'2013-09-24 00:00:00.000', N'1', N'2013 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3054', N'2444', N'2014', N'2014-05-21 00:00:00.000', N'2014-06-12 00:00:00.000', N'1', N'2014 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3055', N'2444', N'2015', N'2015-11-18 00:00:00.000', N'2015-12-10 00:00:00.000', N'1', N'2015 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3056', N'2445', N'2015', N'2015-11-18 00:00:00.000', N'2015-12-10 00:00:00.000', N'1', N'2015 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3057', N'2445', N'2014', N'2015-05-08 00:00:00.000', N'2015-05-30 00:00:00.000', N'1', N'2014 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3058', N'2445', N'2013', N'2015-04-13 00:00:00.000', N'2015-05-05 00:00:00.000', N'1', N'2013 IZNI 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3059', N'2445', N'2012', N'2012-05-05 00:00:00.000', N'2012-05-21 00:00:00.000', N'1', N'2012 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3060', N'2445', N'2011', N'2012-04-19 00:00:00.000', N'2012-05-04 00:00:00.000', N'1', N'2011 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3061', N'2445', N'2010', N'2012-04-03 00:00:00.000', N'2012-04-18 00:00:00.000', N'1', N'2010 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3062', N'2445', N'2009', N'2012-03-17 00:00:00.000', N'2012-04-02 00:00:00.000', N'1', N'2009 IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3063', N'2445', N'2008', N'2012-03-01 00:00:00.000', N'2012-03-16 00:00:00.000', N'1', N'2008  IZNI 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3064', N'2444', N'2017', N'2018-07-23 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2017 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3065', N'2444', N'2018', N'2018-08-11 00:00:00.000', N'2018-09-08 00:00:00.000', N'1', N'2018 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3066', N'2445', N'2017', N'2018-07-23 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2017 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3067', N'2445', N'2018', N'2018-08-11 00:00:00.000', N'2018-09-08 00:00:00.000', N'1', N'2018 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3068', N'2446', N'2017', N'2018-07-23 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2017 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3069', N'2446', N'2018', N'2018-08-11 00:00:00.000', N'2018-09-08 00:00:00.000', N'1', N'2018 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3070', N'779', N'2017', N'2018-07-24 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3071', N'754', N'2017', N'2018-07-26 00:00:00.000', N'2018-07-26 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3072', N'2330', N'2017', N'2018-08-02 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2017 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3073', N'2415', N'2017', N'2018-07-31 00:00:00.000', N'2018-08-07 00:00:00.000', N'1', N'2017 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3075', N'2405', N'2018', N'2018-07-26 00:00:00.000', N'2018-07-26 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3076', N'2322', N'2017', N'2018-07-26 00:00:00.000', N'2018-07-26 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3077', N'2132', N'2017', N'2018-07-27 00:00:00.000', N'2018-07-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3078', N'2359', N'2017', N'2018-07-30 00:00:00.000', N'2018-08-03 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3079', N'2415', N'2018', N'2018-08-07 00:00:00.000', N'2018-08-07 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3080', N'2421', N'2018', N'2018-07-30 00:00:00.000', N'2018-07-30 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3081', N'2273', N'2018', N'2018-08-06 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3082', N'754', N'2017', N'2018-08-01 00:00:00.000', N'2018-08-01 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3083', N'783', N'2016', N'2018-08-01 00:00:00.000', N'2018-08-03 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3084', N'2401', N'2018', N'2018-08-06 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3085', N'769', N'2017', N'2018-08-27 00:00:00.000', N'2018-09-06 00:00:00.000', N'1', N'2017 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3086', N'769', N'2018', N'2018-09-07 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3087', N'2115', N'2017', N'2018-08-06 00:00:00.000', N'2018-08-13 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3088', N'761', N'2018', N'2018-08-03 00:00:00.000', N'2018-08-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3089', N'756', N'2017', N'2018-08-06 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3090', N'2442', N'2018', N'2018-08-06 00:00:00.000', N'2018-08-16 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3091', N'2199', N'2016', N'2018-08-06 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3092', N'2338', N'2018', N'2018-08-06 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3093', N'2406', N'2018', N'2018-08-03 00:00:00.000', N'2018-08-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3094', N'780', N'2015', N'2018-08-06 00:00:00.000', N'2018-08-07 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3095', N'780', N'2016', N'2018-08-08 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3096', N'2389', N'2016', N'2018-07-30 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2016 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3097', N'2303', N'2017', N'2018-08-13 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3098', N'2322', N'2017', N'2018-08-07 00:00:00.000', N'2018-08-08 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3099', N'2405', N'2018', N'2018-08-06 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3100', N'766', N'2018', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3101', N'2400', N'2016', N'2018-08-06 00:00:00.000', N'2018-08-06 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3102', N'906', N'2018', N'2018-08-09 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3103', N'762', N'2015', N'2018-08-09 00:00:00.000', N'2018-08-09 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3104', N'779', N'2017', N'2018-08-09 00:00:00.000', N'2018-08-10 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3105', N'2193', N'2018', N'2018-08-13 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3106', N'2386', N'2017', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3107', N'2359', N'2017', N'2018-08-13 00:00:00.000', N'2018-08-13 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3108', N'2417', N'2018', N'2018-08-14 00:00:00.000', N'2018-08-14 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3109', N'2406', N'2018', N'2018-08-15 00:00:00.000', N'2018-08-15 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3110', N'2406', N'2018', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3111', N'2241', N'2014', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2014 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3112', N'2241', N'2016', N'2018-08-01 00:00:00.000', N'2018-08-14 00:00:00.000', N'1', N'2016 IZNINDEN 12 GUN', N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3113', N'780', N'2016', N'2018-08-27 00:00:00.000', N'2018-09-15 00:00:00.000', N'1', N'2016 IZNINDEN 17 GUN', N'17');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3114', N'780', N'2017', N'2018-09-16 00:00:00.000', N'2018-10-09 00:00:00.000', N'1', N'2017 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3115', N'780', N'2018', N'2018-10-10 00:00:00.000', N'2018-10-12 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3116', N'754', N'2017', N'2018-08-16 00:00:00.000', N'2018-08-16 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3117', N'2400', N'2016', N'2018-08-16 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2016 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3118', N'2322', N'2017', N'2018-08-15 00:00:00.000', N'2018-08-16 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3119', N'2115', N'2017', N'2018-08-27 00:00:00.000', N'2018-08-29 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3120', N'2115', N'2018', N'2018-08-31 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3121', N'1082', N'2017', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3122', N'762', N'2015', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3123', N'2421', N'2018', N'2018-08-17 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3124', N'2424', N'2018', N'2018-08-17 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3125', N'2194', N'2017', N'2018-09-05 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3126', N'2194', N'2016', N'2018-08-27 00:00:00.000', N'2018-09-04 00:00:00.000', N'1', N'2016 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3127', N'2350', N'2015', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2015 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3128', N'2411', N'2018', N'2018-10-08 00:00:00.000', N'2018-10-12 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3129', N'2411', N'2017', N'2018-09-14 00:00:00.000', N'2018-10-06 00:00:00.000', N'1', N'2017 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3130', N'2411', N'2016', N'2018-08-28 00:00:00.000', N'2018-09-13 00:00:00.000', N'1', N'2016 IZNINDEN 14 GUN', N'14');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3131', N'2411', N'2014', N'2018-08-27 00:00:00.000', N'2018-08-27 00:00:00.000', N'1', N'2014 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3132', N'2447', N'2017', N'2018-09-03 00:00:00.000', N'2018-09-25 00:00:00.000', N'1', N'2017 IZNINDEN 20 GUN', N'20');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3133', N'2447', N'2016', N'2018-08-27 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3134', N'2403', N'2018', N'2018-08-27 00:00:00.000', N'2018-08-30 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3135', N'2298', N'2017', N'2018-09-03 00:00:00.000', N'2018-09-12 00:00:00.000', N'1', N'2017 IZNINDEN 9GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3136', N'2298', N'2018', N'2018-09-13 00:00:00.000', N'2018-09-21 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3137', N'2328', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-14 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3138', N'2423', N'2017', N'2018-08-27 00:00:00.000', N'2018-08-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN ', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3139', N'2223', N'2016', N'2018-08-17 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3141', N'2132', N'2018', N'2018-08-31 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3142', N'2362', N'2017', N'2018-08-31 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3143', N'746', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3144', N'2412', N'2017', N'2018-09-04 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3145', N'2412', N'2016', N'2018-09-03 00:00:00.000', N'2018-09-03 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3146', N'2349', N'2018', N'2018-08-31 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3147', N'906', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3148', N'2330', N'2017', N'2018-07-16 00:00:00.000', N'2018-07-16 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3149', N'2357', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3150', N'2400', N'2017', N'2018-08-31 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2017 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3151', N'2273', N'2018', N'2018-08-31 00:00:00.000', N'2018-08-31 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3152', N'2196', N'2017', N'2018-08-27 00:00:00.000', N'2018-08-29 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3153', N'2453', N'2016', N'2018-08-06 00:00:00.000', N'2018-08-13 00:00:00.000', N'1', N'2016 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3154', N'2453', N'2017', N'2018-08-14 00:00:00.000', N'2018-08-17 00:00:00.000', N'1', N'2017 IZNINDEN 4 GUN ', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3155', N'2241', N'2016', N'2018-09-01 00:00:00.000', N'2018-09-14 00:00:00.000', N'1', N'2016 IZNINDEN 12 GUN', N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3156', N'908', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-14 00:00:00.000', N'1', N'2018 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3157', N'2381', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3158', N'2204', N'2015', N'2018-09-10 00:00:00.000', N'2018-09-19 00:00:00.000', N'1', N'2015 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3159', N'2204', N'2017', N'2018-09-20 00:00:00.000', N'2018-09-28 00:00:00.000', N'1', N'2017 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3160', N'2414', N'2017', N'2018-09-04 00:00:00.000', N'2018-09-14 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3161', N'2332', N'2018', N'2018-09-07 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3162', N'2388', N'2016', N'2018-09-17 00:00:00.000', N'2018-09-26 00:00:00.000', N'1', N'2016 IZNINDEN 9 GUN', N'9');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3163', N'2388', N'2017', N'2018-09-27 00:00:00.000', N'2018-09-28 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3164', N'2364', N'2018', N'2018-09-03 00:00:00.000', N'2018-09-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3165', N'2359', N'2018', N'2018-09-12 00:00:00.000', N'2018-09-14 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3166', N'2370', N'2017', N'2018-09-10 00:00:00.000', N'2018-09-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3167', N'2196', N'2017', N'2018-09-10 00:00:00.000', N'2018-09-12 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3168', N'2316', N'2017', N'2018-08-27 00:00:00.000', N'2018-09-07 00:00:00.000', N'1', N'2017 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3169', N'2243', N'2018', N'2018-09-10 00:00:00.000', N'2018-09-11 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3170', N'2321', N'2018', N'2018-09-10 00:00:00.000', N'2018-09-10 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3171', N'2408', N'2018', N'2018-09-21 00:00:00.000', N'2018-09-28 00:00:00.000', N'1', N'2018 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3172', N'2196', N'2017', N'2018-09-13 00:00:00.000', N'2018-09-14 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3173', N'2417', N'2018', N'2018-09-01 00:00:00.000', N'2018-09-12 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3174', N'2299', N'2016', N'2018-09-17 00:00:00.000', N'2018-09-21 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3175', N'2418', N'2017', N'2018-09-17 00:00:00.000', N'2018-09-28 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3176', N'2338', N'2018', N'2018-09-10 00:00:00.000', N'2018-09-12 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3177', N'1771', N'2018', N'2018-09-21 00:00:00.000', N'2018-09-21 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3178', N'1771', N'2017', N'2018-09-19 00:00:00.000', N'2018-09-20 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3179', N'2349', N'2018', N'2018-09-18 00:00:00.000', N'2018-09-18 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3180', N'915', N'2017', N'2018-06-12 00:00:00.000', N'2018-06-14 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3182', N'915', N'2015', N'2018-09-17 00:00:00.000', N'2018-09-18 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3183', N'914', N'2015', N'2018-09-17 00:00:00.000', N'2018-09-18 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3184', N'766', N'2018', N'2018-09-20 00:00:00.000', N'2018-09-21 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3185', N'1082', N'2017', N'2018-09-24 00:00:00.000', N'2018-09-25 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3186', N'2386', N'2018', N'2018-09-25 00:00:00.000', N'2018-09-26 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3187', N'2379', N'2018', N'2018-09-21 00:00:00.000', N'2018-09-21 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3188', N'2359', N'2018', N'2018-09-21 00:00:00.000', N'2018-09-21 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3189', N'915', N'2015', N'2018-09-20 00:00:00.000', N'2018-09-20 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3190', N'2303', N'2017', N'2018-09-25 00:00:00.000', N'2018-09-25 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3191', N'914', N'2015', N'2018-09-20 00:00:00.000', N'2018-09-20 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3192', N'754', N'2017', N'2018-09-24 00:00:00.000', N'2018-09-24 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3193', N'2405', N'2018', N'2018-09-24 00:00:00.000', N'2018-09-26 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3194', N'783', N'2016', N'2018-09-24 00:00:00.000', N'2018-09-24 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3195', N'1771', N'2018', N'2018-09-22 00:00:00.000', N'2018-09-26 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3196', N'779', N'2018', N'2018-09-24 00:00:00.000', N'2018-09-25 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3197', N'2386', N'2018', N'2018-09-27 00:00:00.000', N'2018-09-28 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3198', N'772', N'2016', N'2018-10-01 00:00:00.000', N'2018-10-03 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3199', N'772', N'2017', N'2018-10-04 00:00:00.000', N'2018-10-12 00:00:00.000', N'1', N'2017 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3200', N'915', N'2017', N'2018-09-26 00:00:00.000', N'2018-09-26 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3201', N'914', N'2015', N'2018-09-26 00:00:00.000', N'2018-09-26 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3202', N'2377', N'2017', N'2018-09-28 00:00:00.000', N'2018-09-28 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3203', N'769', N'2018', N'2018-09-27 00:00:00.000', N'2018-09-27 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3204', N'2377', N'2016', N'2018-09-17 00:00:00.000', N'2018-09-17 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3205', N'2321', N'2018', N'2018-10-01 00:00:00.000', N'2018-10-01 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3206', N'783', N'2017', N'2018-10-03 00:00:00.000', N'2018-10-05 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3207', N'906', N'2018', N'2018-10-03 00:00:00.000', N'2018-10-03 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3208', N'2349', N'2018', N'2018-10-03 00:00:00.000', N'2018-10-04 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3209', N'754', N'2018', N'2018-10-04 00:00:00.000', N'2018-10-12 00:00:00.000', N'1', N'2018 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3210', N'2421', N'2018', N'2018-10-02 00:00:00.000', N'2018-10-10 00:00:00.000', N'1', N'2018 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3211', N'2321', N'2018', N'2018-10-02 00:00:00.000', N'2018-10-03 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3212', N'2389', N'2017', N'2018-10-04 00:00:00.000', N'2018-10-04 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3213', N'2364', N'2018', N'2018-10-08 00:00:00.000', N'2018-10-08 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3214', N'2359', N'2017', N'2018-10-10 00:00:00.000', N'2018-10-10 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3215', N'783', N'2017', N'2018-10-11 00:00:00.000', N'2018-10-12 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3216', N'2420', N'2018', N'2018-10-16 00:00:00.000', N'2018-10-16 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3217', N'2422', N'2018', N'2018-10-10 00:00:00.000', N'2018-10-10 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3218', N'2193', N'2018', N'2018-10-12 00:00:00.000', N'2018-10-12 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3219', N'2364', N'2018', N'2018-10-15 00:00:00.000', N'2018-10-16 00:00:00.000', N'1', N'2018 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3220', N'2338', N'2018', N'2018-10-10 00:00:00.000', N'2018-10-10 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3221', N'2377', N'2017', N'2018-10-19 00:00:00.000', N'2018-10-19 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3222', N'2374', N'2018', N'2018-10-17 00:00:00.000', N'2018-10-17 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3223', N'2407', N'2018', N'2018-10-19 00:00:00.000', N'2018-10-22 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3224', N'2421', N'2018', N'2018-10-18 00:00:00.000', N'2018-10-18 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3225', N'2328', N'2018', N'2018-10-22 00:00:00.000', N'2018-10-22 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3226', N'2400', N'2017', N'2018-10-22 00:00:00.000', N'2018-10-22 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3227', N'2387', N'2018', N'2018-10-22 00:00:00.000', N'2018-10-22 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3228', N'2370', N'2018', N'2018-10-22 00:00:00.000', N'2018-10-26 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3229', N'2420', N'2018', N'2018-10-23 00:00:00.000', N'2018-10-23 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3230', N'754', N'2018', N'2018-10-24 00:00:00.000', N'2018-10-24 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3231', N'2406', N'2018', N'2018-10-24 00:00:00.000', N'2018-10-24 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3232', N'2321', N'2018', N'2018-10-23 00:00:00.000', N'2018-10-23 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3233', N'2193', N'2018', N'2018-10-31 00:00:00.000', N'2018-10-31 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3234', N'754', N'2018', N'2018-10-31 00:00:00.000', N'2018-10-31 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3235', N'2342', N'2015', N'2018-10-30 00:00:00.000', N'2018-10-30 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3236', N'906', N'2018', N'2018-10-26 00:00:00.000', N'2018-10-26 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3237', N'2414', N'2017', N'2018-10-26 00:00:00.000', N'2018-10-27 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3238', N'2407', N'2018', N'2018-10-31 00:00:00.000', N'2018-11-13 00:00:00.000', N'1', N'2018 IZNINDEN 12 GUN', N'12');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3239', N'1771', N'2018', N'2018-10-30 00:00:00.000', N'2018-10-30 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3240', N'762', N'2017', N'2018-11-01 00:00:00.000', N'2018-11-02 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3241', N'2374', N'2018', N'2018-10-31 00:00:00.000', N'2018-11-02 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3242', N'2115', N'2018', N'2018-11-02 00:00:00.000', N'2018-11-02 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3243', N'914', N'2015', N'2018-11-05 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3244', N'915', N'2015', N'2018-11-05 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2015 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3245', N'2359', N'2018', N'2018-11-05 00:00:00.000', N'2018-11-05 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3246', N'2387', N'2018', N'2018-11-05 00:00:00.000', N'2018-11-07 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3247', N'2342', N'2015', N'2018-11-05 00:00:00.000', N'2018-11-12 00:00:00.000', N'1', N'2015 IZNINDEN 7 GUN', N'7');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3248', N'2342', N'2016', N'2018-11-13 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2016 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3249', N'2198', N'2017', N'2018-11-06 00:00:00.000', N'2018-11-06 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3250', N'2426', N'2018', N'2018-11-12 00:00:00.000', N'2018-11-22 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3251', N'2374', N'2018', N'2018-11-07 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3252', N'2420', N'2018', N'2018-11-08 00:00:00.000', N'2018-11-08 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3253', N'2330', N'2017', N'2018-11-09 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3254', N'2365', N'2016', N'2018-11-09 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3255', N'753', N'2018', N'2018-11-09 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3256', N'2418', N'2017', N'2018-11-07 00:00:00.000', N'2018-11-07 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3257', N'2364', N'2018', N'2018-11-09 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3258', N'2312', N'2018', N'2018-11-09 00:00:00.000', N'2018-11-09 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3259', N'2421', N'2018', N'2018-11-12 00:00:00.000', N'2018-11-16 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3260', N'2406', N'2018', N'2018-11-14 00:00:00.000', N'2018-11-14 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3261', N'914', N'2015', N'2018-11-10 00:00:00.000', N'2018-11-12 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3262', N'915', N'2015', N'2018-11-10 00:00:00.000', N'2018-11-12 00:00:00.000', N'1', N'2015 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3263', N'2196', N'2017', N'2018-11-16 00:00:00.000', N'2018-11-16 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3264', N'780', N'2018', N'2018-11-15 00:00:00.000', N'2018-11-15 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3265', N'2299', N'2016', N'2018-11-14 00:00:00.000', N'2018-11-16 00:00:00.000', N'1', N'2016 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3266', N'2379', N'2018', N'2018-11-15 00:00:00.000', N'2018-11-15 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3267', N'2312', N'2018', N'2018-11-16 00:00:00.000', N'2018-11-16 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3268', N'2386', N'2018', N'2018-11-16 00:00:00.000', N'2018-11-16 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3269', N'2417', N'2018', N'2018-11-19 00:00:00.000', N'2018-11-29 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3270', N'2425', N'2017', N'2018-11-19 00:00:00.000', N'2018-12-05 00:00:00.000', N'1', N'2017 YILINDAN 15 GUN', N'15');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3271', N'2420', N'2018', N'2018-11-19 00:00:00.000', N'2018-11-19 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3272', N'2414', N'2018', N'2018-11-26 00:00:00.000', N'2018-11-29 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3273', N'2414', N'2017', N'2018-11-19 00:00:00.000', N'2018-11-24 00:00:00.000', N'1', N'2017 IZNINDEN 6 GUN', N'6');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3274', N'2417', N'2018', N'2018-11-20 00:00:00.000', N'2018-11-30 00:00:00.000', N'1', N'2018 IZNINDEN 10 GUN', N'10');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3275', N'2423', N'2018', N'2018-11-21 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3276', N'746', N'2017', N'2018-11-20 00:00:00.000', N'2018-11-21 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3277', N'2424', N'2018', N'2018-11-19 00:00:00.000', N'2018-11-19 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3278', N'1082', N'2016', N'2018-11-19 00:00:00.000', N'2018-11-19 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3279', N'2132', N'2018', N'2018-11-23 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3281', N'2412', N'2017', N'2018-11-22 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2017 IZNINDEN 2 GUN', N'2');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3282', N'2359', N'2018', N'2018-11-20 00:00:00.000', N'2018-11-20 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3283', N'915', N'2016', N'2018-11-23 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3284', N'914', N'2015', N'2018-11-23 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2015 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3285', N'2223', N'2016', N'2018-11-26 00:00:00.000', N'2018-11-30 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3286', N'2423', N'2018', N'2018-11-24 00:00:00.000', N'2018-11-28 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3287', N'2372', N'2018', N'2018-11-23 00:00:00.000', N'2018-11-23 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3288', N'754', N'2017', N'2018-11-22 00:00:00.000', N'2018-11-22 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3289', N'754', N'2018', N'2018-11-27 00:00:00.000', N'2018-11-27 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3290', N'2196', N'2017', N'2018-11-27 00:00:00.000', N'2018-11-27 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3291', N'2196', N'2018', N'2018-11-28 00:00:00.000', N'2018-11-30 00:00:00.000', N'1', N'2018 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3292', N'2406', N'2018', N'2018-11-28 00:00:00.000', N'2018-11-28 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3293', N'754', N'2018', N'2018-11-30 00:00:00.000', N'2018-11-30 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3294', N'2423', N'2018', N'2018-11-29 00:00:00.000', N'2018-11-29 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3295', N'2417', N'2018', N'2018-12-01 00:00:00.000', N'2018-12-06 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3296', N'2299', N'2017', N'2018-12-03 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2017 IZNINDEN 11 GUN', N'11');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3297', N'2418', N'2017', N'2018-12-03 00:00:00.000', N'2018-12-05 00:00:00.000', N'1', N'2017 IZNINDEN 3 GUN', N'3');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3298', N'2418', N'2018', N'2018-12-06 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2018 IZNINDEN 8 GUN', N'8');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3299', N'2303', N'2018', N'2018-12-04 00:00:00.000', N'2018-12-07 00:00:00.000', N'1', N'2018 IZNINDEN 4 GUN', N'4');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3300', N'2387', N'2018', N'2018-12-07 00:00:00.000', N'2018-12-07 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3301', N'2422', N'2018', N'2018-12-10 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2018 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3302', N'2199', N'2016', N'2018-12-10 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2016 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3303', N'2312', N'2018', N'2018-12-07 00:00:00.000', N'2018-12-07 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3304', N'2298', N'2018', N'2018-12-05 00:00:00.000', N'2018-12-05 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3305', N'2386', N'2018', N'2018-12-11 00:00:00.000', N'2018-12-11 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3306', N'2198', N'2017', N'2018-12-17 00:00:00.000', N'2018-12-21 00:00:00.000', N'1', N'2017 IZNINDEN 5 GUN', N'5');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3307', N'2342', N'2015', N'2018-12-14 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2015 IZINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3308', N'2400', N'2017', N'2018-12-14 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2017 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3309', N'2414', N'2018', N'2018-12-11 00:00:00.000', N'2018-12-11 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3310', N'2421', N'2018', N'2018-12-12 00:00:00.000', N'2018-12-12 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3311', N'2357', N'2018', N'2018-12-14 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3312', N'2332', N'2018', N'2018-12-14 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3313', N'2365', N'2016', N'2018-12-14 00:00:00.000', N'2018-12-14 00:00:00.000', N'1', N'2016 IZNINDEN 1 GUN', N'1');
GO
INSERT INTO [dbo].[Izin] VALUES (N'3314', N'2349', N'2018', N'2018-12-17 00:00:00.000', N'2018-12-17 00:00:00.000', N'1', N'2018 IZNINDEN 1 GUN', N'1');
GO

-- ----------------------------
-- Table structure for [dbo].[IzinTip]
-- ----------------------------
DROP TABLE [dbo].[IzinTip]
GO
CREATE TABLE [dbo].[IzinTip] (
[id] int NOT NULL ,
[ad] nvarchar(25) NOT NULL 
)


GO

-- ----------------------------
-- Records of IzinTip
-- ----------------------------
INSERT INTO [dbo].[IzinTip] VALUES (N'1', N'YILLIK');
GO
INSERT INTO [dbo].[IzinTip] VALUES (N'2', N'ÜCRETLİ');
GO
INSERT INTO [dbo].[IzinTip] VALUES (N'3', N'ÜCRETSİZ');
GO
INSERT INTO [dbo].[IzinTip] VALUES (N'4', N'DENKLEŞTİRME');
GO
INSERT INTO [dbo].[IzinTip] VALUES (N'5', N'MAZERET');
GO
INSERT INTO [dbo].[IzinTip] VALUES (N'6', N'DOĞUM İZNİ');
GO
INSERT INTO [dbo].[IzinTip] VALUES (N'7', N'İSTİRAHAT');
GO

-- ----------------------------
-- Table structure for [dbo].[Kadro]
-- ----------------------------
DROP TABLE [dbo].[Kadro]
GO
CREATE TABLE [dbo].[Kadro] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Kadro
-- ----------------------------
INSERT INTO [dbo].[Kadro] VALUES (N'1', N'Kadrolu');
GO
INSERT INTO [dbo].[Kadro] VALUES (N'2', N'Taşeron');
GO
INSERT INTO [dbo].[Kadro] VALUES (N'3', N'Görevlendirme');
GO

-- ----------------------------
-- Table structure for [dbo].[kanunparametre]
-- ----------------------------
DROP TABLE [dbo].[kanunparametre]
GO
CREATE TABLE [dbo].[kanunparametre] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL ,
[yil] int NOT NULL ,
[deger] decimal(18,2) NOT NULL 
)


GO

-- ----------------------------
-- Records of kanunparametre
-- ----------------------------
INSERT INTO [dbo].[kanunparametre] VALUES (N'2', N'Brüt Asgari Ücret', N'2018', N'2029.50');
GO
INSERT INTO [dbo].[kanunparametre] VALUES (N'3', N'Brüt Yemek', N'2018', N'350.00');
GO
INSERT INTO [dbo].[kanunparametre] VALUES (N'4', N'Bekar Agi', N'2018', N'152.21');
GO

-- ----------------------------
-- Table structure for [dbo].[Kurul]
-- ----------------------------
DROP TABLE [dbo].[Kurul]
GO
CREATE TABLE [dbo].[Kurul] (
[id] int NOT NULL ,
[adsoyad] nvarchar(50) NOT NULL ,
[tc] nvarchar(11) NULL ,
[gorevtip] int NOT NULL ,
[giristarih] date NOT NULL ,
[cikistarih] date NULL 
)


GO

-- ----------------------------
-- Records of Kurul
-- ----------------------------
INSERT INTO [dbo].[Kurul] VALUES (N'3', N'ÖMER POLAT', N'2', N'8', N'2007-03-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'4', N'MERT KANBUR', N'3', N'7', N'2018-03-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'5', N'OSMAN AYVAZOĞLU', N'4', N'8', N'2018-03-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'6', N'NECMİ ÖZEN', N'5', N'7', N'2015-02-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'7', N'HASAN YILMAZ', N'6', N'7', N'2016-01-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'9', N'SERKAN IHLAMUR', N'8', N'9', N'2016-09-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'10', N'ALAEDDİN ALKAÇ', N'9', N'6', N'2018-08-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'11', N'RAŞİT FİDAN', N'10', N'7', N'2017-03-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'12', N'SÜLEYMAN KARABAYIR', N'11', N'8', N'2017-03-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'13', N'SİNAN SOKUR', N'1', N'7', N'2018-03-01', null);
GO
INSERT INTO [dbo].[Kurul] VALUES (N'14', N'HÜSEYİN GÜLÇEBİ', N'7', N'7', N'2018-03-01', null);
GO

-- ----------------------------
-- Table structure for [dbo].[KurulGorevTip]
-- ----------------------------
DROP TABLE [dbo].[KurulGorevTip]
GO
CREATE TABLE [dbo].[KurulGorevTip] (
[id] int NOT NULL ,
[kurultipid] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of KurulGorevTip
-- ----------------------------
INSERT INTO [dbo].[KurulGorevTip] VALUES (N'6', N'4', N'Başkan');
GO
INSERT INTO [dbo].[KurulGorevTip] VALUES (N'7', N'4', N'Üye');
GO
INSERT INTO [dbo].[KurulGorevTip] VALUES (N'8', N'5', N'Üye');
GO
INSERT INTO [dbo].[KurulGorevTip] VALUES (N'9', N'5', N'Başkan');
GO

-- ----------------------------
-- Table structure for [dbo].[KurulTip]
-- ----------------------------
DROP TABLE [dbo].[KurulTip]
GO
CREATE TABLE [dbo].[KurulTip] (
[id] int NOT NULL ,
[ad] nvarchar(50) NULL 
)


GO

-- ----------------------------
-- Records of KurulTip
-- ----------------------------
INSERT INTO [dbo].[KurulTip] VALUES (N'4', N'Yönetim');
GO
INSERT INTO [dbo].[KurulTip] VALUES (N'5', N'Denetim');
GO

-- ----------------------------
-- Table structure for [dbo].[Lokasyon]
-- ----------------------------
DROP TABLE [dbo].[Lokasyon]
GO
CREATE TABLE [dbo].[Lokasyon] (
[id] int NOT NULL ,
[ad] nvarchar(55) NOT NULL 
)


GO

-- ----------------------------
-- Records of Lokasyon
-- ----------------------------
INSERT INTO [dbo].[Lokasyon] VALUES (N'1', N'MERKEZ BİNA');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'2', N'ŞANTİYELER MÜDÜRLÜĞÜ');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'3', N'K.B.B.');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'4', N'GÜLEN YÜZLER');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'5', N'CEM EVİ');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'6', N'HAFRİYAT SAHALARI');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'7', N'TAPU');
GO
INSERT INTO [dbo].[Lokasyon] VALUES (N'8', N'TUANA SATIŞ OFİSİ');
GO

-- ----------------------------
-- Table structure for [dbo].[Meslek]
-- ----------------------------
DROP TABLE [dbo].[Meslek]
GO
CREATE TABLE [dbo].[Meslek] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Meslek
-- ----------------------------
INSERT INTO [dbo].[Meslek] VALUES (N'1', N'Elektrik Teknikeri');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'2', N'İnşaat Mühendisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'3', N'İnşaat Teknikeri');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'4', N'Elektrik Mühendisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'5', N'Makine Mühendisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'6', N'Jeofizik Mühendisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'7', N'Jeodezi ve Fotogrametri Mühendisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'8', N'Makine Teknikeri');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'9', N'Jeoloji Mühendisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'10', N'Mimar');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'11', N'Harita Teknikeri');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'12', N'Peyzaj Mimari');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'13', N'Sosyoloji');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'14', N'Santral Görevlisi');
GO
INSERT INTO [dbo].[Meslek] VALUES (N'15', N'ATT');
GO

-- ----------------------------
-- Table structure for [dbo].[OzlukEvrak]
-- ----------------------------
DROP TABLE [dbo].[OzlukEvrak]
GO
CREATE TABLE [dbo].[OzlukEvrak] (
[id] int NOT NULL ,
[EvrakAd] nvarchar(150) NOT NULL ,
[adet] int NOT NULL DEFAULT ((1)) ,
[gerekli] bit NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of OzlukEvrak
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[PDKS_GunGirisCikis]
-- ----------------------------
DROP TABLE [dbo].[PDKS_GunGirisCikis]
GO
CREATE TABLE [dbo].[PDKS_GunGirisCikis] (
[id] int NOT NULL ,
[PersonelGunId] int NOT NULL ,
[GirisSaat] time(7) NULL ,
[CikisSaat] time(7) NULL 
)


GO

-- ----------------------------
-- Records of PDKS_GunGirisCikis
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[PDKS_GunIzin]
-- ----------------------------
DROP TABLE [dbo].[PDKS_GunIzin]
GO
CREATE TABLE [dbo].[PDKS_GunIzin] (
[id] int NOT NULL ,
[PersonelGunId] int NOT NULL ,
[IzinTip] int NOT NULL ,
[GidisSaat] time(7) NULL ,
[GelisSaat] time(7) NULL ,
[Saatlik] bit NULL ,
[Aciklama] text NULL 
)


GO

-- ----------------------------
-- Records of PDKS_GunIzin
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[PDKS_PersonelGun]
-- ----------------------------
DROP TABLE [dbo].[PDKS_PersonelGun]
GO
CREATE TABLE [dbo].[PDKS_PersonelGun] (
[id] int NOT NULL ,
[PersonelId] int NOT NULL ,
[Tarih] date NOT NULL 
)


GO

-- ----------------------------
-- Records of PDKS_PersonelGun
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[PDKS_PersonelKart]
-- ----------------------------
DROP TABLE [dbo].[PDKS_PersonelKart]
GO
CREATE TABLE [dbo].[PDKS_PersonelKart] (
[SicilNo] nvarchar(10) NOT NULL ,
[AdSoyad] nvarchar(50) NOT NULL ,
[DepartmanId] int NOT NULL ,
[personelid] int NOT NULL 
)


GO

-- ----------------------------
-- Records of PDKS_PersonelKart
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Personel]
-- ----------------------------
DROP TABLE [dbo].[Personel]
GO
CREATE TABLE [dbo].[Personel] (
[id] int NOT NULL ,
[adsoyad] nvarchar(MAX) NOT NULL ,
[birimid] int NULL ,
[puantaj] bit NOT NULL DEFAULT ((1)) ,
[sira] int NULL ,
[sicilno] nvarchar(5) NOT NULL ,
[tcno] nvarchar(11) NULL ,
[pdksid] int NULL ,
[giristarihi] date NULL ,
[kidemtarihi] date NULL ,
[mikroid] uniqueidentifier NULL ,
[dogumtarihi] date NULL ,
[cikistarihi] date NULL ,
[kadro] int NULL DEFAULT ((1)) ,
[iban] nvarchar(26) NULL 
)


GO

-- ----------------------------
-- Records of Personel
-- ----------------------------
INSERT INTO [dbo].[Personel] VALUES (N'741', N'ALİ İHSAN GÖKALP', N'2', N'0', N'1', N'116', N'60127446662', N'127', N'2006-01-03', null, null, N'1982-07-26', N'2017-04-08', N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'745', N'ANIL BÖLGEN', N'3', N'0', N'1', N'95', N'30808902336', N'120', N'2005-10-12', N'2005-10-12', null, N'1973-10-07', N'2017-12-04', N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'746', N'SİBEL UZUN', N'1', N'1', null, N'96', N'50224420986', N'121', N'2005-10-25', null, N'AB0FDAB3-D437-4A5E-9363-204E332AF95F', N'1976-08-01', null, N'1', N'TR210001500158007285091735');
GO
INSERT INTO [dbo].[Personel] VALUES (N'753', N'HURİŞEN ERGEZER', N'5', N'1', N'1', N'105', N'30773027638', N'122', N'2005-12-15', null, N'5E9D7760-0130-4308-BD2C-3C0600CFE89D', N'1979-06-17', null, N'1', N'TR860001500158007286420823');
GO
INSERT INTO [dbo].[Personel] VALUES (N'754', N'SONGÜL EVCİ', N'8', N'1', N'7', N'106', N'62764327816', N'123', N'2005-12-15', null, N'6A88CE5D-E71E-4113-8FC6-0B1E7FADF2D1', N'1975-04-22', null, N'1', N'TR770001500158007285480279');
GO
INSERT INTO [dbo].[Personel] VALUES (N'756', N'ARİF AYTEPE', N'5', N'1', N'2', N'108', N'57412138326', N'124', N'2005-12-27', null, N'EB6FC436-2040-4976-91C4-C82619FEC440', N'1979-10-01', null, N'1', N'TR320001500158007285402810');
GO
INSERT INTO [dbo].[Personel] VALUES (N'761', N'CAVİT ÜZMEZ', N'3', N'1', N'4', N'115', N'29993052728', N'126', N'2006-01-01', null, N'450F5846-E2AE-4466-9F0F-7C670B52B977', N'1976-04-15', null, N'1', N'TR430001500158007285473616');
GO
INSERT INTO [dbo].[Personel] VALUES (N'762', N'UMUT GİRESUNLU', N'1', N'1', N'2', N'114', N'60964470400', N'125', N'2006-01-01', null, N'7ABF72AD-316A-4B09-8DB5-08BBA248AF3E', N'1976-10-14', null, N'1', N'TR230001500158007285439347');
GO
INSERT INTO [dbo].[Personel] VALUES (N'766', N'MEDİNE YILDIZ', N'17', N'1', N'9', N'122', N'28598453688', N'129', N'2006-01-25', null, N'A848D30C-416A-4BE1-97D0-A3ABB5BEE28A', N'1960-10-09', null, N'1', N'TR420001500158007285528342');
GO
INSERT INTO [dbo].[Personel] VALUES (N'769', N'MEHTAP ERGÜN BAŞARAN', N'2', N'1', N'8', N'148', N'27125140046', N'130', N'2006-02-02', null, N'DE21A3E4-43B0-4C7B-804F-672702F858E0', N'1984-02-16', null, N'1', N'TR430001500158007285544911');
GO
INSERT INTO [dbo].[Personel] VALUES (N'772', N'MERT İBRAHİM TÜRKMEN', N'8', N'1', N'2', N'119', N'45883192404', N'128', N'2006-01-17', null, N'AC90D28B-11DF-4736-835B-2A77734E73BD', N'1977-03-16', null, N'1', N'TR140001500158007285483935');
GO
INSERT INTO [dbo].[Personel] VALUES (N'779', N'MUSTAFA DUMAN', N'17', N'1', N'5', N'M0253', N'59722057502', N'8', N'2006-08-03', null, N'4839F60E-CD00-4672-98FF-C87E85A99920', N'1981-08-08', null, N'1', N'TR490001500158007286211969');
GO
INSERT INTO [dbo].[Personel] VALUES (N'780', N'MUSTAFA UMUTLU', N'5', N'1', N'13', N'254', N'11231678616', N'132', N'2006-08-02', null, N'29C84001-6336-43CE-A53E-7C79DE953C20', N'1978-10-05', null, N'1', N'TR220001500158007286215074');
GO
INSERT INTO [dbo].[Personel] VALUES (N'783', N'HATİCE BURCU MISIR', N'2', N'1', N'4', N'257', N'43372607316', N'133', N'2006-08-15', N'2006-09-29', N'0D27C935-F6D0-4C48-89FC-C2EB950FDCB2', N'1981-10-09', null, N'1', N'TR830001500158007286253164');
GO
INSERT INTO [dbo].[Personel] VALUES (N'906', N'YASEMİN IDIR', N'5', N'1', N'8', N'83', N'39382738812', N'119', N'2005-12-15', null, N'452F7AED-31DE-4F68-A107-3A1B8619B36E', N'1971-03-04', null, N'1', N'TR270001500158007285355564');
GO
INSERT INTO [dbo].[Personel] VALUES (N'908', N'İLKER BEHLÜL ONAY', N'5', N'1', N'3', N'344', N'25100213228', N'135', N'2007-03-09', null, N'55308B8D-03D0-4629-91ED-2871F01C2EE0', N'1976-10-07', null, N'1', N'TR030001500158007287005772');
GO
INSERT INTO [dbo].[Personel] VALUES (N'914', N'MUSTAFA TİMUÇİN KÜÇÜKGÜNER', N'1', N'1', N'1', N'348', N'32125563108', N'136', N'2007-05-02', null, N'7D8AD458-E556-4E33-815A-68D47E169F0A', N'1974-11-27', null, N'1', N'TR400001500158007287098032');
GO
INSERT INTO [dbo].[Personel] VALUES (N'915', N'SERPİL KÜÇÜKGÜNER', N'1', N'1', N'6', N'349', N'40783812216', N'137', N'2007-05-01', null, N'B9E2445F-7314-4CD6-9444-6FFB3C481AC7', N'1975-03-01', null, N'1', N'TR530001500158007287097992');
GO
INSERT INTO [dbo].[Personel] VALUES (N'1082', N'ABDULLAH ERSİN KOCABIÇAK', N'2', N'1', N'10', N'363', N'38167777466', N'138', N'2007-05-18', null, N'CECE5B05-F75D-45CF-A5B6-4B1C4CD602FD', N'1985-07-17', null, N'1', N'TR370001500158007287187132');
GO
INSERT INTO [dbo].[Personel] VALUES (N'1771', N'AYLİN YILMAZ', N'1', N'1', N'4', N'370', N'12379581028', N'139', N'2007-06-07', null, N'FC046A96-C924-45A9-B19C-CC85667750B5', N'1983-04-06', null, N'1', N'TR430001500158007287253178');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2115', N'ESRA TAŞPINAR', N'3', N'1', N'2', N'402', N'71497087430', N'144', N'2007-09-15', null, N'3F2414B7-5175-407F-94B1-9536A2AE34FC', N'1982-02-14', null, N'1', N'TR250001500158007287616864');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2132', N'ZEYNEP TAŞKAN', N'3', N'1', N'3', N'408', N'48832418716', N'145', N'2007-10-09', N'2008-08-28', N'7E3B39F7-3A4D-4FBC-BC54-1BE865B07749', N'1985-09-01', null, N'1', N'TR710001500158007287880264');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2193', N'ŞENOL CİVA', N'8', N'1', N'8', N'415', N'58981554296', N'146', N'2008-02-18', null, N'9DD6B836-0593-4CF8-9817-314DA81A1AF0', N'1977-08-30', null, N'1', N'TR900001500158007290205594');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2194', N'ÖZER YILDIZ', N'4', N'1', N'3', N'416', N'49231895764', N'147', N'2008-02-18', null, N'95433A21-CB7F-4206-A8F1-721FCDA7B5B1', N'1973-03-19', null, N'1', N'TR530001500158007281047326');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2196', N'BİNNUR BÜYÜKDURMUŞ', N'2', N'0', N'12', N'419', N'67702127046', N'148', N'2008-02-21', null, N'5CECD42A-5CDE-4982-8022-CC728D9DA23B', N'1984-10-09', null, N'1', N'TR170001500158007282552735');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2198', N'ÜMİT BOSTAN', N'6', N'1', N'6', N'421', N'31729995162', N'149', N'2008-02-26', null, N'AF34D9DF-7C9D-4578-A6AF-EB16EC99D05D', N'1983-12-02', null, N'1', N'TR120001500158007290205349');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2199', N'MUZAFFER AYDOĞDU', N'6', N'0', N'2', N'422', N'43649022392', N'150', N'2008-02-26', null, N'FDCBDB37-5AD6-4BC6-8DD8-70B097719609', N'1980-02-15', null, N'1', N'TR440001500158007290210884');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2200', N'HÜSEYİN SERT', N'8', N'1', N'4', N'423', N'10780434490', N'151', N'2008-02-28', null, N'3FD0A391-8935-4357-A16C-B1D2EA9ED90C', N'1957-06-01', null, N'1', N'TR290001500158007290224346');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2203', N'TAHİR ASLAN', N'7', N'1', N'10', N'H0424', N'24970400950', N'3', N'2008-03-10', N'2008-03-10', N'88C4094B-6862-4DCD-AF5A-1EFFFC64A316', N'1968-01-01', null, N'1', N'TR730001500158007290251393');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2204', N'EMRE KARAKAŞ', N'8', N'1', N'9', N'380', N'31984981542', N'143', N'2007-06-20', null, N'D282B7D6-81CE-4E54-BBA5-FE0FD5DD489E', N'1982-01-01', null, N'1', N'TR030001500158007287271746');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2223', N'ŞEVKİ UZUN', N'7', N'1', N'9', N'H0436', N'27415768370', N'2', N'2008-05-07', N'2008-05-07', N'26C6154E-49A0-4794-8669-AC97474ABE40', N'1973-10-08', null, N'1', N'TR660001500158007290486259');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2241', N'SAMET SAN', N'6', N'1', N'4', N'444', N'16430498904', N'152', N'2008-06-27', null, N'D62ABAD2-5F2A-4045-A840-A3D25E3600DB', N'1985-09-23', null, N'1', N'TR780001500158007292237960');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2243', N'ABİDİN SİPAHİ', N'8', N'1', N'6', N'446', N'64267303922', N'153', N'2008-06-30', null, N'2CE502AC-71CB-411B-A42D-2ADA75FB58CB', N'1981-04-01', null, N'1', N'TR600001500158007292256229');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2273', N'MELİKE UMUT YILDIRIM GÜNDÜZ', N'7', N'1', N'4', N'449', N'49657388864', N'154', N'2008-08-26', null, N'DA1D61C1-8168-4294-84B3-489620CF4A84', N'1982-06-09', null, N'1', N'TR710001500158007292500471');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2282', N'AYŞEGÜL AYDOĞMUŞ', N'2', N'1', N'14', N'450', N'59749060066', N'155', N'2008-08-29', null, N'0D43C246-1114-4BEE-BFFC-366C553FDA28', N'1988-12-21', null, N'1', N'TR610001500158007286498194');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2298', N'EMİNE KOTİL AKBULUT', N'6', N'0', N'1', N'472', N'53083013160', N'156', N'2008-11-04', N'2009-05-03', N'71B90271-D49C-4429-AA09-527714BED1F7', N'1985-03-03', null, N'1', N'TR230001500158007293302652');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2299', N'M.TARIK ZİYAD ÜŞENMEZ', N'7', N'1', N'1', N'H0473', N'20354496700', N'197', N'2008-11-04', N'2009-05-03', N'EC1C9F3A-83A2-4238-9B4A-0E1C7C16C853', N'1982-08-15', null, N'1', N'TR680001500158007287454682');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2303', N'EMEL KOÇOĞLU', N'2', N'1', N'6', N'278', N'45616531630', N'134', N'2006-12-02', null, N'1B45F301-CE70-429A-9185-6B57FDF449FA', N'1977-09-20', null, N'1', N'TR380001500158007289025458');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2312', N'ZEYNEP IŞIL ERYILDIRIM', N'8', N'1', N'3', N'195', N'23314727098', N'131', N'2006-05-01', null, N'4D4673D4-395F-4230-9C0B-72833B1FD540', N'1976-06-26', null, N'1', N'TR430001500158007285996349');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2316', N'YUSUF ERDOĞAN', N'8', N'1', N'10', N'565', N'18373625768', N'159', N'2009-12-21', null, N'B5792EC7-AD1E-4CC1-B5D1-1185FAEE36DF', N'1972-06-11', null, N'1', N'TR810001500158000668913782');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2320', N'GÖZDE HOCAOĞLU', N'5', N'1', N'7', N'570', N'29807058144', N'160', N'2010-01-21', null, N'7E8B69E2-DE9A-420F-AB84-431D11C40C27', N'1984-11-17', null, N'1', N'TR670001500158007296895128');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2321', N'FİLİZ DEMİR', N'2', N'1', N'3', N'571', N'13025118292', N'161', N'2010-01-21', null, N'BF66BD31-6689-4D62-934E-B8A8CD2D8CB7', N'1978-03-28', null, N'1', N'TR670001500158007288823564');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2322', N'KADİR USTAOĞLU', N'2', N'1', N'7', N'645', N'29741545816', N'162', N'2010-02-01', null, N'6887DD1A-270F-442F-9972-72D5E565B4F6', N'1980-06-17', null, N'1', N'TR020001500158007286732444');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2328', N'DİDEM KAYA', N'4', N'1', N'5', N'711', N'41395672052', N'163', N'2010-04-02', null, N'B8452099-5002-4B14-A92A-F10898EAB6AA', N'1985-09-03', null, N'1', N'TR570001500158007297084070');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2330', N'YILMAZ YAZICI', N'4', N'1', N'2', N'731', N'19532402466', N'165', N'2010-04-21', null, N'0888BB20-005D-48CF-B948-9CF3FA4EEB13', N'1968-07-11', null, N'1', N'TR270001500158007297143295');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2332', N'NESRİN YAMAN', N'2', N'0', null, N'737', N'32654269298', N'167', N'2010-07-20', null, N'79DCE416-25B1-43A7-BD5B-46F988781C37', N'1981-01-23', null, N'1', N'TR480001500158007297476985');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2335', N'KENAN CEYLAN', N'8', N'0', N'5', N'749', N'31862420804', N'171', N'2010-08-05', N'2018-06-29', null, N'1984-12-25', N'2018-06-29', N'1', N'TR230001500158007297521861');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2338', N'MURAT ÜREK', N'6', N'1', N'5', N'746', N'36781825662', N'170', N'2010-08-03', null, N'98DDC414-0FE2-4024-90E8-5729CC5DC336', N'1978-03-11', null, N'1', N'TR950001500158007286893439');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2340', N'ZAKİR ATICI', N'7', N'0', N'6', N'H0744', N'13841097788', N'5', N'2010-08-03', N'2010-08-03', null, N'1977-08-01', N'2018-07-27', N'1', N'TR300001500158007297518243');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2342', N'ERCİ YILMAZ', N'6', N'1', null, N'742', N'46234505256', N'169', N'2010-08-03', null, N'90A45277-4E9D-44FE-A9ED-2100CBFE04F6', N'1978-10-13', null, N'1', N'TR200001500158007297515901');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2343', N'FATİH İŞÇİ', N'1', N'1', N'3', N'741', N'36587169588', N'168', N'2010-08-03', null, N'4D5FC8B0-9512-4B2B-84DA-9F9287EC4B87', N'1978-06-26', null, N'1', N'TR130001500158007295742576');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2349', N'SEDA ÖZKARAASLAN', N'5', N'1', N'4', N'758', N'17774293606', N'172', N'2010-09-20', null, N'84AE779F-F6A1-459F-90AA-2B913B6231F7', N'1986-08-27', null, N'1', N'TR440001500158007297698896');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2350', N'ZERRİN SOYLU', N'5', N'1', N'5', N'763', N'38482765070', N'173', N'2010-12-08', N'2011-06-06', N'9E879105-79EC-4547-A0C3-45B22C6922A5', N'1986-03-28', null, N'1', N'TR400001500158007285125925');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2357', N'FETTAH DAVUT', N'2', N'1', N'11', N'1348', N'37810792276', N'177', N'2012-06-21', null, N'39C45A40-BDBF-4421-BA49-6D47C80E1542', N'1982-07-01', null, N'1', N'TR920001500158007299974331');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2359', N'GİZEM ŞENOL', N'5', N'1', N'6', N'1240', N'29942366258', N'175', N'2011-03-01', null, N'B6154B7A-2AD2-4E72-A029-83F441128345', N'1987-02-06', null, N'1', N'TR570001500158007298460500');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2362', N'PINAR DEMİR', N'1', N'1', N'5', N'1352', N'16106097370', N'178', N'2012-10-02', null, N'17845BAC-E6F6-4B87-BE6E-99B6D9E9FF19', N'1984-05-19', null, N'1', N'TR300001500158007300266059');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2363', N'MUHSİN TEKOL', N'2', N'0', null, N'1353', N'23921250262', N'179', N'2012-10-11', null, N'5B9062D6-C089-4409-AEE3-1F428BF47C71', N'1958-05-15', null, N'1', N'TR870001500158007299709805');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2364', N'NUR DOĞAN', N'7', N'1', N'3', N'1355', N'22637027076', N'181', N'2012-12-05', N'2013-04-04', N'EC819325-7815-487C-AE20-6C55FBF56CDA', N'1985-02-18', null, N'1', N'TR790001500158007300281085');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2365', N'NECDET OSKAY', N'17', N'1', N'2', N'1357', N'57874124110', N'182', N'2013-02-01', null, N'23D5B4F9-8836-4A8C-A50D-DC276E23DF0B', N'1976-10-06', null, N'1', N'TR900001500158007299730703');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2366', N'MEHMET ÖZTÜRK', N'6', N'0', N'7', N'1358', N'59596397902', N'183', N'2013-02-11', null, null, N'1975-05-03', N'2017-12-26', N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2369', N'ŞEYDA GÜLER', N'2', N'1', N'5', N'1363', N'58612098144', N'185', N'2013-05-02', null, N'834F6574-22EA-47AB-AB35-37A5ED21840D', N'1976-08-15', null, N'1', N'TR100001500158007300992949');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2370', N'RAMAZAN SERİM', N'5', N'1', N'7', N'M1365', N'46993486896', N'6', N'2013-06-03', N'2013-06-03', N'C7C4926B-E5A4-4EE0-AD00-4F49166F5757', N'1962-05-09', null, N'1', N'TR090001500158007301080752');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2372', N'MERVE ÇATAL', N'4', N'1', N'4', N'1367', N'25121214716', N'187', N'2013-06-06', null, N'BDE1EB08-F734-4346-A673-9C7B57A33928', N'1987-04-23', null, N'1', N'TR810001500158007301102445');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2373', N'HAKAN ERNALBANT', N'7', N'1', N'2', N'1368', N'48964419612', N'188', N'2013-06-07', null, N'F1BC61F8-E782-47F4-BD32-FF4971C9F626', N'1970-09-11', null, N'1', N'TR330001500158007284399230');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2374', N'MEHMET ERSEN', N'7', N'1', N'8', N'H1364', N'30674025658', N'4', N'2013-06-03', N'2013-06-03', N'228794BB-2B52-4898-9FC9-82CDCBD52CC8', N'1983-11-29', null, N'1', N'TR660001500158007301093694');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2377', N'SEDA TEKİN', N'4', N'1', N'1', N'764', N'53146064054', N'174', N'2010-12-11', N'2010-12-11', N'42B67B29-37DD-422A-9226-70AB6D143154', N'1986-04-21', null, N'1', N'TR070001500158007297092924');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2379', N'CAN MENGÜÇ', N'8', N'1', N'1', N'1372', N'45370460368', N'191', N'2015-02-02', null, N'B3680480-A70A-4095-B478-942226C6CBB5', N'1983-05-17', null, N'1', N'TR150001500158007303165562');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2381', N'DERYA ASLAN', N'2', N'1', N'9', N'1361', N'10967686148', N'184', N'2013-04-16', null, N'907A266B-E1A1-44FA-82E4-B33D31DE9994', N'1983-11-01', null, N'1', N'TR410001500158007300995980');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2383', N'SABİHA ŞEYMA YILMAZ', N'5', N'0', null, N'T2393', N' 4791793899', N'206', null, null, null, N'2017-08-18', N'2017-08-18', N'3', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2384', N'NEŞE ÖZTÜRK KİŞMİR', N'17', N'1', null, N'1400', N'48328703128', N'205', N'2018-04-01', null, N'9D6366F0-828A-4A74-A999-4F864A292DE3', N'1987-11-05', null, N'1', N'TR860001500158007307088128');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2385', N'GÜLŞAH ŞAHİN', N'5', N'1', null, N'1399', N'46639497200', N'207', N'2018-04-01', null, N'C7A6270F-705B-4859-8D67-BA2DE7EB990D', N'1986-11-18', null, N'1', N'TR270001500158007307088123');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2386', N'REMZİYE BAZNA', N'17', N'1', null, N'1391', N'18578505964', N'203', N'2018-04-01', null, N'8473EEE5-FC34-4BC0-8ECA-9EC22937BFDC', N'1972-12-30', null, N'2', N'TR320001500158007307088130');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2387', N'ESRA SERT', N'5', N'1', null, N'1383', N'13117845730', N'209', N'2018-04-01', null, N'E630CF20-8B58-426D-89E2-6683214231FF', N'1980-10-01', null, N'2', N'TR110001500158007307088120');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2388', N'YALÇIN ÖZÖN', N'4', N'0', null, N'1370', N'52273310126', N'189', N'2014-05-01', null, N'9BC1AA6B-1042-4CB9-95D1-290EBAE381DB', N'1961-11-13', null, N'1', N'TR200001500158007282544630');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2389', N'ADEM DEMİR', N'5', N'0', null, N'1374', N'54505229428', N'192', N'2016-02-01', null, N'037ED8E8-62C3-4981-96ED-ED72881FB17B', N'1982-09-08', null, N'1', N'TR900001500158007286466535');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2391', N'EBRU NİGİZ', N'6', N'1', null, N'1398', N'47206886540', N'204', N'2018-04-01', null, N'AB855DB6-4F4B-485D-8C5A-E63766C0963C', N'1978-07-05', null, N'1', N'TR220001500158007307088116');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2399', N'METİN ÇAĞDAŞ', N'2', N'0', null, N'1375', N'14786560658', N'193', N'2016-04-18', null, N'A0671F82-CE03-4A4C-A6F1-5E4009C21C38', N'1963-12-13', null, N'1', N'TR030001500158007304610981');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2400', N'ERHAN COŞAN', N'8', N'0', null, N'562', N'53041285042', N'158', N'2009-11-24', null, N'5C6111AE-9E96-4E49-8057-E321986B81AB', N'1981-03-22', null, N'1', N'TR600001500158007285931344');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2401', N'MURAT SAĞLAM', N'7', N'0', null, N'1373', N'10979221214', N'201', N'2015-04-08', null, N'5F20AFAC-7F74-42AA-ADE7-F1DAB5607216', N'1976-07-15', null, N'1', N'TR060001500158007303439846');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2402', N'SADİ HANCI', N'2', N'0', null, N'73', N'60541034698', N'118', N'2005-10-11', null, null, N'1978-09-23', N'2018-07-01', N'1', N'TR240001500158007285027273');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2403', N'ÖZLEM ÖZTÜRK ÇALIŞKAN', N'3', N'0', null, N'1371', N'48343702618', N'190', N'2014-07-07', null, N'EE8A417C-C55B-4CD8-9FCA-445E3C60F603', N'1984-10-07', null, N'1', N'TR250001500158007302386278');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2404', N'HAKAN ÇELİKİZ', N'2', N'0', null, N'1366', N'60553034792', N'186', N'2013-06-05', null, null, N'1991-05-29', N'2017-08-01', N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2405', N'NURCAN TANTA', N'17', N'1', null, N'1390', N'34411906064', N'18', N'2018-04-01', null, N'34CFE5BA-221E-463B-AAB7-8C05505218EE', N'1977-12-05', null, N'2', N'TR590001500158007307088129');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2406', N'METİN AKAY', N'17', N'1', null, N'1387', N'44275572084', N'17', N'2018-04-01', null, N'9E7E9696-16FD-4555-A323-1C1F500562F4', N'1986-06-20', null, N'2', N'TR700001500158007307088125');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2407', N'ŞEVKİ KÖSEOĞLU', N'2', N'0', null, N'1393', N'10136928482', N'20', N'2018-04-01', null, N'B99B9195-0C20-4D20-9CBF-C6F73E1276EB', N'1977-10-15', null, N'2', N'TR480001500158007307088133');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2408', N'YAVUZ DÖNMEZ', N'2', N'0', null, N'1396', N'59161314594', N'19', N'2018-04-01', null, N'288FD8EF-3D91-432F-9113-2285418C6C35', N'1976-10-20', null, N'2', N'TR640001500158007307088136');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2409', N'ENDER IRMAK', N'17', N'1', null, N'1380', N'18469582968', N'16', N'2018-04-01', null, N'7BDACA8C-7846-4C3B-AB8A-AF6586E5A08D', N'1971-01-25', null, N'2', N'TR920001500158007307088117');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2410', N'CABİR ÇALIK', N'2', N'0', null, N'1379', N'30062051108', N'21', N'2018-04-01', null, N'F537A196-447C-4434-B925-4A21C3F5F925', N'1970-03-25', null, N'2', N'TR490001500158007307088115');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2411', N'GÜLHANIM DEVRİM', N'5', N'0', null, N'1246', N'42934622002', N'176', N'2011-05-24', null, N'4DDA2AF1-EF68-42F1-8664-07818F93A1BD', N'1988-01-10', null, N'1', N'TR390001500158007298817590');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2412', N'ESRA KOÇ', N'5', N'0', null, N'00735', N'10964686202', N'166', N'2010-06-09', null, N'D2E1752C-1D0A-4E6D-A437-C9CC65224237', N'1986-12-04', null, N'1', N'TR040001500158007297300073');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2414', N'HASİBE ŞAHİN', N'16', N'1', null, N'1386', N'18968645782', N'27', N'2018-04-01', null, N'F2B4AF02-6B20-43CE-9549-0F6CD9A36BA6', N'1971-03-10', null, N'2', N'TR970001500158007307088124');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2415', N'TAHİR CEVDET TEKÇE', N'2', N'0', null, N'1394', N'23336462458', N'213', N'2018-04-01', null, N'D044E053-30D9-4575-B2F5-9D72CAA7CBF3', N'1970-01-01', null, N'2', N'TR210001500158007307088134');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2417', N'MUZAFFER EYÜBOĞLU', N'16', N'1', null, N'1389', N'53749602400', N'10', N'2018-04-01', null, N'61407B11-454B-418A-8A66-DBCCF9B833FB', N'1960-06-01', null, N'2', N'TR160001500158007307088127');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2418', N'ERHAN AYDEMİR', N'16', N'1', null, N'1382', N'11219671110', N'15', N'2018-04-01', null, N'2738F7AD-B5CE-4527-9E53-7D88C30FE4B9', N'1988-10-25', null, N'2', N'TR380001500158007307088119');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2419', N'BURAK ÖZER', N'16', N'1', null, N'1378', N'25385455726', N'9', N'2018-04-01', null, N'3C0D0981-5618-49EC-8AA1-40A9ECFCB10A', N'1991-08-01', null, N'2', N'TR060001500158007307088113');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2420', N'MUHARREM ÖZTÜRK', N'16', N'1', null, N'1388', N'65935076988', N'24', N'2018-04-01', null, N'1233307A-61F7-4C34-B7CA-0CB38C768610', N'1986-10-17', null, N'2', N'TR430001500158007307088126');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2421', N'ENES BİLİKLİ', N'16', N'1', null, N'1381', N'24367391106', N'25', N'2018-04-01', null, N'AE9BD6F7-E039-47BB-93E6-0313A86AB7E2', N'1992-05-14', null, N'2', N'TR650001500158007307088118');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2422', N'ABDÜLMECİT ÖZCAN', N'16', N'1', null, N'1397', N'35029412534', N'23', N'2018-04-01', null, N'A1215974-7BAF-4B99-A14B-65FDC4BEB759', N'1975-04-20', null, N'2', N'TR870001500158007307088110');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2423', N'BURAK GÜLSOY', N'16', N'1', null, N'1377', N'14330574872', N'14', N'2018-04-01', null, N'BADD9719-1B03-4E69-8DBD-A825F588E4D9', N'1991-11-17', null, N'2', N'TR330001500158007307088112');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2424', N'SERKAN KÜÇÜK', N'16', N'1', null, N'1392', N'59560420674', N'12', N'2018-04-01', null, N'1B09EC58-299A-4AF6-B697-C3ED92283CEE', N'1978-07-08', null, N'2', N'TR750001500158007307088132');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2425', N'AKİF KARAKAŞ', N'16', N'1', null, N'1376', N'31990981314', N'13', N'2018-04-01', null, N'342BEFB2-1EE9-49BC-888C-49CE507C5FA8', N'1975-10-01', null, N'2', N'TR600001500158007307088111');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2426', N'VOLKAN KAVANOZ', N'16', N'1', null, N'1395', N'10038046888', N'210', N'2018-04-01', null, N'D67A6709-3D79-4100-A45E-A3E59F63FB19', N'1983-12-20', null, N'2', N'TR910001500158007307088135');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2427', N'MÜNİR KARAMAN', N'7', N'0', null, N'96668', N'38305296668', N'212', null, null, null, null, N'2018-02-13', N'2', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2428', N'FERHAT DUYMUŞ', N'16', N'1', null, N'1384', N'24451738756', N'211', N'2018-04-01', null, N'1724B404-D2FD-4A27-8699-BFC341ABA6E8', N'1978-10-29', null, N'2', N'TR810001500158007307088121');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2429', N'HÜSEYİN BAYRAM', N'6', N'1', null, N'B1406', N'57547465946', N'250', N'2018-04-01', null, N'E2A0AA0E-6B89-4150-9593-9E872B29A97C', N'1977-01-01', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2430', N'HAKKI İTMİŞ', N'6', N'0', null, N'54018', N'23975254018', null, null, null, null, null, N'2017-04-01', N'3', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2431', N'RAMAZAN SEVENCAN', N'6', N'1', null, N'B1401', N'62221325294', N'249', N'2018-04-01', null, N'125F572B-2866-4E9C-9B2A-6244DF8E5063', N'1980-01-01', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2432', N'KAPTAN SERDAR', N'6', N'1', null, N'B1403', N'41195007962', N'248', N'2018-04-01', null, N'2793BD74-CC5B-42E2-B3D8-72CA9C1C15E7', N'1974-01-01', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2433', N'HARUN SARAL', N'6', N'0', null, N'75066', N'44140575066', null, null, null, null, null, N'2018-04-01', N'3', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2434', N'MURAT YURUL', N'7', N'0', null, N'00020', null, N'22', N'2016-03-11', null, null, null, N'2017-06-01', N'2', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2435', N'SERKAN ARGUNER', N'4', N'1', null, N'1404', N'52918288698', N'26', N'2018-04-01', null, N'E6F597D1-B0E0-4611-8CD6-243BE4620057', N'1978-05-13', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2436', N'AYDIN AKMEŞE', N'7', N'0', null, N'00026', null, N'28', N'2016-11-01', null, null, null, N'2017-02-01', N'3', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2437', N'NİNO BAGASHVİLİ', N'6', N'0', null, N'00027', null, N'202', N'2015-05-30', null, null, N'1975-07-17', N'2018-04-01', N'3', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2440', N'KUTBETTİN ALPTEKİN', N'7', N'0', null, N'74044', N'17134374044', null, N'2017-04-01', null, null, N'1960-04-10', N'2017-10-04', N'2', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2442', N'GÖKHAN ŞEN', N'16', N'1', null, N'1385', N'70507049260', N'223', N'2018-04-01', null, N'06F8B1AE-B261-4F24-86F4-4B6F3AB6FECB', N'1976-03-02', null, N'2', N'TR540001500158007307088122');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2443', N'SEDDAT ÖZEL', N'7', N'0', null, N'00040', N'20713518388', N'236', N'2017-07-03', null, null, N'1988-05-10', N'2018-03-31', N'2', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2444', N'YILMAZ DOĞAN', N'2', N'0', null, N'00372', N'34112227338', N'140', N'2007-06-13', null, N'A5168FD1-D5FF-45B1-BBF1-5404A1806B94', N'1983-08-27', null, N'1', N'TR740001500158007287307619');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2445', N'MİRZA ALİ HAKKIOĞLU', N'2', N'0', null, N'00373', N'50176398852', N'141', N'2007-06-13', null, N'409E0F04-791C-4992-BA14-23DCFA1C53D2', N'1970-02-25', null, N'1', N'TR970001500158007287303519');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2446', N'MESUT YILDIRIM', N'2', N'0', null, N'00374', N'44428052098', N'142', N'2007-06-13', null, N'011ADA00-EF6A-4EED-9636-1414AAE7E74A', N'1986-02-01', null, N'1', N'TR560001500158007287303481');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2447', N'ERKAN AKSOY', N'2', N'0', null, N'01354', N'37906780606', N'180', N'2012-11-09', null, N'B90391B8-14F2-4D20-B98D-A6E91FAE1BF8', N'1965-03-02', null, N'1', N'TR670001500158007294543266');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2448', N'ADNAN BİLGİÇ', N'2', N'0', null, N'00483', N'15712131966', N'157', N'2009-02-05', null, N'D39E3451-0C0E-4F35-B61E-3C07044B0FAC', N'1952-03-11', null, N'1', N'TR020001500158007286396921');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2449', N'Ertuğrul ELİMOĞLU', N'5', N'0', null, N'00033', null, N'208', N'2016-12-01', null, null, null, N'2017-09-01', N'3', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2451', N'BUSE ALTINAY', N'3', N'1', null, N'1405', N'13502601514', N'245', N'2018-04-01', null, N'8DC2E34E-D071-4ACF-B389-407EA1940D7E', N'1990-09-27', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2452', N'ŞAHBETTİN ALPTEKİN', N'7', N'0', null, N'00042', N'17149373544', N'246', N'2017-10-07', null, null, N'1955-01-11', N'2018-03-31', N'2', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2453', N'YALÇIN DEMİREL', N'2', N'0', null, N'0730', N'28678560596', N'164', N'2010-04-19', null, N'7CF2380D-1D5E-455C-86CE-AA13E35904F6', N'1977-08-31', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2454', N'MEHMET SELİM TAŞKIN', N'6', N'1', null, N'1409', N'47074483186', N'251', N'2018-05-07', null, N'0AFE376B-F881-490D-BC31-7085812A95D2', N'1899-12-31', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2455', N'ÖMER TELLİ', N'16', N'1', null, N'1407', null, N'252', N'2018-05-07', null, null, null, N'2018-08-27', N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2456', N'TAHSİN COŞKUN', N'16', N'1', null, N'1408', N'17224374190', N'253', N'2018-05-07', null, N'A27EBDC1-B7E7-4495-B6B1-4C2E8DF3000E', N'1983-08-10', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2457', N'MAHMUT SARI', N'16', N'1', null, N'H1410', N'24224593674', N'254', N'2018-05-09', null, N'287E31B5-F74F-4464-8CB2-D2DB34CB4160', N'1985-10-03', null, N'1', N'TR490001500158007307372519');
GO
INSERT INTO [dbo].[Personel] VALUES (N'2458', N'EREN YILMAZ', N'16', N'1', null, N'1411', N'47905453838', N'255', N'2018-05-10', null, N'32EAC5D0-BEF6-4CC4-9D78-264DC0AF64E8', N'1992-03-25', null, N'1', null);
GO
INSERT INTO [dbo].[Personel] VALUES (N'2459', N'BETÜL KALAY', N'17', N'1', null, N'01412', N'49153409544', N'283', N'2018-10-15', null, N'A674A152-C9AC-4746-81E1-34D5F489E8FC', N'1998-03-23', null, N'1', null);
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelDetay]
-- ----------------------------
DROP TABLE [dbo].[PersonelDetay]
GO
CREATE TABLE [dbo].[PersonelDetay] (
[personelid] int NOT NULL ,
[lokasyon] int NOT NULL ,
[gorev] int NULL ,
[cinsiyeti] bit NULL ,
[tahsili] int NULL ,
[thumb] nvarchar(250) NULL ,
[okudugubolum] int NULL ,
[sirketarac] bit NULL ,
[mailadres] nvarchar(50) NULL ,
[sgkdosya] int NULL ,
[meslek] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PersonelDetay', 
'COLUMN', N'sirketarac')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'şirket aracı varmı yok mu'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelDetay'
, @level2type = 'COLUMN', @level2name = N'sirketarac'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'şirket aracı varmı yok mu'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelDetay'
, @level2type = 'COLUMN', @level2name = N'sirketarac'
GO

-- ----------------------------
-- Records of PersonelDetay
-- ----------------------------
INSERT INTO [dbo].[PersonelDetay] VALUES (N'745', N'1', N'11', N'1', N'5', N'/Content/Media/pers_resim/anıl bölgen.jpg', null, null, N'ABolgen@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'746', N'1', N'41', N'1', N'5', N'/Content/Media/pers_resim/sibel uzun.jpg', null, null, N'SUzun@kentkonut.com.tr
', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'753', N'1', N'35', N'1', N'4', N'/Content/Media/pers_resim/hurişen ergezer.jpg', null, null, N'Hergezer@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'754', N'2', N'43', N'1', N'4', N'/Content/Media/pers_resim/songül evci.jpg', null, null, N'SOzbay@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'756', N'1', N'36', N'0', N'3', N'/Content/Media/pers_resim/arif aytepe.jpg', null, null, N'AAytepe@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'761', N'1', N'21', N'0', N'5', N'/Content/Media/pers_resim/cavit üzmez.jpg', null, null, N'CUzmez@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'762', N'1', N'40', N'0', N'5', N'/Content/Media/pers_resim/umut giresunlu.jpg', null, null, N'ugiresunlu@kentkonut.com.tr', null, N'12');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'766', N'1', N'25', N'1', N'1', N'/Content/Media/pers_resim/medine yıldız.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'769', N'1', N'29', N'1', N'5', N'/Content/Media/pers_resim/mehtap ergün başaran.jpg', null, null, N'MErgun@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'772', N'2', N'41', N'0', N'6', N'/Content/Media/pers_resim/mert ibrahim türkmen.jpg', null, null, N'MTurkmen@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'779', N'1', N'30', N'0', N'3', N'/Content/Media/pers_resim/mustafa duman.jpg', null, null, N'MDuman@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'780', N'1', N'31', N'0', N'3', N'/Content/Media/pers_resim/mustafa umutlu.jpg', null, null, N'MUmutlu@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'783', N'1', N'24', N'1', N'6', N'/Content/Media/pers_resim/hatice burcu mısır.jpg', null, null, N'BMisir@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'906', N'1', N'37', N'1', N'3', N'/Content/Media/pers_resim/yasemin idir.jpg', null, null, N'YIdir@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'908', N'1', N'36', N'0', N'5', N'/Content/Media/pers_resim/ilker behlül onay.jpg', null, null, N'IOnay@kentkonut.com.tr', null, N'6');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'914', N'1', N'39', N'0', N'5', N'/Content/Media/pers_resim/mustafa timuçin küçükgüner.jpg', null, null, N'tkguner@kentkonut.com.tr', null, N'10');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'915', N'1', N'41', N'1', N'5', N'/Content/Media/pers_resim/serpil küçükgüner.jpg', null, null, N'skguner@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'1082', N'1', N'30', N'0', N'3', N'/Content/Media/pers_resim/abdullah ersin kocabıçak.jpg', null, null, N'akocabicak@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'1771', N'1', N'43', N'1', N'4', N'/Content/Media/pers_resim/aylin yılmaz.jpg', null, null, N'AOzler@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2115', N'1', N'21', N'1', N'5', N'/Content/Media/pers_resim/esra taşpınar.jpg', null, null, N'ETaspinar@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2132', N'1', N'24', N'1', N'6', N'/Content/Media/pers_resim/zeynep taşkan duman.jpg', null, null, N'ZTaskan@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2193', N'2', N'43', N'0', N'4', N'/Content/Media/pers_resim/şenol civa.jpg', null, null, N'SCiva@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2194', N'1', N'16', N'0', N'5', N'/Content/Media/pers_resim/özer yıldız.jpg', null, null, N'OYildiz@kentkonut.com.tr', null, N'1');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2196', N'3', N'43', N'1', N'4', N'/Content/Media/pers_resim/binnur büyükdurmuş.jpg', null, null, N'BBuyukdurmus@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2198', N'2', N'55', N'0', N'4', N'/Content/Media/pers_resim/ümit bostan.jpg', null, null, N'UBostan@kentkonut.com.tr', null, N'1');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2199', N'3', N'43', N'0', N'4', N'/Content/Media/pers_resim/muzaffer aydoğdu.jpg', null, null, N'MAydogdu@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2200', N'2', N'60', N'0', N'5', N'/Content/Media/pers_resim/hüseyin sert.jpg', null, null, N'HSert@kentkonut.com.tr', null, N'5');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2203', N'6', N'2', N'0', N'4', N'/Content/Media/pers_resim/tahir aslan.jpg', null, null, N'TAslan@kentkonut.com.tr', null, N'11');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2204', N'2', N'43', N'0', N'4', N'/Content/Media/pers_resim/emre karakaş.jpg', null, null, N'EKarakas@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2223', N'6', N'2', N'0', N'4', N'/Content/Media/pers_resim/şevki uzun.jpg', null, null, N'sevkiuzun@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2241', N'2', N'62', N'0', N'4', N'/Content/Media/pers_resim/samet san.jpg', null, null, N'SSan@kentkonut.com.tr', null, N'8');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2243', N'2', N'55', N'0', N'4', N'/Content/Media/pers_resim/abidin sipahi.jpg', null, null, N'ASipahi@kentkonut.com.tr', null, N'1');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2273', N'1', N'47', N'1', N'5', N'/Content/Media/pers_resim/melike umut yıldırım gündüz.jpg', null, null, N'myildirim@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2282', N'1', N'10', N'1', N'3', N'/Content/Media/pers_resim/ayşegül aydoğmuş.jpg', null, null, N'Agul@kentkonut.com.tr', null, N'14');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2298', N'3', N'41', N'1', N'5', N'/Content/Media/pers_resim/emine kotil akbulut.jpg', null, null, N'EKotil@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2299', N'1', N'46', N'0', N'5', N'/Content/Media/pers_resim/muhammed tarık ziyad üşenmez.jpg', null, null, N'musenmez@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2303', N'1', N'24', N'1', N'5', N'/Content/Media/pers_resim/emel koçoğlu.jpg', null, null, N'EKocoglu@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2312', N'2', N'63', N'1', N'5', N'/Content/Media/pers_resim/zeynep ışıl eryıldırım.jpg', null, null, N'ZEryildirim@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2316', N'2', N'64', N'0', N'3', N'/Content/Media/pers_resim/Yusuf ERDOĞAN.jpg', null, null, N'YErdogan@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2320', N'1', N'37', N'1', N'5', N'/Content/Media/pers_resim/gözde hocaoğlu.jpg', null, null, N'GHocaoglu@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2321', N'1', N'24', N'1', N'5', N'/Content/Media/pers_resim/filiz demir.jpg', null, null, N'FDemir@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2322', N'1', N'28', N'0', N'5', N'/Content/Media/pers_resim/kadir ustaoğlu.jpg', null, null, N'KUstaoglu@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2328', N'1', N'14', N'1', N'3', N'/Content/Media/pers_resim/didem kaya.jpg', null, null, N'dkaya@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2330', N'1', N'17', N'0', N'5', N'/Content/Media/pers_resim/yılmaz yazıcı.jpg', null, null, N'YYazici@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2332', N'1', N'23', N'1', N'5', N'/Content/Media/pers_resim/nesrin yaman.jpg', null, N'1', N'NYaman@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2335', N'2', N'60', N'0', N'5', N'/Content/Media/pers_resim/kenan ceylan.jpg', null, null, N'KCeylan@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2338', N'2', N'62', N'0', N'4', N'/Content/Media/pers_resim/murat ürek.jpg', null, null, N'MUrek@kentkonut.com.tr', null, N'8');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2340', N'6', N'2', N'0', N'4', N'/Content/Media/pers_resim/zakir atıcı.jpg', null, null, N'ZAtici@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2342', N'2', N'57', N'0', N'4', N'/Content/Media/pers_resim/erci yılmaz.jpg', null, null, N'EYilmaz@kentkonut.com.tr', null, N'3');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2343', N'1', N'44', N'0', N'6', N'/Content/Media/pers_resim/fatih işçi.jpg', null, null, N'FIsci@kentkonut.com.tr', null, N'4');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2349', N'1', N'36', N'1', N'5', N'/Content/Media/pers_resim/seda özkaraaslan.jpg', null, null, N'SKavadar@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2350', N'1', N'36', N'1', N'5', N'/Content/Media/pers_resim/zerrin soylu.jpg', null, null, N'ZSenol@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2357', N'1', N'26', N'0', N'3', N'/Content/Media/pers_resim/fettah davut.jpg', null, null, N'FDavut@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2359', N'1', N'36', N'1', N'4', N'/Content/Media/pers_resim/gizem şenol.jpg', null, null, N'GSenol@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2362', N'1', N'42', N'1', N'6', N'/Content/Media/pers_resim/pınar demir.jpg', null, null, N'PDemir@kentkonut.com.tr', null, N'10');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2363', N'1', N'15', N'0', N'3', N'/Content/Media/pers_resim/muhsin tekol.jpg', null, null, N'Mtekol@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2364', N'1', N'47', N'1', N'5', N'/Content/Media/pers_resim/nur doğan.PNG', null, null, N'NDogan@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2365', N'1', N'27', N'0', N'5', N'/Content/Media/pers_resim/necdet oskay.jpg', null, null, N'NOskay@kentkonut.com.tr', null, N'9');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2366', N'2', N'61', N'0', N'4', N'/Content/Media/pers_resim/mehmet öztürk.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2369', N'1', N'24', N'1', N'3', N'/Content/Media/pers_resim/şeyda yıldız.jpg', null, null, N'SYildiz@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2370', N'1', N'37', N'0', N'3', N'/Content/Media/pers_resim/ramazan serim.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2372', N'1', N'14', N'1', N'4', N'/Content/Media/pers_resim/merve çatal.jpg', null, null, N'MCatal@kentkonut.local', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2373', N'1', N'47', N'0', N'3', N'/Content/Media/pers_resim/hakan ernalbant.jpg', null, null, N'HErnalbant@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2374', N'6', N'48', N'0', N'1', N'/Content/Media/pers_resim/mehmet ersen.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2377', N'1', N'13', N'1', N'3', N'/Content/Media/pers_resim/seda tekin.jpg', null, null, N'STekin@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2379', N'2', N'56', N'0', N'5', N'/Content/Media/pers_resim/can mengüç.jpg', null, N'1', N'can.menguc@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2381', N'1', N'27', N'1', N'4', N'/Content/Media/pers_resim/derya aslan.jpg', null, null, N'derya.aslan@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2383', N'1', N'37', N'1', null, null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2384', N'1', N'24', N'1', N'5', N'/Content/Media/pers_resim/neşe öztürk kişmir.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2385', N'1', N'37', N'1', N'4', N'/Content/Media/pers_resim/gülşah şahin.jpg', null, null, N'gulsah.sahin@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2386', N'2', N'25', N'1', N'1', N'/Content/Media/pers_resim/remziye bazna.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2387', N'1', N'37', N'1', N'3', N'/Content/Media/pers_resim/esra sert.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2388', N'1', N'12', N'0', N'5', N'/Content/Media/pers_resim/yalçın özön.jpg', null, N'1', N'YOZON@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2389', N'1', N'34', N'0', N'6', N'/Content/Media/pers_resim/mustafa adem demir.jpg', null, N'1', N'ademir@kentkonut.com.tr', null, N'13');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2391', N'2', N'10', N'1', N'5', N'/Content/Media/pers_resim/ebru nigiz.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2399', N'1', N'22', N'0', N'4', N'/Content/Media/pers_resim/metin çağdaş.jpg', null, N'1', N'MCAGDAS@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2400', N'2', N'58', N'0', N'5', N'/Content/Media/pers_resim/erhan coşan.jpg', null, N'1', N'ECosan@kentkonut.com.tr', null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2401', N'1', N'45', N'0', N'5', N'/Content/Media/pers_resim/murat sağlam.jpg', null, N'1', N'MSaglam@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2402', N'4', N'53', N'0', N'3', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2403', N'1', N'20', N'1', N'5', N'/Content/Media/pers_resim/özlem öztürk çalışkan.jpg', null, N'1', N'Ozlem.Caliskan@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2404', N'4', N'53', N'0', null, null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2405', N'1', N'32', N'1', N'1', N'/Content/Media/pers_resim/nurcan tanta.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2406', N'1', N'32', N'0', N'2', N'/Content/Media/pers_resim/metin akay.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2407', N'1', N'33', N'0', N'3', N'/Content/Media/pers_resim/şevki köseoğlu.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2408', N'1', N'33', N'0', N'3', N'/Content/Media/pers_resim/yavuz dönmez.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2409', N'1', N'25', N'0', N'3', N'/Content/Media/pers_resim/ender ırmak.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2410', N'1', N'33', N'0', N'3', N'/Content/Media/pers_resim/cabir çalık.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2411', N'7', N'59', N'1', N'5', N'/Content/Media/pers_resim/gülhanım devrim.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2412', N'7', N'59', N'1', N'4', N'/Content/Media/pers_resim/esra koç.jpg', null, null, N'esra.koc@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2414', N'6', N'25', N'1', N'1', N'/Content/Media/pers_resim/hasibe şahin.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2415', N'1', N'33', N'0', N'3', N'/Content/Media/pers_resim/tahir cevdet tekçe.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2417', N'6', N'48', N'0', N'1', N'/Content/Media/pers_resim/muzaffer eyüboğlu.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2418', N'6', N'48', N'0', N'4', N'/Content/Media/pers_resim/erhan aydemir.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2419', N'6', N'54', N'0', N'1', N'/Content/Media/pers_resim/burak özer.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2420', N'6', N'48', N'0', N'1', N'/Content/Media/pers_resim/muharrem öztürk.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2421', N'6', N'48', N'0', N'1', N'/Content/Media/pers_resim/enes bilikli.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2422', N'6', N'54', N'0', N'5', N'/Content/Media/pers_resim/abdülmecit özcan.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2423', N'6', N'48', N'0', N'3', N'/Content/Media/pers_resim/burak gülsoy.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2424', N'6', N'5', N'0', N'1', N'/Content/Media/pers_resim/serkan küçük.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2425', N'6', N'48', N'0', N'5', N'/Content/Media/pers_resim/akif karakaş.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2426', N'6', N'5', N'0', N'1', N'/Content/Media/pers_resim/volkan kavanoz.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2427', N'6', N'48', N'0', N'4', N'/Content/Media/pers_resim/münir karaman.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2428', N'6', N'48', N'0', N'2', N'/Content/Media/pers_resim/ferhat duymuş.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2429', N'2', N'65', N'0', N'1', N'/Content/Media/pers_resim/hüseyin bayram.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2430', N'2', null, N'0', null, null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2431', N'2', N'65', N'0', N'2', N'/Content/Media/pers_resim/ramazan sevencan.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2432', N'2', N'65', N'0', N'2', N'/Content/Media/pers_resim/kaptan serdar.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2433', N'2', N'38', N'0', N'1', N'/Content/Media/pers_resim/harun saral.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2435', N'1', N'19', N'0', N'3', N'/Content/Media/pers_resim/serkan akgüner.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2436', N'6', null, N'0', null, null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2437', N'2', N'1', N'1', N'5', N'/Content/Media/pers_resim/nino bagashvili.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2440', N'6', N'48', N'0', N'1', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2442', N'6', N'48', N'0', N'2', N'/Content/Media/pers_resim/gökhan şen-orta okul.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2443', N'6', N'48', N'0', N'3', N'/Content/Media/pers_resim/seddat özel-lise.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2444', N'5', N'52', N'0', N'3', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2445', N'5', N'52', N'0', N'2', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2446', N'5', N'52', N'0', N'3', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2447', N'3', N'51', N'0', N'1', N'/Content/Media/pers_resim/erkan aksoy.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2448', N'3', N'50', N'0', N'5', null, null, null, null, null, N'2');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2449', N'8', N'38', N'0', N'1', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2451', N'1', N'11', N'1', N'5', N'/Content/Media/pers_resim/buse altınay.jpg', null, null, N'BALTINAY@kentkonut.com.tr', null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2452', N'6', N'38', N'1', N'1', N'/Content/Media/pers_resim/şabettin alptekin.jpg', null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2453', N'4', N'1', N'0', N'3', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2454', N'2', N'67', N'0', N'5', null, null, null, null, null, N'7');
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2456', N'6', N'5', N'0', N'1', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2457', N'6', N'5', N'0', N'1', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2458', N'6', N'48', N'0', N'1', null, null, null, null, null, null);
GO
INSERT INTO [dbo].[PersonelDetay] VALUES (N'2459', N'1', N'66', N'1', N'3', null, null, null, null, null, N'15');
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelDevir]
-- ----------------------------
DROP TABLE [dbo].[PersonelDevir]
GO
CREATE TABLE [dbo].[PersonelDevir] (
[personelID] int NOT NULL ,
[kidemTarih] date NOT NULL ,
[izinDevir] int NOT NULL 
)


GO

-- ----------------------------
-- Records of PersonelDevir
-- ----------------------------
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2386', N'2013-09-13', N'11');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2387', N'2018-04-01', N'15');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2389', N'2014-07-15', N'18');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2405', N'2009-03-21', N'28');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2406', N'2012-07-01', N'0');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2407', N'2010-08-01', N'5');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2408', N'2015-03-05', N'14');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2409', N'2011-05-03', N'0');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2410', N'2015-05-01', N'0');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2412', N'2009-01-01', N'0');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2414', N'2015-11-18', N'22');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2415', N'2016-06-05', N'7');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2417', N'2015-04-01', N'45');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2418', N'2015-10-01', N'18');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2419', N'2016-04-01', N'13');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2420', N'2016-04-01', N'15');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2421', N'2016-03-29', N'25');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2422', N'2016-04-01', N'19');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2423', N'2015-10-02', N'16');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2424', N'2015-08-21', N'11');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2425', N'2015-09-02', N'23');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2426', N'2017-04-01', N'14');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2428', N'2017-04-01', N'6');
GO
INSERT INTO [dbo].[PersonelDevir] VALUES (N'2442', N'2017-06-05', N'-3');
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelEtiket]
-- ----------------------------
DROP TABLE [dbo].[PersonelEtiket]
GO
CREATE TABLE [dbo].[PersonelEtiket] (
[id] int NOT NULL ,
[personelID] int NOT NULL ,
[etiketID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of PersonelEtiket
-- ----------------------------
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'1', N'2448', N'10');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'2', N'2444', N'10');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'3', N'2445', N'10');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'4', N'2446', N'10');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'9', N'746', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'10', N'2193', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'11', N'2196', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'12', N'2199', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'13', N'2241', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'14', N'2298', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'15', N'2312', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'16', N'2338', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'17', N'2343', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'18', N'2379', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'19', N'762', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'20', N'772', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'21', N'914', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'22', N'915', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'23', N'1771', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'24', N'753', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'25', N'2299', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'26', N'2332', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'27', N'2342', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'28', N'2379', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'29', N'2388', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'30', N'2389', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'31', N'2399', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'32', N'2400', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'33', N'2401', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'34', N'2403', N'12');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'35', N'2448', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'36', N'2454', N'11');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'37', N'746', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'38', N'753', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'39', N'754', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'40', N'756', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'41', N'761', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'42', N'762', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'43', N'766', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'44', N'769', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'45', N'772', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'46', N'779', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'47', N'780', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'48', N'783', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'49', N'906', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'50', N'908', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'51', N'914', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'52', N'915', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'53', N'1082', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'54', N'1771', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'55', N'2115', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'56', N'2132', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'57', N'2193', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'58', N'2194', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'59', N'2196', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'60', N'2198', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'61', N'2199', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'62', N'2200', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'63', N'2203', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'64', N'2204', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'65', N'2223', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'66', N'2241', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'67', N'2243', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'68', N'2273', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'69', N'2282', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'70', N'2298', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'71', N'2299', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'72', N'2303', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'73', N'2312', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'74', N'2316', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'75', N'2320', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'76', N'2321', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'77', N'2322', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'78', N'2328', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'79', N'2330', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'80', N'2332', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'81', N'2338', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'82', N'2342', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'83', N'2343', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'84', N'2349', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'85', N'2350', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'86', N'2357', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'87', N'2359', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'88', N'2362', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'89', N'2363', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'90', N'2364', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'91', N'2365', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'92', N'2369', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'93', N'2370', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'94', N'2372', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'95', N'2373', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'96', N'2374', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'97', N'2377', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'98', N'2379', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'99', N'2381', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'100', N'2384', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'101', N'2385', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'102', N'2386', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'103', N'2387', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'104', N'2388', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'105', N'2389', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'106', N'2391', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'107', N'2399', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'108', N'2400', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'109', N'2401', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'110', N'2403', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'111', N'2405', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'112', N'2406', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'113', N'2407', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'114', N'2408', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'115', N'2409', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'116', N'2410', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'117', N'2411', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'118', N'2412', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'119', N'2414', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'120', N'2415', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'121', N'2417', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'122', N'2418', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'123', N'2419', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'124', N'2420', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'125', N'2421', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'126', N'2422', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'127', N'2423', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'128', N'2424', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'129', N'2425', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'130', N'2426', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'131', N'2428', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'132', N'2429', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'133', N'2431', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'134', N'2432', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'135', N'2435', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'136', N'2442', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'137', N'2444', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'138', N'2445', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'139', N'2446', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'140', N'2447', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'141', N'2448', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'142', N'2451', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'143', N'2453', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'144', N'2454', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'145', N'2456', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'146', N'2457', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'147', N'2458', N'6');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'148', N'2459', N'5');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'150', N'746', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'151', N'762', N'2');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'152', N'772', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'153', N'914', N'2');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'154', N'915', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'155', N'2200', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'156', N'2298', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'157', N'2312', N'2');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'158', N'2343', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'159', N'2362', N'2');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'160', N'2379', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'161', N'2400', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'162', N'2454', N'1');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'163', N'2411', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'164', N'2412', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'165', N'2444', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'166', N'2445', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'167', N'2446', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'168', N'2447', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'169', N'2448', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'170', N'2453', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'171', N'2196', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'172', N'2199', N'9');
GO
INSERT INTO [dbo].[PersonelEtiket] VALUES (N'173', N'2298', N'9');
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelFirma]
-- ----------------------------
DROP TABLE [dbo].[PersonelFirma]
GO
CREATE TABLE [dbo].[PersonelFirma] (
[id] int NOT NULL ,
[personelid] int NOT NULL ,
[firmaid] int NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PersonelFirma', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ihaleli personellerin hangi firmalarda hangi tarihler arası çalıştıkları bilgi tablosu'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelFirma'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ihaleli personellerin hangi firmalarda hangi tarihler arası çalıştıkları bilgi tablosu'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelFirma'
GO

-- ----------------------------
-- Records of PersonelFirma
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[PersonelGrup]
-- ----------------------------
DROP TABLE [dbo].[PersonelGrup]
GO
CREATE TABLE [dbo].[PersonelGrup] (
[id] int NOT NULL ,
[grupid] int NOT NULL ,
[personelid] int NOT NULL 
)


GO

-- ----------------------------
-- Records of PersonelGrup
-- ----------------------------
INSERT INTO [dbo].[PersonelGrup] VALUES (N'1', N'1', N'741');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'2', N'1', N'745');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'3', N'1', N'754');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'4', N'1', N'753');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'5', N'1', N'746');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'6', N'1', N'756');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'7', N'1', N'761');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'8', N'1', N'762');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'9', N'1', N'766');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'10', N'1', N'772');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'11', N'1', N'2196');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'12', N'1', N'2199');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'13', N'1', N'2198');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'14', N'1', N'2132');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'15', N'1', N'2194');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'16', N'1', N'2193');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'17', N'1', N'2115');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'18', N'1', N'1771');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'19', N'1', N'1082');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'20', N'1', N'915');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'21', N'1', N'914');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'22', N'1', N'908');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'23', N'1', N'906');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'24', N'1', N'783');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'25', N'1', N'780');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'26', N'1', N'779');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'27', N'1', N'769');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'28', N'1', N'2203');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'29', N'1', N'2343');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'30', N'1', N'2338');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'31', N'1', N'2342');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'32', N'1', N'2340');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'33', N'1', N'2335');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'34', N'1', N'2332');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'35', N'1', N'2330');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'36', N'1', N'2322');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'37', N'1', N'2328');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'38', N'1', N'2321');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'39', N'1', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'40', N'1', N'2316');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'41', N'1', N'2312');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'42', N'1', N'2303');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'43', N'1', N'2299');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'44', N'1', N'2298');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'45', N'1', N'2282');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'46', N'1', N'2273');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'47', N'1', N'2243');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'48', N'1', N'2241');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'49', N'1', N'2223');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'50', N'1', N'2204');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'51', N'1', N'2200');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'52', N'1', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'53', N'1', N'2379');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'54', N'1', N'2377');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'55', N'1', N'2388');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'56', N'1', N'2399');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'57', N'1', N'2389');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'58', N'1', N'2374');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'59', N'1', N'2372');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'60', N'1', N'2373');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'61', N'1', N'2370');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'62', N'1', N'2369');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'63', N'1', N'2365');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'64', N'1', N'2366');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'65', N'1', N'2363');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'66', N'1', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'67', N'1', N'2362');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'68', N'1', N'2359');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'69', N'1', N'2350');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'70', N'1', N'2357');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'71', N'1', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'72', N'2', N'741');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'73', N'2', N'745');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'74', N'2', N'2203');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'75', N'2', N'2273');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'76', N'2', N'2282');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'77', N'2', N'2243');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'78', N'2', N'2241');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'79', N'2', N'2223');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'80', N'2', N'2204');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'81', N'2', N'783');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'82', N'2', N'2200');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'83', N'2', N'2199');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'84', N'2', N'2132');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'85', N'2', N'2194');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'86', N'2', N'2198');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'87', N'2', N'2196');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'88', N'2', N'914');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'89', N'2', N'1771');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'90', N'2', N'2193');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'91', N'2', N'2115');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'92', N'2', N'1082');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'93', N'2', N'915');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'94', N'2', N'908');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'95', N'2', N'906');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'96', N'2', N'780');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'97', N'2', N'779');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'98', N'2', N'772');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'99', N'2', N'769');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'100', N'2', N'766');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'101', N'2', N'762');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'102', N'2', N'761');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'103', N'2', N'756');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'104', N'2', N'754');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'105', N'2', N'753');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'106', N'2', N'746');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'107', N'2', N'2330');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'108', N'2', N'2385');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'109', N'2', N'2387');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'110', N'2', N'2386');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'112', N'2', N'2391');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'113', N'2', N'2383');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'114', N'2', N'2384');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'115', N'2', N'2365');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'116', N'2', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'117', N'2', N'2379');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'118', N'2', N'2377');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'119', N'2', N'2374');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'120', N'2', N'2373');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'121', N'2', N'2372');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'122', N'2', N'2370');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'123', N'2', N'2369');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'124', N'2', N'2366');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'125', N'2', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'126', N'2', N'2362');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'127', N'2', N'2357');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'128', N'2', N'2359');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'129', N'2', N'2350');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'130', N'2', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'131', N'2', N'2343');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'132', N'2', N'2342');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'133', N'2', N'2340');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'134', N'2', N'2338');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'135', N'2', N'2335');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'136', N'2', N'2328');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'137', N'2', N'2322');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'138', N'2', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'139', N'2', N'2321');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'140', N'2', N'2316');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'141', N'2', N'2312');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'142', N'2', N'2303');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'143', N'2', N'2299');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'144', N'2', N'2298');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'145', N'1', N'2400');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'146', N'1', N'2401');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'147', N'1', N'2403');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'148', N'1', N'2404');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'149', N'3', N'2384');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'150', N'3', N'2429');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'151', N'3', N'2431');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'152', N'3', N'2435');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'153', N'3', N'2432');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'154', N'3', N'2383');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'155', N'3', N'2437');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'156', N'3', N'2433');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'157', N'3', N'2385');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'158', N'3', N'2391');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'159', N'3', N'2449');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'160', N'4', N'754');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'161', N'4', N'756');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'162', N'4', N'2369');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'163', N'4', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'164', N'4', N'2379');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'165', N'4', N'2389');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'166', N'4', N'2377');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'167', N'4', N'2399');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'168', N'4', N'2401');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'169', N'4', N'2403');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'170', N'4', N'2374');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'171', N'4', N'2373');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'172', N'4', N'2372');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'173', N'4', N'2370');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'174', N'4', N'2366');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'175', N'4', N'2365');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'176', N'4', N'2363');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'177', N'4', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'178', N'4', N'2362');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'179', N'4', N'2359');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'180', N'4', N'2357');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'181', N'4', N'2350');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'182', N'4', N'2340');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'183', N'4', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'184', N'4', N'2343');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'185', N'4', N'2342');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'186', N'4', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'187', N'4', N'2338');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'188', N'4', N'2335');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'189', N'4', N'2332');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'190', N'4', N'2330');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'191', N'4', N'2328');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'192', N'4', N'2322');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'193', N'4', N'2321');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'194', N'4', N'2303');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'195', N'4', N'2316');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'196', N'4', N'2312');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'197', N'4', N'2298');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'198', N'4', N'2299');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'199', N'4', N'2200');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'200', N'4', N'2282');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'201', N'4', N'2273');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'202', N'4', N'2243');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'203', N'4', N'2241');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'204', N'4', N'2223');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'205', N'4', N'2204');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'206', N'4', N'2203');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'207', N'4', N'2196');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'208', N'4', N'2199');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'209', N'4', N'2198');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'210', N'4', N'2194');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'211', N'4', N'2193');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'212', N'4', N'2132');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'213', N'4', N'908');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'214', N'4', N'2115');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'215', N'4', N'1771');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'216', N'4', N'1082');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'217', N'4', N'915');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'218', N'4', N'914');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'219', N'4', N'783');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'220', N'4', N'906');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'221', N'4', N'780');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'222', N'4', N'779');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'223', N'4', N'769');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'224', N'4', N'772');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'225', N'4', N'766');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'226', N'4', N'762');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'227', N'4', N'761');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'228', N'4', N'746');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'229', N'4', N'753');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'230', N'5', N'2414');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'231', N'5', N'2417');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'232', N'5', N'2418');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'233', N'5', N'2419');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'234', N'5', N'2420');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'235', N'5', N'2421');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'236', N'5', N'2423');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'237', N'5', N'2424');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'238', N'5', N'2425');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'239', N'5', N'2426');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'240', N'5', N'2428');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'241', N'5', N'2442');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'242', N'5', N'2387');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'243', N'5', N'2405');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'244', N'5', N'2406');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'245', N'5', N'2407');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'246', N'5', N'2408');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'247', N'5', N'2409');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'248', N'5', N'2410');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'249', N'5', N'2415');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'250', N'5', N'2386');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'252', N'6', N'2223');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'253', N'6', N'2273');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'254', N'6', N'2299');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'255', N'6', N'2340');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'256', N'6', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'257', N'6', N'2374');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'258', N'6', N'2401');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'259', N'6', N'761');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'260', N'6', N'2115');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'261', N'6', N'2132');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'262', N'6', N'2403');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'263', N'6', N'769');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'264', N'6', N'779');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'265', N'6', N'780');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'266', N'6', N'783');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'267', N'6', N'1082');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'268', N'6', N'2196');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'269', N'6', N'2282');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'270', N'6', N'2303');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'271', N'6', N'2321');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'272', N'6', N'2322');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'273', N'6', N'2332');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'274', N'6', N'2357');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'275', N'6', N'2365');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'276', N'6', N'2369');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'277', N'6', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'278', N'6', N'2402');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'279', N'6', N'2444');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'280', N'6', N'2446');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'282', N'6', N'2194');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'283', N'6', N'2328');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'284', N'6', N'2372');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'285', N'6', N'2377');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'286', N'6', N'753');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'287', N'6', N'756');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'288', N'6', N'908');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'289', N'6', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'290', N'6', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'291', N'6', N'2350');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'292', N'6', N'2359');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'293', N'6', N'2389');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'294', N'6', N'2411');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'295', N'6', N'2412');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'296', N'6', N'2198');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'297', N'6', N'2199');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'298', N'6', N'2241');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'299', N'6', N'2298');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'300', N'6', N'2338');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'301', N'6', N'2342');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'302', N'6', N'754');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'303', N'6', N'772');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'304', N'6', N'2193');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'305', N'6', N'2204');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'306', N'6', N'2243');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'307', N'6', N'2312');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'308', N'6', N'2335');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'309', N'6', N'2379');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'310', N'6', N'2400');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'311', N'6', N'746');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'312', N'6', N'762');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'313', N'6', N'914');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'314', N'6', N'915');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'315', N'6', N'1771');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'316', N'6', N'2343');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'317', N'6', N'2362');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'318', N'7', N'2203');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'319', N'7', N'2223');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'320', N'7', N'2273');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'321', N'7', N'2299');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'322', N'7', N'2340');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'323', N'7', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'324', N'7', N'2373');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'325', N'7', N'2374');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'326', N'7', N'2401');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'327', N'7', N'761');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'328', N'7', N'2115');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'329', N'7', N'2132');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'330', N'7', N'2403');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'331', N'7', N'766');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'332', N'7', N'769');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'333', N'7', N'779');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'334', N'7', N'780');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'335', N'7', N'783');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'336', N'7', N'1082');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'337', N'7', N'2196');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'338', N'7', N'2282');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'339', N'7', N'2303');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'340', N'7', N'2321');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'341', N'7', N'2322');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'342', N'7', N'2332');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'343', N'7', N'2357');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'344', N'7', N'2363');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'345', N'7', N'2365');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'346', N'7', N'2369');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'347', N'7', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'348', N'7', N'2399');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'349', N'7', N'2402');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'350', N'7', N'2444');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'351', N'7', N'2445');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'352', N'7', N'2446');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'353', N'7', N'2447');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'354', N'7', N'2448');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'356', N'7', N'2194');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'357', N'7', N'2328');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'358', N'7', N'2330');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'359', N'7', N'2372');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'360', N'7', N'2377');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'361', N'7', N'2388');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'362', N'7', N'753');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'363', N'7', N'756');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'364', N'7', N'906');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'365', N'7', N'908');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'366', N'7', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'367', N'7', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'368', N'7', N'2350');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'369', N'7', N'2359');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'370', N'7', N'2370');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'371', N'7', N'2389');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'372', N'7', N'2411');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'373', N'7', N'2412');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'374', N'7', N'2198');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'375', N'7', N'2199');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'376', N'7', N'2241');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'377', N'7', N'2298');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'378', N'7', N'2338');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'379', N'7', N'2342');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'380', N'7', N'754');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'381', N'7', N'772');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'382', N'7', N'2193');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'383', N'7', N'2200');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'384', N'7', N'2204');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'385', N'7', N'2243');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'386', N'7', N'2312');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'387', N'7', N'2316');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'388', N'7', N'2335');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'389', N'7', N'2379');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'390', N'7', N'2400');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'391', N'7', N'746');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'392', N'7', N'762');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'393', N'7', N'914');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'394', N'7', N'915');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'395', N'7', N'1771');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'396', N'7', N'2343');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'397', N'7', N'2362');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'398', N'8', N'2203');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'399', N'8', N'2223');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'400', N'8', N'2273');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'401', N'8', N'2299');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'402', N'8', N'2340');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'403', N'8', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'404', N'8', N'2373');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'405', N'8', N'2374');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'406', N'8', N'2401');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'407', N'8', N'2414');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'408', N'8', N'2417');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'409', N'8', N'2418');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'410', N'8', N'2419');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'411', N'8', N'2420');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'412', N'8', N'2421');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'413', N'8', N'2422');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'414', N'8', N'2423');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'415', N'8', N'2424');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'416', N'8', N'2425');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'417', N'8', N'2426');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'418', N'8', N'2428');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'419', N'8', N'2442');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'420', N'8', N'2455');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'421', N'8', N'2456');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'422', N'8', N'2457');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'423', N'8', N'2458');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'424', N'8', N'761');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'425', N'8', N'2115');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'426', N'8', N'2132');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'427', N'8', N'2403');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'428', N'8', N'2451');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'429', N'8', N'769');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'430', N'8', N'783');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'431', N'8', N'1082');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'432', N'8', N'2196');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'433', N'8', N'2282');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'434', N'8', N'2303');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'435', N'8', N'2321');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'436', N'8', N'2322');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'437', N'8', N'2332');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'438', N'8', N'2357');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'439', N'8', N'2363');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'440', N'8', N'2369');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'441', N'8', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'442', N'8', N'2399');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'443', N'8', N'2402');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'444', N'8', N'2407');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'445', N'8', N'2408');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'446', N'8', N'2410');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'447', N'8', N'2415');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'448', N'8', N'2444');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'449', N'8', N'2445');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'450', N'8', N'2446');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'451', N'8', N'2447');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'452', N'8', N'2453');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'453', N'8', N'766');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'454', N'8', N'779');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'455', N'8', N'2365');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'456', N'8', N'2384');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'457', N'8', N'2387');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'458', N'8', N'2405');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'459', N'8', N'2406');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'460', N'8', N'2409');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'461', N'8', N'2194');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'462', N'8', N'2328');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'463', N'8', N'2330');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'464', N'8', N'2372');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'465', N'8', N'2377');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'466', N'8', N'2388');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'467', N'8', N'2435');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'468', N'8', N'753');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'469', N'8', N'756');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'470', N'8', N'780');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'471', N'8', N'906');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'472', N'8', N'908');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'473', N'8', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'474', N'8', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'475', N'8', N'2350');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'476', N'8', N'2359');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'477', N'8', N'2370');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'478', N'8', N'2385');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'479', N'8', N'2389');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'480', N'8', N'2411');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'481', N'8', N'2412');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'482', N'8', N'2198');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'483', N'8', N'2199');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'484', N'8', N'2241');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'485', N'8', N'2298');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'486', N'8', N'2338');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'487', N'8', N'2342');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'488', N'8', N'2386');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'489', N'8', N'2391');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'490', N'8', N'2429');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'491', N'8', N'2431');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'492', N'8', N'2432');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'493', N'8', N'2454');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'494', N'8', N'754');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'495', N'8', N'772');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'496', N'8', N'2193');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'497', N'8', N'2200');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'498', N'8', N'2204');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'499', N'8', N'2243');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'500', N'8', N'2312');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'501', N'8', N'2316');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'502', N'8', N'2379');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'503', N'8', N'2400');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'504', N'8', N'746');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'505', N'8', N'762');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'506', N'8', N'914');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'507', N'8', N'915');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'508', N'8', N'1771');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'509', N'8', N'2343');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'510', N'8', N'2362');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'511', N'9', N'2203');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'512', N'9', N'2364');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'513', N'9', N'2422');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'514', N'9', N'2442');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'515', N'9', N'2381');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'516', N'9', N'2384');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'517', N'9', N'2405');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'518', N'9', N'2320');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'519', N'9', N'2349');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'520', N'9', N'2385');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'521', N'9', N'2391');
GO
INSERT INTO [dbo].[PersonelGrup] VALUES (N'522', N'9', N'2400');
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelIhale]
-- ----------------------------
DROP TABLE [dbo].[PersonelIhale]
GO
CREATE TABLE [dbo].[PersonelIhale] (
[id] int NOT NULL ,
[firmaid] int NOT NULL ,
[baslangic] date NOT NULL ,
[bitis] date NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PersonelIhale', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'firma ihalelerinin başlangıç ve  bitiş tarihleri ile tutulduğu tablo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelIhale'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'firma ihalelerinin başlangıç ve  bitiş tarihleri ile tutulduğu tablo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelIhale'
GO

-- ----------------------------
-- Records of PersonelIhale
-- ----------------------------
INSERT INTO [dbo].[PersonelIhale] VALUES (N'1', N'1', N'2017-04-01', N'2018-03-31');
GO
INSERT INTO [dbo].[PersonelIhale] VALUES (N'3', N'4', N'2016-12-01', N'2017-11-30');
GO
INSERT INTO [dbo].[PersonelIhale] VALUES (N'4', N'5', N'2016-11-12', N'2017-10-31');
GO
INSERT INTO [dbo].[PersonelIhale] VALUES (N'5', N'3', N'2006-01-01', null);
GO
INSERT INTO [dbo].[PersonelIhale] VALUES (N'6', N'2', N'2016-01-01', null);
GO
INSERT INTO [dbo].[PersonelIhale] VALUES (N'7', N'6', N'2016-01-01', null);
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelIhaleDonemleri]
-- ----------------------------
DROP TABLE [dbo].[PersonelIhaleDonemleri]
GO
CREATE TABLE [dbo].[PersonelIhaleDonemleri] (
[id] int NOT NULL ,
[personelid] int NOT NULL ,
[ihaleid] int NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PersonelIhaleDonemleri', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'personelin yıl bazında çalıştığı tüm ihallelerin tutulduğu tablo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelIhaleDonemleri'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'personelin yıl bazında çalıştığı tüm ihallelerin tutulduğu tablo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PersonelIhaleDonemleri'
GO

-- ----------------------------
-- Records of PersonelIhaleDonemleri
-- ----------------------------
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'13', N'745', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'14', N'746', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'15', N'753', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'16', N'754', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'17', N'756', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'18', N'761', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'19', N'762', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'20', N'766', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'21', N'769', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'22', N'772', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'153', N'779', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'23', N'779', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'24', N'780', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'25', N'783', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'26', N'906', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'27', N'908', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'28', N'914', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'29', N'915', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'30', N'1082', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'31', N'1771', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'32', N'2115', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'33', N'2132', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'34', N'2193', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'35', N'2194', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'36', N'2196', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'37', N'2198', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'38', N'2199', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'39', N'2200', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'40', N'2203', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'41', N'2204', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'42', N'2223', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'43', N'2241', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'44', N'2243', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'45', N'2273', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'46', N'2282', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'47', N'2298', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'48', N'2299', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'49', N'2303', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'50', N'2312', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'51', N'2316', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'52', N'2320', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'53', N'2321', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'54', N'2322', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'55', N'2328', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'56', N'2330', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'57', N'2332', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'58', N'2335', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'59', N'2338', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'60', N'2340', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'61', N'2342', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'62', N'2343', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'63', N'2349', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'64', N'2350', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'65', N'2357', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'66', N'2359', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'67', N'2362', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'68', N'2363', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'69', N'2364', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'70', N'2365', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'71', N'2366', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'72', N'2369', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'73', N'2370', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'74', N'2372', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'75', N'2373', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'76', N'2374', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'77', N'2377', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'78', N'2379', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'79', N'2381', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'127', N'2383', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'128', N'2384', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'129', N'2385', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'80', N'2386', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'130', N'2386', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'81', N'2387', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'131', N'2387', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'82', N'2388', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'83', N'2389', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'132', N'2391', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'84', N'2399', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'85', N'2400', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'86', N'2401', N'6');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'87', N'2402', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'88', N'2403', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'89', N'2404', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'90', N'2405', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'134', N'2405', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'91', N'2406', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'135', N'2406', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'92', N'2407', N'4');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'93', N'2408', N'4');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'94', N'2409', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'136', N'2409', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'95', N'2410', N'4');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'96', N'2411', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'97', N'2412', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'125', N'2414', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'99', N'2414', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'98', N'2415', N'4');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'121', N'2417', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'101', N'2417', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'114', N'2418', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'102', N'2418', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'113', N'2419', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'103', N'2419', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'118', N'2420', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'104', N'2420', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'116', N'2421', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'105', N'2421', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'120', N'2422', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'106', N'2422', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'117', N'2423', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'107', N'2423', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'123', N'2424', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'108', N'2424', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'119', N'2425', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'109', N'2425', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'115', N'2426', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'122', N'2427', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'110', N'2427', N'3');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'124', N'2428', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'138', N'2429', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'139', N'2430', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'140', N'2431', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'141', N'2432', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'142', N'2433', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'143', N'2435', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'144', N'2436', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'145', N'2437', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'112', N'2440', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'111', N'2442', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'126', N'2443', N'1');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'150', N'2444', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'148', N'2445', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'149', N'2446', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'147', N'2447', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'146', N'2448', N'5');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'151', N'2449', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'154', N'2451', N'7');
GO
INSERT INTO [dbo].[PersonelIhaleDonemleri] VALUES (N'155', N'2452', N'1');
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelOzluk]
-- ----------------------------
DROP TABLE [dbo].[PersonelOzluk]
GO
CREATE TABLE [dbo].[PersonelOzluk] (
[id] int NOT NULL ,
[personelid] int NOT NULL ,
[evrakid] int NOT NULL ,
[adet] int NOT NULL 
)


GO

-- ----------------------------
-- Records of PersonelOzluk
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[PersonelOzlukEvrak]
-- ----------------------------
DROP TABLE [dbo].[PersonelOzlukEvrak]
GO
CREATE TABLE [dbo].[PersonelOzlukEvrak] (
[id] int NOT NULL ,
[personelID] int NOT NULL ,
[evrakID] int NOT NULL ,
[durum] bit NOT NULL DEFAULT ((0)) ,
[aciklama] nvarchar(100) NULL 
)


GO

-- ----------------------------
-- Records of PersonelOzlukEvrak
-- ----------------------------
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'10', N'741', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'11', N'745', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'12', N'754', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'13', N'753', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'14', N'746', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'15', N'756', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'16', N'761', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'17', N'762', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'18', N'766', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'19', N'772', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'20', N'2196', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'21', N'2199', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'22', N'2198', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'23', N'2132', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'24', N'2194', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'25', N'2193', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'26', N'2115', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'27', N'1771', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'28', N'1082', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'29', N'915', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'30', N'914', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'31', N'908', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'32', N'906', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'33', N'783', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'34', N'780', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'35', N'779', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'36', N'769', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'37', N'2203', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'38', N'2343', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'39', N'2338', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'40', N'2342', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'41', N'2340', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'42', N'2335', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'43', N'2332', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'44', N'2330', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'45', N'2322', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'46', N'2328', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'47', N'2321', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'48', N'2320', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'49', N'2316', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'50', N'2312', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'51', N'2303', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'52', N'2299', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'53', N'2298', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'54', N'2282', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'55', N'2273', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'56', N'2243', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'57', N'2241', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'58', N'2223', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'59', N'2204', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'60', N'2200', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'61', N'2381', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'62', N'2379', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'63', N'2377', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'64', N'2388', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'65', N'2399', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'66', N'2389', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'67', N'2374', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'68', N'2372', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'69', N'2373', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'70', N'2370', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'71', N'2369', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'72', N'2365', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'73', N'2366', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'74', N'2363', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'75', N'2364', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'76', N'2362', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'77', N'2359', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'78', N'2350', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'79', N'2357', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'80', N'2349', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'81', N'2400', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'82', N'2401', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'83', N'2403', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'84', N'2404', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'87', N'741', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'88', N'745', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'89', N'754', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'90', N'753', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'91', N'746', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'92', N'756', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'93', N'761', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'94', N'762', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'95', N'766', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'96', N'772', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'97', N'2196', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'98', N'2199', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'99', N'2198', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'100', N'2132', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'101', N'2194', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'102', N'2193', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'103', N'2115', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'104', N'1771', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'105', N'1082', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'106', N'915', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'107', N'914', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'108', N'908', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'109', N'906', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'110', N'783', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'111', N'780', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'112', N'779', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'113', N'769', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'114', N'2203', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'115', N'2343', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'116', N'2338', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'117', N'2342', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'118', N'2340', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'119', N'2335', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'120', N'2332', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'121', N'2330', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'122', N'2322', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'123', N'2328', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'124', N'2321', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'125', N'2320', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'126', N'2316', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'127', N'2312', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'128', N'2303', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'129', N'2299', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'130', N'2298', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'131', N'2282', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'132', N'2273', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'133', N'2243', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'134', N'2241', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'135', N'2223', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'136', N'2204', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'137', N'2200', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'138', N'2381', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'139', N'2379', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'140', N'2377', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'141', N'2388', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'142', N'2399', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'143', N'2389', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'144', N'2374', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'145', N'2372', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'146', N'2373', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'147', N'2370', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'148', N'2369', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'149', N'2365', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'150', N'2366', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'151', N'2363', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'152', N'2364', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'153', N'2362', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'154', N'2359', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'155', N'2350', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'156', N'2357', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'157', N'2349', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'158', N'2400', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'159', N'2401', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'160', N'2403', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'161', N'2404', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'184', N'741', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'185', N'745', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'186', N'754', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'187', N'753', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'188', N'746', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'189', N'756', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'190', N'761', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'191', N'762', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'192', N'766', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'193', N'772', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'194', N'2196', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'195', N'2199', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'196', N'2198', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'197', N'2132', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'198', N'2194', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'199', N'2193', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'200', N'2115', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'201', N'1771', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'202', N'1082', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'203', N'915', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'204', N'914', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'205', N'908', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'206', N'906', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'207', N'783', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'208', N'780', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'209', N'779', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'210', N'769', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'211', N'2203', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'212', N'2343', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'213', N'2338', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'214', N'2342', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'215', N'2340', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'216', N'2335', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'217', N'2332', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'218', N'2330', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'219', N'2322', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'220', N'2328', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'221', N'2321', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'222', N'2320', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'223', N'2316', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'224', N'2312', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'225', N'2303', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'226', N'2299', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'227', N'2298', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'228', N'2282', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'229', N'2273', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'230', N'2243', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'231', N'2241', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'232', N'2223', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'233', N'2204', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'234', N'2200', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'235', N'2381', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'236', N'2379', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'237', N'2377', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'238', N'2388', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'239', N'2399', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'240', N'2389', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'241', N'2374', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'242', N'2372', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'243', N'2373', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'244', N'2370', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'245', N'2369', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'246', N'2365', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'247', N'2366', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'248', N'2363', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'249', N'2364', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'250', N'2362', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'251', N'2359', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'252', N'2350', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'253', N'2357', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'254', N'2349', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'255', N'2400', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'256', N'2401', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'257', N'2403', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'258', N'2404', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'260', N'741', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'261', N'745', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'262', N'754', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'263', N'753', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'264', N'746', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'265', N'756', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'266', N'761', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'267', N'762', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'268', N'766', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'269', N'772', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'270', N'2196', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'271', N'2199', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'272', N'2198', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'273', N'2132', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'274', N'2194', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'275', N'2193', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'276', N'2115', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'277', N'1771', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'278', N'1082', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'279', N'915', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'280', N'914', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'281', N'908', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'282', N'906', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'283', N'783', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'284', N'780', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'285', N'779', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'286', N'769', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'287', N'2203', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'288', N'2343', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'289', N'2338', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'290', N'2342', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'291', N'2340', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'292', N'2335', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'293', N'2332', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'294', N'2330', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'295', N'2322', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'296', N'2328', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'297', N'2321', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'298', N'2320', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'299', N'2316', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'300', N'2312', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'301', N'2303', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'302', N'2299', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'303', N'2298', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'304', N'2282', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'305', N'2273', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'306', N'2243', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'307', N'2241', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'308', N'2223', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'309', N'2204', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'310', N'2200', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'311', N'2381', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'312', N'2379', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'313', N'2377', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'314', N'2388', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'315', N'2399', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'316', N'2389', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'317', N'2374', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'318', N'2372', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'319', N'2373', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'320', N'2370', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'321', N'2369', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'322', N'2365', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'323', N'2366', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'324', N'2363', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'325', N'2364', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'326', N'2362', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'327', N'2359', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'328', N'2350', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'329', N'2357', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'330', N'2349', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'331', N'2400', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'332', N'2401', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'333', N'2403', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'334', N'2404', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'336', N'741', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'337', N'745', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'338', N'754', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'339', N'753', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'340', N'746', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'341', N'756', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'342', N'761', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'343', N'762', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'344', N'766', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'345', N'772', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'346', N'2196', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'347', N'2199', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'348', N'2198', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'349', N'2132', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'350', N'2194', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'351', N'2193', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'352', N'2115', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'353', N'1771', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'354', N'1082', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'355', N'915', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'356', N'914', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'357', N'908', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'358', N'906', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'359', N'783', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'360', N'780', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'361', N'779', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'362', N'769', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'363', N'2203', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'364', N'2343', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'365', N'2338', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'366', N'2342', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'367', N'2340', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'368', N'2335', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'369', N'2332', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'370', N'2330', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'371', N'2322', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'372', N'2328', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'373', N'2321', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'374', N'2320', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'375', N'2316', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'376', N'2312', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'377', N'2303', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'378', N'2299', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'379', N'2298', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'380', N'2282', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'381', N'2273', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'382', N'2243', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'383', N'2241', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'384', N'2223', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'385', N'2204', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'386', N'2200', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'387', N'2381', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'388', N'2379', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'389', N'2377', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'390', N'2388', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'391', N'2399', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'392', N'2389', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'393', N'2374', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'394', N'2372', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'395', N'2373', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'396', N'2370', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'397', N'2369', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'398', N'2365', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'399', N'2366', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'400', N'2363', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'401', N'2364', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'402', N'2362', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'403', N'2359', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'404', N'2350', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'405', N'2357', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'406', N'2349', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'407', N'2400', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'408', N'2401', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'409', N'2403', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'410', N'2404', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'411', N'741', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'412', N'745', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'413', N'754', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'414', N'753', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'415', N'746', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'416', N'756', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'417', N'761', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'418', N'762', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'419', N'766', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'420', N'772', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'421', N'2196', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'422', N'2199', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'423', N'2198', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'424', N'2132', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'425', N'2194', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'426', N'2193', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'427', N'2115', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'428', N'1771', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'429', N'1082', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'430', N'915', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'431', N'914', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'432', N'908', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'433', N'906', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'434', N'783', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'435', N'780', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'436', N'779', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'437', N'769', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'438', N'2203', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'439', N'2343', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'440', N'2338', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'441', N'2342', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'442', N'2340', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'443', N'2335', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'444', N'2332', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'445', N'2330', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'446', N'2322', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'447', N'2328', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'448', N'2321', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'449', N'2320', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'450', N'2316', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'451', N'2312', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'452', N'2303', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'453', N'2299', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'454', N'2298', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'455', N'2282', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'456', N'2273', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'457', N'2243', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'458', N'2241', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'459', N'2223', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'460', N'2204', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'461', N'2200', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'462', N'2381', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'463', N'2379', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'464', N'2377', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'465', N'2388', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'466', N'2399', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'467', N'2389', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'468', N'2374', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'469', N'2372', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'470', N'2373', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'471', N'2370', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'472', N'2369', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'473', N'2365', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'474', N'2366', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'475', N'2363', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'476', N'2364', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'477', N'2362', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'478', N'2359', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'479', N'2350', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'480', N'2357', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'481', N'2349', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'482', N'2400', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'483', N'2401', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'484', N'2403', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'485', N'2404', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'486', N'741', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'487', N'745', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'488', N'754', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'489', N'753', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'490', N'746', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'491', N'756', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'492', N'761', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'493', N'762', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'494', N'766', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'495', N'772', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'496', N'2196', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'497', N'2199', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'498', N'2198', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'499', N'2132', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'500', N'2194', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'501', N'2193', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'502', N'2115', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'503', N'1771', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'504', N'1082', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'505', N'915', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'506', N'914', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'507', N'908', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'508', N'906', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'509', N'783', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'510', N'780', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'511', N'779', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'512', N'769', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'513', N'2203', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'514', N'2343', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'515', N'2338', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'516', N'2342', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'517', N'2340', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'518', N'2335', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'519', N'2332', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'520', N'2330', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'521', N'2322', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'522', N'2328', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'523', N'2321', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'524', N'2320', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'525', N'2316', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'526', N'2312', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'527', N'2303', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'528', N'2299', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'529', N'2298', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'530', N'2282', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'531', N'2273', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'532', N'2243', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'533', N'2241', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'534', N'2223', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'535', N'2204', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'536', N'2200', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'537', N'2381', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'538', N'2379', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'539', N'2377', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'540', N'2388', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'541', N'2399', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'542', N'2389', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'543', N'2374', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'544', N'2372', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'545', N'2373', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'546', N'2370', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'547', N'2369', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'548', N'2365', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'549', N'2366', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'550', N'2363', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'551', N'2364', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'552', N'2362', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'553', N'2359', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'554', N'2350', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'555', N'2357', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'556', N'2349', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'557', N'2400', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'558', N'2401', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'559', N'2403', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'560', N'2404', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'561', N'741', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'562', N'745', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'563', N'754', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'564', N'753', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'565', N'746', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'566', N'756', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'567', N'761', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'568', N'762', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'569', N'766', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'570', N'772', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'571', N'2196', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'572', N'2199', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'573', N'2198', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'574', N'2132', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'575', N'2194', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'576', N'2193', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'577', N'2115', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'578', N'1771', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'579', N'1082', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'580', N'915', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'581', N'914', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'582', N'908', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'583', N'906', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'584', N'783', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'585', N'780', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'586', N'779', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'587', N'769', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'588', N'2203', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'589', N'2343', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'590', N'2338', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'591', N'2342', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'592', N'2340', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'593', N'2335', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'594', N'2332', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'595', N'2330', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'596', N'2322', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'597', N'2328', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'598', N'2321', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'599', N'2320', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'600', N'2316', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'601', N'2312', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'602', N'2303', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'603', N'2299', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'604', N'2298', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'605', N'2282', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'606', N'2273', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'607', N'2243', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'608', N'2241', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'609', N'2223', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'610', N'2204', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'611', N'2200', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'612', N'2381', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'613', N'2379', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'614', N'2377', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'615', N'2388', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'616', N'2399', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'617', N'2389', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'618', N'2374', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'619', N'2372', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'620', N'2373', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'621', N'2370', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'622', N'2369', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'623', N'2365', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'624', N'2366', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'625', N'2363', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'626', N'2364', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'627', N'2362', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'628', N'2359', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'629', N'2350', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'630', N'2357', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'631', N'2349', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'632', N'2400', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'633', N'2401', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'634', N'2403', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'635', N'2404', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'636', N'2384', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'637', N'2429', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'638', N'2431', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'639', N'2435', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'640', N'2432', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'641', N'2383', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'642', N'2437', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'643', N'2433', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'644', N'2385', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'645', N'2391', N'1', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'646', N'2449', N'1', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'647', N'2384', N'2', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'648', N'2429', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'649', N'2431', N'2', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'650', N'2435', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'651', N'2432', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'652', N'2383', N'2', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'653', N'2437', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'654', N'2433', N'2', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'655', N'2385', N'2', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'656', N'2391', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'657', N'2449', N'2', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'658', N'2384', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'659', N'2429', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'660', N'2431', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'661', N'2435', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'662', N'2432', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'663', N'2383', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'664', N'2437', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'665', N'2433', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'666', N'2385', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'667', N'2391', N'3', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'668', N'2449', N'3', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'669', N'2384', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'670', N'2429', N'4', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'671', N'2431', N'4', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'672', N'2435', N'4', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'673', N'2432', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'674', N'2383', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'675', N'2437', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'676', N'2433', N'4', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'677', N'2385', N'4', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'678', N'2391', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'679', N'2449', N'4', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'680', N'2384', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'681', N'2429', N'5', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'682', N'2431', N'5', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'683', N'2435', N'5', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'684', N'2432', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'685', N'2383', N'5', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'686', N'2437', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'687', N'2433', N'5', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'688', N'2385', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'689', N'2391', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'690', N'2449', N'5', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'691', N'2384', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'692', N'2429', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'693', N'2431', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'694', N'2435', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'695', N'2432', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'696', N'2383', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'697', N'2437', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'698', N'2433', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'699', N'2385', N'6', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'700', N'2391', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'701', N'2449', N'6', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'702', N'2384', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'703', N'2429', N'7', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'704', N'2431', N'7', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'705', N'2435', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'706', N'2432', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'707', N'2383', N'7', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'708', N'2437', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'709', N'2433', N'7', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'710', N'2385', N'7', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'711', N'2391', N'7', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'712', N'2449', N'7', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'713', N'2384', N'8', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'714', N'2429', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'715', N'2431', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'716', N'2435', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'717', N'2432', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'718', N'2383', N'8', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'719', N'2437', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'720', N'2433', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'721', N'2385', N'8', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'722', N'2391', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'723', N'2449', N'8', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'724', N'2384', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'725', N'2429', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'726', N'2431', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'727', N'2435', N'9', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'728', N'2432', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'729', N'2383', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'730', N'2437', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'731', N'2433', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'732', N'2385', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'733', N'2391', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'734', N'2449', N'9', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'735', N'2384', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'736', N'2429', N'10', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'737', N'2431', N'10', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'738', N'2435', N'10', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'739', N'2432', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'740', N'2383', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'741', N'2437', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'742', N'2433', N'10', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'743', N'2385', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'744', N'2391', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'745', N'2449', N'10', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'746', N'2384', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'747', N'2429', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'748', N'2431', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'749', N'2435', N'11', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'750', N'2432', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'751', N'2383', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'752', N'2437', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'753', N'2433', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'754', N'2385', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'755', N'2391', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'756', N'2449', N'11', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'757', N'2384', N'12', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'758', N'2429', N'12', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'759', N'2431', N'12', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'760', N'2435', N'12', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'761', N'2432', N'12', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'762', N'2383', N'12', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'763', N'2437', N'12', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'764', N'2433', N'12', N'1', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'765', N'2385', N'12', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'766', N'2391', N'12', N'0', N'');
GO
INSERT INTO [dbo].[PersonelOzlukEvrak] VALUES (N'767', N'2449', N'12', N'0', N'');
GO

-- ----------------------------
-- Table structure for [dbo].[PersonelOzlukEvrakResim]
-- ----------------------------
DROP TABLE [dbo].[PersonelOzlukEvrakResim]
GO
CREATE TABLE [dbo].[PersonelOzlukEvrakResim] (
[id] int NOT NULL ,
[personelOzlukid] int NOT NULL ,
[path] nvarchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of PersonelOzlukEvrakResim
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Rapor]
-- ----------------------------
DROP TABLE [dbo].[Rapor]
GO
CREATE TABLE [dbo].[Rapor] (
[id] int NOT NULL ,
[raportip] int NOT NULL ,
[baslangic] date NOT NULL ,
[bitis] date NOT NULL ,
[hastaliktip] int NOT NULL ,
[personelid] int NOT NULL ,
[aciklama] nvarchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Rapor', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'personelin aldıkları raporların çakma olup olmadığının takibi için'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Rapor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'personelin aldıkları raporların çakma olup olmadığının takibi için'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Rapor'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Rapor', 
'COLUMN', N'raportip')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'işyeri hekimi,hastane,sağlık ocağı v.b.'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Rapor'
, @level2type = 'COLUMN', @level2name = N'raportip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'işyeri hekimi,hastane,sağlık ocağı v.b.'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Rapor'
, @level2type = 'COLUMN', @level2name = N'raportip'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Rapor', 
'COLUMN', N'hastaliktip')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'hastalık,analık,iş kazası v.b.'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Rapor'
, @level2type = 'COLUMN', @level2name = N'hastaliktip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'hastalık,analık,iş kazası v.b.'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Rapor'
, @level2type = 'COLUMN', @level2name = N'hastaliktip'
GO

-- ----------------------------
-- Records of Rapor
-- ----------------------------
INSERT INTO [dbo].[Rapor] VALUES (N'2', N'3', N'2017-10-02', N'2017-10-03', N'1', N'2377', N'RAPORLU-1410489');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'3', N'1', N'2017-10-02', N'2017-10-02', N'1', N'783', N'RAPORLU-343');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'4', N'1', N'2017-10-02', N'2017-10-03', N'1', N'779', N'RAPORLU-341');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'5', N'1', N'2017-10-03', N'2017-10-03', N'1', N'2381', N'RAPORLU-18480');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'6', N'1', N'2017-10-05', N'2017-10-05', N'1', N'769', N'RAPORLU-345');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'9', N'3', N'2017-10-09', N'2017-10-18', N'1', N'2350', N'RAPORLU-100000000031598840');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'10', N'3', N'2017-10-10', N'2017-10-10', N'1', N'754', N'RAPORLU-202492');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'11', N'2', N'2017-10-11', N'2017-10-13', N'1', N'2403', N'RAPORLU-104187');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'12', N'3', N'2017-10-12', N'2017-10-21', N'1', N'2411', N'RAPORLU-100000000031732022');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'13', N'2', N'2017-09-21', N'2017-09-21', N'1', N'2402', N'RAPORLU-N0D9G4');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'14', N'1', N'2017-10-12', N'2017-10-13', N'1', N'2357', N'RAPORLU-351');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'15', N'1', N'2017-10-20', N'2017-10-20', N'1', N'2328', N'RAPORLU-361');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'16', N'3', N'2017-10-05', N'2017-11-03', N'1', N'2364', N'RAPORLU-100000000031536566');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'17', N'3', N'2017-10-13', N'2017-10-13', N'1', N'754', N'RAPORLU-202945');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'18', N'3', N'2017-10-23', N'2017-10-27', N'1', N'2411', N'RAPORLU-100000000031971984');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'19', N'1', N'2017-10-11', N'2017-10-11', N'1', N'2372', N'RAPORLU-349');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'20', N'2', N'2017-10-31', N'2017-11-01', N'1', N'2335', N'RAPORLU-4VNSG2LAW79988UMJ');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'21', N'3', N'2017-11-06', N'2017-11-06', N'1', N'2365', N'RAPORLU-2568');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'22', N'2', N'2017-11-07', N'2017-11-07', N'1', N'2381', N'RAPORLU-775');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'23', N'1', N'2017-11-08', N'2017-11-09', N'1', N'2372', N'RAPORLU-2271');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'24', N'3', N'2017-11-10', N'2017-11-10', N'1', N'2372', N'RAPORLU-100000000032441254');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'25', N'3', N'2017-11-07', N'2017-11-30', N'1', N'906', N'RAPORLU-170001402');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'26', N'3', N'2017-11-13', N'2017-11-15', N'1', N'2359', N'RAPORLU-5089');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'27', N'3', N'2017-11-16', N'2017-11-16', N'1', N'2332', N'RAPORLU-10217');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'28', N'3', N'2017-11-13', N'2017-11-14', N'1', N'746', N'RAPORLU-171113120921');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'29', N'3', N'2017-11-15', N'2017-11-16', N'1', N'746', N'RAPORLU-OP-461172');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'30', N'3', N'2017-11-20', N'2017-11-24', N'1', N'766', N'RAPORLU-100000000032640097');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'31', N'1', N'2017-11-24', N'2017-11-24', N'1', N'908', N'RAPORLU-2393');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'32', N'1', N'2017-12-01', N'2017-12-01', N'1', N'2328', N'RAPORLU-393');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'33', N'2', N'2017-12-05', N'2017-12-06', N'1', N'2403', N'RAPORLU-50JYB2835JGFOGHI');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'34', N'2', N'2017-12-07', N'2017-12-08', N'1', N'2387', N'RAPORLU-85937');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'35', N'3', N'2017-12-01', N'2017-12-17', N'1', N'906', N'RAPORLU-100000000032473560');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'36', N'2', N'2017-12-12', N'2017-12-12', N'1', N'2320', N'RAPORLU-93978172');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'37', N'3', N'2017-12-09', N'2017-12-30', N'2', N'1771', N'RAPORLU-100000000032293239');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'38', N'3', N'2017-12-20', N'2017-12-22', N'1', N'2320', N'RAPORLU-1438148');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'39', N'1', N'2017-12-21', N'2017-12-21', N'1', N'2372', N'RAPORLU-2605');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'40', N'1', N'2017-12-14', N'2017-12-15', N'1', N'908', N'RAPORLU-2555');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'41', N'1', N'2017-12-14', N'2017-12-15', N'1', N'2365', N'RAPORLU-2555');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'42', N'2', N'2017-12-25', N'2017-12-29', N'1', N'2403', N'RAPORLU-53D2ZPUI9UEHGHDY');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'43', N'3', N'2017-12-31', N'2018-03-30', N'2', N'1771', N'RAPORLU-100000000032293239');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'44', N'2', N'2017-12-27', N'2017-12-28', N'1', N'2243', N'RAPORLU-53N91M5EM5V66AE6');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'45', N'3', N'2017-12-27', N'2017-12-29', N'1', N'766', N'RAPORLU-100000000033579766');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'46', N'1', N'2017-12-29', N'2017-12-29', N'1', N'2241', N'RAPORLU-415');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'47', N'2', N'2017-12-29', N'2017-12-29', N'1', N'2381', N'RAPORLU-209723');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'48', N'1', N'2018-01-03', N'2018-01-05', N'1', N'2388', N'RAPORLU-45');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'49', N'3', N'2018-01-03', N'2018-01-05', N'1', N'766', N'RAPORLU-681886');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'50', N'1', N'2018-01-08', N'2018-01-09', N'1', N'2373', N'RAPORLU-08');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'51', N'3', N'2018-01-02', N'2018-01-26', N'1', N'2389', N'RAPORLU-100000000033767');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'52', N'1', N'2018-01-10', N'2018-01-11', N'1', N'2372', N'RAPORLU-101');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'53', N'2', N'2018-01-10', N'2018-01-10', N'1', N'2357', N'RAPORLU-163980');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'54', N'1', N'2018-01-12', N'2018-01-12', N'1', N'2372', N'RAPORLU-08');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'60', N'3', N'2018-01-15', N'2018-01-16', N'1', N'2282', N'RAPORLU-6013618315');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'61', N'1', N'2018-01-10', N'2018-01-12', N'1', N'2373', N'RAPORLU-180000113');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'62', N'3', N'2018-01-15', N'2018-01-24', N'1', N'2321', N'RAPORLU-100000000033994897	');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'63', N'1', N'2018-01-18', N'2018-01-19', N'1', N'2282', N'RAPORLU-10');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'64', N'1', N'2018-01-18', N'2018-01-18', N'1', N'2401', N'RAPORLU-09');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'65', N'3', N'2018-01-24', N'2018-01-26', N'1', N'2411', N'RAPORLU-100000000034283328');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'66', N'2', N'2018-01-23', N'2018-01-24', N'1', N'746', N'RAPORLU-72');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'67', N'1', N'2018-01-25', N'2018-01-26', N'1', N'2349', N'RAPORLU-11');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'68', N'3', N'2018-02-14', N'2018-02-23', N'1', N'2364', N'RAPORLU-100000000034564909');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'69', N'3', N'2018-02-12', N'2018-02-21', N'1', N'753', N'RAPORLU-100000000034490049');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'71', N'2', N'2018-02-19', N'2018-02-19', N'1', N'779', N'RAPORLU-5B8SLLLRGHD9XF19');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'72', N'3', N'2018-02-17', N'2018-04-28', N'2', N'2411', N'RAPORLU-100000000034886029');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'73', N'3', N'2018-02-22', N'2018-03-03', N'1', N'753', N'RAPORLU-100000000035019380');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'74', N'1', N'2018-02-23', N'2018-03-04', N'1', N'2132', N'RAPORLU-100000000035021083');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'75', N'3', N'2018-02-23', N'2018-02-23', N'1', N'2312', N'RAPORLU-VO19W6');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'76', N'3', N'2018-02-26', N'2018-03-07', N'1', N'2364', N'RAPORLU-1000000000035096990');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'77', N'3', N'2018-02-26', N'2018-02-28', N'1', N'2370', N'RAPORLU-100000000035072343');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'78', N'3', N'2018-02-01', N'2018-02-11', N'1', N'753', N'RAPORLU-100000000034490049');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'79', N'1', N'2018-02-15', N'2018-03-12', N'1', N'2403', N'RAPORLU-100000000034026860');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'80', N'1', N'2018-02-05', N'2018-02-13', N'1', N'2364', N'RAPORLU-100000000034564909');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'81', N'3', N'2018-02-08', N'2018-02-17', N'1', N'2411', N'RAPORLU-100000000034679847');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'82', N'3', N'2018-02-01', N'2018-02-02', N'1', N'2402', N'RAPORLU-100000000034462439');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'83', N'3', N'2018-02-01', N'2018-05-23', N'2', N'2332', N'RAPORLU-100000000033600854');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'85', N'3', N'2018-02-19', N'2018-03-12', N'3', N'2403', N'RAPORLU-100000000034026860');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'86', N'3', N'2018-02-09', N'2018-02-09', N'1', N'2132', N'RAPORLU-100000000034682120');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'87', N'1', N'2018-03-01', N'2018-03-02', N'1', N'2372', N'RAPORLU-32');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'88', N'3', N'2018-03-05', N'2018-03-14', N'1', N'2132', N'RAPORLU-6013679577');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'89', N'3', N'2018-03-12', N'2018-03-13', N'1', N'754', N'RAPORLU-100000000035435356');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'90', N'2', N'2018-03-12', N'2018-03-12', N'1', N'2362', N'RAPORLU-86175');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'91', N'2', N'2018-03-19', N'2018-03-20', N'1', N'2299', N'RAPORLU-5F7LPKWJYVCOTARN');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'92', N'3', N'2018-03-19', N'2018-03-23', N'1', N'2372', N'RAPORLU-100000000035637274');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'93', N'3', N'2018-03-08', N'2018-03-17', N'1', N'2364', N'RAPORLU-100000000035382156');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'95', N'2', N'2018-03-14', N'2018-03-14', N'1', N'2453', N'RAPORLU-100000000035522871');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'97', N'3', N'2018-03-15', N'2018-03-24', N'1', N'2132', N'RAPORLU-100000000035553566');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'99', N'3', N'2018-03-21', N'2018-03-23', N'1', N'2381', N'RAPORLU-100000000035709608');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'100', N'1', N'2018-03-28', N'2018-03-28', N'1', N'2115', N'RAPORLU-92');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'101', N'1', N'2018-03-27', N'2018-03-28', N'1', N'2320', N'RAPORLU-101');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'102', N'2', N'2018-04-11', N'2018-04-12', N'1', N'2406', N'RAPORLU-LNP8OM');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'103', N'3', N'2018-04-09', N'2018-04-13', N'1', N'2364', N'RAPORLU-1000000000361175629');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'104', N'3', N'2018-04-02', N'2018-04-11', N'1', N'1771', N'RAPORLU-100000000035970926');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'105', N'3', N'2018-04-12', N'2018-04-21', N'1', N'1771', N'RAPORLU-100000000035970926');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'107', N'3', N'2018-04-25', N'2018-05-24', N'1', N'1771', N'RAPORLU-100000000036561523');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'108', N'2', N'2018-05-15', N'2018-05-16', N'1', N'2200', N'RAPORLU-100000000037053732');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'109', N'2', N'2018-05-15', N'2018-05-16', N'1', N'2381', N'RAPORLU-100000000037031906');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'110', N'3', N'2018-05-15', N'2018-05-16', N'1', N'754', N'RAPORLU-100000000037052153');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'111', N'2', N'2018-05-16', N'2018-05-16', N'1', N'2372', N'RAPORLU-O0TRJV');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'112', N'3', N'2018-05-16', N'2018-05-18', N'1', N'2405', N'RAPORLU-100000000037083541');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'113', N'3', N'2018-05-21', N'2018-05-21', N'1', N'754', N'RAPORLU-100000000037189131');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'114', N'1', N'2018-05-22', N'2018-05-22', N'1', N'2377', N'RAPORLU-363');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'115', N'2', N'2018-05-22', N'2018-05-23', N'1', N'2132', N'RAPORLU-00075517');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'116', N'3', N'2018-05-25', N'2018-06-03', N'1', N'1771', N'RAPORLU-100000000037318976');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'117', N'3', N'2018-05-24', N'2018-05-31', N'1', N'2332', N'RAPORLU-100000000037280903');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'118', N'3', N'2018-05-28', N'2018-05-28', N'1', N'2417', N'RAPORLU-100000000037357115');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'119', N'2', N'2018-06-07', N'2018-06-08', N'1', N'2357', N'RAPORLU-5qfsm2xvu6g0k7t1');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'120', N'2', N'2018-06-07', N'2018-06-08', N'1', N'2386', N'RAPORLU-NEOH3W');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'121', N'1', N'2018-05-07', N'2018-08-05', N'1', N'2387', N'RAPORLU-100000000034666339');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'122', N'3', N'2018-06-01', N'2018-06-10', N'1', N'2332', N'RAPORLU-100000000037280903');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'123', N'3', N'2018-06-11', N'2018-06-14', N'1', N'906', N'RAPORLU-100000000037725612');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'124', N'3', N'2018-06-11', N'2018-06-14', N'1', N'753', N'RAPORLU-100000000037723377');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'125', N'3', N'2018-06-11', N'2018-06-13', N'1', N'2384', N'RAPORLU-100000000037714210');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'126', N'3', N'2018-06-13', N'2018-06-13', N'1', N'754', N'RAPORLU-100000000037783570');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'127', N'3', N'2018-06-18', N'2018-06-19', N'1', N'2273', N'RAPORLU-113128');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'128', N'3', N'2018-06-20', N'2018-06-24', N'1', N'2273', N'RAPORLU-100000000037921718');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'129', N'3', N'2018-06-25', N'2018-06-29', N'1', N'2273', N'RAPORLU-100000000037921718');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'130', N'3', N'2018-06-23', N'2018-07-12', N'1', N'2411', N'RAPORLU-100000000037998978');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'131', N'3', N'2018-06-28', N'2018-06-29', N'1', N'2115', N'RAPORLU-100000000038125733');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'132', N'3', N'2018-06-29', N'2018-07-03', N'1', N'2414', N'RAPORLU-100000000038178199');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'133', N'1', N'2018-06-27', N'2018-07-09', N'1', N'2417', N'RAPORLU-100000000038163054');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'134', N'3', N'2018-07-04', N'2018-07-04', N'1', N'2386', N'RAPORLU-00122530');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'135', N'2', N'2018-07-05', N'2018-07-06', N'1', N'2359', N'RAPORLU-100338');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'136', N'3', N'2018-07-04', N'2018-07-06', N'1', N'2425', N'RAPORLU-100000000038296030');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'137', N'3', N'2018-07-11', N'2018-07-11', N'1', N'2417', N'RAPORLU-100000000038163054');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'138', N'3', N'2018-07-10', N'2018-07-19', N'1', N'2417', N'RAPORLU-100000000038163054');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'139', N'3', N'2018-07-12', N'2018-07-13', N'1', N'2312', N'RAPORLU-5VD2YSCFJHT9ZKXN');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'140', N'1', N'2018-07-09', N'2018-10-07', N'1', N'2200', N'RAPORLU-100000000038423587');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'141', N'3', N'2018-07-12', N'2018-10-21', N'1', N'2403', N'RAPORLU-100000000038208128');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'142', N'3', N'2018-07-16', N'2018-07-16', N'1', N'2442', N'RAPORLU-100000000038606850');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'145', N'3', N'2018-07-10', N'2018-07-12', N'1', N'2330', N'RAPORLU-100000000038436899');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'146', N'3', N'2018-07-09', N'2018-07-13', N'1', N'906', N'RAPORLU-100000000038393282');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'147', N'3', N'2018-07-02', N'2018-07-11', N'1', N'2403', N'RAPORLU-1000000000382208128');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'148', N'3', N'2018-07-16', N'2018-07-16', N'1', N'2453', N'RAPORLU-1000000000038592899');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'149', N'3', N'2018-07-05', N'2018-07-05', N'1', N'754', N'RAPORLU-1000000000038319989');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'150', N'3', N'2018-07-09', N'2018-07-09', N'1', N'2241', N'RAPORLU-1000000000038281345');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'151', N'3', N'2018-07-16', N'2018-07-25', N'1', N'2425', N'RAPORLU-100000000038582227');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'152', N'3', N'2018-07-17', N'2018-07-18', N'1', N'2426', N'RAPORLU-100000000038624877');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'153', N'3', N'2018-07-20', N'2018-07-29', N'1', N'2417', N'RAPORLU-100000000038163054');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'154', N'3', N'2018-07-23', N'2018-07-23', N'1', N'2428', N'RAPORLU-5WX1EEC9D5RUS4TM');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'155', N'3', N'2018-07-25', N'2018-07-25', N'1', N'2132', N'RAPORLU-100000000038835859');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'156', N'3', N'2018-07-23', N'2018-07-27', N'1', N'2403', N'RAPORLU-100000000038759105');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'157', N'3', N'2018-07-30', N'2018-08-08', N'1', N'2411', N'RAPORLU-100000000038746281');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'158', N'3', N'2018-08-01', N'2018-08-01', N'1', N'2381', N'RAPORLU-100000000039030726');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'159', N'3', N'2018-08-07', N'2018-08-07', N'1', N'2417', N'RAPORLU-07082018');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'160', N'2', N'2018-08-13', N'2018-08-17', N'1', N'753', N'RAPORLU-231759');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'161', N'2', N'2018-08-13', N'2018-08-17', N'1', N'2372', N'RAPORLU-231756');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'162', N'3', N'2018-08-06', N'2018-10-07', N'1', N'2387', N'RAPORLU-100000000034666339');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'163', N'1', N'2018-08-16', N'2018-08-17', N'1', N'779', N'RAPORLU-293');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'164', N'3', N'2018-08-27', N'2018-08-31', N'1', N'2454', N'RAPORLU-4956');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'165', N'3', N'2018-08-27', N'2018-08-27', N'1', N'2391', N'RAPORLU-124575');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'166', N'3', N'2018-08-26', N'2018-08-28', N'1', N'2401', N'RAPORLU-100000000039533550');
GO
INSERT INTO [dbo].[Rapor] VALUES (N'167', N'1', N'2018-08-28', N'2018-08-29', N'1', N'2372', N'RAPORLU-296');
GO

-- ----------------------------
-- Table structure for [dbo].[Rapor_HastalikTip]
-- ----------------------------
DROP TABLE [dbo].[Rapor_HastalikTip]
GO
CREATE TABLE [dbo].[Rapor_HastalikTip] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Rapor_HastalikTip
-- ----------------------------
INSERT INTO [dbo].[Rapor_HastalikTip] VALUES (N'1', N'HASTALIK');
GO
INSERT INTO [dbo].[Rapor_HastalikTip] VALUES (N'2', N'ANALIK');
GO
INSERT INTO [dbo].[Rapor_HastalikTip] VALUES (N'3', N'İŞ KAZASI');
GO

-- ----------------------------
-- Table structure for [dbo].[Rapor_RaporTip]
-- ----------------------------
DROP TABLE [dbo].[Rapor_RaporTip]
GO
CREATE TABLE [dbo].[Rapor_RaporTip] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Rapor_RaporTip
-- ----------------------------
INSERT INTO [dbo].[Rapor_RaporTip] VALUES (N'1', N'İŞ YERİ HEKİMİ');
GO
INSERT INTO [dbo].[Rapor_RaporTip] VALUES (N'2', N'SAĞLIK OCAĞI');
GO
INSERT INTO [dbo].[Rapor_RaporTip] VALUES (N'3', N'HASTANE');
GO

-- ----------------------------
-- Table structure for [dbo].[ResmiTatil]
-- ----------------------------
DROP TABLE [dbo].[ResmiTatil]
GO
CREATE TABLE [dbo].[ResmiTatil] (
[id] int NOT NULL ,
[tarih] date NOT NULL ,
[aciklama] nvarchar(MAX) NULL ,
[tekrar] bit NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of ResmiTatil
-- ----------------------------
INSERT INTO [dbo].[ResmiTatil] VALUES (N'1', N'2017-01-01', N'YILBAŞI', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'2', N'2017-04-23', N'23 NİSAN', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'3', N'2017-05-01', N'1 MAYIS', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'4', N'2017-05-19', N'19 MAYIS', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'5', N'2017-06-25', N'RAMAZAN BAYRAMI 1. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'6', N'2017-06-26', N'RAMAZAN BAYRAMI 2. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'7', N'2017-06-27', N'RAMAZAN BAYRAMI 3. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'8', N'2017-08-30', N'ZAFER BAYRAMI', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'9', N'2017-09-01', N'KURBAN BAYRAMI 1. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'10', N'2017-09-02', N'KURBAN BAYRAMI 2. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'11', N'2017-09-03', N'KURBAN BAYRAMI 3. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'12', N'2017-09-04', N'KURBAN BAYRAMI 4. GÜN', N'0');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'13', N'2017-10-29', N'CUMHURİYAT BAYRAMI', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'14', N'2017-07-15', N'DEMOKTASİ BAYRAMI', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'15', N'2017-08-20', N'KURBAN BAYRAMI AREFE', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'16', N'2017-08-21', N'KURBAN BAYRAMI 1 GUN', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'17', N'2017-08-22', N'KURBAN BAYRAMI 2 GUN', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'18', N'2017-08-23', N'KURBAN BAYRAMI 3 GUN', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'19', N'2017-08-24', N'KURBAN BAYRAMI 4 GUN', N'1');
GO
INSERT INTO [dbo].[ResmiTatil] VALUES (N'20', N'2017-08-30', N'ZAFER BAYRAMI', N'1');
GO

-- ----------------------------
-- Table structure for [dbo].[SgkDosya]
-- ----------------------------
DROP TABLE [dbo].[SgkDosya]
GO
CREATE TABLE [dbo].[SgkDosya] (
[id] int NOT NULL ,
[SgkNo] nvarchar(30) NOT NULL ,
[Ad] nvarchar(25) NOT NULL ,
[TC] nvarchar(11) NOT NULL ,
[SistemSifre] nvarchar(8) NOT NULL ,
[IsyeriSifre] nvarchar(8) NOT NULL ,
[SiraNo] int NOT NULL 
)


GO

-- ----------------------------
-- Records of SgkDosya
-- ----------------------------
INSERT INTO [dbo].[SgkDosya] VALUES (N'1', N'2 7010 01 01 0081575 041 13 10', N'MERKEZ', N'57874124110', N'42YxuU26', N'43RkpS97', N'4');
GO
INSERT INTO [dbo].[SgkDosya] VALUES (N'2', N'2 4120 01 01 1163413 041 13 07', N'BAKIM ONARIM', N'57874124110', N'28ZrqS40', N'71FwfX21', N'3');
GO
INSERT INTO [dbo].[SgkDosya] VALUES (N'5', N'2 8010 01 01 1163064 041 13 46', N'GÜVENLİK', N'57874124110', N'29XgzP50', N'23BnzG19', N'2');
GO
INSERT INTO [dbo].[SgkDosya] VALUES (N'6', N'2 4312 01 01 1145396 041 13 32', N'HAFRİYAT', N'57874124110', N'87LybO84', N'26MlyZ71', N'5');
GO

-- ----------------------------
-- Table structure for [dbo].[Staj_Bolum]
-- ----------------------------
DROP TABLE [dbo].[Staj_Bolum]
GO
CREATE TABLE [dbo].[Staj_Bolum] (
[id] int NOT NULL ,
[okulid] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Staj_Bolum
-- ----------------------------
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'5', N'1', N'İNŞAAT MÜHENDİSLİĞİ');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'6', N'1', N'MİMARLIK');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'7', N'1', N'İÇ MİMARLIK');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'8', N'4', N'ddasd');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'9', N'5', N'Elektrik Programı');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'10', N'6', N'SANAT TASARIM MİMARLIK');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'11', N'7', N'MİMARLIK');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'12', N'8', N'İNŞAAT MÜHENDİSLİĞİ');
GO
INSERT INTO [dbo].[Staj_Bolum] VALUES (N'13', N'1', N'HALKLA İLİŞK.VE TANT.');
GO

-- ----------------------------
-- Table structure for [dbo].[Staj_Evrak]
-- ----------------------------
DROP TABLE [dbo].[Staj_Evrak]
GO
CREATE TABLE [dbo].[Staj_Evrak] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL ,
[aktif] bit NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Staj_Evrak
-- ----------------------------
INSERT INTO [dbo].[Staj_Evrak] VALUES (N'1', N'ZORUNLU STAJ BAŞVURU FORMU', N'1');
GO
INSERT INTO [dbo].[Staj_Evrak] VALUES (N'2', N'SGK BELGESİ', N'1');
GO
INSERT INTO [dbo].[Staj_Evrak] VALUES (N'3', N'KİMLİK FOTOKOPİSİ', N'1');
GO
INSERT INTO [dbo].[Staj_Evrak] VALUES (N'4', N'İKAMETGAH ', N'1');
GO
INSERT INTO [dbo].[Staj_Evrak] VALUES (N'5', N'VESİKALIK FOTO', N'1');
GO
INSERT INTO [dbo].[Staj_Evrak] VALUES (N'6', N'KAN TAHLİLİ (hemogram)', N'1');
GO

-- ----------------------------
-- Table structure for [dbo].[Staj_Ogrenci]
-- ----------------------------
DROP TABLE [dbo].[Staj_Ogrenci]
GO
CREATE TABLE [dbo].[Staj_Ogrenci] (
[id] int NOT NULL ,
[adsoyad] nvarchar(50) NOT NULL ,
[telefon] nvarchar(11) NULL ,
[bolumid] int NULL ,
[baslangic] date NOT NULL ,
[bitis] date NOT NULL ,
[referans] nvarchar(50) NULL ,
[donem] int NOT NULL ,
[onayli] bit NOT NULL DEFAULT ((0)) ,
[onaytarih] date NULL ,
[tamamlanmatarih] date NULL 
)


GO

-- ----------------------------
-- Records of Staj_Ogrenci
-- ----------------------------
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'1', N'Adem Bulut', N'05535059850', null, N'2017-08-14', N'2017-09-12', N'İMO', N'2017', N'1', N'2017-05-24', N'2017-09-27');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'2', N'İbrahim Kanatlı', N'05379727196', N'5', N'2017-06-12', N'2017-07-13', N'İMO', N'2017', N'1', N'2017-05-04', N'2017-09-28');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'3', N'Meltem Sağıt', N'05342663287', null, N'2017-07-10', N'2017-08-08', N'İMO', N'2017', N'1', N'2017-05-24', N'2017-09-27');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'4', N'Yiğit Gül', N'05382838227', null, N'2017-07-03', N'2017-07-28', N'İMO', N'2017', N'1', N'2017-05-23', N'2017-09-28');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'5', N'İbrahim Halil Zeybek', N'05314752189', null, N'2017-08-01', N'2017-08-25', N'İMO', N'2017', N'1', N'2017-05-24', N'2017-09-28');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'6', N'Mullah Fuh Cajetan', N'05392656623', null, N'2017-06-12', N'2017-07-13', N'İMO', N'2017', N'1', N'2017-05-05', N'2017-07-31');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'7', N'Burak Bayır', N'05345991020', N'5', N'2017-07-03', N'2017-07-27', N'İMO', N'2017', N'1', N'2017-05-24', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'8', N'Tuba Ağzıkuru', N'05362436009', null, N'2017-07-10', N'2017-08-18', N'Av. Serdar Bey', N'2017', N'1', N'2017-05-31', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'9', N'Gözde Dilara Yılmaz', N'05536288879', null, N'2017-06-14', N'2017-07-10', N'İMO', N'2017', N'1', N'2017-05-02', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'10', N'Muhammed İlkay Kuru', N'05412935841', null, N'2017-06-14', N'2017-06-14', N'İMO', N'2017', N'0', null, N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'11', N'Fehmi Kaya', N'05382015858', null, N'2017-06-14', N'2017-07-12', N'İMO', N'2017', N'1', N'2017-05-05', N'2017-09-18');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'12', N'Merve Eser', N'05312274518', null, N'2017-07-03', N'2017-07-26', null, N'2017', N'1', N'2017-05-24', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'13', N'Emre Emin Kechagia', N'05418030719', null, N'2017-07-03', N'2017-07-28', N'İMO', N'2017', N'1', N'2017-05-22', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'14', N'Davut Bulut', N'05416150091', null, N'2017-06-12', N'2017-07-13', N'İMO', N'2017', N'1', N'2017-05-04', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'15', N'Hatice Yuvalı', N'05546449630', N'5', N'2017-08-18', N'2017-09-18', N'İMO', N'2017', N'1', N'2017-05-04', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'16', N'Tayfun Çakmak', N'05384683029', null, N'2017-07-03', N'2017-07-28', N'İMO', N'2017', N'1', N'2017-05-23', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'17', N'Aslıhan Saroğlu', N'05324236892', null, N'2017-06-12', N'2017-07-25', null, N'2017', N'1', N'2017-06-12', N'2017-09-15');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'18', N'Mustafa Çağlayan', N'05071885132', null, N'2017-07-03', N'2017-07-28', N'M.M.O', N'2017', N'0', null, N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'19', N'İrem Horoz', N'05462280289', null, N'2017-07-10', N'2017-08-18', null, N'2017', N'1', N'2017-06-13', N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'20', N'İbrahim Can Akburak', N'05399671951', null, N'2017-07-01', N'2017-07-30', null, N'2017', N'0', null, N'2017-08-14');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'21', N'Yakup Kaçar', null, null, N'2017-07-01', N'2017-07-31', null, N'2017', N'0', null, N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'22', N'Adnan Sarohan', N'05415703038', null, N'2017-07-03', N'2017-07-27', N'İMO', N'2017', N'1', N'2017-05-22', N'2017-07-31');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'23', N'KADİR CANAVAR', N'05458328089', null, N'2017-07-10', N'2017-08-18', null, N'2017', N'1', N'2017-05-22', N'2017-09-20');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'24', N'SEYYİT AHMET GEÇGEL', N'05438541297', null, N'2017-07-10', N'2017-08-18', null, N'2017', N'1', N'2017-05-22', N'2017-09-20');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'25', N'GÜRKAN ÇAKIR', null, null, N'2017-07-05', N'2018-01-01', null, N'2017', N'0', null, N'2018-02-05');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'26', N'Husam Sendyan', N'05343713834', N'5', N'2017-08-17', N'2017-09-16', N'İMO', N'2017', N'1', N'2017-05-05', N'2017-09-29');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'35', N'Abdulrahman Shobat', N'05367027534', N'5', N'2017-08-17', N'2017-09-16', N'İMO', N'2017', N'1', N'2017-05-25', N'2017-09-29');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'36', N'Rustam Baltayev', N'05360556649', N'5', N'2017-08-14', N'2017-09-12', N'İMO', N'2017', N'1', N'2017-05-24', N'2017-09-29');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'37', N'Ömer Çelik', N'05399119403', N'9', N'2017-08-21', N'2017-09-13', null, N'2017', N'1', N'2017-06-30', N'2017-10-06');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'38', N'TAYFUN HİKMET ÇELİK', N'05530033691', N'5', N'2018-07-09', N'2018-08-07', N'İMO', N'2018', N'1', N'2018-05-07', N'2018-08-10');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'40', N'GÜNEY YILMAZ', N'05303968785', N'5', N'2018-07-09', N'2018-08-02', N'İMO', N'2018', N'1', N'2018-05-08', N'2018-08-10');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'41', N'BERKAY KORKMAZ', N'05511351599', N'5', N'2018-07-09', N'2018-08-07', N'İMO', N'2018', N'1', N'2018-05-08', N'2018-08-07');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'42', N'M.HANİF ATMAAR', N'05535439444', N'5', N'2018-08-28', N'2018-09-22', N'İMO', N'2018', N'1', N'2018-05-08', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'43', N'MERT KOPARAN', N'05385230414', N'5', N'2018-06-19', N'2018-07-13', N'İMO', N'2018', N'1', N'2018-05-08', N'2018-07-16');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'44', N'TUNCER ÇALI', N'05389604082', N'5', N'2018-07-09', N'2018-08-02', N'İMO', N'2018', N'1', N'2018-05-08', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'45', N'BETÜL OSMAN', N'56923486766', N'10', N'2018-08-01', N'2018-09-05', N'METİN ÇAĞDAŞ', N'2018', N'1', N'2018-01-01', N'2018-09-27');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'46', N'FUAT CANER', N'05353287595', N'5', N'2018-07-09', N'2018-09-02', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-03');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'47', N'M. ENSAR GENÇ', N'05365669096', N'5', N'2018-07-09', N'2018-09-02', N'YALÇIN BEY', N'2018', N'1', N'2018-05-09', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'48', N'A. BERKAY MOSTURA', N'05379577949', N'5', N'2018-07-09', N'2018-09-02', N'İMO', N'2018', N'1', N'2018-05-09', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'49', N'EMRE GÜLTEKİN', N'05469345843', N'5', N'2018-07-09', N'2018-09-02', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-03');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'50', N'ALPEREN KOÇ', N'05380863344', N'5', N'2018-07-09', N'2018-09-02', N'İMO', N'2018', N'1', N'2018-05-09', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'51', N'SHAHNEWAZ SHAMEEM', N'05531585452', N'5', N'2018-07-09', N'2019-08-02', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-03');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'52', N'SEBATİAN TEBECK AKANJİ', N'05398447927', N'5', N'2018-07-09', N'2018-08-02', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-03');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'53', N'ANASS ALİ ABOU', N'05398306502', N'5', N'2018-07-09', N'2018-08-02', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-02');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'54', N'ENES FURKAN KOŞER', N'05418948595', N'5', N'2018-07-09', N'2018-08-02', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-02');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'55', N'M.SÜLEYMAN ÜLKÜSEVEN', N'05050201250', N'5', N'2018-08-27', N'2018-09-21', N'İMO', N'2018', N'1', N'2018-05-09', N'2018-08-06');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'56', N'FERHAT TURDA', N'05413131064', N'5', N'2018-08-27', N'2018-09-21', N'İMO', N'2018', N'1', N'2018-05-10', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'57', N'AHMET ORHUN ÖZAYAN', N'05418601799', N'5', N'2018-07-09', N'2017-08-02', N'İMO', N'2018', N'1', N'2018-05-10', N'2018-08-02');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'58', N'EMRE BOZDOĞAN', N'05395413090', N'5', N'2018-07-09', N'2018-08-02', N'İMO', N'2018', N'1', N'2018-05-10', N'2018-08-03');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'59', N'MUTLUHAN GÖÇER', N'05466757428', N'5', N'2018-07-02', N'2018-07-26', N'İMO', N'2018', N'1', N'2018-05-22', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'60', N'TUĞÇE TÜRKMEN', N'05530539436', N'5', N'2018-07-09', N'2018-08-07', N'İMO', N'2018', N'1', N'2018-05-18', N'2018-08-07');
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'61', N'SELEN SENA ÖZKAYA', null, N'11', N'2018-06-11', N'2018-07-11', N'ÖZEL KALEM', N'2018', N'1', null, null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'62', N'AYKUT KOCAMAN', N'05433896528', N'12', N'2018-06-25', N'2018-07-20', N'İMO', N'2018', N'1', N'2018-05-04', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'63', N'GÖZDE HİLAL GÜRSOY', N'05536185820', N'7', N'2018-07-16', N'2018-09-04', null, N'2018', N'1', N'2018-06-07', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci] VALUES (N'64', N'AMİNE GÜLER', N'05352343532', null, N'2019-07-01', N'2018-07-30', N'G.M.', N'2018', N'1', N'2018-07-01', N'2018-08-02');
GO

-- ----------------------------
-- Table structure for [dbo].[Staj_Ogrenci_Evrak]
-- ----------------------------
DROP TABLE [dbo].[Staj_Ogrenci_Evrak]
GO
CREATE TABLE [dbo].[Staj_Ogrenci_Evrak] (
[id] int NOT NULL ,
[ogrenciid] int NOT NULL ,
[evrakid] int NOT NULL ,
[alindi] bit NOT NULL ,
[tarih] date NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Records of Staj_Ogrenci_Evrak
-- ----------------------------
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'1', N'1', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'2', N'1', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'3', N'1', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'4', N'1', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'5', N'1', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'6', N'1', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'7', N'2', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'8', N'2', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'9', N'2', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'10', N'2', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'11', N'2', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'12', N'2', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'13', N'3', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'14', N'3', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'15', N'3', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'16', N'3', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'17', N'3', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'18', N'3', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'21', N'4', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'22', N'4', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'23', N'4', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'24', N'4', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'25', N'4', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'26', N'4', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'27', N'5', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'28', N'5', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'29', N'5', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'30', N'5', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'31', N'5', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'32', N'5', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'33', N'6', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'34', N'6', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'35', N'6', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'36', N'6', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'37', N'6', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'38', N'6', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'40', N'7', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'41', N'7', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'42', N'7', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'43', N'7', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'44', N'7', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'45', N'7', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'46', N'8', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'47', N'8', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'48', N'8', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'49', N'8', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'50', N'8', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'51', N'8', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'52', N'9', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'53', N'9', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'54', N'9', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'55', N'9', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'56', N'9', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'57', N'9', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'58', N'10', N'1', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'59', N'10', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'60', N'10', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'61', N'10', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'62', N'10', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'63', N'10', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'64', N'11', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'65', N'11', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'66', N'11', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'67', N'11', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'68', N'11', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'69', N'11', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'70', N'12', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'71', N'12', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'72', N'12', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'73', N'12', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'74', N'12', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'75', N'12', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'76', N'13', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'77', N'13', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'78', N'13', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'79', N'13', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'80', N'13', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'81', N'13', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'82', N'14', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'83', N'14', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'84', N'14', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'85', N'14', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'86', N'14', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'87', N'14', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'88', N'15', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'89', N'15', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'90', N'15', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'91', N'15', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'92', N'15', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'93', N'15', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'94', N'16', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'95', N'16', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'96', N'16', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'97', N'16', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'98', N'16', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'99', N'16', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'100', N'17', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'101', N'17', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'102', N'17', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'103', N'17', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'104', N'17', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'105', N'17', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'106', N'18', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'107', N'18', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'108', N'18', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'109', N'18', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'110', N'18', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'111', N'18', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'112', N'19', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'113', N'19', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'114', N'19', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'115', N'19', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'116', N'19', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'117', N'19', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'118', N'20', N'1', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'119', N'20', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'120', N'20', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'121', N'20', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'122', N'20', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'123', N'20', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'124', N'21', N'1', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'125', N'21', N'2', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'126', N'21', N'3', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'127', N'21', N'4', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'128', N'21', N'5', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'129', N'21', N'6', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'130', N'22', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'131', N'22', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'132', N'22', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'133', N'22', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'134', N'22', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'135', N'22', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'136', N'24', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'137', N'24', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'138', N'24', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'139', N'24', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'140', N'24', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'141', N'24', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'143', N'23', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'144', N'23', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'145', N'23', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'146', N'23', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'147', N'23', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'148', N'23', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'149', N'25', N'1', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'150', N'25', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'151', N'25', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'152', N'25', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'153', N'25', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'154', N'25', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'155', N'26', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'156', N'26', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'157', N'26', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'158', N'26', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'159', N'26', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'160', N'26', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'185', N'35', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'186', N'35', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'187', N'35', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'188', N'35', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'189', N'35', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'190', N'35', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'191', N'36', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'192', N'36', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'193', N'36', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'194', N'36', N'4', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'195', N'36', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'196', N'36', N'6', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'197', N'37', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'198', N'37', N'2', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'199', N'37', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'200', N'37', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'201', N'37', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'202', N'37', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'203', N'38', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'204', N'38', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'205', N'38', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'206', N'38', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'207', N'38', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'208', N'38', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'215', N'40', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'216', N'40', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'217', N'40', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'218', N'40', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'219', N'40', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'220', N'40', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'221', N'41', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'222', N'41', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'223', N'41', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'224', N'41', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'225', N'41', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'226', N'41', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'227', N'42', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'228', N'42', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'229', N'42', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'230', N'42', N'4', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'231', N'42', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'232', N'42', N'6', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'233', N'43', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'234', N'43', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'235', N'43', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'236', N'43', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'237', N'43', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'238', N'43', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'239', N'44', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'240', N'44', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'241', N'44', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'242', N'44', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'243', N'44', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'244', N'44', N'6', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'245', N'45', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'246', N'45', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'247', N'45', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'248', N'45', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'249', N'45', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'250', N'45', N'6', N'0', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'251', N'46', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'252', N'46', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'253', N'46', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'254', N'46', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'255', N'46', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'256', N'46', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'257', N'47', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'258', N'47', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'259', N'47', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'260', N'47', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'261', N'47', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'262', N'47', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'263', N'48', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'264', N'48', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'265', N'48', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'266', N'48', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'267', N'48', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'268', N'48', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'269', N'49', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'270', N'49', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'271', N'49', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'272', N'49', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'273', N'49', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'274', N'49', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'275', N'50', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'276', N'50', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'277', N'50', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'278', N'50', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'279', N'50', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'280', N'50', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'281', N'51', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'282', N'51', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'283', N'51', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'284', N'51', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'285', N'51', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'286', N'51', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'287', N'52', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'288', N'52', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'289', N'52', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'290', N'52', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'291', N'52', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'292', N'52', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'293', N'53', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'294', N'53', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'295', N'53', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'296', N'53', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'297', N'53', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'298', N'53', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'299', N'54', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'300', N'54', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'301', N'54', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'302', N'54', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'303', N'54', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'304', N'54', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'305', N'55', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'306', N'55', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'307', N'55', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'308', N'55', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'309', N'55', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'310', N'55', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'311', N'56', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'312', N'56', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'313', N'56', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'314', N'56', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'315', N'56', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'316', N'56', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'317', N'57', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'318', N'57', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'319', N'57', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'320', N'57', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'321', N'57', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'322', N'57', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'323', N'58', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'324', N'58', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'325', N'58', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'326', N'58', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'327', N'58', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'328', N'58', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'329', N'59', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'330', N'59', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'331', N'59', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'332', N'59', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'333', N'59', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'334', N'59', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'335', N'60', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'336', N'60', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'337', N'60', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'338', N'60', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'339', N'60', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'340', N'60', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'341', N'61', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'342', N'61', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'343', N'61', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'344', N'61', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'345', N'61', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'346', N'61', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'347', N'62', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'348', N'62', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'349', N'62', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'350', N'62', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'351', N'62', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'352', N'62', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'353', N'63', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'354', N'63', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'355', N'63', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'356', N'63', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'357', N'63', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'358', N'63', N'6', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'359', N'64', N'1', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'360', N'64', N'2', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'361', N'64', N'3', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'362', N'64', N'4', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'363', N'64', N'5', N'1', null);
GO
INSERT INTO [dbo].[Staj_Ogrenci_Evrak] VALUES (N'364', N'64', N'6', N'1', null);
GO

-- ----------------------------
-- Table structure for [dbo].[Staj_Okul]
-- ----------------------------
DROP TABLE [dbo].[Staj_Okul]
GO
CREATE TABLE [dbo].[Staj_Okul] (
[id] int NOT NULL ,
[ad] nvarchar(MAX) NOT NULL 
)


GO

-- ----------------------------
-- Records of Staj_Okul
-- ----------------------------
INSERT INTO [dbo].[Staj_Okul] VALUES (N'1', N'KOCAELİ ÜNİVERSİTESİ');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'2', N'KARABÜK ÜNİVERSİTESİ');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'3', N'SAKARYA ÜNİVERSİTESİ');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'4', N'kaskdaklsd');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'5', N'BİLECİK ŞEYH EDEBALİ');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'6', N'DÜZCE ÜNİVERSİTESİ');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'7', N'OKAN ÜNİVERSİTESİ');
GO
INSERT INTO [dbo].[Staj_Okul] VALUES (N'8', N'UŞAK ÜNİVERSİTESİ');
GO

-- ----------------------------
-- Table structure for [dbo].[Tahsil]
-- ----------------------------
DROP TABLE [dbo].[Tahsil]
GO
CREATE TABLE [dbo].[Tahsil] (
[id] int NOT NULL ,
[ad] nvarchar(15) NULL ,
[aciklama] text NULL 
)


GO

-- ----------------------------
-- Records of Tahsil
-- ----------------------------
INSERT INTO [dbo].[Tahsil] VALUES (N'1', N'İlk Okul', null);
GO
INSERT INTO [dbo].[Tahsil] VALUES (N'2', N'Orta Okul', null);
GO
INSERT INTO [dbo].[Tahsil] VALUES (N'3', N'Lise', null);
GO
INSERT INTO [dbo].[Tahsil] VALUES (N'4', N'Ön Lisans', null);
GO
INSERT INTO [dbo].[Tahsil] VALUES (N'5', N'Lisans', null);
GO
INSERT INTO [dbo].[Tahsil] VALUES (N'6', N'Yüksek Lisans', null);
GO
INSERT INTO [dbo].[Tahsil] VALUES (N'7', N'Doktora', null);
GO

-- ----------------------------
-- Table structure for [dbo].[Tahsil_Bolum]
-- ----------------------------
DROP TABLE [dbo].[Tahsil_Bolum]
GO
CREATE TABLE [dbo].[Tahsil_Bolum] (
[id] int NOT NULL ,
[fakulteid] int NOT NULL ,
[ad] nvarchar(150) NOT NULL ,
[detay] nvarchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Tahsil_Bolum', 
'COLUMN', N'detay')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'detay kısmına mühendis,mimar, tekniker vb.'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Tahsil_Bolum'
, @level2type = 'COLUMN', @level2name = N'detay'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'detay kısmına mühendis,mimar, tekniker vb.'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Tahsil_Bolum'
, @level2type = 'COLUMN', @level2name = N'detay'
GO

-- ----------------------------
-- Records of Tahsil_Bolum
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Tahsil_Fakulte]
-- ----------------------------
DROP TABLE [dbo].[Tahsil_Fakulte]
GO
CREATE TABLE [dbo].[Tahsil_Fakulte] (
[id] int NOT NULL ,
[okulid] int NOT NULL ,
[ad] nvarchar(150) NOT NULL 
)


GO

-- ----------------------------
-- Records of Tahsil_Fakulte
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Tahsil_Okul]
-- ----------------------------
DROP TABLE [dbo].[Tahsil_Okul]
GO
CREATE TABLE [dbo].[Tahsil_Okul] (
[id] int NOT NULL ,
[ad] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of Tahsil_Okul
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Takip]
-- ----------------------------
DROP TABLE [dbo].[Takip]
GO
CREATE TABLE [dbo].[Takip] (
[id] int NOT NULL ,
[aciklama] nvarchar(50) NOT NULL ,
[ekleme] datetime NOT NULL DEFAULT (getdate()) ,
[tamamlanma] datetime NULL ,
[sontarih] datetime NOT NULL ,
[parentid] int NULL ,
[gostermegunu] int NOT NULL DEFAULT ((10)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Takip', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'rutin iş takibinin dataları'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Takip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'rutin iş takibinin dataları'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Takip'
GO

-- ----------------------------
-- Records of Takip
-- ----------------------------
INSERT INTO [dbo].[Takip] VALUES (N'14', N'ocak 2017 iş kur personel sayısı', N'2017-01-27 11:58:47.907', N'2017-02-01 09:50:19.793', N'2017-01-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'15', N'şubat 2017 işkur personel sayısı', N'2017-01-30 08:29:06.100', N'2017-03-01 08:42:03.153', N'2017-02-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'16', N'mart 2017 işkur personel sayısı', N'2017-01-30 08:29:28.213', N'2017-04-03 08:32:28.217', N'2017-03-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'17', N'nisan 2017 işkur personel sayısı', N'2017-01-30 08:29:40.527', N'2017-05-02 11:42:46.613', N'2017-04-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'18', N'mayıs 2017 işkur personel sayısı', N'2017-01-30 08:29:51.653', N'2017-06-02 15:56:02.897', N'2017-05-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'19', N'haziran 2017 işkur personel sayısı', N'2017-01-30 08:30:05.600', N'2017-07-06 12:24:56.917', N'2017-06-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'20', N'ocak 2017 iş kazası yazısı', N'2017-01-30 12:20:30.987', N'2017-02-06 12:48:29.563', N'2017-01-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'21', N'ocak 2017 huzur hakkı', N'2017-02-07 09:50:50.733', N'2017-02-07 12:28:14.643', N'2017-02-10 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'22', N'şubat  2017 huzur hakkı', N'2017-02-07 09:51:04.640', N'2017-03-01 14:47:51.700', N'2017-03-10 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'24', N'nisan  2017 huzur hakkı', N'2017-02-07 09:51:33.780', N'2017-05-03 08:39:36.607', N'2017-05-12 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'26', N'şubat 2017 personel sayısı', N'2017-02-07 13:45:56.870', N'2017-02-20 17:02:45.203', N'2017-02-24 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'27', N'mart 2017 personel sayısı', N'2017-02-07 13:46:18.270', N'2017-03-22 08:48:53.177', N'2017-03-24 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'28', N'nisan  2017 personel sayısı', N'2017-02-07 13:46:31.540', N'2017-04-24 11:18:54.787', N'2017-04-21 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'29', N'mayıs 2017 personel sayısı', N'2017-02-07 13:46:50.650', N'2017-05-24 09:15:52.470', N'2017-05-26 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'31', N'ZEYNEP MAAŞ 1/3 KESİLECEK', N'2017-02-09 10:18:38.727', N'2017-03-01 14:47:51.700', N'2017-03-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'32', N'ZEYNEP MAAŞ 1/3 KESİLECEK', N'2017-02-09 10:18:55.897', N'2017-04-03 08:26:30.753', N'2017-04-03 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'33', N'ZEYNEP MAAŞ 1/3 KESİLECEK', N'2017-02-09 10:19:06.867', N'2017-05-12 12:19:55.500', N'2017-05-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'34', N'ocak 2017 skg', N'2017-02-16 09:47:37.683', N'2017-02-17 13:56:52.970', N'2017-02-20 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'35', N'şubat 2017 sgk', N'2017-02-16 09:47:56.557', N'2017-03-20 14:35:48.453', N'2017-03-20 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'36', N'Şubat 2017 iş Kazası', N'2017-02-21 09:07:26.797', N'2017-03-01 08:42:03.200', N'2017-02-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'37', N'Mart 2017 iş Kazası', N'2017-02-21 09:07:38.140', N'2017-04-03 08:36:49.570', N'2017-03-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'38', N'Nisan 2017 iş Kazası', N'2017-02-21 09:07:49.770', N'2017-04-28 17:10:56.863', N'2017-04-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'39', N'Mayıs 2017 iş Kazası', N'2017-02-21 09:08:00.847', N'2017-05-30 10:07:46.913', N'2017-05-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'40', N'Haziran 2017 iş Kazası', N'2017-02-21 09:08:10.753', N'2017-06-30 17:05:32.220', N'2017-06-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'42', N'NİSAN 2017 HUZUR HAKKI', N'2017-03-15 13:20:24.130', N'2017-04-28 11:06:58.247', N'2017-04-07 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'45', N'Raşit,Tahsin,Süleyman Evrak İste', N'2017-03-27 16:19:41.777', N'2017-04-24 12:19:07.153', N'2017-03-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'46', N'Volkan KAVANOZ özlük dosyası eksik', N'2017-04-07 09:04:40.103', N'2017-04-24 12:19:07.153', N'2017-04-03 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'47', N'Melike ve Nur Rapor gir', N'2017-04-12 10:57:57.900', N'2017-04-17 08:19:58.480', N'2017-04-14 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'48', N'Melike ve Nur Rapor gir', N'2017-04-12 10:58:28.277', N'2017-05-02 11:42:46.613', N'2017-04-24 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'49', N'Avans formlarını muhasebeye ver', N'2017-04-12 14:00:42.673', N'2017-04-14 15:55:32.993', N'2017-04-14 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'50', N'Karakola bildirim yap', N'2017-04-12 16:52:01.670', N'2017-04-13 14:43:03.757', N'2017-04-12 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'51', N'SADİ HANCI NİSAN 2017 İCRA', N'2017-05-10 10:35:59.397', N'2017-05-10 11:02:38.700', N'2017-05-08 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'52', N'SADİ HANCI MAYIS 2017 İCRA', N'2017-05-10 10:36:14.870', N'2017-06-02 15:56:02.787', N'2017-06-07 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'53', N'SADİ HANCI HAZİRAN 2017 İCRA', N'2017-05-10 10:36:26.507', N'2017-07-06 12:24:56.917', N'2017-07-07 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'54', N'HAZİRAN 2017 SKG', N'2017-06-05 16:14:29.403', N'2017-06-12 08:17:36.103', N'2017-06-09 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'55', N'haziran personel sayısı', N'2017-06-19 10:41:24.230', N'2017-06-21 13:58:46.973', N'2017-06-23 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'56', N'temmuz personel sayısı', N'2017-06-19 10:41:44.840', N'2017-07-25 10:49:30.273', N'2017-07-21 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'57', N'ağustos personel sayısı', N'2017-06-19 10:42:00.653', N'2017-08-21 13:50:09.603', N'2017-08-23 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'58', N'eylül personel sayısı', N'2017-06-19 10:42:54.250', N'2017-09-25 11:54:28.377', N'2017-09-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'59', N'ekim personel sayısı', N'2017-06-19 10:43:06.330', N'2017-10-30 13:59:02.123', N'2017-10-20 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'60', N'kasım personel sayısı', N'2017-06-19 10:43:18.330', N'2017-11-24 11:19:12.520', N'2017-11-24 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'61', N'aralık personel sayısı', N'2017-06-19 10:43:31.567', N'2017-12-25 09:01:49.400', N'2017-12-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'62', N'melikenin dilekçesini unutma', N'2017-06-23 13:45:08.357', N'2017-07-03 13:24:46.540', N'2017-07-02 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'63', N'SEDA cuma için mazeret hatırlat', N'2017-06-30 16:47:38.577', N'2017-07-03 09:04:22.660', N'2017-06-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'64', N'temmuz iş kazası', N'2017-07-06 13:05:45.267', N'2017-07-31 10:42:23.700', N'2017-07-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'65', N'ağustos iş kazası', N'2017-07-06 13:06:05.487', N'2017-09-06 09:23:34.330', N'2017-08-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'66', N'eylül iş kazası', N'2017-07-06 13:06:18.330', N'2017-10-02 15:58:21.607', N'2017-09-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'67', N'ekim iş kazası', N'2017-07-06 13:06:27.517', N'2017-10-30 13:59:02.140', N'2017-10-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'68', N'kasım iş kazası', N'2017-07-06 13:06:39.893', N'2017-11-29 13:38:00.187', N'2017-11-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'69', N'aralık iş kazası', N'2017-07-06 13:06:55.863', N'2018-01-02 11:07:28.913', N'2017-12-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'70', N'temmuz işkur çizelge', N'2017-07-06 13:07:14.893', N'2017-08-04 16:39:18.633', N'2017-07-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'71', N'ağustos  işkur çizelge', N'2017-07-06 13:07:31.957', N'2017-09-06 09:23:34.317', N'2017-08-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'72', N'eylül  işkur çizelge', N'2017-07-06 13:07:46.757', N'2017-11-01 11:35:35.400', N'2017-10-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'73', N'eylül  işkur çizelge', N'2017-07-06 13:08:23.370', N'2017-10-02 10:32:46.730', N'2017-09-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'74', N'ekim  işkur çizelge', N'2017-07-06 13:08:34.693', N'2017-11-01 11:35:35.417', N'2017-10-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'75', N'kasım  işkur çizelge', N'2017-07-06 13:08:47.700', N'2017-12-05 09:35:09.763', N'2017-11-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'76', N'aralık  işkur çizelge', N'2017-07-06 13:08:56.100', N'2018-01-12 17:28:12.197', N'2017-12-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'77', N'Haziran 2017 SKG', N'2017-07-10 13:54:01.927', N'2017-07-20 13:09:22.677', N'2017-07-20 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'78', N'Temmuz 2017 SGK', N'2017-07-10 13:54:21.507', N'2017-08-21 16:49:28.357', N'2017-08-18 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'79', N'Ağustos 2017 SGK', N'2017-07-10 13:54:32.223', N'2017-09-25 11:54:28.377', N'2017-09-21 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'80', N'Eylül 2017 SGK', N'2017-07-10 13:54:44.537', N'2017-10-30 08:28:28.230', N'2017-10-20 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'81', N'Ekim 2017 SGK', N'2017-07-10 13:54:54.303', N'2017-11-21 14:32:22.780', N'2017-11-17 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'82', N'Kasım 2017 SGK', N'2017-07-10 13:55:03.977', N'2017-12-18 08:38:48.787', N'2017-12-21 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'83', N'Aralık 2017 SGK', N'2017-07-10 13:55:16.870', N'2018-01-12 17:28:12.197', N'2018-01-18 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'84', N'Sadi Hancı Temmuz  İcra', N'2017-08-01 15:43:07.147', N'2017-08-03 14:08:15.900', N'2017-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'85', N'Sadi Hancı Ağustos  İcra', N'2017-08-01 15:43:19.897', N'2017-09-07 09:13:13.107', N'2017-09-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'86', N'Sadi Hancı Eylül  İcra', N'2017-08-01 15:43:29.700', N'2017-10-02 15:58:29.187', N'2017-10-02 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'87', N'Sadi Hancı  Ekim İcra', N'2017-08-01 15:43:38.680', N'2017-11-03 16:51:34.133', N'2017-11-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'88', N'Sadi Hancı  Kasım İcra', N'2017-08-01 15:43:49.337', N'2017-12-05 14:16:20.843', N'2017-12-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'89', N'Sadi Hancı Aralık  İcra', N'2017-08-01 15:44:01.883', N'2018-01-09 15:02:29.430', N'2018-01-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'90', N'gülen yüzler sadi ve yalçın izin formları gelecek', N'2017-08-02 14:20:35.800', N'2017-08-08 16:19:49.407', N'2017-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'91', N'hakan sgk çıkışı yapılacak', N'2017-08-02 15:56:37.333', N'2017-08-07 09:20:55.970', N'2017-08-07 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'92', N'Şevki Uzun 11 saat FM2 yazılacak', N'2017-08-07 09:20:33.343', N'2017-10-02 09:17:12.170', N'2017-08-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'93', N'engelli sayısı güncelleme yazısı yaz', N'2017-08-08 17:03:24.760', N'2017-08-10 11:49:01.133', N'2017-08-18 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'95', N'Medine abla emeklilik', N'2017-08-15 15:37:07.253', N'2017-09-05 09:07:32.737', N'2017-08-15 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'96', N'erhan aydemir 5 gün  yazdırılacak', N'2017-08-24 15:56:17.240', N'2017-09-22 12:01:24.000', N'2017-09-05 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'97', N'BÜLENT ERGEN hizmet cetveli ıslak imza', N'2017-09-26 15:14:26.773', N'2017-10-02 09:17:12.153', N'2017-09-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'98', N'özer eğitim', N'2017-11-29 16:35:00.400', N'2017-12-13 10:58:18.387', N'2017-12-13 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'99', N'anıl çıkışını karakola bildir', N'2017-12-05 14:02:58.627', N'2017-12-07 08:59:54.523', N'2017-12-08 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'100', N'sadi icra 394 yerine 412 yatırılmış', N'2017-12-05 14:15:31.123', N'2018-01-03 09:29:35.490', N'2017-12-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'101', N'Maaşlar Mikro Güncellesinden sonra yapılacak', N'2017-12-20 14:26:34.707', N'2018-01-03 09:29:35.490', N'2017-12-29 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'102', N'yönetim denetim kurulunu kent db ye aktar', N'2017-12-27 11:51:24.913', N'2018-01-29 10:06:23.853', N'2018-01-15 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'103', N'aralık maaşına şantiye mesailerini ekle', N'2017-12-28 11:29:06.730', N'2018-01-03 10:59:13.247', N'2018-01-02 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'104', N'anıl,mehmet kıdem ödenenlere ekle', N'2018-01-02 17:28:25.943', N'2018-01-03 09:29:35.490', N'2018-01-03 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'105', N'şantiye aralık 2017 puantajı eksik', N'2018-01-08 08:48:41.197', N'2018-01-09 15:02:29.430', N'2018-01-08 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'106', N'Ocak 2018 Personel Sayısı', N'2018-01-15 11:32:39.620', N'2018-01-25 11:17:05.557', N'2018-01-22 11:32:33.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'107', N'Şubat 2018 Personel Sayısı', N'2018-01-15 11:34:46.573', N'2018-02-21 16:43:23.760', N'2018-02-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'108', N'Mart 2018 Personel Sayısı', N'2018-01-15 11:34:46.573', N'2018-03-21 13:20:51.570', N'2018-03-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'109', N'Nisan 2018 Personel Sayısı', N'2018-01-15 11:34:46.573', N'2018-04-24 11:02:49.613', N'2018-04-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'110', N'Mayıs 2018 Personel Sayısı', N'2018-01-15 11:34:46.577', N'2018-05-23 13:12:55.107', N'2018-05-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'111', N'Haziran 2018 Personel Sayısı', N'2018-01-15 11:34:46.577', N'2018-06-26 17:09:59.370', N'2018-06-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'112', N'Temmuz 2018 Personel Sayısı', N'2018-01-15 11:34:46.597', N'2018-07-23 11:20:09.260', N'2018-07-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'113', N'Ağustos 2018 Personel Sayısı', N'2018-01-15 11:34:46.597', N'2018-08-28 17:07:18.120', N'2018-08-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'114', N'Eylül 2018 Personel Sayısı', N'2018-01-15 11:34:46.597', N'2018-09-25 17:16:03.100', N'2018-09-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'115', N'Ekim 2018 Personel Sayısı', N'2018-01-15 11:34:46.597', N'2018-10-25 08:47:33.103', N'2018-10-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'117', N'Aralık 2018 Personel Sayısı', N'2018-01-15 11:34:46.600', null, N'2018-12-22 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'118', N'Ocak 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-02-02 09:29:34.530', N'2018-01-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'119', N'Şubat 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-03-01 10:13:57.330', N'2018-02-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'120', N'Mart 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-04-03 11:08:50.127', N'2018-03-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'121', N'Nisan 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-04-30 14:11:09.583', N'2018-04-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'122', N'Mayıs 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-05-31 08:52:21.517', N'2018-05-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'123', N'Haziran 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-06-29 12:04:14.827', N'2018-06-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'124', N'Temmuz 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-08-02 09:01:48.283', N'2018-07-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'125', N'Ağustos 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.700', N'2018-08-31 08:19:56.890', N'2018-08-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'126', N'Eylül 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.730', N'2018-10-02 12:04:41.297', N'2018-09-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'127', N'Ekim 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.730', N'2018-11-02 10:14:48.713', N'2018-10-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'129', N'Aralık 2018 İş Kazası Yazısı', N'2018-01-15 12:23:59.730', null, N'2018-12-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'130', N'Ocak 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.237', N'2018-02-05 08:54:14.970', N'2018-02-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'131', N'Şubat 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.237', N'2018-03-01 10:13:57.330', N'2018-03-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'132', N'Mart 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.237', N'2018-04-03 11:08:50.127', N'2018-04-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'133', N'Nisan 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.237', N'2018-05-15 16:25:37.517', N'2018-05-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'134', N'Mayıs 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', N'2018-06-01 15:25:44.627', N'2018-06-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'135', N'Haziran 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', N'2018-07-04 17:16:38.253', N'2018-07-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'136', N'Temmuz 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', N'2018-08-01 11:28:19.590', N'2018-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'137', N'Ağustos 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', N'2018-09-05 15:32:27.313', N'2018-09-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'138', N'Eylül 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', N'2018-10-09 10:27:56.587', N'2018-10-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'139', N'Ekim 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', N'2018-11-05 10:50:53.803', N'2018-11-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'141', N'Aralık 2018 İş Kur Personel Sayısı', N'2018-01-15 12:25:59.240', null, N'2019-01-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'142', N'abdullah bes çıkış', N'2018-02-13 13:52:03.773', N'2018-02-20 09:07:48.600', N'2018-02-28 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'143', N'güvenlik sigorta işlemleri', N'2018-05-07 08:13:43.113', null, N'2019-03-15 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'145', N'Muharrem öztürk icra unutma', N'2018-06-06 10:38:12.850', N'2018-07-04 17:16:38.253', N'2018-06-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'147', N'MAHMUT SARI SGK DEĞİŞTİR', N'2018-06-19 10:15:52.550', N'2018-06-26 08:58:20.127', N'2018-06-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'148', N'mustafa avans maaşla yatacak', N'2018-06-25 11:35:29.443', N'2018-07-09 14:56:50.630', N'2018-07-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'149', N'erkan akyol maaş durumu', N'2018-07-05 10:05:10.717', N'2018-07-31 15:18:18.147', N'2018-07-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'150', N'muzaffer haziran mesai unutma', N'2018-07-05 10:39:28.153', N'2018-08-01 08:54:57.670', N'2018-07-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'151', N'sadi kenan karakol işlemi yap', N'2018-07-06 08:32:09.467', N'2018-07-11 12:40:36.303', N'2018-07-09 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'152', N'işkur engelli güncelleme yazısı yazılacak', N'2018-07-06 08:33:17.940', N'2018-07-09 10:39:50.510', N'2018-07-09 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'153', N'kenan dekontları dosyaya koy', N'2018-07-06 08:45:09.813', N'2018-07-12 12:04:47.993', N'2018-07-06 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'166', N'kadir görevlendirme imzalat', N'2018-07-10 15:48:31.313', N'2018-07-30 08:48:23.637', N'2018-07-10 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'183', N'test', N'2018-07-11 09:14:55.523', N'2018-07-23 11:26:34.750', N'2018-07-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'184', N'tasdasd', N'2018-07-11 09:16:53.913', N'2018-07-23 11:26:31.540', N'2018-07-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'185', N'sadi izinleri imzalat', N'2018-07-12 08:42:29.680', N'2018-08-01 11:15:21.213', N'2018-07-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'186', N'cuma günü doktoramustafa rapor hatırlat', N'2018-07-17 11:47:26.000', N'2018-07-23 17:05:55.860', N'2018-07-20 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'187', N'dış personel izinleri yazılacak', N'2018-07-23 11:55:36.330', N'2018-08-16 08:50:02.873', N'2018-07-24 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'188', N'ocak 2018 den itibaren raporları bordro ya işle', N'2018-08-01 11:09:38.437', N'2018-08-09 13:33:52.627', N'2018-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'189', N'mahmut sarı haziran fazla ödeme kesilecek', N'2018-08-01 14:20:48.270', N'2018-09-27 12:08:57.467', N'2018-08-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'190', N'gökhan şen ağustos 1,5 saat mesai fazla', N'2018-08-03 15:20:15.213', N'2018-08-29 10:34:57.817', N'2018-08-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'191', N'burak trafik ceza avans imzalat', N'2018-08-03 17:11:01.487', N'2018-08-16 08:49:40.777', N'2018-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'192', N'ulaşım nevin hn puantaj kep meselesi', N'2018-08-03 17:17:27.407', N'2018-08-28 15:51:32.567', N'2018-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'193', N'eren, mehmet selim 3 aylık yemek parası verilecek', N'2018-08-07 14:02:24.647', N'2018-08-27 08:56:09.267', N'2018-08-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'194', N'zakir karakol bildirimi', N'2018-08-07 15:07:15.160', N'2018-08-08 15:05:01.220', N'2018-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'195', N'hemşire aranıp evrak talep edilecek', N'2018-08-10 15:36:31.713', N'2018-09-04 08:55:54.310', N'2018-09-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'196', N'hemşire işe girişi yapılacak', N'2018-08-10 15:37:02.467', N'2018-10-15 13:41:51.803', N'2018-10-15 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'197', N'hemşire aranıp evrak talep edilecek', N'2018-08-10 15:37:42.967', N'2018-10-08 09:15:12.653', N'2018-10-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'198', N'mehmet ve eren 4 yemek verilip ödemeler düşecek', N'2018-08-15 16:18:14.723', N'2018-09-03 09:21:01.410', N'2018-08-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'199', N'erkan aksoy izin yazılacak', N'2018-08-16 08:50:33.357', N'2018-08-27 13:51:38.330', N'2018-08-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'200', N'sgk ifade davet', N'2018-08-17 09:02:00.170', N'2018-08-27 13:51:43.330', N'2018-08-27 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'201', N'arşiv excele personel maaşı eklenecek ', N'2018-08-28 16:49:27.253', null, N'2018-08-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'202', N'ömer telliyi besten çıkar', N'2018-08-28 17:15:48.887', N'2018-08-29 13:44:40.870', N'2018-08-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'203', N'ilker avans', N'2018-08-29 16:36:54.133', N'2018-09-07 09:09:52.870', N'2018-09-06 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'204', N'yılmaz yazıcı izni yanlış gösteriyor', N'2018-08-29 17:17:11.487', N'2018-09-07 09:10:04.430', N'2018-08-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'205', N'sgk mahmut için ek bildirge verilecek', N'2018-08-31 10:08:57.633', N'2018-09-20 08:38:08.693', N'2018-09-03 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'206', N'ömer telli karakol evrak götür', N'2018-09-03 09:29:10.330', N'2018-09-05 15:32:19.660', N'2018-09-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'207', N'murat ürek yarım izin gir', N'2018-09-10 15:51:32.450', N'2018-09-14 13:17:30.723', N'2018-09-10 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'208', N'gökhan şen icra unutma', N'2018-09-24 16:27:20.363', N'2018-10-02 08:31:39.550', N'2018-09-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'209', N'tahsin biçer çıkış yapılacak', N'2018-09-28 14:39:15.387', N'2018-10-01 12:15:24.247', N'2018-09-30 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'210', N'mustafa umutlu mali işlere aldır', N'2018-10-01 10:01:35.370', N'2018-10-15 09:46:33.500', N'2018-10-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'211', N'esra sert 08 itibariyle kentsel dönüşüm', N'2018-10-10 08:54:15.553', N'2018-10-31 17:15:08.190', N'2018-10-10 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'213', N'METİN İCRA YAZISI YAZ', N'2018-10-31 16:47:35.373', N'2018-11-01 14:16:59.700', N'2018-10-31 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'214', N'personel yıllık mesaileri hesapla', N'2018-11-01 09:27:52.597', N'2018-11-02 08:39:06.217', N'2018-11-01 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'216', N'avans excel hazırla', N'2018-11-05 10:50:09.943', null, N'2018-11-15 00:00:00.000', null, N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'217', N'test', N'2018-11-01 12:22:55.000', null, N'2018-11-15 12:23:03.000', N'216', N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'219', N'test1', N'2018-10-30 10:05:10.000', null, N'2018-11-15 10:05:15.000', N'216', N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'220', N'test2', N'2018-11-05 10:05:39.000', null, N'2018-11-15 10:05:43.000', N'216', N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'221', N'test3', N'2018-11-05 10:05:59.000', null, N'2018-11-15 10:06:02.000', N'220', N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'225', N'test4', N'2018-11-05 13:56:19.000', null, N'2018-11-15 13:56:24.000', N'221', N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'228', N'test5', N'2018-11-05 13:57:19.000', null, N'2018-11-15 13:57:23.000', N'225', N'10');
GO
INSERT INTO [dbo].[Takip] VALUES (N'229', N'test6', N'2018-11-05 13:57:53.000', null, N'2018-11-15 13:57:57.000', N'228', N'10');
GO

-- ----------------------------
-- Table structure for [dbo].[Task]
-- ----------------------------
DROP TABLE [dbo].[Task]
GO
CREATE TABLE [dbo].[Task] (
[id] int NOT NULL ,
[ad] nvarchar(250) NOT NULL ,
[sontarih] date NOT NULL DEFAULT (getdate()) ,
[hatirlatma] int NOT NULL DEFAULT ((3)) ,
[tamamlandı] bit NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Task
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Task_Details]
-- ----------------------------
DROP TABLE [dbo].[Task_Details]
GO
CREATE TABLE [dbo].[Task_Details] (
[id] int NOT NULL ,
[taskid] int NOT NULL ,
[yapilan] text NOT NULL ,
[tarih] date NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Records of Task_Details
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[vergi_dilim]
-- ----------------------------
DROP TABLE [dbo].[vergi_dilim]
GO
CREATE TABLE [dbo].[vergi_dilim] (
[id] int NOT NULL ,
[yil] int NOT NULL 
)


GO

-- ----------------------------
-- Records of vergi_dilim
-- ----------------------------
INSERT INTO [dbo].[vergi_dilim] VALUES (N'6', N'2018');
GO

-- ----------------------------
-- Table structure for [dbo].[vergi_dilim_detay]
-- ----------------------------
DROP TABLE [dbo].[vergi_dilim_detay]
GO
CREATE TABLE [dbo].[vergi_dilim_detay] (
[id] int NOT NULL ,
[dilimId] int NOT NULL ,
[oran] int NOT NULL ,
[alt] decimal(18) NOT NULL ,
[ust] decimal(18) NOT NULL 
)


GO

-- ----------------------------
-- Records of vergi_dilim_detay
-- ----------------------------
INSERT INTO [dbo].[vergi_dilim_detay] VALUES (N'1', N'6', N'15', N'0', N'14800');
GO
INSERT INTO [dbo].[vergi_dilim_detay] VALUES (N'2', N'6', N'20', N'14801', N'34000');
GO
INSERT INTO [dbo].[vergi_dilim_detay] VALUES (N'4', N'6', N'27', N'34001', N'120000');
GO
INSERT INTO [dbo].[vergi_dilim_detay] VALUES (N'5', N'6', N'35', N'120001', N'12000000');
GO

-- ----------------------------
-- Table structure for [dbo].[Yizin]
-- ----------------------------
DROP TABLE [dbo].[Yizin]
GO
CREATE TABLE [dbo].[Yizin] (
[id] int NOT NULL ,
[personelid] int NOT NULL ,
[yil] int NOT NULL ,
[mikrokayit] bit NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Yizin', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'yarım gün yıllık izinlerin takibi için kullanılacak

detaylarda her kayıt için birkaç izin kaydı tutulacak'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Yizin'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'yarım gün yıllık izinlerin takibi için kullanılacak

detaylarda her kayıt için birkaç izin kaydı tutulacak'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Yizin'
GO

-- ----------------------------
-- Records of Yizin
-- ----------------------------
INSERT INTO [dbo].[Yizin] VALUES (N'43', N'2328', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'45', N'908', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'46', N'2303', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'47', N'2369', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'48', N'2349', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'49', N'2328', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'50', N'2362', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'51', N'762', N'2015', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'52', N'2196', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'53', N'2377', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'54', N'2349', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'55', N'2132', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'56', N'2377', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'57', N'746', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'58', N'2298', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'60', N'769', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'61', N'2381', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'68', N'2328', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'72', N'2330', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'73', N'2377', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'74', N'2357', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'75', N'2328', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'76', N'762', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'77', N'906', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'78', N'2373', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'79', N'2273', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'80', N'2349', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'81', N'746', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'82', N'2359', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'83', N'779', N'2016', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'84', N'2370', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'85', N'1082', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'86', N'2372', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'87', N'769', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'88', N'2115', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'89', N'2349', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'90', N'762', N'2015', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'91', N'783', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'92', N'783', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'93', N'762', N'2015', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'94', N'2303', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'95', N'908', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'96', N'2330', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'98', N'746', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'99', N'2349', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'100', N'753', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'101', N'2196', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'102', N'2374', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'103', N'2369', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'104', N'2442', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'105', N'783', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'106', N'2362', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'108', N'2428', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'109', N'915', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'110', N'914', N'2015', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'111', N'908', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'112', N'2273', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'113', N'2349', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'114', N'2364', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'115', N'906', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'116', N'2381', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'117', N'762', N'2015', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'118', N'746', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'119', N'783', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'120', N'908', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'121', N'2421', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'122', N'2406', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'123', N'2349', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'125', N'2364', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'126', N'1082', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'127', N'2322', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'128', N'2377', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'129', N'2365', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'130', N'2350', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'131', N'753', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'132', N'2330', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'133', N'2364', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'134', N'2359', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'135', N'915', N'2017', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'136', N'914', N'2015', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'137', N'753', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'138', N'2115', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'139', N'754', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'141', N'2321', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'142', N'2406', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'143', N'2330', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'144', N'2322', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'145', N'2338', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'146', N'769', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'147', N'906', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'148', N'762', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'149', N'2372', N'2018', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'150', N'2273', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'151', N'2321', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'152', N'1771', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'153', N'2328', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'154', N'2365', N'2016', N'1');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'155', N'756', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'156', N'2349', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'157', N'2401', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'158', N'2372', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'159', N'2387', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'160', N'908', N'2017', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'161', N'2381', N'2018', N'0');
GO
INSERT INTO [dbo].[Yizin] VALUES (N'162', N'2364', N'2018', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[YizinDetay]
-- ----------------------------
DROP TABLE [dbo].[YizinDetay]
GO
CREATE TABLE [dbo].[YizinDetay] (
[id] int NOT NULL ,
[yizinid] int NOT NULL ,
[belgesayi] nvarchar(50) NOT NULL ,
[tarih] date NOT NULL ,
[baslangic] time(1) NULL ,
[bitis] time(1) NOT NULL 
)


GO

-- ----------------------------
-- Records of YizinDetay
-- ----------------------------
INSERT INTO [dbo].[YizinDetay] VALUES (N'43', N'43', N'57622800-903.05.01-E.1302', N'2017-12-22', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'45', N'45', N'57622800-903.05.01-E.1304 ', N'2017-12-25', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'46', N'46', N'57622800-903.05.01-E.1308', N'2017-12-26', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'47', N'47', N'57622800-903.05.01-E.1307', N'2017-12-27', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'48', N'48', N'57622800-903.05.01-E.1322', N'2017-12-29', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'49', N'49', N'57622800-903.05.01-E.1321', N'2017-12-29', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'50', N'50', N'57622800-903.05.01-E.4', N'2018-01-02', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'51', N'51', N'57622800-903.05.01-E.2 ', N'2018-01-02', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'52', N'52', N'57622800-903.05.01-E.15', N'2018-01-05', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'53', N'53', N'57622800-903.05.01-E.16', N'2018-01-05', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'54', N'54', N'57622800-903.05.01-E.45', N'2018-01-08', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'55', N'55', N'57622800-903.05.01-E.23', N'2018-01-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'56', N'56', N'57622800-903.05.01-E.37', N'2018-01-11', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'57', N'57', N'57622800-903.05.01-E.44', N'2018-12-12', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'58', N'58', N'57622800-903.05.01-E.57', N'2018-01-16', 0x31323A30303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'59', N'46', N'57622800-903.05.01-E.62', N'2018-01-17', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'60', N'60', N'57622800-903.05.01-E.65', N'2018-01-19', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'61', N'61', N'57622800-903.05.01-E.69', N'2018-01-19', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'68', N'51', N'57622800-903.05.01-E.70', N'2018-01-19', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'69', N'68', N'57622800-903.05.01-E.84', N'2018-01-23', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'72', N'57', N'57622800-903.05.01-E.82', N'2018-01-22', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'73', N'72', N'57622800-903.05.01-E.94', N'2018-01-25', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'74', N'73', N'57622800-903.05.01-E.72', N'2018-01-19', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'75', N'74', N'57622800-903.05.01-E.105', N'2018-01-30', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'77', N'68', N'57622800-903.05.01-E.111 ', N'2018-01-31', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'78', N'76', N'57622800-903.05.01-E.121', N'2018-02-02', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'79', N'61', N'57622800-903.05.01-E.134', N'2018-02-07', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'80', N'76', N'57622800-903.05.01-E.153', N'2018-02-12', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'81', N'50', N'57622800-903.05.01-E.156', N'2018-02-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'82', N'77', N'57622800-903.05.01-E.161', N'2018-02-14', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'83', N'78', N'57622800-903.05.01-E.160', N'2018-02-14', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'84', N'79', N'57622800-903.05.01-E.163', N'2018-02-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'85', N'45', N'57622800-903.05.01-E.168', N'2018-02-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'86', N'80', N'57622800-903.05.01-E.167', N'2018-02-16', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'87', N'81', N'57622800-903.05.01-E.176', N'2018-02-19', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'88', N'60', N'57622800-903.05.01-E.175', N'2018-02-20', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'89', N'82', N'57622800-903.05.01-E.180', N'2018-02-20', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'90', N'83', N'57622800-903.05.01-E.185', N'2018-02-21', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'91', N'84', N'57622800-903.05.01-E.193', N'2018-02-23', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'92', N'85', N'57622800-903.05.01-E.192', N'2018-02-23', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'93', N'80', N'57622800-903.05.01-E.201 ', N'2018-02-27', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'94', N'86', N'57622800-903.05.01-E.199', N'2018-02-27', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'95', N'87', N'57622800-903.05.01-E.200', N'2018-02-27', 0x31333A33303A30302E30, 0x30313A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'96', N'88', N'57622800-903.05.01-E.215', N'2018-03-02', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'97', N'89', N'57622800-903.05.01-E.119', N'2018-02-01', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'98', N'90', N'57622800-903.05.01-E.222 ', N'2018-03-06', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'99', N'91', N'57622800-903.05.01-E.227', N'2018-03-09', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'100', N'72', N'57622800-903.05.01-E.229 ', N'2018-03-08', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'101', N'86', N'57622800-903.05.01-E.231', N'2018-03-09', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'102', N'91', N'57622800-903.05.01-E.237', N'2018-03-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'103', N'52', N'57622800-903.05.01-E.238', N'2018-03-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'104', N'90', N'57622800-903.05.01-E.239', N'2018-03-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'105', N'77', N'57622800-903.05.01-E.247', N'2018-03-21', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'106', N'81', N'57622800-903.05.01-E.254', N'2018-03-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'107', N'92', N'57622800-903.05.01-E.272', N'2018-03-22', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'108', N'93', N'57622800-903.05.01-E.288', N'2018-03-28', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'109', N'94', N'57622800-903.05.01-E.298', N'2017-03-30', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'110', N'95', N'57622800-903.05.01-E.297', N'2018-03-30', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'111', N'96', N'57622800-903.05.01-E.322', N'2018-04-09', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'112', N'93', N'57622800-903.05.01-E.320', N'2018-04-06', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'114', N'89', N'57622800-903.05.01-E.326', N'2018-04-06', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'115', N'95', N'57622800-903.05.01-E.327', N'2018-04-06', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'116', N'47', N'57622800-903.05.01-E.330', N'2018-04-09', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'117', N'98', N'57622800-903.05.01-E.331 ', N'2018-04-05', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'118', N'96', N'57622800-903.05.01-E.312 ', N'2018-04-04', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'119', N'99', N'57622800-903.05.01-E.334', N'2018-04-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'120', N'100', N'57622800-903.05.01-E.338', N'2018-04-11', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'121', N'92', N'57622800-903.05.01-E.341', N'2018-04-12', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'122', N'101', N'57622800-903.05.01-E.340', N'2018-04-12', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'123', N'56', N'57622800-903.05.01-E.351', N'2018-04-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'124', N'102', N'57622800-903.05.01-E.363', N'2018-04-17', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'125', N'103', N'57622800-903.05.01-E.366', N'2018-04-19', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'126', N'99', N'57622800-903.05.01-E.369', N'2018-04-17', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'127', N'104', N'57622800-903.05.01-E.377 ', N'2018-04-17', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'128', N'104', N'57622800-903.05.01-E.379', N'2018-04-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'129', N'105', N'57622800-903.05.01-E.382', N'2018-04-25', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'130', N'106', N'57622800-903.05.01-E.386', N'2018-04-26', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'132', N'100', N'57622800-903.05.01-E.401', N'2018-04-30', 0x30383A33303A30302E30, 0x31333A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'133', N'108', N'57622800-903.05.01-E.410', N'2018-05-02', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'134', N'109', N'57622800-903.05.01-E.419', N'2018-05-04', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'135', N'110', N'57622800-903.05.01-E.420 ', N'2018-05-04', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'136', N'108', N'57622800-903.05.01-E.421 ', N'2018-05-04', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'137', N'111', N'57622800-903.05.01-E.431', N'2018-05-08', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'140', N'79', N'57622800-903.05.01-E.439', N'2018-05-09', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'141', N'113', N'57622800-903.05.01-E.454', N'2018-05-11', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'142', N'73', N'57622800-903.05.01-E.452', N'2018-05-11', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'143', N'105', N'57622800-903.05.01-E.463 ', N'2018-05-14', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'144', N'113', N'57622800-903.05.01-E.469', N'2018-05-14', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'145', N'114', N'57622800-903.05.01-E.475', N'2018-05-16', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'146', N'111', N'57622800-903.05.01-E.479', N'2018-05-17', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'147', N'98', N'57622800-903.05.01-E.486 ', N'2018-05-18', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'148', N'115', N'57622800-903.05.01-E.484 ', N'2018-05-18', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'149', N'116', N'57622800-903.05.01-E.487 ', N'2018-05-18', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'150', N'117', N'57622800-903.05.01-E.488 ', N'2018-05-21', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'151', N'118', N'57622800-903.05.01-E.497 ', N'2018-05-22', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'152', N'115', N'57622800-903.05.01-E.495 ', N'2018-05-22', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'153', N'119', N'57622800-903.05.01-E.507', N'2018-05-25', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'154', N'120', N'57622800-903.05.01-E.510 ', N'2018-05-28', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'155', N'117', N'57622800-903.05.01-E.512 ', N'2018-05-30', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'156', N'121', N'57622800-903.05.01-E.514 ', N'2018-05-25', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'157', N'122', N'57622800-903.05.01-E.539 ', N'2018-06-06', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'158', N'102', N'57622800-903.05.01-E.549 ', N'2018-06-06', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'159', N'114', N'57622800-903.05.01-E.548 ', N'2018-06-04', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'160', N'123', N'57622800-903.05.01-E.551 ', N'2018-06-08', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'162', N'125', N'E.475', N'2018-05-16', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'163', N'125', N'E.548', N'2018-06-04', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'164', N'121', N'57622800-903.05.01-E.560 ', N'2018-06-14', 0x30383A33303A30302E30, 0x31333A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'165', N'85', N'57622800-903.05.01-E.518 ', N'2018-05-25', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'166', N'126', N'57622800-903.05.01-E.573 ', N'2018-06-14', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'167', N'127', N'57622800-903.05.01-E.580', N'2018-06-13', 0x30383A33303A30302E30, 0x31333A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'168', N'128', N'57622800-903.05.01-E.581', N'2018-06-14', 0x30383A33303A30302E30, 0x31333A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'169', N'123', N'57622800-903.05.01-E.585 ', N'2018-06-14', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'170', N'120', N'57622800-903.05.01-E.593', N'2018-06-19', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'171', N'129', N'57622800-903.05.01-E.595', N'2018-06-19', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'172', N'130', N'57622800-903.05.01-E.599', N'2018-06-19', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'173', N'131', N'57622800-903.05.01-E.647 ', N'2018-07-03', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'174', N'116', N'57622800-903.05.01-E.645 ', N'2018-07-03', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'175', N'132', N'57622800-903.05.01-E.657', N'2018-07-09', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'176', N'82', N'57622800-903.05.01-E.672 ', N'2018-07-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'177', N'119', N'57622800-903.05.01-E.675 ', N'2018-07-12', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'178', N'74', N'57622800-903.05.01-E.681', N'2018-07-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'179', N'131', N'57622800-903.05.01-E.679', N'2018-07-12', 0x31323A33303A30302E30, 0x31373A32303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'180', N'133', N'57622800-903.05.01-E.687 ', N'2018-07-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'181', N'132', N'57622800-903.05.01-E.694', N'2018-07-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'182', N'129', N'57622800-903.05.01-E.706 ', N'2018-07-20', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'183', N'109', N'57622800-903.05.01-E.552 ', N'2018-06-11', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'184', N'134', N'57622800-903.05.01-E.728 ', N'2018-07-25', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'185', N'110', N'57622800-903.05.01-E.553 ', N'2018-06-11', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'186', N'135', N'57622800-903.05.01-E.731 ', N'2018-07-25', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'187', N'136', N'57622800-903.05.01-E.730 ', N'2018-07-25', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'188', N'127', N'57622800-903.05.01-E.735 ', N'2018-07-26', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'189', N'55', N'57622800-903.05.01-E.737 ', N'2018-07-27', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'190', N'87', N'57622800-903.05.01-E.525 ', N'2018-06-06', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'191', N'137', N'57622800-903.05.01-E.767 ', N'2018-08-03', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'192', N'122', N'57622800-903.05.01-E.803 ', N'2018-08-15', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'193', N'88', N'57622800-903.05.01-E.812 ', N'2018-08-27', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'194', N'138', N'57622800-903.05.01-E.812 ', N'2018-08-31', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'195', N'139', N'57622800-903.05.01-E.830 ', N'2018-08-28', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'197', N'141', N'57622800-903.05.01-E.840 ', N'2018-08-29', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'198', N'142', N'57622800-903.05.01-E.863 ', N'2018-09-06', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'199', N'143', N'57622800-903.05.01-E.865 ', N'2018-09-07', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'200', N'133', N'57622800-903.05.01-E.876 ', N'2018-09-03', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'201', N'84', N'57622800-903.05.01-E.874 ', N'2018-09-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'202', N'144', N'57622800-903.05.01-E.870 ', N'2018-09-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'203', N'145', N'57622800-903.05.01-E.882 ', N'2018-09-05', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'204', N'146', N'57622800-903.05.01-E.904 ', N'2018-09-17', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'205', N'147', N'57622800-903.05.01-E.925', N'2018-09-20', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'206', N'135', N'57622800-903.05.01-E.943 ', N'2018-09-26', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'207', N'146', N'57622800-903.05.01-E.947 ', N'2018-09-27', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'208', N'128', N'57622800-903.05.01-E.957 ', N'2018-09-17', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'209', N'148', N'57622800-903.05.01-E.960 ', N'2018-10-02', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'210', N'147', N'57622800-903.05.01-E.965 ', N'2018-10-04', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'211', N'149', N'57622800-903.05.01-E.999 ', N'2018-10-12', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'212', N'141', N'57622800-903.05.01-E.1045 ', N'2018-10-23', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'213', N'150', N'ISLAK IMZALI', N'2018-10-24', 0x31323A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'214', N'151', N'57622800-903.05.01-E.1065 ', N'2018-10-30', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'215', N'136', N'57622800-903.05.01-E.942 ', N'2018-09-26', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'216', N'152', N'57622800-903.05.01-E.1112 ', N'2018-11-13', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'217', N'153', N'57622800-903.05.01-E.1127 ', N'2018-11-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'218', N'154', N'57622800-903.05.01-E.1133', N'2018-11-16', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'219', N'126', N'57622800-903.05.01-E.1144 ', N'2018-11-19', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'220', N'134', N'57622800-903.05.01-E.1153 ', N'2018-11-20', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'221', N'149', N'57622800-903.05.01-E.1163 ', N'2018-11-23', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'222', N'155', N'57622800-903.05.01-E.1181 ', N'2018-11-29', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'223', N'156', N'57622800-903.05.01-E.1183 ', N'2018-11-29', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'224', N'157', N'57622800-903.05.01-E.1008 ', N'2018-10-10', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'225', N'158', N'57622800-903.05.01-E.1201 ', N'2018-12-03', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'226', N'159', N'57622800-903.05.01-E.1214 ', N'2018-12-06', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'227', N'160', N'57622800-903.05.01-E.1220 ', N'2018-12-06', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'228', N'161', N'57622800-903.05.01-E.1216 ', N'2018-12-07', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'229', N'162', N'57622800-903.05.01-E.1224', N'2018-12-10', 0x30383A33303A30302E30, 0x31323A33303A30302E30);
GO
INSERT INTO [dbo].[YizinDetay] VALUES (N'230', N'154', N'57622800-903.05.01-E.1246 ', N'2018-12-14', 0x31333A33303A30302E30, 0x31373A33303A30302E30);
GO

-- ----------------------------
-- View structure for [dbo].[pers]
-- ----------------------------
DROP VIEW [dbo].[pers]
GO
CREATE VIEW [dbo].[pers] AS 
SELECT
dbo.Personel.adsoyad,
dbo.Personel.iban,
dbo.Avanslar.tutar,
dbo.Avanslar.tarih,
dbo.Personel.kadro

FROM
dbo.Personel
INNER JOIN dbo.Avanslar ON dbo.Avanslar.personelId = dbo.Personel.id
GO

-- ----------------------------
-- View structure for [dbo].[personeller]
-- ----------------------------
DROP VIEW [dbo].[personeller]
GO
CREATE VIEW [dbo].[personeller] AS 
SELECT
dbo.Personel.adsoyad,
dbo.birim.birimad,
dbo.Personel.sicilno,
dbo.Personel.tcno,

dbo.Personel.giristarihi,

dbo.Personel.dogumtarihi,
dbo.Lokasyon.ad as Lokasyon,
dbo.Gorev.ad as Gorev,
dbo.PersonelDetay.cinsiyeti,
dbo.Tahsil.ad as Tahsil



FROM
dbo.Personel
LEFT JOIN dbo.PersonelDetay ON dbo.PersonelDetay.personelid = dbo.Personel.id
LEFT JOIN dbo.birim on Personel.birimid=birim.id 
LEFT JOIN Gorev on PersonelDetay.gorev=gorev.id 
LEFT JOIN Lokasyon on PersonelDetay.lokasyon=lokasyon.id
LEFT JOIN Tahsil on PersonelDetay.tahsili=Tahsil.id

WHERE [cikistarihi] IS NULL  AND [kadro] < '3'
GO

-- ----------------------------
-- View structure for [dbo].[test]
-- ----------------------------
DROP VIEW [dbo].[test]
GO
CREATE VIEW [dbo].[test] AS 
SELECT
dbo.Yizin.id,
dbo.Personel.adsoyad,
dbo.YizinDetay.belgesayi,
dbo.Yizin.yil,
dbo.YizinDetay.tarih,
dbo.YizinDetay.baslangic,
dbo.YizinDetay.bitis,
dbo.Yizin.mikrokayit 
FROM
dbo.Yizin
INNER JOIN dbo.YizinDetay ON dbo.YizinDetay.yizinid = dbo.Yizin.id
INNER JOIN dbo.Personel ON dbo.Yizin.personelid = dbo.Personel.id
GO

-- ----------------------------
-- View structure for [dbo].[test1]
-- ----------------------------
DROP VIEW [dbo].[test1]
GO
CREATE VIEW [dbo].[test1] AS 
SELECT
dbo.Personel.adsoyad,
dbo.Personel.kadro

FROM
dbo.Personel
where Personel.cikistarihi is null
GO

-- ----------------------------
-- Indexes structure for table Arsiv_Ihaletip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Arsiv_Ihaletip]
-- ----------------------------
ALTER TABLE [dbo].[Arsiv_Ihaletip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Arsiv_Personel
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Arsiv_Personel]
-- ----------------------------
ALTER TABLE [dbo].[Arsiv_Personel] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Avanslar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Avanslar]
-- ----------------------------
ALTER TABLE [dbo].[Avanslar] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[Avanslar]
-- ----------------------------
ALTER TABLE [dbo].[Avanslar] ADD UNIQUE ([personelId] ASC, [tutar] ASC, [tarih] ASC)
GO

-- ----------------------------
-- Indexes structure for table birim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[birim]
-- ----------------------------
ALTER TABLE [dbo].[birim] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Dava
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Dava]
-- ----------------------------
ALTER TABLE [dbo].[Dava] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table DiniGunler
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DiniGunler]
-- ----------------------------
ALTER TABLE [dbo].[DiniGunler] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table EtiketTanim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[EtiketTanim]
-- ----------------------------
ALTER TABLE [dbo].[EtiketTanim] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table EvrakListe
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[EvrakListe]
-- ----------------------------
ALTER TABLE [dbo].[EvrakListe] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Firma
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Firma]
-- ----------------------------
ALTER TABLE [dbo].[Firma] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table GeciciMazeret
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[GeciciMazeret]
-- ----------------------------
ALTER TABLE [dbo].[GeciciMazeret] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[GeciciMazeret]
-- ----------------------------
ALTER TABLE [dbo].[GeciciMazeret] ADD UNIQUE ([personelID] ASC, [tarih] ASC)
GO

-- ----------------------------
-- Indexes structure for table Gorev
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Gorev]
-- ----------------------------
ALTER TABLE [dbo].[Gorev] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Gorev_Detay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Gorev_Detay]
-- ----------------------------
ALTER TABLE [dbo].[Gorev_Detay] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Gorev_Detay_Not
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Gorev_Detay_Not]
-- ----------------------------
ALTER TABLE [dbo].[Gorev_Detay_Not] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Grup
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Grup]
-- ----------------------------
ALTER TABLE [dbo].[Grup] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Icralar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Icralar]
-- ----------------------------
ALTER TABLE [dbo].[Icralar] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table IcraOdeme
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[IcraOdeme]
-- ----------------------------
ALTER TABLE [dbo].[IcraOdeme] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table ihale
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ihale]
-- ----------------------------
ALTER TABLE [dbo].[ihale] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table ImzaTakip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ImzaTakip]
-- ----------------------------
ALTER TABLE [dbo].[ImzaTakip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table ImzaTakipDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ImzaTakipDetay]
-- ----------------------------
ALTER TABLE [dbo].[ImzaTakipDetay] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table isg_egitim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[isg_egitim]
-- ----------------------------
ALTER TABLE [dbo].[isg_egitim] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table isg_egitim_saat
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[isg_egitim_saat]
-- ----------------------------
ALTER TABLE [dbo].[isg_egitim_saat] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table isg_egitim_yer
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[isg_egitim_yer]
-- ----------------------------
ALTER TABLE [dbo].[isg_egitim_yer] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Izin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Izin]
-- ----------------------------
ALTER TABLE [dbo].[Izin] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[Izin]
-- ----------------------------
ALTER TABLE [dbo].[Izin] ADD UNIQUE ([personelid] ASC, [yil] ASC, [baslangictarih] ASC)
GO

-- ----------------------------
-- Indexes structure for table IzinTip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[IzinTip]
-- ----------------------------
ALTER TABLE [dbo].[IzinTip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Kadro
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Kadro]
-- ----------------------------
ALTER TABLE [dbo].[Kadro] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table kanunparametre
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[kanunparametre]
-- ----------------------------
ALTER TABLE [dbo].[kanunparametre] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Kurul
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Kurul]
-- ----------------------------
ALTER TABLE [dbo].[Kurul] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table KurulGorevTip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[KurulGorevTip]
-- ----------------------------
ALTER TABLE [dbo].[KurulGorevTip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table KurulTip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[KurulTip]
-- ----------------------------
ALTER TABLE [dbo].[KurulTip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Lokasyon
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Lokasyon]
-- ----------------------------
ALTER TABLE [dbo].[Lokasyon] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Meslek
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Meslek]
-- ----------------------------
ALTER TABLE [dbo].[Meslek] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table OzlukEvrak
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[OzlukEvrak]
-- ----------------------------
ALTER TABLE [dbo].[OzlukEvrak] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PDKS_GunGirisCikis
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PDKS_GunGirisCikis]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_GunGirisCikis] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PDKS_GunIzin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PDKS_GunIzin]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_GunIzin] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PDKS_PersonelGun
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PDKS_PersonelGun]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_PersonelGun] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[PDKS_PersonelGun]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_PersonelGun] ADD UNIQUE ([PersonelId] ASC, [Tarih] ASC)
GO

-- ----------------------------
-- Indexes structure for table PDKS_PersonelKart
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PDKS_PersonelKart]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_PersonelKart] ADD PRIMARY KEY ([personelid])
GO

-- ----------------------------
-- Indexes structure for table Personel
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Personel]
-- ----------------------------
ALTER TABLE [dbo].[Personel] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PersonelDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelDetay]
-- ----------------------------
ALTER TABLE [dbo].[PersonelDetay] ADD PRIMARY KEY ([personelid])
GO

-- ----------------------------
-- Indexes structure for table PersonelDevir
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelDevir]
-- ----------------------------
ALTER TABLE [dbo].[PersonelDevir] ADD PRIMARY KEY ([personelID])
GO

-- ----------------------------
-- Indexes structure for table PersonelEtiket
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelEtiket]
-- ----------------------------
ALTER TABLE [dbo].[PersonelEtiket] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PersonelFirma
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelFirma]
-- ----------------------------
ALTER TABLE [dbo].[PersonelFirma] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PersonelGrup
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelGrup]
-- ----------------------------
ALTER TABLE [dbo].[PersonelGrup] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PersonelIhale
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelIhale]
-- ----------------------------
ALTER TABLE [dbo].[PersonelIhale] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PersonelIhaleDonemleri
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelIhaleDonemleri]
-- ----------------------------
ALTER TABLE [dbo].[PersonelIhaleDonemleri] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[PersonelIhaleDonemleri]
-- ----------------------------
ALTER TABLE [dbo].[PersonelIhaleDonemleri] ADD UNIQUE ([personelid] ASC, [ihaleid] ASC)
GO

-- ----------------------------
-- Indexes structure for table PersonelOzluk
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelOzluk]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzluk] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PersonelOzlukEvrak
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelOzlukEvrak]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzlukEvrak] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[PersonelOzlukEvrak]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzlukEvrak] ADD UNIQUE ([personelID] ASC, [evrakID] ASC)
GO

-- ----------------------------
-- Indexes structure for table PersonelOzlukEvrakResim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PersonelOzlukEvrakResim]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzlukEvrakResim] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Rapor
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Rapor]
-- ----------------------------
ALTER TABLE [dbo].[Rapor] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[Rapor]
-- ----------------------------
ALTER TABLE [dbo].[Rapor] ADD UNIQUE ([baslangic] ASC, [personelid] ASC)
GO

-- ----------------------------
-- Indexes structure for table Rapor_HastalikTip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Rapor_HastalikTip]
-- ----------------------------
ALTER TABLE [dbo].[Rapor_HastalikTip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Rapor_RaporTip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Rapor_RaporTip]
-- ----------------------------
ALTER TABLE [dbo].[Rapor_RaporTip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table ResmiTatil
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ResmiTatil]
-- ----------------------------
ALTER TABLE [dbo].[ResmiTatil] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table SgkDosya
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[SgkDosya]
-- ----------------------------
ALTER TABLE [dbo].[SgkDosya] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Staj_Bolum
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Staj_Bolum]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Bolum] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Staj_Evrak
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Staj_Evrak]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Evrak] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Staj_Ogrenci
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Staj_Ogrenci]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Ogrenci] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Staj_Ogrenci_Evrak
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Staj_Ogrenci_Evrak]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Ogrenci_Evrak] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[Staj_Ogrenci_Evrak]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Ogrenci_Evrak] ADD UNIQUE ([ogrenciid] ASC, [evrakid] ASC)
GO

-- ----------------------------
-- Indexes structure for table Staj_Okul
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Staj_Okul]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Okul] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Tahsil
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Tahsil]
-- ----------------------------
ALTER TABLE [dbo].[Tahsil] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Tahsil_Bolum
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Tahsil_Bolum]
-- ----------------------------
ALTER TABLE [dbo].[Tahsil_Bolum] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Tahsil_Fakulte
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Tahsil_Fakulte]
-- ----------------------------
ALTER TABLE [dbo].[Tahsil_Fakulte] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Tahsil_Okul
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Tahsil_Okul]
-- ----------------------------
ALTER TABLE [dbo].[Tahsil_Okul] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Takip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Takip]
-- ----------------------------
ALTER TABLE [dbo].[Takip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Task
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Task]
-- ----------------------------
ALTER TABLE [dbo].[Task] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Task_Details
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Task_Details]
-- ----------------------------
ALTER TABLE [dbo].[Task_Details] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table vergi_dilim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[vergi_dilim]
-- ----------------------------
ALTER TABLE [dbo].[vergi_dilim] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table vergi_dilim_detay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[vergi_dilim_detay]
-- ----------------------------
ALTER TABLE [dbo].[vergi_dilim_detay] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table Yizin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Yizin]
-- ----------------------------
ALTER TABLE [dbo].[Yizin] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table YizinDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[YizinDetay]
-- ----------------------------
ALTER TABLE [dbo].[YizinDetay] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[YizinDetay]
-- ----------------------------
ALTER TABLE [dbo].[YizinDetay] ADD UNIQUE ([belgesayi] ASC, [tarih] ASC, [baslangic] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Arsiv_Personel]
-- ----------------------------
ALTER TABLE [dbo].[Arsiv_Personel] ADD FOREIGN KEY ([ihaletip]) REFERENCES [dbo].[Arsiv_Ihaletip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Avanslar]
-- ----------------------------
ALTER TABLE [dbo].[Avanslar] ADD FOREIGN KEY ([personelId]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[birim]
-- ----------------------------
ALTER TABLE [dbo].[birim] ADD FOREIGN KEY ([birimAmiri]) REFERENCES [dbo].[Personel] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[GeciciMazeret]
-- ----------------------------
ALTER TABLE [dbo].[GeciciMazeret] ADD FOREIGN KEY ([personelID]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Gorev_Detay]
-- ----------------------------
ALTER TABLE [dbo].[Gorev_Detay] ADD FOREIGN KEY ([parentID]) REFERENCES [dbo].[Gorev_Detay] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Gorev_Detay_Not]
-- ----------------------------
ALTER TABLE [dbo].[Gorev_Detay_Not] ADD FOREIGN KEY ([gorevDetayID]) REFERENCES [dbo].[Gorev_Detay] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Icralar]
-- ----------------------------
ALTER TABLE [dbo].[Icralar] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[IcraOdeme]
-- ----------------------------
ALTER TABLE [dbo].[IcraOdeme] ADD FOREIGN KEY ([icraid]) REFERENCES [dbo].[Icralar] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ImzaTakipDetay]
-- ----------------------------
ALTER TABLE [dbo].[ImzaTakipDetay] ADD FOREIGN KEY ([personelID]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ImzaTakipDetay] ADD FOREIGN KEY ([takipid]) REFERENCES [dbo].[ImzaTakip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[isg_egitim_saat]
-- ----------------------------
ALTER TABLE [dbo].[isg_egitim_saat] ADD FOREIGN KEY ([egitimid]) REFERENCES [dbo].[isg_egitim] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Izin]
-- ----------------------------
ALTER TABLE [dbo].[Izin] ADD FOREIGN KEY ([izintip]) REFERENCES [dbo].[IzinTip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Izin] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Kurul]
-- ----------------------------
ALTER TABLE [dbo].[Kurul] ADD FOREIGN KEY ([gorevtip]) REFERENCES [dbo].[KurulGorevTip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[KurulGorevTip]
-- ----------------------------
ALTER TABLE [dbo].[KurulGorevTip] ADD FOREIGN KEY ([kurultipid]) REFERENCES [dbo].[KurulTip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PDKS_GunGirisCikis]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_GunGirisCikis] ADD FOREIGN KEY ([PersonelGunId]) REFERENCES [dbo].[PDKS_PersonelGun] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PDKS_GunIzin]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_GunIzin] ADD FOREIGN KEY ([PersonelGunId]) REFERENCES [dbo].[PDKS_PersonelGun] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PDKS_PersonelGun]
-- ----------------------------
ALTER TABLE [dbo].[PDKS_PersonelGun] ADD FOREIGN KEY ([PersonelId]) REFERENCES [dbo].[PDKS_PersonelKart] ([personelid]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Personel]
-- ----------------------------
ALTER TABLE [dbo].[Personel] ADD FOREIGN KEY ([birimid]) REFERENCES [dbo].[birim] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Personel] ADD FOREIGN KEY ([kadro]) REFERENCES [dbo].[Kadro] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelDetay]
-- ----------------------------
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([gorev]) REFERENCES [dbo].[Gorev] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([lokasyon]) REFERENCES [dbo].[Lokasyon] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([meslek]) REFERENCES [dbo].[Meslek] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([okudugubolum]) REFERENCES [dbo].[Tahsil_Bolum] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([sgkdosya]) REFERENCES [dbo].[SgkDosya] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelDetay] ADD FOREIGN KEY ([tahsili]) REFERENCES [dbo].[Tahsil] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelDevir]
-- ----------------------------
ALTER TABLE [dbo].[PersonelDevir] ADD FOREIGN KEY ([personelID]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelEtiket]
-- ----------------------------
ALTER TABLE [dbo].[PersonelEtiket] ADD FOREIGN KEY ([etiketID]) REFERENCES [dbo].[EtiketTanim] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelEtiket] ADD FOREIGN KEY ([personelID]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelFirma]
-- ----------------------------
ALTER TABLE [dbo].[PersonelFirma] ADD FOREIGN KEY ([firmaid]) REFERENCES [dbo].[Firma] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelFirma] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelGrup]
-- ----------------------------
ALTER TABLE [dbo].[PersonelGrup] ADD FOREIGN KEY ([grupid]) REFERENCES [dbo].[Grup] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelGrup] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelIhale]
-- ----------------------------
ALTER TABLE [dbo].[PersonelIhale] ADD FOREIGN KEY ([firmaid]) REFERENCES [dbo].[Firma] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelIhaleDonemleri]
-- ----------------------------
ALTER TABLE [dbo].[PersonelIhaleDonemleri] ADD FOREIGN KEY ([ihaleid]) REFERENCES [dbo].[PersonelIhale] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelIhaleDonemleri] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelOzluk]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzluk] ADD FOREIGN KEY ([evrakid]) REFERENCES [dbo].[OzlukEvrak] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelOzluk] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelOzlukEvrak]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzlukEvrak] ADD FOREIGN KEY ([evrakID]) REFERENCES [dbo].[EvrakListe] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PersonelOzlukEvrak] ADD FOREIGN KEY ([personelID]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[PersonelOzlukEvrakResim]
-- ----------------------------
ALTER TABLE [dbo].[PersonelOzlukEvrakResim] ADD FOREIGN KEY ([personelOzlukid]) REFERENCES [dbo].[PersonelOzluk] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Rapor]
-- ----------------------------
ALTER TABLE [dbo].[Rapor] ADD FOREIGN KEY ([hastaliktip]) REFERENCES [dbo].[Rapor_HastalikTip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Rapor] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Rapor] ADD FOREIGN KEY ([raportip]) REFERENCES [dbo].[Rapor_RaporTip] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Staj_Bolum]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Bolum] ADD FOREIGN KEY ([okulid]) REFERENCES [dbo].[Staj_Okul] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Staj_Ogrenci]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Ogrenci] ADD FOREIGN KEY ([bolumid]) REFERENCES [dbo].[Staj_Bolum] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Staj_Ogrenci_Evrak]
-- ----------------------------
ALTER TABLE [dbo].[Staj_Ogrenci_Evrak] ADD FOREIGN KEY ([evrakid]) REFERENCES [dbo].[Staj_Evrak] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Staj_Ogrenci_Evrak] ADD FOREIGN KEY ([ogrenciid]) REFERENCES [dbo].[Staj_Ogrenci] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Tahsil_Bolum]
-- ----------------------------
ALTER TABLE [dbo].[Tahsil_Bolum] ADD FOREIGN KEY ([fakulteid]) REFERENCES [dbo].[Tahsil_Fakulte] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Tahsil_Fakulte]
-- ----------------------------
ALTER TABLE [dbo].[Tahsil_Fakulte] ADD FOREIGN KEY ([okulid]) REFERENCES [dbo].[Tahsil_Okul] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Takip]
-- ----------------------------
ALTER TABLE [dbo].[Takip] ADD FOREIGN KEY ([parentid]) REFERENCES [dbo].[Takip] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Task_Details]
-- ----------------------------
ALTER TABLE [dbo].[Task_Details] ADD FOREIGN KEY ([taskid]) REFERENCES [dbo].[Task] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[vergi_dilim_detay]
-- ----------------------------
ALTER TABLE [dbo].[vergi_dilim_detay] ADD FOREIGN KEY ([dilimId]) REFERENCES [dbo].[vergi_dilim] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Yizin]
-- ----------------------------
ALTER TABLE [dbo].[Yizin] ADD FOREIGN KEY ([personelid]) REFERENCES [dbo].[Personel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[YizinDetay]
-- ----------------------------
ALTER TABLE [dbo].[YizinDetay] ADD FOREIGN KEY ([yizinid]) REFERENCES [dbo].[Yizin] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
