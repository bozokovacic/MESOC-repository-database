-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2023 at 09:07 AM
-- Server version: 5.7.23
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mesoc_repository`
--

-- --------------------------------------------------------

--
-- Table structure for table `analyse`
--

DROP TABLE IF EXISTS `analyse`;
CREATE TABLE IF NOT EXISTS `analyse` (
  `ID_Analyse` int(11) NOT NULL AUTO_INCREMENT,
  `AnalyseName` varchar(250) DEFAULT NULL,
  `AnalyseDescription` varchar(250) NOT NULL,
  `Analysecultdomainview` text,
  `Analysesocimpactview` text,
  `Analyseview` text,
  PRIMARY KEY (`ID_Analyse`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `analyseculturaldomain`
--

DROP TABLE IF EXISTS `analyseculturaldomain`;
CREATE TABLE IF NOT EXISTS `analyseculturaldomain` (
  `ID_Analyse` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CultDomain` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Analyse`,`ID_CultDomain`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `analysedocument`
--

DROP TABLE IF EXISTS `analysedocument`;
CREATE TABLE IF NOT EXISTS `analysedocument` (
  `ID_Analyse` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `KeywordCount` int(11) NOT NULL,
  `AbstractCount` int(11) NOT NULL,
  `Keywordview` text,
  `Abstractview` text,
  PRIMARY KEY (`ID_Analyse`,`ID_Doc`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `analysedocumentkeyword`
--

DROP TABLE IF EXISTS `analysedocumentkeyword`;
CREATE TABLE IF NOT EXISTS `analysedocumentkeyword` (
  `ID_Analyse` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `ID_Keyword` int(11) NOT NULL,
  `KeywordCount` int(11) NOT NULL,
  `AbstractCount` int(11) NOT NULL,
  `Keywordview` varchar(250) DEFAULT NULL,
  `Abstractview` text,
  PRIMARY KEY (`ID_Analyse`,`ID_Doc`,`ID_Keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `analysekeyword`
--

DROP TABLE IF EXISTS `analysekeyword`;
CREATE TABLE IF NOT EXISTS `analysekeyword` (
  `ID_Analyse` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Keyword` int(11) NOT NULL,
  PRIMARY KEY (`ID_Analyse`,`ID_Keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `analysesocialimpact`
--

DROP TABLE IF EXISTS `analysesocialimpact`;
CREATE TABLE IF NOT EXISTS `analysesocialimpact` (
  `ID_Analyse` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SocImpact` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Analyse`,`ID_SocImpact`)
) ENGINE=InnoDB AUTO_INCREMENT=1184 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `ID_Author` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `MiddleNameInitial` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Author`)
) ENGINE=InnoDB AUTO_INCREMENT=2309 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
CREATE TABLE IF NOT EXISTS `beneficiary` (
  `ID_Beneficiary` int(11) NOT NULL AUTO_INCREMENT,
  `BeneficiaryName` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Beneficiary`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ID_Category` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) NOT NULL,
  `CategoryDescription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `celldoclocation`
--

DROP TABLE IF EXISTS `celldoclocation`;
CREATE TABLE IF NOT EXISTS `celldoclocation` (
  `ID_export` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Cell` int(11) NOT NULL,
  `ID_Column` int(11) NOT NULL,
  `ID_Row` int(11) NOT NULL,
  `ID_Doc` int(11) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `Transitionvar` varchar(2000) DEFAULT NULL,
  `Keywordtv` varchar(2000) DEFAULT NULL,
  `Value` float NOT NULL,
  `Num_keyword` int(11) NOT NULL,
  `Locations` varchar(10000) DEFAULT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`ID_export`)
) ENGINE=MyISAM AUTO_INCREMENT=921 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `ID_City` int(11) NOT NULL AUTO_INCREMENT,
  `CityCode` varchar(20) DEFAULT NULL,
  `CityName` varchar(100) NOT NULL,
  `ID_Country` int(11) NOT NULL,
  `CityTeritCon` varchar(50) DEFAULT NULL,
  `LATITUDE` float DEFAULT NULL,
  `LONGITUDE` float DEFAULT NULL,
  PRIMARY KEY (`ID_City`)
) ENGINE=MyISAM AUTO_INCREMENT=1070 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--


-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `ID_Country` int(11) NOT NULL AUTO_INCREMENT,
  `CountryCode` varchar(20) DEFAULT NULL,
  `CountryName` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Country`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `culturaldomain`
--

DROP TABLE IF EXISTS `culturaldomain`;
CREATE TABLE IF NOT EXISTS `culturaldomain` (
  `ID_CultDomain` int(11) NOT NULL AUTO_INCREMENT,
  `CultDomainName` varchar(250) NOT NULL,
  `CultDomainDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_CultDomain`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dataprov`
--

DROP TABLE IF EXISTS `dataprov`;
CREATE TABLE IF NOT EXISTS `dataprov` (
  `ID_DataProv` int(11) NOT NULL AUTO_INCREMENT,
  `DataProvName` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_DataProv`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

DROP TABLE IF EXISTS `doc`;
CREATE TABLE IF NOT EXISTS `doc` (
  `ID_Doc` int(11) NOT NULL AUTO_INCREMENT,
  `PubYear` year(4) DEFAULT NULL,
  `Title` varchar(500) NOT NULL,
  `BiblioRef` text,
  `Links` varchar(500) DEFAULT NULL,
  `NumPages` int(11) DEFAULT NULL,
  `Summary` varchar(10000) DEFAULT NULL,
  `PeriodFrom` text,
  `Methodology` text,
  `DataProviders` varchar(1000) DEFAULT NULL,
  `FindingsOutcomes` text,
  `Keywords` varchar(500) DEFAULT NULL,
  `AnalytLimitations` text,
  `OpenAccess` varchar(10) DEFAULT NULL,
  `Scope` varchar(50) DEFAULT NULL,
  `Relevance` text,
  `ID_Original` int(11) DEFAULT NULL,
  `ID_Type` int(11) NOT NULL,
  `ID_Language` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file` longblob,
  `docview` text,
  `documentcultdomainview` text,
  `documentsocimpactview` text,
  `ID_Template` int(11) DEFAULT NULL,
  `CountryPub` text,
  `transitionvar` varchar(2000) DEFAULT NULL,
  `keywordtv` varchar(2000) CHARACTER SET utf16 DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `DOI` text,
  `Author` varchar(1000) DEFAULT NULL,
  `Institution` varchar(1000) DEFAULT NULL,
  `Technique` varchar(1000) DEFAULT NULL,
  `Searchdatabase` varchar(1000) DEFAULT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `ID_Role` int(11) DEFAULT NULL,
  `ID_Partner` int(11) DEFAULT NULL,
  `ID_Category` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Doc`),
  KEY `FK_DOC_DOC` (`ID_Original`),
  KEY `FK_DOC_TYPE` (`ID_Type`),
  KEY `FK_DOC_LANGUAGE` (`ID_Language`)
) ENGINE=InnoDB AUTO_INCREMENT=972 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docauthor`
--

DROP TABLE IF EXISTS `docauthor`;
CREATE TABLE IF NOT EXISTS `docauthor` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Author` int(11) NOT NULL,
  `ID_Institution` int(11) DEFAULT NULL,
  `ID_Country` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Author`),
  KEY `FK_DOCAUTH_AUTHOR` (`ID_Author`),
  KEY `FK_DOCAUTH_INST` (`ID_Institution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docbeneficiary`
--

DROP TABLE IF EXISTS `docbeneficiary`;
CREATE TABLE IF NOT EXISTS `docbeneficiary` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Beneficiary` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Beneficiary`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doccity`
--

DROP TABLE IF EXISTS `doccity`;
CREATE TABLE IF NOT EXISTS `doccity` (
  `ID_Doc` int(11) NOT NULL,
  `ID_City` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_City`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doccountry`
--

DROP TABLE IF EXISTS `doccountry`;
CREATE TABLE IF NOT EXISTS `doccountry` (
  `ID_Research` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `ID_Country` int(11) NOT NULL,
  `ID_Region` int(11) NOT NULL,
  `ID_City` int(11) NOT NULL,
  `TeritCon` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Research`)
) ENGINE=MyISAM AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docdataprov`
--

DROP TABLE IF EXISTS `docdataprov`;
CREATE TABLE IF NOT EXISTS `docdataprov` (
  `ID_Doc` int(11) NOT NULL,
  `ID_DataProv` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_DataProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docinstitution`
--

DROP TABLE IF EXISTS `docinstitution`;
CREATE TABLE IF NOT EXISTS `docinstitution` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Institution` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Institution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `docinstitution`
--



-- --------------------------------------------------------

--
-- Table structure for table `dockeyword`
--

DROP TABLE IF EXISTS `dockeyword`;
CREATE TABLE IF NOT EXISTS `dockeyword` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Keyword` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doclist`
--

DROP TABLE IF EXISTS `doclist`;
CREATE TABLE IF NOT EXISTS `doclist` (
  `ID_Doclist` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `Domains` varchar(100) NOT NULL,
  `Sectors` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`ID_Doclist`)
) ENGINE=MyISAM AUTO_INCREMENT=21783 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doclitarea`
--

DROP TABLE IF EXISTS `doclitarea`;
CREATE TABLE IF NOT EXISTS `doclitarea` (
  `ID_Doc` int(11) NOT NULL,
  `ID_LitArea` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_LitArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docrelevance`
--

DROP TABLE IF EXISTS `docrelevance`;
CREATE TABLE IF NOT EXISTS `docrelevance` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Relevance` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Relevance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docsearchdatabase`
--

DROP TABLE IF EXISTS `docsearchdatabase`;
CREATE TABLE IF NOT EXISTS `docsearchdatabase` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Database` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Database`),
  KEY `FK_DOCAUTH_INST` (`ID_Database`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docsector`
--

DROP TABLE IF EXISTS `docsector`;
CREATE TABLE IF NOT EXISTS `docsector` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Sector` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Sector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docstatistic`
--

DROP TABLE IF EXISTS `docstatistic`;
CREATE TABLE IF NOT EXISTS `docstatistic` (
  `ID_Docstatistic` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `ID_CultDomain` int(11) NOT NULL,
  `Domains` varchar(100) NOT NULL,
  `ID_SocImpact` int(11) NOT NULL,
  `Sectors` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `ID_Category` int(11) NOT NULL,
  PRIMARY KEY (`ID_Docstatistic`)
) ENGINE=MyISAM AUTO_INCREMENT=2562 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctechnique`
--

DROP TABLE IF EXISTS `doctechnique`;
CREATE TABLE IF NOT EXISTS `doctechnique` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Technique` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Technique`),
  KEY `FK_DOCTECHNIQUE` (`ID_Technique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctransitionvar`
--

DROP TABLE IF EXISTS `doctransitionvar`;
CREATE TABLE IF NOT EXISTS `doctransitionvar` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Transvar` int(11) NOT NULL,
  `ID_SocImpact` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Transvar`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctransitionvar_old`
--

DROP TABLE IF EXISTS `doctransitionvar_old`;
CREATE TABLE IF NOT EXISTS `doctransitionvar_old` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Transvar` int(11) NOT NULL,
  `Strength` float DEFAULT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Transvar`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `ID_Doc` int(11) NOT NULL AUTO_INCREMENT,
  `PubYear` year(4) DEFAULT NULL,
  `Title` varchar(500) NOT NULL,
  `BiblioRef` text,
  `Links` varchar(500) DEFAULT NULL,
  `NumPages` int(11) DEFAULT NULL,
  `Summary` varchar(9000) DEFAULT NULL,
  `PeriodFrom` text,
  `Methodology` text,
  `DataProviders` varchar(1000) DEFAULT NULL,
  `FindingsOutcomes` text,
  `Keywords` varchar(1000) DEFAULT NULL,
  `AnalytLimitations` text,
  `OpenAccess` varchar(10) DEFAULT NULL,
  `Scope` varchar(50) DEFAULT NULL,
  `Relevance` text,
  `ID_Original` int(11) DEFAULT NULL,
  `ID_Type` int(11) NOT NULL,
  `ID_Language` int(11) NOT NULL,
  `ID_Category` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file` longblob,
  `docview` text,
  `documentcultdomainview` text,
  `documentsocimpactview` text,
  `ID_Template` int(11) DEFAULT NULL,
  `ID_Proposal` int(11) DEFAULT NULL,
  `CountryPub` text,
  `transitionvar` varchar(2000) DEFAULT NULL,
  `keywordtv` varchar(2000) CHARACTER SET utf16 DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `DOI` text,
  `Author` varchar(1000) DEFAULT NULL,
  `Institution` varchar(1000) DEFAULT NULL,
  `Technique` varchar(1000) DEFAULT NULL,
  `Searchdatabase` varchar(1000) DEFAULT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `ID_Role` int(11) DEFAULT NULL,
  `ID_Partner` int(11) DEFAULT NULL,
  `Targetgroup` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Doc`),
  KEY `FK_DOC_DOC` (`ID_Original`),
  KEY `FK_DOC_TYPE` (`ID_Type`),
  KEY `FK_DOC_LANGUAGE` (`ID_Language`)
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentculturaldomain`
--

DROP TABLE IF EXISTS `documentculturaldomain`;
CREATE TABLE IF NOT EXISTS `documentculturaldomain` (
  `ID_Doc` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CultDomain` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_CultDomain`)
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentextented`
--

DROP TABLE IF EXISTS `documentextented`;
CREATE TABLE IF NOT EXISTS `documentextented` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `transitionvar` varchar(6000) DEFAULT NULL,
  `keywordtv` varchar(10000) CHARACTER SET utf16 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2968 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentsocialimpact`
--

DROP TABLE IF EXISTS `documentsocialimpact`;
CREATE TABLE IF NOT EXISTS `documentsocialimpact` (
  `ID_Doc` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SocImpact` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_SocImpact`)
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentstatisticlist`
--

DROP TABLE IF EXISTS `documentstatisticlist`;
CREATE TABLE IF NOT EXISTS `documentstatisticlist` (
  `ID_Docstatistic` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  PRIMARY KEY (`ID_Docstatistic`)
) ENGINE=MyISAM AUTO_INCREMENT=13891 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentwaitingroom`
--

DROP TABLE IF EXISTS `documentwaitingroom`;
CREATE TABLE IF NOT EXISTS `documentwaitingroom` (
  `ID_Doc` int(11) NOT NULL AUTO_INCREMENT,
  `PubYear` year(4) DEFAULT NULL,
  `Title` varchar(500) NOT NULL,
  `BiblioRef` text,
  `Links` varchar(500) DEFAULT NULL,
  `NumPages` int(11) DEFAULT NULL,
  `Summary` varchar(9000) DEFAULT NULL,
  `PeriodFrom` text,
  `Methodology` text,
  `DataProviders` varchar(1000) DEFAULT NULL,
  `FindingsOutcomes` text,
  `Keywords` varchar(1000) DEFAULT NULL,
  `AnalytLimitations` text,
  `OpenAccess` varchar(10) DEFAULT NULL,
  `Scope` varchar(50) DEFAULT NULL,
  `Relevance` text,
  `ID_Original` int(11) DEFAULT NULL,
  `ID_Type` int(11) DEFAULT NULL,
  `ID_Language` int(11) NOT NULL,
  `ID_Category` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file` longblob,
  `docview` text,
  `documentcultdomainview` text,
  `documentsocimpactview` text,
  `ID_Template` int(11) DEFAULT NULL,
  `CountryPub` text,
  `socimpacts` varchar(100) DEFAULT NULL,
  `culturaldomains` varchar(125) DEFAULT NULL,
  `transitionvar` varchar(2000) DEFAULT NULL,
  `keywordtv` varchar(2000) CHARACTER SET utf16 DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `DOI` text,
  `Author` varchar(1000) DEFAULT NULL,
  `Institution` varchar(1000) DEFAULT NULL,
  `Technique` varchar(1000) DEFAULT NULL,
  `Searchdatabase` varchar(1000) DEFAULT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `ID_Role` int(11) DEFAULT NULL,
  `ID_Partner` int(11) DEFAULT NULL,
  `checked` int(11) NOT NULL DEFAULT '0',
  `downloadlink` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Doc`),
  KEY `FK_DOC_DOC` (`ID_Original`),
  KEY `FK_DOC_TYPE` (`ID_Type`),
  KEY `FK_DOC_LANGUAGE` (`ID_Language`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentwaitingroomculturaldomain`
--

DROP TABLE IF EXISTS `documentwaitingroomculturaldomain`;
CREATE TABLE IF NOT EXISTS `documentwaitingroomculturaldomain` (
  `ID_Doc` int(11) NOT NULL,
  `ID_CultDomain` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_CultDomain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentwaitingroomsocialimpact`
--

DROP TABLE IF EXISTS `documentwaitingroomsocialimpact`;
CREATE TABLE IF NOT EXISTS `documentwaitingroomsocialimpact` (
  `ID_Doc` int(11) NOT NULL,
  `ID_SocImpact` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_SocImpact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docupload`
--

DROP TABLE IF EXISTS `docupload`;
CREATE TABLE IF NOT EXISTS `docupload` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Upload` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Upload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_country`
--

DROP TABLE IF EXISTS `doc_country`;
CREATE TABLE IF NOT EXISTS `doc_country` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Country` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Country`),
  KEY `FK_DOCCOUNT_COUNTRY` (`ID_Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_country_city`
--

DROP TABLE IF EXISTS `doc_country_city`;
CREATE TABLE IF NOT EXISTS `doc_country_city` (
  `CityItem` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Doc` int(11) NOT NULL,
  `ID_Country` int(11) NOT NULL,
  `ID_City` int(11) DEFAULT NULL,
  PRIMARY KEY (`CityItem`,`ID_Doc`,`ID_Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `importeddocument`
--

DROP TABLE IF EXISTS `importeddocument`;
CREATE TABLE IF NOT EXISTS `importeddocument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `ID_Document` int(11) DEFAULT NULL,
  `ID_Waitingroom` int(11) DEFAULT NULL,
  `file` varchar(4096) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UUID_INDEX` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `ID_Institution` int(11) NOT NULL AUTO_INCREMENT,
  `InstName` varchar(1000) NOT NULL,
  `InstAdress` varchar(250) DEFAULT NULL,
  `ID_Country` int(11) NOT NULL,
  PRIMARY KEY (`ID_Institution`),
  KEY `FK_INSTITUTION_COUNTRY` (`ID_Country`)
) ENGINE=InnoDB AUTO_INCREMENT=1840 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
CREATE TABLE IF NOT EXISTS `keyword` (
  `ID_Keyword` int(11) NOT NULL AUTO_INCREMENT,
  `KeywordName` varchar(250) NOT NULL,
  `KeywordDescription` varchar(255) NOT NULL,
  `Keywordcultdomainview` text,
  `Cultdomainview` text,
  `Keywordsocimpactview` text,
  `Socimpactview` text,
  PRIMARY KEY (`ID_Keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=2308 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keywordculturaldomain`
--

DROP TABLE IF EXISTS `keywordculturaldomain`;
CREATE TABLE IF NOT EXISTS `keywordculturaldomain` (
  `ID_Keyword` int(11) NOT NULL,
  `ID_CultDomain` int(11) NOT NULL,
  PRIMARY KEY (`ID_Keyword`,`ID_CultDomain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keywordsocialimpact`
--

DROP TABLE IF EXISTS `keywordsocialimpact`;
CREATE TABLE IF NOT EXISTS `keywordsocialimpact` (
  `ID_Keyword` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SocImpact` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Keyword`,`ID_SocImpact`)
) ENGINE=InnoDB AUTO_INCREMENT=2615 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keywordsocialimpact`
--


-- --------------------------------------------------------

--
-- Table structure for table `keywordtv`
--

DROP TABLE IF EXISTS `keywordtv`;
CREATE TABLE IF NOT EXISTS `keywordtv` (
  `ID_Keywordtv` int(11) NOT NULL AUTO_INCREMENT,
  `KeywordtvName` varchar(500) NOT NULL,
  `KeywordtvDescription` varchar(255) DEFAULT NULL,
  `Keywordtvcultdomainview` text,
  `Cultdomainview` text,
  `Keywordtvsocimpactview` text,
  `Socimpactview` text,
  PRIMARY KEY (`ID_Keywordtv`)
) ENGINE=MyISAM AUTO_INCREMENT=2228 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keywordtvculturaldomain`
--

DROP TABLE IF EXISTS `keywordtvculturaldomain`;
CREATE TABLE IF NOT EXISTS `keywordtvculturaldomain` (
  `ID_Keywordtv` int(11) NOT NULL,
  `ID_CultDomain` int(11) NOT NULL,
  PRIMARY KEY (`ID_Keywordtv`,`ID_CultDomain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keywordtvsocialimpact`
--

DROP TABLE IF EXISTS `keywordtvsocialimpact`;
CREATE TABLE IF NOT EXISTS `keywordtvsocialimpact` (
  `ID_Keywordtv` int(11) NOT NULL,
  `ID_SocImpact` int(11) NOT NULL,
  PRIMARY KEY (`ID_Keywordtv`,`ID_SocImpact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `ID_Language` int(11) NOT NULL AUTO_INCREMENT,
  `Language` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Language`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `litarea`
--

DROP TABLE IF EXISTS `litarea`;
CREATE TABLE IF NOT EXISTS `litarea` (
  `ID_LitArea` int(11) NOT NULL AUTO_INCREMENT,
  `LiteratureArea` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_LitArea`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
CREATE TABLE IF NOT EXISTS `organisation` (
  `ID_Organisation` int(11) NOT NULL AUTO_INCREMENT,
  `OrgName` varchar(1000) NOT NULL,
  `OrgAdress` varchar(250) DEFAULT NULL,
  `ID_City` int(11) NOT NULL,
  `ID_Country` int(11) NOT NULL,
  PRIMARY KEY (`ID_Organisation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
CREATE TABLE IF NOT EXISTS `partner` (
  `ID_Partner` int(11) NOT NULL AUTO_INCREMENT,
  `PartnerNumber` int(11) NOT NULL,
  `PartnerName` varchar(250) DEFAULT NULL,
  `PartnerAcr` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_Partner`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pregleddoc`
--

DROP TABLE IF EXISTS `pregleddoc`;
CREATE TABLE IF NOT EXISTS `pregleddoc` (
  `ID_Doc` int(11) NOT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Keywords` varchar(500) NOT NULL,
  `PubYear` year(4) NOT NULL,
  `ID_Type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `ID_Region` int(11) NOT NULL AUTO_INCREMENT,
  `RegionName` varchar(250) DEFAULT NULL,
  `RegionTeritCon` varchar(50) NOT NULL,
  `NUTSType` varchar(10) DEFAULT NULL,
  `ID_Country` int(11) NOT NULL,
  PRIMARY KEY (`ID_Region`)
) ENGINE=InnoDB AUTO_INCREMENT=1159 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relevance`
--

DROP TABLE IF EXISTS `relevance`;
CREATE TABLE IF NOT EXISTS `relevance` (
  `ID_Relevance` int(11) NOT NULL AUTO_INCREMENT,
  `Relevance` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Relevance`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `ID_Role` int(11) NOT NULL AUTO_INCREMENT,
  `RoleNumber` int(11) NOT NULL,
  `RoleName` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_Role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `searchdatabase`
--

DROP TABLE IF EXISTS `searchdatabase`;
CREATE TABLE IF NOT EXISTS `searchdatabase` (
  `ID_Database` int(11) NOT NULL AUTO_INCREMENT,
  `SearchDatabase` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Database`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
CREATE TABLE IF NOT EXISTS `sector` (
  `ID_Sector` int(11) NOT NULL AUTO_INCREMENT,
  `SectorName` varchar(250) NOT NULL,
  PRIMARY KEY (`ID_Sector`),
  KEY `ID_Sector` (`ID_Sector`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socialimpact`
--

DROP TABLE IF EXISTS `socialimpact`;
CREATE TABLE IF NOT EXISTS `socialimpact` (
  `ID_SocImpact` int(11) NOT NULL AUTO_INCREMENT,
  `SocImpactName` varchar(250) NOT NULL,
  `SocImpactDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_SocImpact`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

DROP TABLE IF EXISTS `statistic`;
CREATE TABLE IF NOT EXISTS `statistic` (
  `ID_Statistic` int(11) NOT NULL AUTO_INCREMENT,
  `Row` int(11) NOT NULL,
  `ID_Domain` int(11) NOT NULL,
  `CultDomainName` varchar(250) DEFAULT NULL,
  `Sector1` int(11) NOT NULL,
  `Sector2` int(11) NOT NULL,
  `Sector3` int(11) NOT NULL,
  `General` int(11) NOT NULL,
  `Cells` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `CultDomains` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Statistic`)
) ENGINE=InnoDB AUTO_INCREMENT=1248 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statisticyear`
--

DROP TABLE IF EXISTS `statisticyear`;
CREATE TABLE IF NOT EXISTS `statisticyear` (
  `ID_Statisticyear` int(11) NOT NULL AUTO_INCREMENT,
  `Year` year(4) DEFAULT NULL,
  `ID_CultDomain` int(11) DEFAULT NULL,
  `Yeardomain` int(11) DEFAULT NULL,
  `ID_SocImpact` int(11) DEFAULT NULL,
  `Yearsector` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Statisticyear`)
) ENGINE=MyISAM AUTO_INCREMENT=4887 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statisticyeardomainrec`
--

DROP TABLE IF EXISTS `statisticyeardomainrec`;
CREATE TABLE IF NOT EXISTS `statisticyeardomainrec` (
  `ID_Statisticyeardomain` int(11) NOT NULL AUTO_INCREMENT,
  `Year` int(11) NOT NULL,
  `Domain1` int(11) DEFAULT NULL,
  `Domain2` int(11) DEFAULT NULL,
  `Domain3` int(11) DEFAULT NULL,
  `Domain4` int(11) DEFAULT NULL,
  `Domain5` int(11) DEFAULT NULL,
  `Domain6` int(11) DEFAULT NULL,
  `Domain7` int(11) DEFAULT NULL,
  `Domain8` int(11) DEFAULT NULL,
  `Domain9` int(11) DEFAULT NULL,
  `Domain10` int(11) DEFAULT NULL,
  `Domain11` int(11) DEFAULT NULL,
  `Cells` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`ID_Statisticyeardomain`)
) ENGINE=InnoDB AUTO_INCREMENT=1638 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statisticyearsectorrec`
--

DROP TABLE IF EXISTS `statisticyearsectorrec`;
CREATE TABLE IF NOT EXISTS `statisticyearsectorrec` (
  `ID_Statisticyearsector` int(11) NOT NULL AUTO_INCREMENT,
  `Year` int(11) NOT NULL,
  `Sector1` int(11) DEFAULT NULL,
  `Sector2` int(11) DEFAULT NULL,
  `Sector3` int(11) DEFAULT NULL,
  `Sector4` int(11) DEFAULT NULL,
  `Cells` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`ID_Statisticyearsector`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `technique`
--

DROP TABLE IF EXISTS `technique`;
CREATE TABLE IF NOT EXISTS `technique` (
  `ID_Technique` int(11) NOT NULL AUTO_INCREMENT,
  `TechniqueName` text NOT NULL,
  PRIMARY KEY (`ID_Technique`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE IF NOT EXISTS `template` (
  `ID_Proposal` int(11) NOT NULL AUTO_INCREMENT,
  `ID_User` int(11) NOT NULL,
  `ID_Role` int(11) NOT NULL,
  `ID_Partner` int(11) NOT NULL,
  `PubYear` year(4) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `BiblioRef` text,
  `Links` varchar(250) DEFAULT NULL,
  `CountryPub` text,
  `Summary` varchar(5000) NOT NULL,
  `Keywords` varchar(250) NOT NULL,
  `OpenAccess` varchar(10) NOT NULL,
  `ID_Language` int(11) NOT NULL,
  `transitionvar` varchar(2000) DEFAULT NULL,
  `ID_Doc` int(11) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Checked` int(11) NOT NULL DEFAULT '0',
  `Templateview` text,
  `Templatecultdomain` text,
  `Templatesocimpact` text,
  `PeriodFrom` text,
  `FindingsOutcomes` text,
  `NumPages` int(11) NOT NULL,
  `Relevance` text,
  `ID_Type` int(11) NOT NULL,
  `ID_Category` int(11) NOT NULL,
  `keywordtv` varchar(2000) DEFAULT NULL,
  `Author` varchar(1000) DEFAULT NULL,
  `Institution` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID_Proposal`),
  KEY `FK_TEMPLATE_LANGUAGE` (`ID_Language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templateculturaldomain`
--

DROP TABLE IF EXISTS `templateculturaldomain`;
CREATE TABLE IF NOT EXISTS `templateculturaldomain` (
  `ID_Proposal` int(11) NOT NULL,
  `ID_CultDomain` int(11) NOT NULL,
  PRIMARY KEY (`ID_Proposal`,`ID_CultDomain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatekeyword`
--

DROP TABLE IF EXISTS `templatekeyword`;
CREATE TABLE IF NOT EXISTS `templatekeyword` (
  `ID_Proposal` int(11) NOT NULL,
  `ID_ProposalKeyword` int(11) NOT NULL,
  `Keyword` varchar(250) DEFAULT NULL,
  `ID_Keyword` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Proposal`,`ID_ProposalKeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatesocialimpact`
--

DROP TABLE IF EXISTS `templatesocialimpact`;
CREATE TABLE IF NOT EXISTS `templatesocialimpact` (
  `ID_Proposal` int(11) NOT NULL,
  `ID_SocImpact` int(11) NOT NULL,
  PRIMARY KEY (`ID_Proposal`,`ID_SocImpact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templatesocialimpact`
--


-- --------------------------------------------------------

--
-- Table structure for table `teritcon`
--

DROP TABLE IF EXISTS `teritcon`;
CREATE TABLE IF NOT EXISTS `teritcon` (
  `ID_TeritCon` int(11) NOT NULL AUTO_INCREMENT,
  `TeritCon` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_TeritCon`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
CREATE TABLE IF NOT EXISTS `test1` (
  `ID_Region` int(11) NOT NULL AUTO_INCREMENT,
  `RegionName` text,
  `RegionTeritCon` varchar(10) NOT NULL,
  `NUTSType` varchar(10) DEFAULT NULL,
  `ID_Country` int(11) NOT NULL,
  PRIMARY KEY (`ID_Region`)
) ENGINE=InnoDB AUTO_INCREMENT=4134 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
CREATE TABLE IF NOT EXISTS `test2` (
  `ID_Country` int(11) NOT NULL AUTO_INCREMENT,
  `CountryCode` varchar(20) DEFAULT NULL,
  `CountryName` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Country`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transitionvar`
--

DROP TABLE IF EXISTS `transitionvar`;
CREATE TABLE IF NOT EXISTS `transitionvar` (
  `ID_Transvar` int(11) NOT NULL AUTO_INCREMENT,
  `TransvarName` varchar(2000) NOT NULL,
  `TransvarDescription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Transvar`),
  KEY `ID_Transvar` (`ID_Transvar`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transitionvarculturaldomain`
--

DROP TABLE IF EXISTS `transitionvarculturaldomain`;
CREATE TABLE IF NOT EXISTS `transitionvarculturaldomain` (
  `ID_Transvar` int(11) NOT NULL,
  `ID_CultDomain` int(11) NOT NULL,
  PRIMARY KEY (`ID_Transvar`,`ID_CultDomain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transitionvarkeywordtv`
--

DROP TABLE IF EXISTS `transitionvarkeywordtv`;
CREATE TABLE IF NOT EXISTS `transitionvarkeywordtv` (
  `ID_Doc` int(11) NOT NULL,
  `ID_Transvar` int(11) NOT NULL,
  `ID_Keywordtv` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doc`,`ID_Transvar`,`ID_Keywordtv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transitionvarkeywordtv`
--


-- --------------------------------------------------------

--
-- Table structure for table `transitionvarsocialimpact`
--

DROP TABLE IF EXISTS `transitionvarsocialimpact`;
CREATE TABLE IF NOT EXISTS `transitionvarsocialimpact` (
  `ID_Transvar` int(11) NOT NULL,
  `ID_SocImpact` int(11) NOT NULL,
  PRIMARY KEY (`ID_Transvar`,`ID_SocImpact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `ID_Type` int(11) NOT NULL AUTO_INCREMENT,
  `DocType` varchar(100) NOT NULL,
  `Category` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Type`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typecategory`
--

DROP TABLE IF EXISTS `typecategory`;
CREATE TABLE IF NOT EXISTS `typecategory` (
  `ID_Type` int(11) NOT NULL,
  `ID_Category` int(11) NOT NULL,
  `DocType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Type`,`ID_Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
CREATE TABLE IF NOT EXISTS `upload` (
  `ID_Upload` int(11) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(100) NOT NULL,
  `UserFileName` varchar(100) DEFAULT NULL,
  `FileSize` decimal(11,0) NOT NULL,
  `FileSizeKB` int(11) DEFAULT NULL,
  `FileType` varchar(10) NOT NULL,
  `Download` varchar(10) NOT NULL,
  `ID_User` int(11) NOT NULL,
  `ID_Doc` int(11) NOT NULL,
  `link` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`ID_Upload`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploadtest`
--

DROP TABLE IF EXISTS `uploadtest`;
CREATE TABLE IF NOT EXISTS `uploadtest` (
  `ID_Upload` int(11) NOT NULL,
  `FileName` varchar(500) NOT NULL,
  `UserFileName` varchar(500) DEFAULT NULL,
  `FileSize` decimal(11,0) NOT NULL,
  `FileType` varchar(10) NOT NULL,
  `Download` varchar(10) NOT NULL,
  `ID_User` int(11) NOT NULL,
  `ID_Doc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Role` int(11) NOT NULL,
  `ID_Partner` int(11) NOT NULL,
  `ID_Organisation` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
