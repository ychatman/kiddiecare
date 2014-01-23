-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2011 at 04:38 PM
-- Server version: 5.0.92
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kiddieca_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `kc_ap_logtablevendor`
--

CREATE TABLE IF NOT EXISTS `kc_ap_logtablevendor` (
  `logtablevendorid` int(11) NOT NULL auto_increment,
  `vendorid` int(11) NOT NULL,
  `commentdate` datetime NOT NULL,
  `originaldate` datetime NOT NULL,
  `logsheettid` int(11) NOT NULL,
  `isrestricted` tinyint(1) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  PRIMARY KEY  (`logtablevendorid`),
  KEY `ix_logtablevendor` (`vendorid`),
  KEY `fk_ap_logtablevendor_g_typestable` (`logsheettid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_account`
--

CREATE TABLE IF NOT EXISTS `kc_ar_account` (
  `accountid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `accountkey` varchar(8) NOT NULL,
  `ishidden` tinyint(1) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `alert` varchar(50) NOT NULL,
  PRIMARY KEY  (`accountid`),
  KEY `idx_schoolid` (`schoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_accountchildrel`
--

CREATE TABLE IF NOT EXISTS `kc_ar_accountchildrel` (
  `accountchildrelid` int(11) NOT NULL auto_increment,
  `accountid` int(11) NOT NULL,
  `childschoolid` int(11) NOT NULL,
  PRIMARY KEY  (`accountchildrelid`),
  UNIQUE KEY `ix_ar_accountchildrel` (`accountid`,`childschoolid`),
  KEY `fk_ar_accountchildrel_ar_childschool` (`childschoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_accountdocument`
--

CREATE TABLE IF NOT EXISTS `kc_ar_accountdocument` (
  `accountdocumentid` int(11) NOT NULL auto_increment,
  `accountid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `documentdescription` varchar(50) NOT NULL,
  `accountdocument` longblob NOT NULL,
  PRIMARY KEY  (`accountdocumentid`),
  KEY `fk_ar_accountdocument_ar_account` (`accountid`),
  KEY `fk_ar_accountdocument_g_kiddiecareuser` (`kiddiecareuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_accountledger`
--

CREATE TABLE IF NOT EXISTS `kc_ar_accountledger` (
  `accountledgerid` int(11) NOT NULL auto_increment,
  `accountledgerrelid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `postdate` datetime NOT NULL,
  `chargecreditdescid` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `creationdate` datetime NOT NULL,
  `voidstatusid` int(11) NOT NULL,
  `accountvoidid` int(11) NOT NULL,
  `depositreportid` int(11) NOT NULL default '-1',
  `transactionreportid` int(11) NOT NULL default '-1',
  `automaticbillingbatchid` int(11) NOT NULL default '-1',
  `islocked` tinyint(1) NOT NULL,
  `ledgerlocktid` int(11) NOT NULL,
  PRIMARY KEY  (`accountledgerid`),
  KEY `_dta_index_ar_accountledger_26_1652252991__k2_k1_k5_k9_7_4864` (`accountledgerrelid`,`accountledgerid`,`chargecreditdescid`,`voidstatusid`),
  KEY `ix_accountledger_voidandpostdate` (`voidstatusid`,`postdate`),
  KEY `ix_ar_accountledger_accountledgerid_accountledgerrelid_chargecre` (`accountledgerid`,`accountledgerrelid`,`chargecreditdescid`),
  KEY `ix_ar_accountledger_accountledgerid_chargecreditdescid` (`accountledgerid`,`chargecreditdescid`),
  KEY `ix_ar_accountledger_accountledgerrel_chargecreditdesc_voidstatus` (`chargecreditdescid`,`accountledgerrelid`,`voidstatusid`),
  KEY `ix_ar_accountledger_accountledgerrelid` (`accountledgerrelid`),
  KEY `ix_ar_accountledger_automaticbillingbatch_chargecreditdesc` (`automaticbillingbatchid`,`chargecreditdescid`),
  KEY `ix_ar_accountledger_depositreport` (`accountledgerid`,`depositreportid`,`accountvoidid`),
  KEY `ix_ar_accountledger_depositreport2` (`accountvoidid`,`accountledgerrelid`,`chargecreditdescid`),
  KEY `ix_ar_accountledger_depositreport3` (`depositreportid`,`accountvoidid`,`accountledgerrelid`,`chargecreditdescid`,`accountledgerid`),
  KEY `ix_ar_accountledger_postdate` (`postdate`),
  KEY `fk_ar_accountledger_ar_transactionreport` (`transactionreportid`),
  KEY `fk_ar_accountledger_g_kiddiecareuser` (`kiddiecareuserid`),
  KEY `fk_ar_accountledger_g_typestable` (`ledgerlocktid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_accountledgeraudit`
--

CREATE TABLE IF NOT EXISTS `kc_ar_accountledgeraudit` (
  `accountledgerauditid` int(11) NOT NULL auto_increment,
  `accountledgerrelid` int(11) NOT NULL,
  `accountledgerid` int(11) NOT NULL,
  `postedbyid` int(11) NOT NULL,
  `postdate` datetime NOT NULL,
  `chargecreditdescid` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `voidstatusid` int(11) NOT NULL,
  `changedate` datetime NOT NULL,
  `changebyid` int(11) NOT NULL,
  PRIMARY KEY  (`accountledgerauditid`),
  KEY `ix_ar_accountledgerid` (`accountledgerid`),
  KEY `ix_ar_accountledgerrelid` (`accountledgerrelid`),
  KEY `fk_ar_accountledgeraudit_ar_chargecreditdesc` (`chargecreditdescid`),
  KEY `fk_ar_accountledgeraudit_g_kiddiecareuser1` (`postedbyid`),
  KEY `fk_ar_accountledgeraudit_g_kiddiecareuser2` (`changebyid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_accountledgerrel`
--

CREATE TABLE IF NOT EXISTS `kc_ar_accountledgerrel` (
  `accountledgerrelid` int(11) NOT NULL auto_increment,
  `accountid` int(11) NOT NULL,
  `agencyid` int(11) NOT NULL default '-1',
  `accountledgerreltid` int(11) NOT NULL,
  PRIMARY KEY  (`accountledgerrelid`),
  UNIQUE KEY `ix_ar_accountledgerrel` (`accountid`,`agencyid`),
  KEY `idx_accountledgerrel` (`agencyid`),
  KEY `fk_ar_accountledgerrel_g_typestable` (`accountledgerreltid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_accountpayorrel`
--

CREATE TABLE IF NOT EXISTS `kc_ar_accountpayorrel` (
  `accountpayorrelid` int(11) NOT NULL auto_increment,
  `accountid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`accountpayorrelid`),
  UNIQUE KEY `ix_ar_accountpayorrel_accountid_personid` (`accountid`,`personid`),
  KEY `fk_ar_accountpayorrel_g_person` (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_agency`
--

CREATE TABLE IF NOT EXISTS `kc_ar_agency` (
  `agencyid` int(11) NOT NULL auto_increment,
  `agencyname` varchar(50) NOT NULL,
  `contactname` varchar(50) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `region` varchar(20) NOT NULL,
  `postalcode` varchar(15) NOT NULL,
  `areacode1` varchar(10) NOT NULL,
  `phonenumber1` varchar(30) NOT NULL,
  `areacode2` varchar(10) NOT NULL,
  `phonenumber2` varchar(30) NOT NULL,
  `areacodefax` varchar(10) NOT NULL,
  `faxnumber` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `notes` varchar(200) NOT NULL,
  PRIMARY KEY  (`agencyid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `kc_ar_agency`
--

INSERT INTO `kc_ar_agency` (`agencyid`, `agencyname`, `contactname`, `emailaddress`, `address1`, `address2`, `city`, `region`, `postalcode`, `areacode1`, `phonenumber1`, `areacode2`, `phonenumber2`, `areacodefax`, `faxnumber`, `sortorder`, `notes`) VALUES
(-1, 'Sys', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(56, 'County', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(57, 'State', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_agencyadjustcodes`
--

CREATE TABLE IF NOT EXISTS `kc_ar_agencyadjustcodes` (
  `agencyadjustcodeid` int(11) NOT NULL auto_increment,
  `description` varchar(15) NOT NULL,
  `chargecreditdescid` int(11) NOT NULL,
  `istransfer` tinyint(1) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`agencyadjustcodeid`),
  KEY `fk_ar_agencyadjustcodes_ar_chargecreditdesc` (`chargecreditdescid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `kc_ar_agencyadjustcodes`
--

INSERT INTO `kc_ar_agencyadjustcodes` (`agencyadjustcodeid`, `description`, `chargecreditdescid`, `istransfer`, `isactive`, `sortorder`) VALUES
(-1, '', -100, 0, 1, 0),
(16, 'Parent Transfer', 191, 1, 1, 1),
(17, 'Agcy Write Off', 174, 0, 1, 2),
(18, 'Agcy Credit', 176, 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_agencypayment`
--

CREATE TABLE IF NOT EXISTS `kc_ar_agencypayment` (
  `agencypaymentid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `agencyid` int(11) NOT NULL,
  `checknumber` varchar(24) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `postdate` datetime NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `isclosed` tinyint(1) NOT NULL,
  `depositreportid` int(11) NOT NULL,
  PRIMARY KEY  (`agencypaymentid`),
  KEY `fk_ar_agencypayment_ar_agency` (`agencyid`),
  KEY `fk_ar_agencypayment_ar_depositreport` (`depositreportid`),
  KEY `fk_ar_agencypayment_g_kiddiecareuser` (`kiddiecareuserid`),
  KEY `fk_ar_agencypayment_schoolid` (`schoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_agencypaymentdetail`
--

CREATE TABLE IF NOT EXISTS `kc_ar_agencypaymentdetail` (
  `agencypaymentdetailid` int(11) NOT NULL auto_increment,
  `agencypaymentid` int(11) NOT NULL,
  `accountledgerid` int(11) NOT NULL,
  `appliedamount` decimal(18,2) NOT NULL,
  `adjustmentamount` decimal(18,2) NOT NULL,
  `adjustmentcodeid` int(11) NOT NULL,
  PRIMARY KEY  (`agencypaymentdetailid`),
  UNIQUE KEY `ix_ar_agencypaymentdetailuniquerecord` (`agencypaymentid`,`accountledgerid`),
  KEY `fk_ar_agencypaymentdetail_ar_accountledger` (`accountledgerid`),
  KEY `fk_ar_agencypaymentdetail_ar_agencyadjustcodes` (`adjustmentcodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_automaticbillingbatch`
--

CREATE TABLE IF NOT EXISTS `kc_ar_automaticbillingbatch` (
  `automaticbillingbatchid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `postdate` datetime NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `autobatchtid` int(11) NOT NULL,
  PRIMARY KEY  (`automaticbillingbatchid`),
  KEY `ix_ar_automaticbillingbatch_schoolid_autobatchtid` (`schoolid`,`autobatchtid`),
  KEY `fk_ar_automaticbillingbatch_g_kiddiecareuser` (`kiddiecareuserid`),
  KEY `fk_ar_automaticbillingbatch_g_typestable` (`autobatchtid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_automaticbillingbatch`
--

INSERT INTO `kc_ar_automaticbillingbatch` (`automaticbillingbatchid`, `schoolid`, `postdate`, `kiddiecareuserid`, `autobatchtid`) VALUES
(-1, -1, '1900-01-01 00:00:00', -1, 479);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingbox`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingbox` (
  `billingboxid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `accountledgerrelid` int(11) NOT NULL,
  `billingboxtid` int(11) NOT NULL,
  `chargecreditdescid` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  PRIMARY KEY  (`billingboxid`),
  KEY `fk_ar_billingbox_ar_accountledgerrel` (`accountledgerrelid`),
  KEY `fk_ar_billingbox_ar_chargecreditdesc` (`chargecreditdescid`),
  KEY `fk_ar_billingbox_ar_childschool` (`childschoolid`),
  KEY `fk_ar_billingbox_g_typestable` (`billingboxtid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingboxcontract`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingboxcontract` (
  `billingboxid` int(11) NOT NULL,
  `contractcycletid` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `scheduleid` int(11) NOT NULL,
  PRIMARY KEY  (`billingboxid`),
  KEY `fk_ar_billingboxcontract_ar_schedule` (`scheduleid`),
  KEY `fk_ar_billingboxcontract_g_typestable` (`contractcycletid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingboxformula`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingboxformula` (
  `billingboxformulaid` int(11) NOT NULL auto_increment,
  `formulaname` varchar(40) NOT NULL,
  `tooltip` varchar(150) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`billingboxformulaid`),
  UNIQUE KEY `ix_ar_billingboxformula_uniqueformulaname` (`formulaname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `kc_ar_billingboxformula`
--

INSERT INTO `kc_ar_billingboxformula` (`billingboxformulaid`, `formulaname`, `tooltip`, `sortorder`) VALUES
(231, 'After Hours Pickup', 'Late Pickup by the minute', 62),
(232, 'Hourly (Attendance)', 'Hourly rate for dates based on attendance', 63),
(235, 'Hourly (Extra Hours)', 'Hourly rate for more hours than scheduled', 68),
(236, 'Hourly (Schedule)', 'Hourly rate for dates based on schedule', 65),
(237, 'Hourly (Overtime)', 'Hourly rate for overtime outside of schedule', 67),
(238, 'Half/Full Day(Attendance)', 'Daily rate based on attendance', 69),
(245, 'Agency Not Allowed Absent Days', 'Bill family the daily rate any days over max allowed absences', 83),
(246, 'Agency w/Monthly Absent Days', 'Bill agency the daily rate plus absent days allowed.', 82),
(249, 'Before/After (Schedule)', 'Before and after school billing based on schedule', 80),
(250, 'Half/Full day(Extra Charge)', 'Extra charges for additional attendance', 76),
(251, 'Half/Full Day (Schedule)', 'Daily rate based on schedule', 71),
(252, 'Before/After(Extra Charge)', 'Extra charges for additional attendance', 81),
(253, 'Before/After (Attendance)', 'Before and after school billing based on attendance', 78);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingboxformuladetails`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingboxformuladetails` (
  `billingboxformulaid` int(11) NOT NULL,
  `lineid` int(11) NOT NULL,
  `comment` varchar(30) NOT NULL,
  `formula` varchar(250) NOT NULL,
  PRIMARY KEY  (`billingboxformulaid`,`lineid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kc_ar_billingboxformuladetails`
--

INSERT INTO `kc_ar_billingboxformuladetails` (`billingboxformulaid`, `lineid`, `comment`, `formula`) VALUES
(231, 1, 'Rate by the minute', '1.00'),
(231, 2, 'Minute over-ride rate', 'If[Var[minute] = 0, Line[1], Var[minute]]'),
(231, 4, '', 'Loop[Days]'),
(231, 5, 'Daily time in hours', 'Attend[Days, 05:00pm, 12:00am]'),
(231, 7, 'Calc. Day charge', 'Total[(Line[5] * (Line[2] * 60))]'),
(231, 8, 'Calc. total time', 'Total[Line[5]]'),
(231, 9, 'Total Days Attended', 'Total[If[Line[5] > 0, 1, 0]]'),
(231, 10, '', 'Loop[End]'),
(231, 12, '', 'Print["Total After Hours days  =  "Line[9]]'),
(231, 13, '', 'Print["Total time in minutes  =  "(Line[8] * 60)]'),
(231, 14, '', 'Print["Minute rate  =  $"Line[2]]'),
(231, 15, '', 'Print["Total amount billed  =  $"Line[7]]'),
(231, 16, 'TOTAL CHARGE', 'Line[7]'),
(232, 1, 'Rate by the Hour', '5.00'),
(232, 2, 'Hourly over-ride rate', 'If[Var[hourly] = 0, Line[1], Var[hourly]]'),
(232, 3, 'Min Daily rate', '0.00'),
(232, 4, 'Max Daily rate', '999.00'),
(232, 6, '', 'Loop[Days]'),
(232, 7, 'Daily time in hours', 'Attend[Days, 12:00am, 12:00am]'),
(232, 8, 'calc Daily min if attend > 0', 'If[Line[7] > 0, If[(Line[7] * Line[2]) > Line[3], (Line[7] * Line[2]), Line[3]], 0]'),
(232, 10, 'Calc. Day charge', 'Total[If[Line[8] <= Line[4], Line[8], Line[4]] ]'),
(232, 11, 'Calc. total time', 'Total[Line[7]]'),
(232, 12, 'Total Days Attended', 'Total[If[Line[7] > 0, 1, 0]]'),
(232, 13, '', 'Loop[End]'),
(232, 15, '', 'Print["Days attended  =  "Line[12]]'),
(232, 16, '', 'Print["Total billed hours  =  "Line[11]]'),
(232, 17, '', 'Print["Hourly rate  =  $"Line[2]]'),
(232, 18, '', 'Print["Total amount billed  =  $"Line[10]]'),
(232, 19, '', 'Print["Note daily minimums or maximums may also apply."]'),
(232, 20, 'TOTAL CHARGE', 'Line[10]'),
(235, 1, 'Rate by the Hour', '5.00'),
(235, 2, 'Hourly over-ride rate', 'If[Var[hourly] = 0, Line[1], Var[hourly]]'),
(235, 4, '', 'Loop[Days]'),
(235, 5, 'Daily time in hours', 'Attend[Days, 12:00am, 12:00am]'),
(235, 6, 'Scheduled time in hours', 'Sched[Days, 12:00am, 12:00am]'),
(235, 7, 'Extra hours ', 'If[(Line[5] - Line[6]) > 0, (Line[5] - Line[6]), 0]'),
(235, 9, 'Calc. Day charge', 'Total[(Line[7] * Line[2])]'),
(235, 10, 'Calc. total time', 'Total[Line[7]]'),
(235, 11, 'Total Days Attended', 'Total[If[Line[5] > 0, 1, 0]]'),
(235, 12, '', 'Loop[End]'),
(235, 14, '', 'Print["Total days  =  "Line[11]]'),
(235, 15, '', 'Print["Total billed hours  =  "Line[10]]'),
(235, 16, '', 'Print["Hourly rate  =  $"Line[2]]'),
(235, 17, '', 'Print["Total amount billed  =  $"Line[9]]'),
(235, 18, 'TOTAL CHARGE', 'Line[9]'),
(236, 1, 'Rate by the Hour', '5.00'),
(236, 2, 'Hourly over-ride rate', 'If[Var[hourly] = 0, Line[1], Var[hourly]]'),
(236, 3, 'Min Daily rate', '0.00'),
(236, 4, 'Max Daily rate', '999.00'),
(236, 6, '', 'Loop[Days]'),
(236, 7, 'Daily time in hours', 'Sched[Days, 12:00am, 12:00am]'),
(236, 8, 'calc Daily min if attend > 0', 'If[Line[7] > 0, If[(Line[7] * Line[2]) > Line[3], (Line[7] * Line[2]), Line[3]], 0]'),
(236, 10, 'Calc. Day charge', 'Total[If[Line[8] <= Line[4], Line[8], Line[4]] ]'),
(236, 11, 'Calc. total time', 'Total[Line[7]]'),
(236, 12, 'Total Days Attended', 'Total[If[Line[7] > 0, 1, 0]]'),
(236, 13, '', 'Loop[End]'),
(236, 15, '', 'Print["Total days  =  "Line[12]]'),
(236, 16, '', 'Print["Total billed hours  =  "Line[11]]'),
(236, 17, '', 'Print["Hourly rate  =  $"Line[2]]'),
(236, 18, '', 'Print["Total amount billed  =  $"Line[10]]'),
(236, 19, '', 'Print["Note daily minimums or maximums also apply."]'),
(236, 20, 'TOTAL CHARGE', 'Line[10]'),
(237, 1, 'Rate by the Hour', '5.00'),
(237, 2, 'Hourly over-ride rate', 'If[Var[hourly] = 0, Line[1], Var[hourly]]'),
(237, 3, 'Min Daily rate', '0.00'),
(237, 4, 'Max Daily rate', '999.00'),
(237, 6, '', 'Loop[Days]'),
(237, 7, 'Daily time in hours', 'OTime[Days, 12:00am, 12:00am]'),
(237, 8, 'calc Daily min if attend > 0', 'If[Line[7] > 0, If[(Line[7] * Line[2]) > Line[3], (Line[7] * Line[2]), Line[3]], 0]'),
(237, 10, 'Calc. Day charge', 'Total[If[Line[8] <= Line[4], Line[8], Line[4]] ]'),
(237, 11, 'Calc. total time', 'Total[Line[7]]'),
(237, 12, 'Total Days Attended', 'Total[If[Line[7] > 0, 1, 0]]'),
(237, 13, '', 'Loop[End]'),
(237, 15, '', 'Print["Total days  =  "Line[12]]'),
(237, 16, '', 'Print["Total billed hours  =  "Line[11]]'),
(237, 17, '', 'Print["Hourly rate  =  $"Line[2]]'),
(237, 18, '', 'Print["Total amount billed  =  $"Line[10]]'),
(237, 19, '', 'Print["Note daily minimums or maximums also apply."]'),
(237, 20, 'TOTAL CHARGE', 'Line[10]'),
(238, 1, '1/2 day rate', '15.00'),
(238, 2, 'Full day rate', '25.00'),
(238, 3, '# of hours Full Day starts at', '5.01'),
(238, 5, 'Half day over-ride rate', 'If[Var[halfda] = 0, Line[1], Var[halfda]]'),
(238, 6, 'Full day over-ride rate', 'If[Var[fullda] = 0, Line[2], Var[fullda]]'),
(238, 8, '', 'Loop[Days]'),
(238, 9, 'Daily time in hours', 'Attend[Days, 12:00am, 12:00am]'),
(238, 10, 'Calc. Half Days', 'Total[If[Line[9] > 0, If[Line[9] < Line[3], 1, 0], 0]]'),
(238, 11, 'Calc. Full Days', 'Total[If[Line[9] >= Line[3], 1, 0]]'),
(238, 12, 'Calc. total time', 'Total[Line[9]]'),
(238, 13, 'Total Days Attended', 'Total[If[Line[9] > 0, 1, 0]]'),
(238, 14, '', 'Loop[End]'),
(238, 16, 'Calc. charge', 'Total[((Line[10] * Line[5]) + (Line[11] * Line[6]))]'),
(238, 18, '', 'Print["Total half days  =  "Line[10]]'),
(238, 19, '', 'Print["Total full days  =  "Line[11]]'),
(238, 20, '', 'Print["Half day rate  =  $"Line[5]]'),
(238, 21, '', 'Print["Full day rate  =  $"Line[6]]'),
(238, 22, '', 'Print["Total amount billed  =  $"Line[16]]'),
(238, 23, 'TOTAL CHARGE', 'Line[16]'),
(245, 1, 'Daily Rate', '20.00'),
(245, 2, 'Max Absent days', '5'),
(245, 3, 'max absent to only bill atten', '99'),
(245, 4, 'over-ride rate', 'If[Var[daily] > 0, Var[daily], Line[1]]'),
(245, 5, 'over-ride max absent', 'If[Var[maxab] > 0, Var[maxab], Line[3]]'),
(245, 7, 'monthly range', 'Loop[Days]'),
(245, 8, 'Total Days Scheduled ', 'Total[If[Sched[Days, 12:00am, 12:00am] > 0, 1, 0]]'),
(245, 9, 'Total Days Attended', 'Total[If[Attend[Days, 12:00am, 12:00am] > 0, 1, 0]]'),
(245, 10, '', 'Loop[End]'),
(245, 11, 'are attend days acceptable', ''),
(245, 12, 'to bill for absent days', 'If[(Line[9] + Line[5]) >= Line[8], 0, (Line[8] - Line[9])]'),
(245, 13, 'Total Days missed beyond max', 'If[Line[12] = 0, If[(Line[9] + Line[2]) >= Line[8], 0, (Line[8] - (Line[9] + Line[2]))], 0]'),
(245, 14, 'Calculate charge', '(((Line[13] + Line[12]) * Line[4]) + 0.00)'),
(245, 16, '', 'Print["Max absent days  =  "Line[2]]'),
(245, 17, '', 'Print["Total days attended  =  "Line[9]]'),
(245, 18, '', 'Print["Total days scheduled  =  "Line[8]]'),
(245, 19, '', 'Print["Total days billed  =  "Line[13]]'),
(245, 20, '', 'Print["Daily rate  =  $"Line[4]]'),
(245, 21, '', 'Print["Total amount billed  =  $"Line[14]]'),
(245, 22, 'TOTAL CHARGE', 'Line[14]'),
(246, 1, 'Daily Rate', '20.00'),
(246, 2, 'Max Absent days', '5'),
(246, 3, 'max absent to only bill atten', '5'),
(246, 4, 'over-ride rate', 'If[Var[daily] > 0, Var[daily], Line[1]]'),
(246, 5, 'over-ride max absent', 'If[Var[maxab] > 0, Var[maxab], Line[3]]'),
(246, 7, 'monthly range', 'Loop[Days]'),
(246, 8, 'Total Days Scheduled ', 'Total[If[Sched[Days, 12:00am, 12:00am] > 0, 1, 0]]'),
(246, 9, 'Total Days Attended', 'Total[If[Attend[Days, 12:00am, 12:00am] > 0, 1, 0]]'),
(246, 10, '', 'Loop[End]'),
(246, 11, 'are attend days acceptable', '  '),
(246, 12, 'to bill for absent days', 'If[(Line[9] + Line[5]) >= Line[8], 1, 0]'),
(246, 13, 'Total days to bill w/sick day', 'If[Line[12] = 1, If[Line[9] >= Line[8], Line[9], If[(Line[9] + Line[2]) >= Line[8], Line[8], (Line[9] + Line[2])]], 0]'),
(246, 14, 'Total days billed no absent', 'If[Line[12] = 0, Line[9], 0]'),
(246, 15, 'Calculate charge', '(((Line[13] + Line[14]) * Line[4]) + 0.00)'),
(246, 17, '', 'Print["Max absent days  =  "Line[2]]'),
(246, 18, '', 'Print["Max override absent days  =  "Line[5]]'),
(246, 19, '', 'Print["Total days attended  =  "Line[9]]'),
(246, 20, '', 'Print["Total days scheduled  =  "Line[8]]'),
(246, 21, '', 'Print["Total days billed  =  "(Line[13] + Line[14])]'),
(246, 22, '', 'Print["Daily rate  =  $"Line[4]]'),
(246, 23, '', 'Print["Total amount billed  =  $"Line[15]]'),
(246, 24, 'TOTAL CHARGE', 'Line[15]'),
(249, 1, 'All day rate', '30.00'),
(249, 2, 'AM day rate', '10.00'),
(249, 3, 'Mid day rate', '12.00'),
(249, 4, 'PM day rate', '15.00'),
(249, 5, 'AM-Mid rate', '17.00'),
(249, 6, 'AM-PM rate', '20.00'),
(249, 7, 'Mid-PM rate', '25.00'),
(249, 9, 'All day over-ride rate', 'If[Var[allday] = 0, Line[1], Var[allday]]'),
(249, 10, 'AM over-ride rate', 'If[Var[am] = 0, Line[2], Var[am]]'),
(249, 11, 'Mid over-ride rate', 'If[Var[mid] = 0, Line[3], Var[mid]]'),
(249, 12, 'PM over-ride rate', 'If[Var[pm] = 0, Line[4], Var[pm]]'),
(249, 13, 'AM-Mid over-ride rate', 'If[Var[ammid] = 0, Line[5], Var[ammid]]'),
(249, 14, 'AM-PM over-ride rate', 'If[Var[ampm] = 0, Line[6], Var[ampm]]'),
(249, 15, 'Mid-PM over-ride rate', 'If[Var[midpm] = 0, Line[7], Var[midpm]]'),
(249, 17, '', 'Loop[Days]'),
(249, 18, 'AM hours', 'If[Sched[Days, 6:00am, 9:00am] > 0, 1, 0]'),
(249, 19, 'Mid hours', 'If[Sched[Days, 9:01am, 2:00pm] > 0, 1, 0]'),
(249, 20, 'PM Hours', 'If[Sched[Days, 2:01pm, 5:00pm] > 0, 1, 0]'),
(249, 22, 'all day', 'Total[If[Line[18] > 0 and Line[19] > 0, If[Line[20] > 0, 1, 0], 0]]'),
(249, 23, 'am only', 'Total[If[Line[18] > 0 and Line[19] < 1, If[Line[20] < 1, 1, 0], 0]]'),
(249, 24, 'mid only', 'Total[If[Line[19] > 0 and Line[18] < 1, If[Line[20] < 1, 1, 0], 0]]'),
(249, 25, 'pm only', 'Total[If[Line[20] > 0 and Line[19] < 1, If[Line[18] < 1, 1, 0], 0]]'),
(249, 26, 'am-mid', 'Total[If[Line[18] > 0 and Line[19] > 0, If[Line[20] < 1, 1, 0], 0]]'),
(249, 27, 'am-pm', 'Total[If[Line[18] > 0 and Line[20] > 0, If[Line[19] < 1, 1, 0], 0]]'),
(249, 28, 'mid-pm', 'Total[If[Line[19] > 0 and Line[20] > 0, If[Line[18] < 1, 1, 0], 0]]'),
(249, 29, '', 'Loop[End]'),
(249, 31, 'calculate totals', '(Line[22] * Line[9]) + (Line[23] * Line[10]) + (Line[24] * Line[11]) + (Line[25] * Line[12]) + (Line[26] * Line[13]) + (Line[27] * Line[14]) + (Line[28] * Line[15])'),
(249, 33, '', 'Print["Total Full days  =  "Line[22] " @ $"Line[9] " a day"]'),
(249, 34, '', 'Print["Total AM only days  =  "Line[23] " @ $"Line[10] " a day"]'),
(249, 35, '', 'Print["Total Mid only days  =  "Line[24] " @ $"Line[11] " a day"]'),
(249, 36, '', 'Print["Total PM only days  =  "Line[25] " @ $"Line[12] " a day"]'),
(249, 37, '', 'Print["Total AM & Mid only days  =  "Line[26] " @ $"Line[13] " a day"]'),
(249, 38, '', 'Print["Total AM & PM only days  =  "Line[27] " @ $"Line[14] " a day"]'),
(249, 39, '', 'Print["Total Mid & PM only days  =  "Line[28] " @ $"Line[15] " a day"]'),
(249, 40, '', 'Print["Total amount billed  =  $"Line[31]]'),
(249, 41, 'TOTAL CHARGE', 'Line[31]'),
(250, 1, '1/2 day rate', '15.00'),
(250, 2, 'Full day rate', '25.00'),
(250, 3, 'Half to full days rate', '10.00'),
(250, 4, '# of hours Full Day starts at', '5.01'),
(250, 6, 'Half day over-ride rate', 'If[Var[halfda] = 0, Line[1], Var[halfda]]'),
(250, 7, 'Full day over-ride rate', 'If[Var[fullda] = 0, Line[2], Var[fullda]]'),
(250, 8, 'Half to full over-ride rate', 'If[Var[tofull] = 0, Line[3], Var[tofull]]'),
(250, 10, 'look at attend vs sched and', ''),
(250, 11, 'bill difference if any', ''),
(250, 12, '', 'Loop[Days]'),
(250, 13, 'Daily time in hours', 'Attend[Days, 12:00am, 12:00am]'),
(250, 14, '', 'Sched[Days, 12:00am, 12:00am]'),
(250, 15, '1=1/2 day, 2= full day', ''),
(250, 16, 'if attend, is it full or 1/2', 'If[Line[13] > 0, If[Line[13] < Line[4], 1, 2], 0]'),
(250, 17, 'if sched, is it full or 1/2', 'If[Line[14] > 0, If[Line[14] < Line[4], 1, 2], 0]'),
(250, 19, 'count extra 1/2 days', 'Total[If[Line[16] = 1 and Line[17] = 0, 1, 0]]'),
(250, 20, 'count extra full days', 'Total[If[Line[16] = 2 and Line[17] = 0, 1, 0]]'),
(250, 21, 'count 1/2 sched to full atten', 'Total[If[Line[16] = 2 and Line[17] = 1, 1, 0]]'),
(250, 22, '', 'Loop[End]'),
(250, 24, 'total extra charges', '(Line[19] * Line[6]) + (Line[20] * Line[7]) + (Line[21] * Line[8])'),
(250, 26, '', 'Print["Total extra half days  =  "Line[19]]'),
(250, 27, '', 'Print["Total extra full days  =  "Line[20]]'),
(250, 28, '', 'Print["Total half to full days  =  "Line[21]]'),
(250, 29, '', 'Print["Half day rate  =  $"Line[6]]'),
(250, 30, '', 'Print["Full day rate  =  $"Line[7]]'),
(250, 31, '', 'Print["Half to full day rate  =  $"Line[8]]'),
(250, 32, '', 'Print["Total amount billed  =  $"Line[24]]'),
(250, 33, 'TOTAL CHARGE', 'Line[24]'),
(251, 1, '1/2 day rate', '15.00'),
(251, 2, 'Full day rate', '25.00'),
(251, 3, '# of hours Full Day starts at', '5.01'),
(251, 5, 'Half dayover-ride rate', 'If[Var[halfda] = 0, Line[1], Var[halfda]]'),
(251, 6, 'Full day over-ride rate', 'If[Var[fullda] = 0, Line[2], Var[fullda]]'),
(251, 8, '', 'Loop[Days]'),
(251, 9, 'Daily time in hours', 'Sched[Days, 12:00am, 12:00am]'),
(251, 10, 'Calc. Half Days', 'Total[If[Line[9] > 0, If[Line[9] < Line[3], 1, 0], 0]]'),
(251, 11, 'Calc. Full Days', 'Total[If[Line[9] >= Line[3], 1, 0]]'),
(251, 12, 'Calc. total time', 'Total[Line[9]]'),
(251, 13, 'Total Days Attended', 'Total[If[Line[9] > 0, 1, 0]]'),
(251, 14, '', 'Loop[End]'),
(251, 16, 'Calc. charge', 'Total[((Line[10] * Line[5]) + (Line[11] * Line[6]))]'),
(251, 18, '', 'Print["Total half days  =  "Line[10]]'),
(251, 19, '', 'Print["Total full days  =  "Line[11]]'),
(251, 20, '', 'Print["Half day rate  =  $"Line[5]]'),
(251, 21, '', 'Print["Full day rate  =  $"Line[6]]'),
(251, 22, '', 'Print["Total amount billed  =  $"Line[16]]'),
(251, 23, 'TOTAL CHARGE', 'Line[16]'),
(252, 1, 'All day rate', '30.00'),
(252, 2, 'AM day rate', '10.00'),
(252, 3, 'Mid day rate', '12.00'),
(252, 4, 'PM day rate', '15.00'),
(252, 5, 'AM-Mid rate', '17.00'),
(252, 6, 'AM-PM rate', '20.00'),
(252, 7, 'Mid-PM rate', '25.00'),
(252, 9, 'All day over-ride rate', 'If[Var[allday] = 0, Line[1], Var[allday]]'),
(252, 10, 'AM over-ride rate', 'If[Var[am] = 0, Line[2], Var[am]]'),
(252, 11, 'Mid over-ride rate', 'If[Var[mid] = 0, Line[3], Var[mid]]'),
(252, 12, 'PM over-ride rate', 'If[Var[pm] = 0, Line[4], Var[pm]]'),
(252, 13, 'AM-Mid over-ride rate', 'If[Var[ammid] = 0, Line[5], Var[ammid]]'),
(252, 14, 'AM-PM over-ride rate', 'If[Var[ampm] = 0, Line[6], Var[ampm]]'),
(252, 15, 'Mid-PM over-ride rate', 'If[Var[midpm] = 0, Line[7], Var[midpm]]'),
(252, 17, '', 'Loop[Days]'),
(252, 18, 'AM hours', 'If[Attend[Days, 6:00am, 9:00am], 1, 0]'),
(252, 19, 'Mid hours', 'If[Attend[Days, 9:01am, 2:00pm], 1, 0]'),
(252, 20, 'PM Hours', 'If[Attend[Days, 2:01pm, 5:00pm], 1, 0]'),
(252, 22, 'AM hours', 'If[Sched[Days, 6:00am, 9:00am], 1, 0]'),
(252, 23, 'Mid hours', 'If[Sched[Days, 9:01am, 2:00pm], 1, 0]'),
(252, 24, 'PM Hours', 'If[Sched[Days, 2:01pm, 5:00pm], 1, 0]'),
(252, 26, 'count extra AM attend', 'If[Line[18] > Line[22], 1, 0]'),
(252, 27, 'count extra Mid attend', 'If[Line[19] > Line[23], 1, 0]'),
(252, 28, 'count extra PM attend', 'If[Line[20] > Line[24], 1, 0]'),
(252, 30, 'all day', 'Total[If[Line[26] > 0 and Line[27] > 0, If[Line[28] > 0, 1, 0], 0]]'),
(252, 31, 'am only', 'Total[If[Line[26] > 0 and Line[27] < 1, If[Line[28] < 1, 1, 0], 0]]'),
(252, 32, 'mid only', 'Total[If[Line[27] > 0 and Line[26] < 1, If[Line[28] < 1, 1, 0], 0]]'),
(252, 33, 'pm only', 'Total[If[Line[28] > 0 and Line[27] < 1, If[Line[26] < 1, 1, 0], 0]]'),
(252, 34, 'am-mid', 'Total[If[Line[26] > 0 and Line[27] > 0, If[Line[28] < 1, 1, 0], 0]]'),
(252, 35, 'am-pm', 'Total[If[Line[26] > 0 and Line[28] > 0, If[Line[27] < 1, 1, 0], 0]]'),
(252, 36, 'mid-pm', 'Total[If[Line[27] > 0 and Line[28] > 0, If[Line[26] < 1, 1, 0], 0]]'),
(252, 38, '', 'Loop[End]'),
(252, 40, 'calculate totals', '(Line[30] * Line[9]) + (Line[31] * Line[10]) + (Line[32] * Line[11]) + (Line[33] * Line[12]) + (Line[34] * Line[13]) + (Line[35] * Line[14]) + (Line[36] * Line[15])'),
(252, 42, '', 'Print["Extra Full days  =  "Line[30] " @ $"Line[9] " a day"]'),
(252, 43, '', 'Print["Extra AM only days  =  "Line[31] " @ $"Line[10] " a day"]'),
(252, 44, '', 'Print["Extra Mid only days  =  "Line[32] " @ $"Line[11] " a day"]'),
(252, 45, '', 'Print["Extra PM only days  =  "Line[33] " @ $"Line[12] " a day"]'),
(252, 46, '', 'Print["Extra AM & Mid only days  =  "Line[34] " @ $"Line[13] " a day"]'),
(252, 47, '', 'Print["Extra AM & PM only days  =  "Line[35] " @ $"Line[14] " a day"]'),
(252, 48, '', 'Print["Extra Mid & PM only days  =  "Line[36] " @ $"Line[15] " a day"]'),
(252, 49, '', 'Print["Total amount billed  =  $"Line[40]]'),
(252, 50, 'TOTAL CHARGE', 'Line[40]'),
(253, 1, 'All day rate', '30.00'),
(253, 2, 'AM day rate', '10.00'),
(253, 3, 'Mid day rate', '12.00'),
(253, 4, 'PM day rate', '15.00'),
(253, 5, 'AM-Mid rate', '17.00'),
(253, 6, 'AM-PM rate', '20.00'),
(253, 7, 'Mid-PM rate', '25.00'),
(253, 9, 'All day over-ride rate', 'If[Var[allday] = 0, Line[1], Var[allday]]'),
(253, 10, 'AM over-ride rate', 'If[Var[am] = 0, Line[2], Var[am]]'),
(253, 11, 'Mid over-ride rate', 'If[Var[mid] = 0, Line[3], Var[mid]]'),
(253, 12, 'PM over-ride rate', 'If[Var[pm] = 0, Line[4], Var[pm]]'),
(253, 13, 'AM-Mid over-ride rate', 'If[Var[ammid] = 0, Line[5], Var[ammid]]'),
(253, 14, 'AM-PM over-ride rate', 'If[Var[ampm] = 0, Line[6], Var[ampm]]'),
(253, 15, 'Mid-PM over-ride rate', 'If[Var[midpm] = 0, Line[7], Var[midpm]]'),
(253, 17, '', 'Loop[Days]'),
(253, 18, 'AM hours', 'If[Attend[Days, 6:00am, 9:00am] > 0, 1, 0]'),
(253, 19, 'Mid hours', 'If[Attend[Days, 9:01am, 2:00pm] > 0, 1, 0]'),
(253, 20, 'PM Hours', 'If[Attend[Days, 2:01pm, 5:00pm] > 0, 1, 0]'),
(253, 22, 'all day', 'Total[If[Line[18] > 0 and Line[19] > 0, If[Line[20] > 0, 1, 0], 0]]'),
(253, 23, 'am only', 'Total[If[Line[18] > 0 and Line[19] < 1, If[Line[20] < 1, 1, 0], 0]]'),
(253, 24, 'mid only', 'Total[If[Line[19] > 0 and Line[18] < 1, If[Line[20] < 1, 1, 0], 0]]'),
(253, 25, 'pm only', 'Total[If[Line[20] > 0 and Line[19] < 1, If[Line[18] < 1, 1, 0], 0]]'),
(253, 26, 'am-mid', 'Total[If[Line[18] > 0 and Line[19] > 0, If[Line[20] < 1, 1, 0], 0]]'),
(253, 27, 'am-pm', 'Total[If[Line[18] > 0 and Line[20] > 0, If[Line[19] < 1, 1, 0], 0]]'),
(253, 28, 'mid-pm', 'Total[If[Line[19] > 0 and Line[20] > 0, If[Line[18] < 1, 1, 0], 0]]'),
(253, 29, '', 'Loop[End]'),
(253, 31, 'calculate totals', '(Line[22] * Line[9]) + (Line[23] * Line[10]) + (Line[24] * Line[11]) + (Line[25] * Line[12]) + (Line[26] * Line[13]) + (Line[27] * Line[14]) + (Line[28] * Line[15])'),
(253, 33, '', 'Print["Total Full days  =  "Line[22] " @ $"Line[9] " a day"]'),
(253, 34, '', 'Print["Total AM only days  =  "Line[23] " @ $"Line[10] " a day"]'),
(253, 35, '', 'Print["Total Mid only days  =  "Line[24] " @ $"Line[11] " a day"]'),
(253, 36, '', 'Print["Total PM only days  =  "Line[25] " @ $"Line[12] " a day"]'),
(253, 37, '', 'Print["Total AM & Mid only days  =  "Line[26] " @ $"Line[13] " a day"]'),
(253, 38, '', 'Print["Total AM & PM only days  =  "Line[27] " @ $"Line[14] " a day"]'),
(253, 39, '', 'Print["Total Mid & PM only days  =  "Line[28] " @ $"Line[15] " a day"]'),
(253, 40, '', 'Print["Total amount billed  =  $"Line[31]]'),
(253, 41, 'TOTAL CHARGE', 'Line[31]');

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingboxformulavariables`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingboxformulavariables` (
  `variableid` int(11) NOT NULL auto_increment,
  `billingboxformulaid` int(11) NOT NULL,
  `varname` varchar(6) NOT NULL,
  `varmasktid` int(11) NOT NULL,
  `samplevalue` decimal(18,2) NOT NULL,
  `variabledesc` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`variableid`),
  UNIQUE KEY `ix_ar_billingboxformulavariables` (`billingboxformulaid`,`varname`),
  KEY `fk_ar_billingboxformulavariables_g_typestable` (`varmasktid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=619 ;

--
-- Dumping data for table `kc_ar_billingboxformulavariables`
--

INSERT INTO `kc_ar_billingboxformulavariables` (`variableid`, `billingboxformulaid`, `varname`, `varmasktid`, `samplevalue`, `variabledesc`, `sortorder`) VALUES
(559, 231, 'minute', 146, 0.00, 'Rate per minute variable by child', 1),
(560, 232, 'hourly', 146, 0.00, 'Hourly rate variable by child', 1),
(563, 235, 'hourly', 146, 0.00, 'Hourly rate variable by child', 1),
(564, 236, 'hourly', 146, 0.00, 'Hourly rate variable by child', 1),
(565, 237, 'hourly', 146, 0.00, 'Hourly rate variable by child', 1),
(576, 245, 'daily', 146, 0.00, 'Daily rate variable by child', 2),
(577, 246, 'daily', 146, 0.00, 'Daily rate variable by child', 2),
(588, 249, 'allday', 146, 0.00, 'All day over ride rate', 2),
(589, 249, 'am', 146, 0.00, 'AM over ride rate', 3),
(590, 249, 'mid', 146, 0.00, 'Mid over ride rate', 4),
(591, 249, 'pm', 146, 0.00, 'PM over ride rate', 5),
(592, 249, 'ammid', 146, 0.00, 'AM-Mid over ride rate ', 7),
(593, 249, 'ampm', 146, 0.00, 'AM-PM over ride rate', 8),
(594, 249, 'midpm', 146, 0.00, 'Mid-PM over ride rate', 9),
(595, 250, 'halfda', 146, 0.00, 'Half day rate', 1),
(596, 250, 'fullda', 146, 0.00, 'Full day rate', 2),
(597, 250, 'tofull', 146, 0.00, 'Half day to full day rate', 3),
(598, 250, 'hourly', 145, 0.00, ' ', 4),
(599, 238, 'halfda', 146, 0.00, ' Half day rate', 1),
(600, 238, 'fullda', 146, 0.00, 'Full Day Rate', 2),
(601, 251, 'halfda', 146, 0.00, ' Half day rate', 1),
(602, 251, 'fullda', 146, 0.00, 'Full Day Rate', 2),
(603, 252, 'allday', 146, 0.00, 'All day over ride rate', 2),
(604, 252, 'am', 146, 0.00, 'AM over ride rate', 3),
(605, 252, 'mid', 146, 0.00, 'Mid over ride rate', 4),
(606, 252, 'pm', 146, 0.00, 'PM over ride rate', 5),
(607, 252, 'ammid', 146, 0.00, 'AM-Mid over ride rate ', 7),
(608, 252, 'ampm', 146, 0.00, 'AM-PM over ride rate', 8),
(609, 252, 'midpm', 146, 0.00, 'Mid-PM over ride rate', 9),
(610, 253, 'allday', 146, 0.00, 'All day over ride rate', 2),
(611, 253, 'am', 146, 0.00, 'AM over ride rate', 3),
(612, 253, 'mid', 146, 0.00, 'Mid over ride rate', 4),
(613, 253, 'pm', 146, 0.00, 'PM over ride rate', 5),
(614, 253, 'ammid', 146, 0.00, 'AM-Mid over ride rate ', 7),
(615, 253, 'ampm', 146, 0.00, 'AM-PM over ride rate', 8),
(616, 253, 'midpm', 146, 0.00, 'Mid-PM over ride rate', 9),
(617, 246, 'maxab', 145, 5.00, 'Max absent days to bill only actual attendance', 3),
(618, 245, 'maxab', 145, 0.00, ' Max absent days to bill only actual attendance', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingboxmethod`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingboxmethod` (
  `billingboxid` int(11) NOT NULL,
  `billingboxformulaid` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `scheduleid` int(11) NOT NULL,
  PRIMARY KEY  (`billingboxid`),
  KEY `fk_ar_billingboxmethod_ar_billingboxformula` (`billingboxformulaid`),
  KEY `fk_ar_billingboxmethod_ar_schedule` (`scheduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingboxvariables`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingboxvariables` (
  `billingboxvariableid` int(11) NOT NULL auto_increment,
  `billingboxid` int(11) NOT NULL,
  `variableid` int(11) NOT NULL,
  `varvalue` decimal(18,4) NOT NULL,
  PRIMARY KEY  (`billingboxvariableid`),
  KEY `fk_ar_billingboxvariables_ar_billingbox` (`billingboxid`),
  KEY `fk_ar_billingboxvariables_ar_billingboxformulavariables` (`variableid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_billingmethodprintline`
--

CREATE TABLE IF NOT EXISTS `kc_ar_billingmethodprintline` (
  `accountledgerid` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `statement` varchar(100) NOT NULL,
  PRIMARY KEY  (`accountledgerid`,`sortorder`),
  KEY `ix_ar_billingmethodprintline_ledgerid` (`accountledgerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_chargecreditdesc`
--

CREATE TABLE IF NOT EXISTS `kc_ar_chargecreditdesc` (
  `chargecreditdescid` int(11) NOT NULL auto_increment,
  `chargecredittid` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `glaccountid` int(11) NOT NULL,
  `chargecredittype` int(11) default '-1',
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`chargecreditdescid`),
  KEY `fk_ar_chargecreditdesc_g_glaccount` (`glaccountid`),
  KEY `fk_ar_chargecreditdesc_g_typestable` (`chargecredittid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `kc_ar_chargecreditdesc`
--

INSERT INTO `kc_ar_chargecreditdesc` (`chargecreditdescid`, `chargecredittid`, `description`, `glaccountid`, `chargecredittype`, `sortorder`) VALUES
(-215, 153, 'Deposit Refund: Supplies', 20, -1, 4),
(-214, 153, 'Deposit Refund: Other', 20, -1, 5),
(-213, 153, 'Deposit Refund: General', 20, -1, 1),
(-212, 153, 'Deposit Refund: Fall', 20, -1, 3),
(-211, 153, 'Deposit Refund: Summer', 20, -1, 2),
(-115, 151, 'Deposit: Supplies', 20, 1, 5),
(-114, 151, 'Deposit: Other', 20, 1, 6),
(-113, 151, 'Deposit Tuition: General', 20, 1, 2),
(-112, 151, 'Deposit Tuition: Fall', 20, 1, 4),
(-111, 151, 'Deposit Tuition: Summer', 20, 1, 3),
(-100, 151, 'Balance Forward', 4, 1, 1),
(151, 149, 'Tuition Infant', 34, 1, 1),
(153, 149, 'Tuition Toddler', 34, 1, 3),
(154, 149, 'Tuition Preschool', 34, 1, 4),
(155, 149, 'Tuition PreK', 34, 1, 5),
(156, 149, 'Tuition Kindergarten', 34, 1, 6),
(157, 149, 'Tuition School Age', 34, 1, 7),
(160, 150, 'Activity Fee', 37, 1, 1),
(161, 150, 'Registration', 36, 1, 2),
(162, 150, 'Diaper Fee', 40, 1, 3),
(163, 150, 'Returned Check Fee', 39, 1, 4),
(164, 150, 'Late Pmt', 38, 1, 5),
(165, 150, 'Late Pick Up', 38, 1, 6),
(166, 150, 'Customer Refund', 41, 1, 7),
(168, 150, 'Miscellaneous Charge', 40, 1, 9),
(169, 152, 'Absent / Vacation Credit', 34, -1, 4),
(171, 152, 'Family Discount', 34, -1, 1),
(172, 152, 'Employee Discount', 34, -1, 2),
(174, 152, 'Agency Adjustment', 103, -1, 7),
(175, 152, 'Bad Debt Write Off', 44, -1, 9),
(176, 152, 'Miscellaneous Credit', 40, -1, 10),
(177, 155, 'Pmt by Check', -100, -1, 1),
(178, 155, 'Pmt by Money Order', -100, -1, 2),
(179, 155, 'Pmt by Cash', -100, -1, 3),
(181, 155, 'Pmt by Agency', -100, -1, 5),
(182, 155, 'Returned Check (Negative Pmt)', -100, -1, 6),
(183, 155, 'Pmt Tuition Express: CC POS', -100, -1, 9),
(184, 155, 'Pmt Tuition Express: ACH Batch', -100, -1, 7),
(185, 155, 'Pmt Tuition Express: CC Batch', -100, -1, 8),
(186, 150, 'Food Revenue', 107, 1, 10),
(187, 150, 'Fund Raiser', 106, 1, 11),
(188, 150, 'Donations', 106, 1, 12),
(189, 150, 'Merchandise', 43, 1, 13),
(190, 152, 'Payroll Deduction', 113, -1, 3),
(191, 152, 'Transfer to Private Payer', 102, -1, 8),
(193, 150, 'Transfer from Agency', 34, 1, 14),
(195, 149, 'Parent Co-Pay Fee', 34, 1, 12),
(197, 149, 'Summer Camp', 34, 1, 10),
(198, 149, 'Tuition Drop In', 35, 1, 11),
(199, 155, 'Declined ACH Payment', -100, -1, 10),
(200, 155, 'Declined CC Payment', -100, -1, 11),
(201, 155, 'Credit Card Refund', -100, -1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_chargecreditdescstdamt`
--

CREATE TABLE IF NOT EXISTS `kc_ar_chargecreditdescstdamt` (
  `chargecreditdescstdamtid` int(11) NOT NULL auto_increment,
  `chargecreditdescid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  `standardamount` decimal(18,2) NOT NULL,
  PRIMARY KEY  (`chargecreditdescstdamtid`),
  UNIQUE KEY `ix_ar_chargecreditdescstdamt` (`schoolid`,`chargecreditdescid`),
  KEY `fk_ar_chargecreditdescstdamt_ar_chargecreditdesc` (`chargecreditdescid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_checkinissues`
--

CREATE TABLE IF NOT EXISTS `kc_ar_checkinissues` (
  `checkinissuesid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `issuedate` datetime NOT NULL,
  `checkinissuestid` int(11) NOT NULL,
  PRIMARY KEY  (`checkinissuesid`),
  KEY `fk_ar_checkinissues_ar_childschool` (`childschoolid`),
  KEY `fk_ar_checkinissues_g_person` (`personid`),
  KEY `fk_ar_checkinissues_g_typestable` (`checkinissuestid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_childabsences`
--

CREATE TABLE IF NOT EXISTS `kc_ar_childabsences` (
  `childabsencesid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `absentdate` datetime NOT NULL,
  `absentstart` int(11) NOT NULL,
  `absentend` int(11) NOT NULL,
  `absentreasontid` int(11) NOT NULL,
  `comment` varchar(30) NOT NULL,
  PRIMARY KEY  (`childabsencesid`),
  KEY `ix_ar_childabsences` (`childschoolid`),
  KEY `ix_ar_childabsences_childschool_absentdate` (`childschoolid`,`absentdate`),
  KEY `fk_ar_childabsences_g_typestable` (`absentreasontid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_childdocument`
--

CREATE TABLE IF NOT EXISTS `kc_ar_childdocument` (
  `childdocumentid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `documentdescription` varchar(50) NOT NULL,
  `childdocument` longblob NOT NULL,
  PRIMARY KEY  (`childdocumentid`),
  KEY `fk_ar_childdocument_ar_childschool` (`childschoolid`),
  KEY `fk_ar_childdocument_g_kiddiecareuser` (`kiddiecareuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_childrel`
--

CREATE TABLE IF NOT EXISTS `kc_ar_childrel` (
  `childrelid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `childreltid` int(11) NOT NULL,
  `isliveswith` tinyint(1) NOT NULL,
  `isemergency` tinyint(1) NOT NULL,
  `ispickup` tinyint(1) NOT NULL,
  `vieworder` int(11) NOT NULL,
  PRIMARY KEY  (`childrelid`),
  KEY `ix_ar_childrel` (`childschoolid`),
  KEY `fk_ar_childrel_g_person` (`personid`),
  KEY `fk_ar_accountchildrel_g_typestable` (`childreltid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_childschool`
--

CREATE TABLE IF NOT EXISTS `kc_ar_childschool` (
  `childschoolid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `primaryworkareaid` int(11) NOT NULL default '-1',
  `foodstatusid` int(11) NOT NULL,
  PRIMARY KEY  (`childschoolid`),
  UNIQUE KEY `ix_ar_childinfo_schoolid_personid` (`schoolid`,`personid`),
  KEY `idx_schoolid_primaryworkareaid` (`schoolid`,`primaryworkareaid`),
  KEY `ix_ar_childschool` (`schoolid`),
  KEY `fk_ar_childschool_fp_foodstatus` (`foodstatusid`),
  KEY `fk_ar_child_g_person` (`personid`),
  KEY `fk_ar_childschool_g_workarea` (`primaryworkareaid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_childschool`
--

INSERT INTO `kc_ar_childschool` (`childschoolid`, `schoolid`, `personid`, `primaryworkareaid`, `foodstatusid`) VALUES
(-1, -1, -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_classroom`
--

CREATE TABLE IF NOT EXISTS `kc_ar_classroom` (
  `workareaid` int(11) NOT NULL,
  `childteacherratio` decimal(18,2) NOT NULL,
  `maxchildren` int(11) NOT NULL default '0',
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`workareaid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kc_ar_classroom`
--

INSERT INTO `kc_ar_classroom` (`workareaid`, `childteacherratio`, `maxchildren`, `sortorder`) VALUES
(-1, 1.00, 1, -1),
(229, 0.00, 0, 1),
(233, 0.00, 0, 2),
(235, 0.00, 0, 3),
(237, 0.00, 0, 4),
(239, 0.00, 0, 5),
(241, 0.00, 0, 6),
(242, 0.00, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_depositaccounts`
--

CREATE TABLE IF NOT EXISTS `kc_ar_depositaccounts` (
  `depositaccountsid` int(11) NOT NULL auto_increment,
  `glaccountid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  PRIMARY KEY  (`depositaccountsid`),
  KEY `fk_ar_depositaccounts_g_glbankaccount` (`glaccountid`),
  KEY `fk_ar_depositaccounts_g_schools` (`schoolid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `kc_ar_depositaccounts`
--

INSERT INTO `kc_ar_depositaccounts` (`depositaccountsid`, `glaccountid`, `schoolid`) VALUES
(1, 1, 1),
(2, 3, 1),
(203, 2, 1),
(205, 105, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_depositreport`
--

CREATE TABLE IF NOT EXISTS `kc_ar_depositreport` (
  `depositreportid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `schooldepositnumber` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `creationdate` datetime NOT NULL,
  `postdate` datetime NOT NULL,
  `comment` varchar(50) NOT NULL,
  `istebatch` tinyint(1) NOT NULL,
  `receiptdata` longblob,
  `receiptdate` datetime default NULL,
  PRIMARY KEY  (`depositreportid`),
  UNIQUE KEY `ix_ar_schoolid_schooldepositnumber` (`schoolid`,`schooldepositnumber`),
  KEY `ix_ar_depositreport` (`schoolid`),
  KEY `fk_ar_depositreport_g_kiddiecareuser` (`kiddiecareuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_depositreport`
--

INSERT INTO `kc_ar_depositreport` (`depositreportid`, `schoolid`, `schooldepositnumber`, `kiddiecareuserid`, `creationdate`, `postdate`, `comment`, `istebatch`, `receiptdata`, `receiptdate`) VALUES
(-1, -1, 0, -1, '1900-01-01 00:00:00', '1900-01-01 00:00:00', 'System', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_depositreportdetail`
--

CREATE TABLE IF NOT EXISTS `kc_ar_depositreportdetail` (
  `depositreportdetailid` int(11) NOT NULL auto_increment,
  `depositreportid` int(11) NOT NULL,
  `glaccountid` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `isreconciled` tinyint(1) NOT NULL,
  PRIMARY KEY  (`depositreportdetailid`),
  KEY `fk_ar_depositreportdetail_ar_depositreport` (`depositreportid`),
  KEY `fk_ar_depositreportdetail_g_glaccount` (`glaccountid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_enrollment`
--

CREATE TABLE IF NOT EXISTS `kc_ar_enrollment` (
  `enrollmentid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `enrollmentstatustid` int(11) NOT NULL,
  PRIMARY KEY  (`enrollmentid`),
  KEY `idx_enrollmentstatustid_childschoolid_startdate_enddate` (`enrollmentstatustid`,`childschoolid`,`startdate`,`enddate`),
  KEY `ix_ar_enrollment_enrollmentstatustid_childschoolid` (`enrollmentstatustid`,`childschoolid`),
  KEY `ix_ar_enrollment_enrollmentstatustid_childschoolid_enddate` (`enrollmentstatustid`,`childschoolid`,`enddate`),
  KEY `ix_ar_enrollment_enrollmentstatustid_childschoolid_startdate` (`enrollmentstatustid`,`childschoolid`,`startdate`),
  KEY `ix_childschoollid` (`childschoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_enrollment`
--

INSERT INTO `kc_ar_enrollment` (`enrollmentid`, `childschoolid`, `startdate`, `enddate`, `enrollmentstatustid`) VALUES
(-1, -1, '2008-01-01 00:00:00', '2070-12-31 23:59:00', 287);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_logtableaccount`
--

CREATE TABLE IF NOT EXISTS `kc_ar_logtableaccount` (
  `logtableaccountid` int(11) NOT NULL auto_increment,
  `accountid` int(11) NOT NULL,
  `commentdate` datetime NOT NULL,
  `originaldate` datetime NOT NULL,
  `logsheettid` int(11) NOT NULL,
  `isrestricted` tinyint(1) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  PRIMARY KEY  (`logtableaccountid`),
  KEY `ix_g_logtableaccount_accountid` (`accountid`),
  KEY `fk_g_logtableaccount_kiddiecareuserid` (`kiddiecareuserid`),
  KEY `fk_ar_logtableaccount_g_typestable` (`logsheettid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_logtablechild`
--

CREATE TABLE IF NOT EXISTS `kc_ar_logtablechild` (
  `logtablechildid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `commentdate` datetime NOT NULL,
  `originaldate` datetime NOT NULL,
  `logsheettid` int(11) NOT NULL,
  `isrestricted` tinyint(1) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  PRIMARY KEY  (`logtablechildid`),
  KEY `ix_g_logtablechild_childschoolid` (`childschoolid`),
  KEY `fk_g_logtablechild_kiddiecareuserid` (`kiddiecareuserid`),
  KEY `fk_ar_logtablechild_g_typestable` (`logsheettid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_receiptcategories`
--

CREATE TABLE IF NOT EXISTS `kc_ar_receiptcategories` (
  `receiptcategoriesid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `chargecreditdescid` int(11) NOT NULL,
  PRIMARY KEY  (`receiptcategoriesid`),
  KEY `fk_ar_receiptcategories_ar_chargecreditdesc` (`chargecreditdescid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_schedule`
--

CREATE TABLE IF NOT EXISTS `kc_ar_schedule` (
  `scheduleid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `schedulekeyid` int(11) NOT NULL,
  `startappliesto` datetime NOT NULL,
  `endappliesto` datetime NOT NULL,
  `startweek` int(11) NOT NULL,
  `totalweeks` int(11) NOT NULL,
  PRIMARY KEY  (`scheduleid`),
  KEY `ix_childschoolid` (`childschoolid`),
  KEY `fk_ar_schedule_ar_schedulekey1` (`schedulekeyid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_schedule`
--

INSERT INTO `kc_ar_schedule` (`scheduleid`, `childschoolid`, `schedulekeyid`, `startappliesto`, `endappliesto`, `startweek`, `totalweeks`) VALUES
(-1, -1, -1, '1900-01-01 00:00:00', '2070-12-31 23:59:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_scheduledetail`
--

CREATE TABLE IF NOT EXISTS `kc_ar_scheduledetail` (
  `scheduledetailid` int(11) NOT NULL auto_increment,
  `schedulekeyid` int(11) NOT NULL,
  `weeknumber` int(11) NOT NULL,
  `daynumber` int(11) NOT NULL,
  `inminute` int(11) NOT NULL,
  `outminute` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  PRIMARY KEY  (`scheduledetailid`),
  KEY `ix_schedulekeyid` (`schedulekeyid`),
  KEY `fk_ar_scheduledetail_ar_classroom` (`workareaid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kc_ar_scheduledetail`
--

INSERT INTO `kc_ar_scheduledetail` (`scheduledetailid`, `schedulekeyid`, `weeknumber`, `daynumber`, `inminute`, `outminute`, `workareaid`) VALUES
(1, -1, 0, 1, 480, 960, -1),
(2, -1, 0, 2, 480, 960, -1),
(3, -1, 0, 3, 480, 960, -1),
(4, -1, 0, 4, 480, 960, -1),
(5, -1, 0, 5, 480, 960, -1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_schedulekey`
--

CREATE TABLE IF NOT EXISTS `kc_ar_schedulekey` (
  `schedulekeyid` int(11) NOT NULL auto_increment,
  `istemplate` tinyint(1) NOT NULL,
  PRIMARY KEY  (`schedulekeyid`),
  KEY `ix_schedulekey_istemplate` (`schedulekeyid`,`istemplate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_schedulekey`
--

INSERT INTO `kc_ar_schedulekey` (`schedulekeyid`, `istemplate`) VALUES
(-1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_scheduleoverrides`
--

CREATE TABLE IF NOT EXISTS `kc_ar_scheduleoverrides` (
  `scheduleoverridesid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `overridedate` datetime NOT NULL,
  `workareaid` int(11) NOT NULL,
  `inminute` int(11) NOT NULL,
  `outminute` int(11) NOT NULL,
  `comment` varchar(30) NOT NULL,
  PRIMARY KEY  (`scheduleoverridesid`),
  KEY `fk_ar_scheduleoverrides_ar_childschool` (`childschoolid`),
  KEY `fk_ar_scheduleoverrides_g_workarea` (`workareaid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_scheduletemplate`
--

CREATE TABLE IF NOT EXISTS `kc_ar_scheduletemplate` (
  `schedulekeyid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  `templatename` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY  (`schedulekeyid`),
  UNIQUE KEY `ix_ar_scheduletemplate_schoolid_templatename` (`schoolid`,`templatename`),
  KEY `ix_ar_scheduletemplate_schoolid` (`schoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_timecard`
--

CREATE TABLE IF NOT EXISTS `kc_ar_timecard` (
  `timecardid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  `punchinid` int(11) NOT NULL,
  `punchindate` datetime NOT NULL,
  `punchinminute` int(11) NOT NULL,
  `ispunchinrounded` tinyint(1) NOT NULL default '0',
  `punchoutid` int(11) NOT NULL,
  `punchoutdate` datetime NOT NULL,
  `punchoutminute` int(11) NOT NULL,
  `ispunchoutrounded` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`timecardid`),
  KEY `ix_ar_timecard_childschoolid` (`childschoolid`),
  KEY `ix_ar_timecard_childschoolid_timecardid` (`childschoolid`,`timecardid`),
  KEY `ix_ar_timecard_outdatedesc` (`punchoutdate`),
  KEY `ix_ar_timecard_outminute` (`punchoutminute`),
  KEY `ix_ar_timecard_punchinid` (`punchinid`),
  KEY `ix_ar_timecard_punchoutid` (`punchoutid`),
  KEY `ix_ar_timecard_startadnenddate` (`punchindate`,`punchoutdate`),
  KEY `fk_ar_timecard_ar_classroom` (`workareaid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kc_ar_timecard`
--

INSERT INTO `kc_ar_timecard` (`timecardid`, `childschoolid`, `workareaid`, `punchinid`, `punchindate`, `punchinminute`, `ispunchinrounded`, `punchoutid`, `punchoutdate`, `punchoutminute`, `ispunchoutrounded`) VALUES
(1, -1, -1, -1, '2009-06-29 00:00:00', 480, 1, -1, '2009-06-29 00:00:00', 1020, 1),
(2, -1, -1, -1, '2009-06-30 00:00:00', 480, 1, -1, '2009-06-30 00:00:00', 1020, 1),
(3, -1, -1, -1, '2009-07-01 00:00:00', 480, 1, -1, '2009-07-01 00:00:00', 1020, 1),
(4, -1, -1, -1, '2009-07-02 00:00:00', 480, 1, -1, '2009-07-02 00:00:00', 1020, 1),
(5, -1, -1, -1, '2009-07-03 00:00:00', 480, 1, -1, '2009-07-03 00:00:00', 1020, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_timecardaudit`
--

CREATE TABLE IF NOT EXISTS `kc_ar_timecardaudit` (
  `timecardauditid` int(11) NOT NULL auto_increment,
  `timecardid` int(11) NOT NULL,
  `childschoolid` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  `punchinid` int(11) NOT NULL,
  `punchindate` datetime NOT NULL,
  `punchinminute` int(11) NOT NULL,
  `punchoutid` int(11) NOT NULL,
  `punchoutdate` datetime NOT NULL,
  `punchoutminute` int(11) NOT NULL default '0',
  `changebyid` int(11) NOT NULL,
  `changecode` char(1) NOT NULL,
  `changedate` datetime NOT NULL,
  PRIMARY KEY  (`timecardauditid`),
  KEY `fk_ar_timecardaudit_ar_childschool` (`childschoolid`),
  KEY `fk_ar_timecardaudit_ar_classroom` (`workareaid`),
  KEY `fk_ar_timecardaudit_g_person_punchin` (`punchinid`),
  KEY `fk_ar_timecardaudit_g_person_punchout` (`punchoutid`),
  KEY `fk_ar_timecardaudit_g_kiddiecareuser` (`changebyid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_transactionreport`
--

CREATE TABLE IF NOT EXISTS `kc_ar_transactionreport` (
  `transactionreportid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `schooltransnumber` int(11) NOT NULL,
  `closeddate` datetime NOT NULL,
  `itemcount` int(11) NOT NULL,
  PRIMARY KEY  (`transactionreportid`),
  KEY `fk_ar_transactionreport_g_kiddiecareuser` (`kiddiecareuserid`),
  KEY `fk_ar_transactionreport_g_schools` (`schoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kc_ar_transactionreport`
--

INSERT INTO `kc_ar_transactionreport` (`transactionreportid`, `schoolid`, `kiddiecareuserid`, `schooltransnumber`, `closeddate`, `itemcount`) VALUES
(-1, -1, -1, 0, '1900-01-01 00:00:00', -1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_ar_tuitionexpress`
--

CREATE TABLE IF NOT EXISTS `kc_ar_tuitionexpress` (
  `accountid` int(11) NOT NULL,
  `objectdata` longblob NOT NULL,
  `clientidfortewebsite` char(13) NOT NULL,
  PRIMARY KEY  (`accountid`),
  UNIQUE KEY `ix_ar_tuitionexpress_accountid` (`accountid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_dailymealcount`
--

CREATE TABLE IF NOT EXISTS `kc_fp_dailymealcount` (
  `dailymealcountid` int(11) NOT NULL auto_increment,
  `childschoolid` int(11) NOT NULL,
  `mealdate` datetime NOT NULL,
  `foodstatusid` int(11) NOT NULL,
  `mealabbid1` tinyint(1) NOT NULL,
  `mealabbid2` tinyint(1) NOT NULL,
  `mealabbid3` tinyint(1) NOT NULL,
  `mealabbid4` tinyint(1) NOT NULL,
  `mealabbid5` tinyint(1) NOT NULL,
  `mealabbid6` tinyint(1) NOT NULL,
  `atrisk` tinyint(1) NOT NULL,
  PRIMARY KEY  (`dailymealcountid`),
  UNIQUE KEY `ix_fp_dailymealcount` (`childschoolid`,`mealdate`),
  KEY `fk_fp_dailymealcount_fp_foodstatus` (`foodstatusid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_dailyschoolmealdates`
--

CREATE TABLE IF NOT EXISTS `kc_fp_dailyschoolmealdates` (
  `dailyschoolmealid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `servingdate` datetime NOT NULL,
  PRIMARY KEY  (`dailyschoolmealid`),
  UNIQUE KEY `ix_schoolid_servingdate` (`schoolid`,`servingdate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_dailyschoolmealdescription`
--

CREATE TABLE IF NOT EXISTS `kc_fp_dailyschoolmealdescription` (
  `dailyschoolmealdescriptionid` int(11) NOT NULL auto_increment,
  `dailyschoolmealid` int(11) NOT NULL,
  `mealabbreviationid` int(11) NOT NULL,
  `mealdescription` varchar(200) NOT NULL,
  PRIMARY KEY  (`dailyschoolmealdescriptionid`),
  UNIQUE KEY `ix_dailyschoolmealid_mealabbreviationid` (`dailyschoolmealid`,`mealabbreviationid`),
  KEY `fk_fp_dailyschoolmealdescription_fp_mealabbreviation` (`mealabbreviationid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_foodstatus`
--

CREATE TABLE IF NOT EXISTS `kc_fp_foodstatus` (
  `foodstatusid` int(11) NOT NULL auto_increment,
  `description` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `isreimbursable` tinyint(1) NOT NULL,
  PRIMARY KEY  (`foodstatusid`),
  UNIQUE KEY `ix_fp_foodstatus_description` (`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `kc_fp_foodstatus`
--

INSERT INTO `kc_fp_foodstatus` (`foodstatusid`, `description`, `sortorder`, `isreimbursable`) VALUES
(-1, 'Not Enrolled', 4, 0),
(137, 'Free', 16, 1),
(138, 'Reduced', 17, 1),
(139, 'Paid', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_mealabbreviation`
--

CREATE TABLE IF NOT EXISTS `kc_fp_mealabbreviation` (
  `mealabbreviationid` int(11) NOT NULL,
  `abbreviation` varchar(4) default NULL,
  `description` varchar(30) default NULL,
  `sortorder` int(11) default NULL,
  `ismainmeal` tinyint(1) NOT NULL,
  PRIMARY KEY  (`mealabbreviationid`),
  UNIQUE KEY `ix_fp_mealabbreviation_abbreviation` (`abbreviation`),
  UNIQUE KEY `ix_fp_mealabbreviation_description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kc_fp_mealabbreviation`
--

INSERT INTO `kc_fp_mealabbreviation` (`mealabbreviationid`, `abbreviation`, `description`, `sortorder`, `ismainmeal`) VALUES
(1, 'BR', 'Breakfast', 1, 1),
(2, 'AM', 'Morning Snack', 2, 0),
(3, 'L', 'Lunch', 3, 1),
(4, 'PM', 'Afternoon Snack', 4, 0),
(5, 'D', 'Dinner', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_mealallowance`
--

CREATE TABLE IF NOT EXISTS `kc_fp_mealallowance` (
  `mealallowanceid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `mainmax` int(11) NOT NULL,
  `totalmax` int(11) NOT NULL,
  PRIMARY KEY  (`mealallowanceid`),
  UNIQUE KEY `ix_fp_mealallowance` (`schoolid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kc_fp_mealallowance`
--

INSERT INTO `kc_fp_mealallowance` (`mealallowanceid`, `schoolid`, `mainmax`, `totalmax`) VALUES
(1, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_mealtime`
--

CREATE TABLE IF NOT EXISTS `kc_fp_mealtime` (
  `mealtimeid` int(11) NOT NULL auto_increment,
  `workareaid` int(11) NOT NULL,
  `mealabbreviationid` int(11) NOT NULL,
  `starttime` int(11) NOT NULL,
  `stoptime` int(11) NOT NULL,
  PRIMARY KEY  (`mealtimeid`),
  UNIQUE KEY `ix_fp_mealtime` (`workareaid`,`mealabbreviationid`),
  KEY `fk_fp_mealtime_fp_mealabbreviation` (`mealabbreviationid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_fp_reimburse`
--

CREATE TABLE IF NOT EXISTS `kc_fp_reimburse` (
  `reimburseid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `foodstatusid` int(11) NOT NULL,
  `mealabbreviationid` int(11) NOT NULL,
  `amount` decimal(6,4) NOT NULL,
  PRIMARY KEY  (`reimburseid`),
  UNIQUE KEY `ix_fp_reimburse` (`schoolid`,`foodstatusid`,`mealabbreviationid`),
  KEY `fk_fp_reimburse_fp_foodstatus` (`foodstatusid`),
  KEY `fk_fp_reimburse_fp_mealabbreviation` (`mealabbreviationid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_checkin`
--

CREATE TABLE IF NOT EXISTS `kc_g_checkin` (
  `checkinid` int(11) NOT NULL auto_increment,
  `personid` int(11) NOT NULL,
  `persondata` varchar(8) NOT NULL,
  `fingerprintdata` longblob,
  `cardswipedata` varchar(25) NOT NULL,
  `pin` int(11) NOT NULL,
  `lastused` datetime NOT NULL,
  `personsignature` longblob,
  PRIMARY KEY  (`checkinid`),
  UNIQUE KEY `ix_personid_unigue` (`personid`),
  KEY `ix_pin` (`pin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_checkinlanguage`
--

CREATE TABLE IF NOT EXISTS `kc_g_checkinlanguage` (
  `languageid` int(11) NOT NULL auto_increment,
  `formname` varchar(50) NOT NULL,
  `variablename` varchar(50) NOT NULL,
  `languagetid` int(11) NOT NULL,
  `variabletext` varchar(500) NOT NULL,
  PRIMARY KEY  (`languageid`),
  KEY `fk_g_checkinlanguage_g_typestable` (`languagetid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=191 ;

--
-- Dumping data for table `kc_g_checkinlanguage`
--

INSERT INTO `kc_g_checkinlanguage` (`languageid`, `formname`, `variablename`, `languagetid`, `variabletext`) VALUES
(3, 'Global', 'BtnExit', 332, '&Salir'),
(4, 'Global', 'BtnExit', 330, '&Exit'),
(5, 'FrmCheckInMain', 'BtnLanguage', 330, '&Language'),
(6, 'FrmCheckInMain', 'BtnRegister', 330, '&Register'),
(7, 'FrmCheckInMain', 'BtnRegister', 332, '&Inscribirse'),
(8, 'FrmCheckInMain', 'BtnLanguage', 332, '&Idioma'),
(9, 'Global', 'BtnOptions', 332, '&Opciones'),
(10, 'Global', 'BtnOptions', 330, '&Options'),
(15, 'FrmCheckKids', 'BtnAccounting', 332, '&Contabilidad'),
(16, 'FrmCheckKids', 'BtnAccounting', 330, '&Accounting'),
(17, 'Global', 'BtnSchedules', 332, '&Horarios'),
(18, 'Global', 'BtnImmun', 332, '&Vacunas'),
(19, 'Global', 'BtnMessages', 332, '&Mensajes'),
(20, 'Global', 'BtnSchedules', 330, '&Schedules'),
(21, 'Global', 'BtnImmun', 330, '&Immunizations'),
(22, 'Global', 'BtnMessages', 330, '&Messages'),
(23, 'Global', 'BtnCancel', 330, '&Cancel'),
(24, 'Global', 'BtnCancel', 332, '&Cancelar'),
(25, 'FrmAuthOrEmp', 'BtnAuthorizedPickup', 332, '&Autorizado de recogida'),
(26, 'FrmAuthOrEmp', 'BtnAuthorizedPickup', 330, '&Authorized Pickup'),
(27, 'FrmAuthOrEmp', 'BtnEmployee', 330, '&Employee'),
(28, 'FrmAuthOrEmp', 'BtnEmployee', 332, '&Empleado'),
(29, 'Global', 'BtnNext', 330, '&Next'),
(30, 'Global', 'BtnNext', 332, '&Siguiente'),
(31, 'FrmKeyPad', 'BtnEnter', 330, '&Enter'),
(33, 'FrmKeyPad', 'BtnEnter', 332, '&Introducir'),
(35, 'FrmKeyPad', 'LblCaptionUserid', 332, 'Introduzca su Identificación de Usuario'),
(36, 'FrmKeyPad', 'LblCaptionPassword', 332, 'Introduzca los 4 a 8 dígitos de su Contraseña'),
(37, 'FrmKeyPad', 'LblCaptionPersonalID', 332, 'Introduzca los 4 a 8 dígitos de su número de identificación personal'),
(38, 'FrmKeyPad', 'LblCaptionRegPin', 332, 'Introduzca los 6 dígitos de su Número de Registro o Inscripción'),
(39, 'FrmKeyPad', 'LblCaptionRegPin', 330, 'Enter your 6 digit Registration Number'),
(40, 'FrmKeyPad', 'LblCaptionPersonalID', 330, 'Enter your 4 - 8 digit Personal ID number'),
(41, 'FrmKeyPad', 'LblCaptionPassword', 330, 'Enter your 4 - 8 digit Password'),
(42, 'FrmKeyPad', 'LblCaptionUserid', 330, 'Enter your User ID'),
(43, 'FrmMessageBox', 'NotImplementedTitle', 330, 'Not Implemented'),
(44, 'FrmMessageBox', 'NotImplementedMessage', 330, 'This functionality has not been implemented yet!'),
(45, 'FrmMessageBox', 'ThankYouTitle', 330, 'Thank You'),
(46, 'FrmMessageBox', 'ThankYouMessage', 330, 'Procedure Completed Successfully!'),
(47, 'FrmMessageBox', 'SomeErrorsTitle', 330, 'Attention'),
(48, 'FrmMessageBox', 'SomeErrorsMessage', 330, 'Procedure Did Not Complete Successfully!\r\nPlease see the Director.'),
(49, 'FrmMessageBox', 'NotImplementedTitle', 332, 'No implementado.'),
(50, 'FrmMessageBox', 'NotImplementedMessage', 332, '¡Esta función no se ha implementado todavía!'),
(51, 'FrmMessageBox', 'ThankYouTitle', 332, 'Gracias'),
(52, 'FrmMessageBox', 'ThankYouMessage', 332, '¡Procedimiento completado con éxito!'),
(53, 'FrmMessageBox', 'SomeErrorsTitle', 332, 'Atención'),
(54, 'FrmMessageBox', 'SomeErrorsMessage', 332, '¡Procedimiento no finalizó correctamente!\r\nPor favor vea al Director.'),
(55, 'FrmCheckInMain', 'BtnTapAKey', 330, '&Start Here...'),
(56, 'FrmCheckInMain', 'BtnTapAKey', 332, '&Empiece Aquí...'),
(59, 'ClsCheckInOut', '_TITLE', 330, 'Check In/Out'),
(60, 'ClsCheckInOut', '_TITLE', 332, 'Para Entrar / Salir'),
(61, 'ClsCheckInOut', 'NotFound', 332, 'La información que ha introducido no fue encontrada.\r\n\r\nHaga clic en el botón Cancelar para empezar de nuevo y vuelve a intentarlo.'),
(62, 'ClsCheckInOut', 'ScreenError', 332, 'Se produjo un error durante el Entrar / Salir.\r\n\r\nPor favor póngase en contacto con el director del centro.'),
(63, 'ClsCheckInOut', 'NotFound', 330, 'The information you entered was not found.\r\n\r\nClick on the cancel button to start over and try again.'),
(64, 'ClsCheckInOut', 'ScreenError', 330, 'An error occured during Check In/Out.\r\n\r\nPlease contact the center director.'),
(67, 'ClsRegistration', '_TITLE', 330, 'Attendance Registration'),
(68, 'ClsRegistration', 'RegScreenIntro', 330, 'To continue with registration you will need a Registration number from the center director.\r\n\r\nIf you have that number, click next to continue.\r\n\r\nIf you don''t have it then click cancel and see the center director.'),
(69, 'ClsRegistration', 'RegScreenFound1', 330, 'Welcome'),
(70, 'ClsRegistration', 'RegScreenNotFound', 330, 'The registration information you entered was not found.\r\n\r\nClick on the cancel button to start over and try again.'),
(71, 'ClsRegistration', 'RegScreenExplainPIN', 330, 'On the next screen you will need to enter a 4 - 8 digit Personal ID Number. You will use this ID Number to check in and out.\r\nClick on the Next button to continue.'),
(72, 'ClsRegistration', 'RegScreenExplainFingerprint', 330, 'On the next screen you we will need to get a Fingerprint from you. You will use this Fingerprint to check in and out.\r\n\r\nThe process will get your fingerprint from you four (4) times. Use the same finger all four times.\r\n\r\nClick on the Next button to continue.'),
(73, 'ClsRegistration', 'RegScreenExplainCardswipe', 330, 'On the next screen you we will need to get a Cardswipe from you. You will use this Cardswipe to check in and out.\r\n\r\nThe process will get your Cardswipe from you two (2) times. It will compare them and if they do not match it will ask for them again.\r\n\r\nClick on the Next button to continue.'),
(74, 'ClsRegistration', 'RegScreenExplainPassword', 330, 'Finally, on the next screen you will need to enter a 4 - 8 digit Password. You will use this password to check in and out.\r\n\r\nClick on the Next button to continue.'),
(75, 'ClsRegistration', 'RegScreenDone', 330, 'Congratulations! Registration is done.\r\n\r\nClick on the Next button to begin checking in/out.'),
(76, 'ClsRegistration', 'RegScreenError', 330, 'An error occurred during registration.\r\n\r\nPlease contact the center director.'),
(77, 'ClsRegistration', 'RegScreenFound2', 330, 'If this is not you, click on the cancel button and start over.\r\n\r\nIf this is you, click on next to continue with registration or cancel to exit.'),
(78, 'ClsRegistration', '_TITLE', 332, 'Registro de la atención'),
(79, 'ClsRegistration', 'RegScreenIntro', 332, 'Para continuar con la inscripción, usted necesitará un número de Inscripción del director del centro.\r\n\r\nSi usted tiene ese número, oprima el botón Siguiente para continuar.  Si usted tiene ese número, haga clic en el botón Siguiente para continuar.\r\n\r\nSi no lo tiene haga clic en cancelar y vea al director del centro.'),
(80, 'ClsRegistration', 'RegScreenFound1', 332, 'Bienvenido'),
(81, 'ClsRegistration', 'RegScreenFound2', 332, 'Si éste no es usted, haga clic en el botón de cancelar y empiece de nuevo.\r\n\r\nSi éste es usted, haga clic en el botón de Siguiente para continuar con la inscripción o cancelar para salir.'),
(82, 'ClsRegistration', 'RegScreenNotFound', 332, 'La información de inscripción que usted introdujo no se encontró.\r\n\r\nHaga clic en el botón Cancelar para empezar de nuevo y vuelve a intentarlo.'),
(83, 'ClsRegistration', 'RegScreenExplainPIN', 332, 'En la siguiente pantalla tendrá que introducir un Número de Identificación Personal de 4 a 8 dígitos.  Usted usará este Número de Identificación para entrar y salir.\r\n\r\nHaga clic en el botón Siguiente para continuar.'),
(84, 'ClsRegistration', 'RegScreenExplainFingerprint', 332, 'En la siguiente pantalla tendremos que conseguir una huella dactilar de usted. Usted usará esta huella dactilar para entrar y salir.\r\n\r\nEl proceso le pedirá su huella dactilar cuatro (4) veces. Utilice el mismo dedo en las cuatro ocasiones.\r\n\r\nHaga clic en el botón Siguiente para continuar.'),
(85, 'ClsRegistration', 'RegScreenExplainCardswipe', 332, 'En la siguiente pantalla necesitaremos que deslice su tarjeta.  Usted usará este deslice para entrar y para salir.\r\n\r\nEl proceso le pedirá que deslice su tarjeta dos (2) veces.  Se comparan y si no coinciden, se le pedirá de nuevo.\r\n\r\nHaga clic en el botón Siguiente para continuar.'),
(86, 'ClsRegistration', 'RegScreenExplainPassword', 332, 'Por último, en la siguiente pantalla usted tendrá que introducir una contraseña de 4 a 8 dígitos.  Usted utilizará esta contraseña para entrar y salir.\r\n\r\nHaga clic en el botón Siguiente para continuar.'),
(87, 'ClsRegistration', 'RegScreenDone', 332, '¡Felicidades!  Su inscripción está completa.\r\n\r\nHaga clic en el botón Siguiente para empezar a entrar / salir.'),
(88, 'ClsRegistration', 'RegScreenError', 332, 'Se produjo un error durante la inscripción.\r\n\r\nPor favor póngase en contacto con el director del centro.'),
(89, 'FrmMessageBox', 'InvalidSchoolTitle', 330, 'Invalid School'),
(90, 'FrmMessageBox', 'InvalidSchoolMessage', 330, 'Unable to find the selected school!'),
(91, 'FrmMessageBox', 'InvalidSchoolTitle', 332, 'Escuela no válida'),
(92, 'FrmMessageBox', 'InvalidSchoolMessage', 332, '¡No se pudo encontrar la escuela seleccionada!'),
(93, 'FrmMessageBox', 'CardSwipeErrorTitle', 330, 'Cardswipe Error'),
(94, 'FrmMessageBox', 'CardSwipeErrorMessage', 330, 'Please try swiping your card again!'),
(95, 'FrmMessageBox', 'CardSwipeErrorTitle', 332, 'Error al deslizar la tarjeta'),
(96, 'FrmMessageBox', 'CardSwipeErrorMessage', 332, '¡Por favor intente deslizar su tarjeta de nuevo!'),
(97, 'ClsRegistration', 'RegScreenTryAgain', 330, 'Unable to save registration information.\r\n\r\nPlease try again or see the Director.'),
(98, 'ClsRegistration', 'RegScreenTryAgain', 332, 'No se puede guardar la información de inscripción.\r\n\r\nPor favor, inténtelo de nuevo o vea al Director.'),
(101, 'FrmCardSwipe', 'LblMessageText1', 330, 'Press the button below to begin reading your card swipe'),
(102, 'FrmCardSwipe', 'LblMessageText1', 332, 'Oprima el botón de abajo para comenzar la lectura de su tarjeta'),
(104, 'FrmCardSwipe', 'BtnCardSwipe', 332, '&Presione aquí para comenzar…'),
(105, 'ClsCheckInOut', 'FoundButNotAuthorized', 330, 'Your information was found but you are not eligible for any transactions at this school.'),
(106, 'ClsCheckInOut', 'FoundButNotAuthorized', 332, 'Su información se encontró, pero no reúne los requisitos necesarios para hacer transacciones en esta escuela.'),
(107, 'Global', 'BtnFinish', 330, '&Finish'),
(108, 'Global', 'BtnFinish', 332, '&Terminar'),
(109, 'FrmMessageBox', 'UnreadMessagesTitle', 330, 'Unread Messages'),
(110, 'FrmMessageBox', 'UnreadMessagesMessage', 330, 'Please read all of your messages.'),
(111, 'FrmMessageBox', 'UnreadMessagesTitle', 332, 'Los mensajes no leídos.'),
(112, 'FrmMessageBox', 'UnreadMessagesMessage', 332, 'Por favor, lea todos los mensajes.'),
(113, 'FrmMessageBox', 'FingerprintErrorTitle', 330, 'Fingerprint Error'),
(114, 'FrmMessageBox', 'FingerprintErrorTitle', 332, 'Error de huella digital'),
(115, 'FrmMessageBox', 'FingerprintErrorMessage', 330, 'Please try reading your fingerprint again!'),
(116, 'FrmMessageBox', 'FingerprintErrorMessage', 332, '¡Por favor intente introducir la huella digital de nuevo!'),
(117, 'FrmFingerprint', 'fingerUp', 330, 'Place your finger on the scanner now.'),
(118, 'FrmFingerprint', 'fingerUp', 332, 'Coloque el dedo en el escáner ahora.'),
(119, 'FrmFingerprint', 'sameFinger', 330, 'Use the same finger you used when you registered.'),
(120, 'FrmFingerprint', 'sameFinger', 332, 'Utilice el mismo dedo que utilizó cuando se inscribió.'),
(121, 'FrmFingerprint', 'tryAgain', 332, '¡Por favor, inténtelo de nuevo!'),
(122, 'FrmFingerprint', 'tryAgain', 330, 'Please try again!'),
(123, 'FrmFingerprint', 'fingerDown', 330, 'Remove your finger from the scanner now.'),
(124, 'FrmFingerprint', 'fingerDown', 332, 'Retire el dedo del escáner ahora.'),
(125, 'ClsRegistration', 'RegScreenTryAgainCS', 330, 'Unable to save registration information.\r\n\r\nTry again and be sure to use a different Card.'),
(126, 'ClsRegistration', 'RegScreenTryAgainFP', 330, 'Unable to save registration information.\r\n\r\nTry again and be sure to use a different Finger.'),
(127, 'ClsRegistration', 'RegScreenTryAgainCS', 332, 'No se puede guardar la información de inscripción.\r\n\r\nTrate otra vez y asegúrese de usar una Tarjeta diferente.'),
(128, 'ClsRegistration', 'RegScreenTryAgainFP', 332, 'No se puede guardar la información de inscripción.\r\n\r\nInténtelo de nuevo y asegúrese de usar un dedo diferente.'),
(129, 'Global', 'BtnBypass', 330, '&Bypass'),
(130, 'Global', 'BtnBypass', 332, '&Saltar'),
(131, 'FrmCardSwipe', 'flashingText1', 330, 'Swipe Card Now...'),
(132, 'FrmCardSwipe', 'flashingText2', 330, 'Swipe Card Again...'),
(133, 'FrmCardSwipe', 'flashingText1', 332, 'Deslice la tarjeta ahora...'),
(134, 'FrmCardSwipe', 'flashingText2', 332, 'Deslice la tarjeta de nuevo…'),
(135, 'FrmCardSwipe', 'LblMessageText2', 332, 'Deslice su tarjeta ahora'),
(136, 'FrmCardSwipe', 'LblMessageText2', 330, 'Swipe your card now.'),
(137, 'FrmKeyPad', 'BtnBackspace', 330, 'Backspace'),
(138, 'FrmKeyPad', 'BtnBackspace', 332, 'Tecla de retroceso'),
(139, 'Global', 'BtnClear', 330, 'C&lear'),
(140, 'Global', 'BtnClear', 332, '&Borrar'),
(141, 'Global', 'SigClear', 330, 'Sign the signature capture pad.'),
(142, 'Global', 'SigClear', 332, 'Firme en la plataforma de captura de la firma.'),
(143, 'FrmMessageBox', 'InvalidSignatureTitle', 330, 'Invalid Signature'),
(144, 'FrmMessageBox', 'InvalidSignatureMessage', 330, 'Please sign the signature capture pad!'),
(145, 'FrmMessageBox', 'InvalidSignatureMessage', 332, '¡Por favor firme la plataforma de captura de firma!'),
(146, 'FrmMessageBox', 'InvalidSignatureTitle', 332, 'Firma no es válida'),
(147, 'FrmMessageBox', 'ScheduleAdherenceTitle', 330, 'Schedule Adherence'),
(148, 'FrmMessageBox', 'ScheduleAdherenceMessage', 330, 'You are not authorized at this time!'),
(149, 'FrmMessageBox', 'ScheduleAdherenceTitle', 332, 'Adherencia al horario o al calendario'),
(150, 'FrmMessageBox', 'ScheduleAdherenceMessage', 332, '¡Usted no está autorizado en este momento!'),
(151, 'Global', 'BtnTransfer', 330, 'Transfer'),
(152, 'Global', 'BtnTransfer', 332, 'Transferir'),
(153, 'Global', 'BtnTimeCard', 332, '&Tarjeta de tiempo'),
(154, 'Global', 'BtnTimeCard', 330, '&Timecard'),
(155, 'Global', 'BtnSelect', 330, '&Select'),
(156, 'Global', 'BtnSelect', 332, '&Seleccione'),
(159, 'FrmMessageBox', 'EmploymentStatusTitle', 330, 'Employment Status'),
(160, 'FrmMessageBox', 'EmploymentStatusMessage', 330, 'Your Employment Status does not allow you to Check In/Out as an Employee.'),
(161, 'FrmMessageBox', 'EmploymentStatusTitle', 332, 'Estado de Empleo'),
(162, 'FrmMessageBox', 'EmploymentStatusMessage', 332, 'Su empleo de estado no le permite Check In / Out, como un empleado.'),
(165, 'ClsRegistration', 'RegScreenTryAgainPersonID', 330, 'Unable to save registration information.\r\n\r\nTry again and be sure to use a different Person ID.'),
(166, 'ClsRegistration', 'RegScreenTryAgainPersonID', 332, 'No se puede guardar la información de inscripción.\r\n\r\nInténtelo de nuevo y asegúrese de usar un ID diferente persona.'),
(169, 'FrmKeyPad', 'InvalidValueTitle', 332, 'InvalidValueTitle'),
(170, 'FrmKeyPad', 'InvalidValueMessage', 332, 'InvalidValueMessage'),
(171, 'FrmMessageBox', 'InvalidValueTitle', 330, 'Invalid value!'),
(172, 'FrmMessageBox', 'InvalidValueMessage', 330, 'The entered value is not a valid combination.'),
(173, 'FrmMessageBox', 'InvalidValueTitle', 332, 'Valor no válido'),
(174, 'FrmMessageBox', 'InvalidValueMessage', 332, 'El valor indicado no es una combinación válida.'),
(175, 'FrmMessageBox', 'RegDupeFingerprintTitle', 330, 'Invalid Fingerprint'),
(176, 'FrmMessageBox', 'RegDupeFingerprintMessage', 330, 'Unable to use Fingerprint.\r\nTry again using a different finger.'),
(177, 'FrmMessageBox', 'RegDupePersonIDTitle', 330, 'Invalid Personal ID'),
(178, 'FrmMessageBox', 'RegDupePersonIDMessage', 330, 'The entered Personal ID is already in use.\r\nTry again using a different Personal ID.'),
(179, 'FrmMessageBox', 'RegDupeCardSwipeTitle', 330, 'Invalid Cardswipe'),
(180, 'FrmMessageBox', 'RegDupeCardSwipeMessage', 330, 'La tarjeta birlado ya está en uso.\r\nInténtalo de nuevo con un Cardswipe diferentes.'),
(181, 'FrmMessageBox', 'RegDupeFingerprintTitle', 332, 'No válido de huellas dactilares'),
(182, 'FrmMessageBox', 'RegDupeFingerprintMessage', 332, 'No se puede utilizar de huellas dactilares.\r\nPruebe de nuevo con otro dedo.'),
(183, 'FrmMessageBox', 'RegDupePersonIDTitle', 332, 'Personal ID no válido'),
(184, 'FrmMessageBox', 'RegDupePersonIDMessage', 332, 'El personal entró en ID ya está en uso.\r\nPruebe de nuevo con un ID diferente personal.'),
(185, 'FrmMessageBox', 'RegDupeCardSwipeTitle', 332, 'No válido Cardswipe'),
(186, 'FrmMessageBox', 'RegDupeCardSwipeMessage', 332, 'La tarjeta birlado ya está en uso.\r\nInténtalo de nuevo con un Cardswipe diferentes.'),
(187, 'FrmMessageBox', 'RegSuccessTitle', 330, 'Congratulations!'),
(188, 'FrmMessageBox', 'RegSuccessMessage', 330, 'Registration is done.'),
(189, 'FrmMessageBox', 'RegSuccessTitle', 332, 'Felicidades!'),
(190, 'FrmMessageBox', 'RegSuccessMessage', 332, 'La inscripción se hace.');

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_checkinsignatures`
--

CREATE TABLE IF NOT EXISTS `kc_g_checkinsignatures` (
  `signatureid` int(11) NOT NULL auto_increment,
  `personid` int(11) NOT NULL,
  `childschoolid` int(11) NOT NULL,
  `inout` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL,
  `signature` longblob NOT NULL,
  `workareaid` int(11) NOT NULL,
  PRIMARY KEY  (`signatureid`),
  KEY `fk_g_checkinsignatures_ar_childschool` (`childschoolid`),
  KEY `fk_g_checkinsignatures_g_person` (`personid`),
  KEY `fk_g_checkinsignatures_g_workarea` (`workareaid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_config`
--

CREATE TABLE IF NOT EXISTS `kc_g_config` (
  `config_id` int(11) NOT NULL auto_increment,
  `config_title` varchar(255) NOT NULL default '',
  `config_key` varchar(255) NOT NULL default '',
  `config_value` varchar(255) NOT NULL default '',
  `config_description` varchar(255) NOT NULL default '',
  `config_group_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `use_function` varchar(255) default NULL,
  `set_function` varchar(255) default NULL,
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `kc_g_config`
--

INSERT INTO `kc_g_config` (`config_id`, `config_title`, `config_key`, `config_value`, `config_description`, `config_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Center Name', 'CENTER_NAME', 'Test Center', 'The name of my center', 0, 1, NULL, '0000-00-00 00:00:00', NULL, NULL),
(2, 'Center Owner', 'CENTER_OWNER', 'Test Owner', 'The name of my center owner', 0, 2, NULL, '0000-00-00 00:00:00', NULL, NULL),
(3, 'Center E-Mail Address', 'CENTER_OWNER_EMAIL_ADDRESS', 'millerdesignstudios@gmail.com', 'The e-mail address of my center owner', 0, 3, NULL, '0000-00-00 00:00:00', NULL, NULL),
(4, 'E-Mail From', 'EMAIL_FROM', 'Test Center', 'The name used in (sent) e-mails', 0, 4, NULL, '0000-00-00 00:00:00', NULL, NULL),
(5, 'Center Address', 'CENTER_STREETADDRESS', '123 Anywhere St', 'The street address of my center', 0, 5, NULL, '0000-00-00 00:00:00', NULL, NULL),
(6, 'Center State', 'CENTER_STATE', '', 'The state my center is located in.', 0, 6, NULL, '0000-00-00 00:00:00', NULL, NULL),
(7, 'Center Zip Code', 'CENTER_POSTAL', '37042', 'The postal code my center is located in.', 0, 7, NULL, '0000-00-00 00:00:00', NULL, NULL),
(8, 'Country', 'CENTER_COUNTRY', '', 'The country my center is located in.', 0, 8, NULL, '0000-00-00 00:00:00', NULL, NULL),
(9, 'Area Code 1', 'CENTER_AREACODE_1', '931', 'The area code of my center''s main phone number', 0, 9, NULL, '0000-00-00 00:00:00', NULL, NULL),
(10, 'Phone Number 1', 'CENTER_PHONE_1', '1231234', 'The main phone number of my center.', 0, 10, NULL, '0000-00-00 00:00:00', NULL, NULL),
(11, 'Area Code 2', 'CENTER_AREACODE_2', '931', 'The area code of my center''s secondary phone number', 0, 11, NULL, '0000-00-00 00:00:00', NULL, NULL),
(12, 'Phone Number 2', 'CENTER_PHONE_2', '4564567', 'The secondary phone number of my center.', 0, 12, NULL, '0000-00-00 00:00:00', NULL, NULL),
(13, 'Fax Area Code', 'CENTER_FAXAREACODE', '931', 'The area code of my center''s fax number', 0, 13, NULL, '0000-00-00 00:00:00', NULL, NULL),
(14, 'Fax Number', 'CENTER_FAX', '7897890', 'The fax number of my center.', 0, 14, NULL, '0000-00-00 00:00:00', NULL, NULL),
(15, 'Send E-Mails', 'SEND_EMAILS', 'TRUE', 'Send out e-mails', 0, 15, NULL, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_countrylist`
--

CREATE TABLE IF NOT EXISTS `kc_g_countrylist` (
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) default NULL,
  `numcode` smallint(6) default NULL,
  PRIMARY KEY  (`iso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kc_g_countrylist`
--

INSERT INTO `kc_g_countrylist` (`iso`, `name`, `printable_name`, `iso3`, `numcode`) VALUES
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CN', 'CHINA', 'China', 'CHN', 156),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IN', 'INDIA', 'India', 'IND', 356),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('PE', 'PERU', 'Peru', 'PER', 604),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_custompayperiods`
--

CREATE TABLE IF NOT EXISTS `kc_g_custompayperiods` (
  `payperiodid` int(11) NOT NULL auto_increment,
  `regionid` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  PRIMARY KEY  (`payperiodid`),
  KEY `fk_g_payperiods_g_regions` (`regionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_department`
--

CREATE TABLE IF NOT EXISTS `kc_g_department` (
  `departmentid` int(11) NOT NULL auto_increment,
  `departmentname` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`departmentid`),
  UNIQUE KEY `ix_g_department_departmentname` (`departmentname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `kc_g_department`
--

INSERT INTO `kc_g_department` (`departmentid`, `departmentname`, `sortorder`) VALUES
(-1, 'Unknown', -1),
(147, 'Infants', 1),
(149, 'Toddlers', 2),
(150, 'Preschool', 3),
(151, 'PreKindergarten', 4),
(152, 'Kindergarten', 5),
(153, 'School Age', 6),
(154, 'Administration', 7),
(155, 'Transportation', 8),
(156, 'Food Service', 9);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_elements`
--

CREATE TABLE IF NOT EXISTS `kc_g_elements` (
  `elementid` int(11) NOT NULL auto_increment,
  `elementname` varchar(128) NOT NULL,
  `minimumusergrouptid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`elementid`),
  UNIQUE KEY `ix_g_elements_elementname` (`elementname`),
  KEY `fk_g_elements_g_typestable` (`minimumusergrouptid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `kc_g_elements`
--

INSERT INTO `kc_g_elements` (`elementid`, `elementname`, `minimumusergrouptid`, `active`) VALUES
(48, 'kiddiecare.Component.Element.ClassroomChildrenCounts.dll', 138, 1),
(49, 'kiddiecare.Component.Element.ClassroomChildrenTeacherCounts.dll', 138, 1),
(50, 'kiddiecare.Component.Element.EmployeeLocationsNow.dll', 138, 1),
(51, 'kiddiecare.Component.Element.FTESummaryElement.dll', 138, 1),
(52, 'kiddiecare.Component.Element.RevenuesViewer.dll', 138, 1),
(53, 'kiddiecare.Component.Element.UpcomingBirthdays.dll', 138, 1),
(56, 'kiddiecare.Component.Element.AccountLedgerRollup.dll', 138, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_eventlog`
--

CREATE TABLE IF NOT EXISTS `kc_g_eventlog` (
  `severity` int(11) NOT NULL,
  `eventtype` int(11) NOT NULL,
  `component` int(11) NOT NULL,
  `eventdate` datetime NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `computer` varchar(50) NOT NULL,
  `eventmessage` varchar(140) NOT NULL,
  `schoolid` int(11) NOT NULL default '-1',
  KEY `ix_g_eventlog_date` (`eventdate`),
  KEY `ix_g_eventlog_kiddiecareuserid` (`kiddiecareuserid`),
  KEY `fk_g_eventlog_g_schools` (`schoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_exposureregion`
--

CREATE TABLE IF NOT EXISTS `kc_g_exposureregion` (
  `regionexposureid` int(11) NOT NULL auto_increment,
  `exposurecattid` int(11) NOT NULL,
  `targetid` int(11) NOT NULL,
  `regionid` int(11) NOT NULL,
  PRIMARY KEY  (`regionexposureid`),
  UNIQUE KEY `ix_g_exposureregion` (`regionid`,`regionexposureid`,`targetid`),
  KEY `ix_g_exposureregion_1` (`regionid`,`targetid`,`exposurecattid`),
  KEY `fk_g_exposureregion_g_typestable` (`exposurecattid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `kc_g_exposureregion`
--

INSERT INTO `kc_g_exposureregion` (`regionexposureid`, `exposurecattid`, `targetid`, `regionid`) VALUES
(9, 190, -215, 1),
(11, 190, -214, 1),
(10, 190, -213, 1),
(8, 190, -212, 1),
(7, 190, -211, 1),
(3, 190, -115, 1),
(5, 190, -114, 1),
(4, 190, -113, 1),
(2, 190, -112, 1),
(1, 190, -111, 1),
(6, 190, -100, 1),
(47, 312, 56, 1),
(62, 312, 57, 1),
(63, 312, 58, 1),
(64, 312, 59, 1),
(49, 189, 76, 1),
(48, 189, 82, 1),
(50, 189, 83, 1),
(52, 189, 92, 1),
(53, 189, 93, 1),
(54, 189, 94, 1),
(55, 189, 95, 1),
(56, 189, 96, 1),
(57, 189, 97, 1),
(58, 189, 98, 1),
(46, 190, 151, 1),
(32, 190, 153, 1),
(33, 190, 154, 1),
(34, 190, 155, 1),
(35, 190, 156, 1),
(36, 190, 157, 1),
(31, 190, 160, 1),
(30, 190, 161, 1),
(29, 190, 162, 1),
(28, 190, 163, 1),
(27, 190, 164, 1),
(26, 190, 165, 1),
(25, 190, 166, 1),
(24, 190, 168, 1),
(40, 190, 169, 1),
(37, 190, 171, 1),
(38, 190, 172, 1),
(41, 190, 174, 1),
(42, 190, 175, 1),
(43, 190, 176, 1),
(12, 190, 177, 1),
(13, 190, 178, 1),
(14, 190, 179, 1),
(15, 190, 181, 1),
(16, 190, 182, 1),
(17, 190, 183, 1),
(18, 190, 184, 1),
(19, 190, 185, 1),
(23, 190, 186, 1),
(22, 190, 187, 1),
(21, 190, 188, 1),
(20, 190, 189, 1),
(39, 190, 190, 1),
(51, 190, 193, 1),
(59, 190, 195, 1),
(60, 190, 197, 1),
(61, 190, 198, 1),
(65, 190, 199, 1),
(66, 190, 200, 1),
(67, 190, 201, 1),
(44, 186, 306, 1),
(45, 186, 308, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_exposureschool`
--

CREATE TABLE IF NOT EXISTS `kc_g_exposureschool` (
  `schoolexposureid` int(11) NOT NULL auto_increment,
  `exposurecattid` int(11) NOT NULL,
  `targetid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  PRIMARY KEY  (`schoolexposureid`),
  UNIQUE KEY `ix_g_exposureschool` (`schoolid`,`schoolexposureid`,`targetid`),
  KEY `fk_g_exposureschool_g_typestable` (`exposurecattid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kc_g_exposureschool`
--

INSERT INTO `kc_g_exposureschool` (`schoolexposureid`, `exposurecattid`, `targetid`, `schoolid`) VALUES
(1, 189, 104, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_glaccount`
--

CREATE TABLE IF NOT EXISTS `kc_g_glaccount` (
  `glaccountid` int(11) NOT NULL auto_increment,
  `glaccountgroupid` int(11) NOT NULL,
  `glaccountnumber` varchar(15) NOT NULL,
  `description` varchar(35) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`glaccountid`),
  UNIQUE KEY `ix_g_glaccountnumber` (`glaccountnumber`),
  KEY `ix_g_glaccountdescription` (`description`),
  KEY `ix_g_glaccountgroupid` (`glaccountgroupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `kc_g_glaccount`
--

INSERT INTO `kc_g_glaccount` (`glaccountid`, `glaccountgroupid`, `glaccountnumber`, `description`, `isactive`, `sortorder`) VALUES
(-100, 2, '900.00', 'Undeposited Payments', 1, 1),
(-1, -1, '0.00', 'Sys', 1, 0),
(1, 2, '1000.00', 'My Checking Account', 1, 2),
(2, 2, '1001.00', 'My Savings Account', 1, 3),
(3, 2, '1002.00', 'My Money Market Account', 1, 7),
(4, 2, '1110.00', 'Accounts Receivable', 1, 9),
(5, 2, '1140.00', 'Bad Debt Allowance', 1, 12),
(6, 2, '1120.00', 'Employee Advances', 1, 10),
(7, 3, '1200.00', 'Inventory', 1, 1),
(8, 3, '1205.00', 'Office Equipment', 1, 2),
(9, 3, '1210.00', 'Depreciate-Off Equip', 1, 3),
(10, 3, '1215.00', 'Furniture', 1, 4),
(11, 3, '1220.00', 'Depreciate-Furniture', 1, 5),
(12, 3, '1225.00', 'Vehicles', 1, 6),
(13, 3, '1230.00', 'Depreciate-Vehicles', 1, 7),
(14, 3, '1235.00', 'Buildings', 1, 8),
(15, 3, '1240.00', 'Depreciate-Buildings', 1, 9),
(16, 3, '1245.00', 'Land', 1, 10),
(17, 4, '1300.00', 'Long Term Investment', 1, 1),
(19, 5, '2000.00', 'Accounts Payable', 1, 1),
(20, 5, '2005.00', 'Customer Deposit', 1, 2),
(21, 5, '2010.00', 'Federal Tax Liability', 1, 3),
(22, 5, '2015.00', 'FICA (Social Security)', 1, 4),
(23, 5, '2020.00', 'FICA (Medicare)', 1, 5),
(24, 5, '2025.00', 'State Tax Liability', 1, 6),
(25, 5, '2030.00', 'Local Tax Liability', 1, 7),
(26, 5, '2035.00', 'Worker''s Comp', 1, 8),
(27, 5, '2040.00', 'Health Plan', 1, 9),
(28, 5, '2045.00', 'Retirement Plan', 1, 10),
(29, 5, '2050.00', 'Employee Child Care', 1, 11),
(30, 6, '2100.00', 'Mortgages', 1, 1),
(31, 6, '2105.00', 'Long Term Notes', 1, 2),
(32, 7, '3000.00', 'Owner''s Equity', 1, 1),
(33, 7, '3010.00', 'Profit & Loss', 1, 2),
(34, 8, '4000.00', 'Tuition', 1, 1),
(35, 8, '4010.00', 'Tuition: Drop In', 1, 4),
(36, 8, '4015.00', 'Registration', 1, 5),
(37, 8, '4020.00', 'Activity Fees', 1, 6),
(38, 8, '4025.00', 'Late Fees', 1, 7),
(39, 8, '4030.00', 'NSF Fees', 1, 8),
(40, 8, '4035.00', 'Misc. Charges', 1, 9),
(41, 8, '4040.00', 'Customer Refund', 1, 10),
(42, 9, '4100.00', 'Interest Revenue', 1, 1),
(43, 9, '4105.00', 'Other Revenue', 1, 2),
(44, 9, '4190.00', 'Bad Debt', 1, 5),
(45, 10, '5000.00', 'Office Supplies', 1, 1),
(46, 10, '5005.00', 'School Supplies', 1, 2),
(47, 10, '5010.00', 'Teacher Supplies', 1, 3),
(48, 10, '5015.00', 'Phone Company', 1, 4),
(49, 10, '5020.00', 'Electric Company', 1, 5),
(50, 10, '5025.00', 'Insurance', 1, 6),
(51, 10, '5030.00', 'Maintenance', 1, 7),
(52, 10, '5035.00', 'Amortization', 1, 8),
(53, 10, '5040.00', 'Depreciation', 1, 9),
(54, 10, '5045.00', 'Rent & Leases', 1, 10),
(55, 10, '5050.00', 'Payroll-Administration', 1, 11),
(56, 10, '5055.00', 'Payroll-Teachers', 1, 12),
(57, 10, '5060.00', 'Payroll-Assistant Teachers', 1, 13),
(58, 10, '5070.00', 'Payroll-Vacation Benefits', 1, 15),
(59, 10, '5075.00', 'Payroll-Sick Time Benefits', 1, 16),
(60, 10, '5080.00', 'Payroll-Training Benefits', 1, 17),
(61, 10, '5085.00', 'Contract Labor', 1, 18),
(62, 10, '5090.00', 'Consulting Fees', 1, 19),
(63, 10, '5095.00', 'Bank Fees', 1, 20),
(64, 10, '5200.00', 'Bad Debt Loss', 1, 22),
(65, 11, '5500.00', 'FICA Share (Social Security)', 1, 1),
(66, 11, '5510.00', 'FUTA Tax', 1, 3),
(67, 11, '5530.00', 'Workman''s Comp', 1, 5),
(68, 12, '5800.00', 'Travel', 1, 1),
(69, 12, '5805.00', 'Meals', 1, 2),
(70, 12, '5810.00', 'Lodging', 1, 3),
(71, 12, '5815.00', 'Personal Expenses', 1, 4),
(102, 9, '4110.00', 'Agency Transfer', 1, 3),
(103, 9, '4115.00', 'Agency Adjustment', 1, 4),
(104, 5, '2090.00', 'Credit Card Debt', 1, 12),
(105, 2, '1130.00', 'Petty Cash', 1, 11),
(106, 8, '4045.00', 'Grants, Donations, Fundraisers', 1, 11),
(107, 8, '4050.00', 'Food Program Reimbursement', 1, 12),
(108, 8, '4005.00', 'Tuition: Subsidized', 1, 2),
(109, 11, '5505.00', 'FICA Share (Medicare)', 1, 2),
(110, 11, '5515.00', 'SUTA Tax', 1, 4),
(111, 12, '5820.00', 'Entertainment', 1, 5),
(112, 10, '5100.00', 'Interest Paid', 1, 21),
(113, 8, '4006.00', 'Tuition: Employee Child Care', 1, 3),
(114, 2, '1003.00', 'My CD Account', 1, 8),
(115, 11, '5535.00', 'Other Tax', 1, 6),
(116, 10, '5065.00', 'Payroll-Other', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_glaccountgroup`
--

CREATE TABLE IF NOT EXISTS `kc_g_glaccountgroup` (
  `glaccountgroupid` int(11) NOT NULL auto_increment,
  `glaccounttypeid` int(11) NOT NULL,
  `glaccounttype` int(11) NOT NULL,
  `description` varchar(35) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`glaccountgroupid`),
  KEY `ix_g_glaccount_glaccounttypeid` (`glaccounttypeid`),
  KEY `ix_g_glaccountgroup_glaccountgroupid` (`glaccountgroupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `kc_g_glaccountgroup`
--

INSERT INTO `kc_g_glaccountgroup` (`glaccountgroupid`, `glaccounttypeid`, `glaccounttype`, `description`, `sortorder`) VALUES
(-1, 0, 0, 'SysOwned', 0),
(2, 1, -1, 'Current Assets', 1),
(3, 1, -1, 'Long Term Assets', 2),
(4, 1, -1, 'Other Assets', 3),
(5, 2, 1, 'Current Liabilities', 1),
(6, 2, 1, 'Long Term Liabilities', 2),
(7, 3, 1, 'Equity Accounts', 1),
(8, 4, 1, 'Revenue From Services', 1),
(9, 4, 1, 'Other Revenue', 2),
(10, 5, -1, 'Operational Expenses', 1),
(11, 5, -1, 'Tax Expenses', 2),
(12, 5, -1, 'Other Expenses', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_glbankaccount`
--

CREATE TABLE IF NOT EXISTS `kc_g_glbankaccount` (
  `glaccountid` int(11) NOT NULL,
  `lastchecknumber` int(11) NOT NULL,
  `ischeckbook` tinyint(1) NOT NULL,
  `isinuse` tinyint(1) NOT NULL default '0',
  `sortorder` int(11) NOT NULL,
  UNIQUE KEY `ix_g_glcheckbookaccountid` (`glaccountid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kc_g_glbankaccount`
--

INSERT INTO `kc_g_glbankaccount` (`glaccountid`, `lastchecknumber`, `ischeckbook`, `isinuse`, `sortorder`) VALUES
(1, 0, 1, 0, 1),
(2, 0, 0, 0, 2),
(3, 0, 1, 0, 3),
(105, 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_holiday`
--

CREATE TABLE IF NOT EXISTS `kc_g_holiday` (
  `holidayid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `holidaydate` datetime NOT NULL,
  `comment` varchar(30) NOT NULL,
  PRIMARY KEY  (`holidayid`),
  UNIQUE KEY `ix_g_holiday_schoolid_holidaydate` (`schoolid`,`holidaydate`),
  KEY `ix_g_holiday_schoolid` (`schoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_immunrequirement`
--

CREATE TABLE IF NOT EXISTS `kc_g_immunrequirement` (
  `immunrequirementid` int(11) NOT NULL auto_increment,
  `immunrequirementtid` int(11) NOT NULL,
  `scope` int(11) NOT NULL,
  `appliesto` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `tooltip` varchar(150) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`immunrequirementid`),
  KEY `fk_g_immunrequirement_g_typestable` (`immunrequirementtid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `kc_g_immunrequirement`
--

INSERT INTO `kc_g_immunrequirement` (`immunrequirementid`, `immunrequirementtid`, `scope`, `appliesto`, `description`, `tooltip`, `sortorder`) VALUES
(76, 375, 1, 1, 'Varicella', '', 8),
(82, 375, 1, 1, 'DTaP', 'Diphtheria, Tetanus, Pertussis', 2),
(83, 375, 1, 1, 'Hepatitis B', '', 0),
(92, 375, 1, 1, 'Rotavirus', '', 1),
(93, 375, 1, 1, 'Hib', '', 3),
(94, 375, 1, 1, 'PCV', '', 4),
(95, 375, 1, 1, 'IPV', '', 5),
(96, 375, 1, 1, 'Influenza', '', 6),
(97, 375, 1, 1, 'MMR', '', 7),
(98, 375, 1, 1, 'HepA', '', 9),
(104, 376, 2, 1, 'Annual Physical', 'Yearly Physical Exam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_immunrequirementcomment`
--

CREATE TABLE IF NOT EXISTS `kc_g_immunrequirementcomment` (
  `immunrequirementcommentid` int(11) NOT NULL auto_increment,
  `immunrequirementid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `comment` varchar(150) NOT NULL,
  PRIMARY KEY  (`immunrequirementcommentid`),
  KEY `fk_g_immunrequirementcomment_g_immunrequirement` (`immunrequirementid`),
  KEY `fk_g_immunrequirementcomment_g_person` (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_immunrequirementdata`
--

CREATE TABLE IF NOT EXISTS `kc_g_immunrequirementdata` (
  `immunrequirementdataid` int(11) NOT NULL auto_increment,
  `immunrequirementid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `eventtype` int(11) NOT NULL,
  `eventdate` datetime NOT NULL,
  PRIMARY KEY  (`immunrequirementdataid`),
  KEY `ix_g_immunrequirementdata` (`immunrequirementid`),
  KEY `fk_g_immunrequirementdata_g_person` (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_immunrequirementdetail`
--

CREATE TABLE IF NOT EXISTS `kc_g_immunrequirementdetail` (
  `immunrequirementid` int(11) NOT NULL,
  `lineid` int(11) NOT NULL,
  `linetype` int(11) NOT NULL,
  `linevalue` int(11) NOT NULL,
  PRIMARY KEY  (`immunrequirementid`,`lineid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kc_g_immunrequirementdetail`
--

INSERT INTO `kc_g_immunrequirementdetail` (`immunrequirementid`, `lineid`, `linetype`, `linevalue`) VALUES
(76, 0, 1, 12),
(76, 1, 4, 36),
(82, 0, 1, 2),
(82, 1, 4, 2),
(82, 2, 4, 2),
(82, 3, 4, 9),
(83, 0, 1, 1),
(83, 1, 4, 5),
(92, 0, 1, 2),
(92, 1, 4, 2),
(92, 2, 4, 2),
(93, 0, 1, 2),
(93, 1, 4, 2),
(93, 2, 4, 2),
(93, 3, 4, 8),
(94, 0, 1, 2),
(94, 1, 4, 2),
(94, 2, 4, 2),
(94, 3, 4, 6),
(95, 0, 1, 2),
(95, 1, 4, 2),
(95, 2, 4, 2),
(96, 0, 1, 6),
(96, 1, 5, 12),
(97, 0, 1, 12),
(97, 1, 4, 36),
(98, 0, 1, 12),
(98, 1, 4, 6),
(104, 0, 2, 30),
(104, 1, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_kiddiecarenews`
--

CREATE TABLE IF NOT EXISTS `kc_g_kiddiecarenews` (
  `kiddiecarenewsid` int(11) NOT NULL,
  `bamid` int(11) NOT NULL default '-1',
  `postdate` datetime NOT NULL,
  `expiresdate` datetime NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL,
  `fd` tinyint(1) NOT NULL default '0',
  `fa` tinyint(1) NOT NULL default '0',
  `ag` tinyint(1) NOT NULL default '0',
  `mt` tinyint(1) NOT NULL default '0',
  `at` tinyint(1) NOT NULL default '0',
  `ed` tinyint(1) NOT NULL default '0',
  `pr` tinyint(1) NOT NULL default '0',
  `el` tinyint(1) NOT NULL default '0',
  `te` tinyint(1) NOT NULL default '0',
  `highpriority` tinyint(1) NOT NULL default '0',
  `url` varchar(500) NOT NULL,
  PRIMARY KEY  (`kiddiecarenewsid`),
  UNIQUE KEY `ix_g_kiddiecarenews_uniquekiddiecarenewsid` (`kiddiecarenewsid`),
  KEY `ix_kiddiecarenews_bamid` (`bamid`),
  KEY `ix_kiddiecarenews_bamid_postdate` (`bamid`,`postdate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_lang`
--

CREATE TABLE IF NOT EXISTS `kc_g_lang` (
  `id` int(255) NOT NULL auto_increment,
  `code` varchar(10) NOT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kc_g_lang`
--

INSERT INTO `kc_g_lang` (`id`, `code`, `language`) VALUES
(1, 'en', 'English'),
(2, 'es', 'Spanish');

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_letter`
--

CREATE TABLE IF NOT EXISTS `kc_g_letter` (
  `letterid` int(11) NOT NULL auto_increment,
  `trackingextid` int(11) NOT NULL,
  `lettername` varchar(50) NOT NULL,
  `letterdata` longblob NOT NULL,
  `description` varchar(250) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`letterid`),
  KEY `fk_g_letter_g_typestable` (`trackingextid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_message`
--

CREATE TABLE IF NOT EXISTS `kc_g_message` (
  `messageid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `messagetypetid` int(11) NOT NULL,
  `showonce` tinyint(1) NOT NULL,
  `criteria` longtext NOT NULL,
  `messagetext` longtext NOT NULL,
  PRIMARY KEY  (`messageid`),
  KEY `fk_g_message_g_kiddiecareuser` (`kiddiecareuserid`),
  KEY `fk_g_messages_g_schools` (`schoolid`),
  KEY `fk_g_message_g_typestable` (`messagetypetid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_messagehistory`
--

CREATE TABLE IF NOT EXISTS `kc_g_messagehistory` (
  `historyid` int(11) NOT NULL auto_increment,
  `messageid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `readdate` datetime NOT NULL,
  PRIMARY KEY  (`historyid`),
  KEY `ix_g_messagehistory_messageid` (`messageid`),
  KEY `fk_g_messagehistory_g_person` (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_optionsdefault`
--

CREATE TABLE IF NOT EXISTS `kc_g_optionsdefault` (
  `optionsdefaultid` int(11) NOT NULL auto_increment,
  `description` varchar(30) NOT NULL,
  `value` varchar(500) NOT NULL,
  `tooltip` varchar(250) NOT NULL,
  `sys` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`optionsdefaultid`),
  UNIQUE KEY `ix_g_optionsdefault_uniguedescription` (`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `kc_g_optionsdefault`
--

INSERT INTO `kc_g_optionsdefault` (`optionsdefaultid`, `description`, `value`, `tooltip`, `sys`) VALUES
(15, 'AddressFormat', 'TSA', 'TB>USA</B> format uses City, State, Zip Code. <B>Non-US</B> format uses City, Region, Postal Code', 0),
(16, 'AR_RoundTimeIn', 'T5', 'Telect the number of minutes to which you want check IN times rounded (most common 5 or 15).', 0),
(17, 'AR_RoundTimeOut ', 'T5', 'Telect the number of minutes to which you want check OUT times rounded (most common 5 or 15).', 0),
(18, 'AR_RoundTypeIn', 'Tlosest', 'Thoose how to round check IN times. “Closest” means the nearest interval (5 minutes, 15 minutes, etc.). “Back” means go back to the prior interval. “Forward” means jump ahead to the next interval.', 0),
(19, 'AR_RoundTypeOut', 'Tlosest', 'Thoose how to round check OUT times. “Closest” means the nearest interval (5 minutes, 15 minutes, etc.). “Back” means go back to the prior interval. “Forward” means jump ahead to the next interval.', 0),
(20, 'AR_MaxHoursCheckedIn', 'T6', 'Tnter the maximum number of hours (8-24) a child may be checked in. They will be prevented from checking out if the time is exceeded. ', 0),
(22, 'PR_RoundTimeIn', 'T', 'Telect the number of minutes to which you want check IN times rounded (most common 5 or 15).', 0),
(23, 'PR_RoundTimeOut', 'T', 'Telect the number of minutes to which you want check OUT times rounded (most common 5 or 15).', 0),
(24, 'PR_RoundTypeIn', 'Tlosest', 'Thoose how to round check IN times. “Closest” means the nearest interval (5 minutes, 15 minutes, etc.). “Back” means go back to the prior interval. “Forward” means jump ahead to the next interval.', 0),
(25, 'PR_RoundTypeOut', 'Tlosest', 'Thoose how to round check OUT times. “Closest” means the nearest interval (5 minutes, 15 minutes, etc.). “Back” means go back to the prior interval. “Forward” means jump ahead to the next interval.', 0),
(26, 'PR_MaxHoursCheckedIn', 'T6', 'Tnter the maximum number of hours (8-24) an employee may be checked in. They will be prevented from checking out if the time is exceeded. ', 0),
(27, 'ChildMaxAge', 'T8', 'Taximum age (in years) for a person to be considered a child. Enter a number from 0 to 99.', 0),
(28, 'MondayOpenTime', 'T20', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(30, 'MondayCloseTime', 'T080', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(34, 'TuesdayOpenTime', 'T20', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(35, 'TuesdayCloseTime', 'T080', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(36, 'WednesdayOpenTime', 'T20', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(37, 'WednesdayCloseTime', 'T080', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(38, 'ThursdayOpenTime', 'T20', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(39, 'ThursdayCloseTime', 'T080', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(40, 'FridayOpenTime', 'T20', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(41, 'FridayCloseTime', 'T080', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(42, 'SaturdayOpenTime', 'T1', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(43, 'SaturdayCloseTime', 'T1', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(44, 'SundayOpenTime', 'T1', 'Thoose the time this location opens or scroll to the top and pick "Closed".', 0),
(45, 'SundayCloseTime', 'T1', 'Thoose the time this location closes or scroll to the top and pick "Closed".', 0),
(48, 'AR_LimitLedgerPostingDate', 'T/1/2009 12:00AM', 'Tnter the earliest date allowed for items to be posted on a Ledger Card. Typically the first day of the calendar year or fiscal year. Takes precedent over Days Back & Forward settings.', 0),
(49, 'AR_LimitLedgerStart', 'T0', 'Taximum number of days in the PAST a person is allowed to post an item on a Ledger Card. Enter 30 to allow entries to be recorded up to 30 days prior to the current date.', 0),
(50, 'AR_LimitLedgerEnd', 'T0', 'Taximum number of days in the FUTURE a person is allowed to post an item on a Ledger Card. Enter 30 to allow entries to be recorded up to 30 days beyond the current date.', 0),
(51, 'PR_CurrentPayrollYear', 'T009', 'Telect the current year for payroll purposes.', 0),
(52, 'PR_StartDayOfPayWeek', 'T', 'The Starting Day of the Pay Week is important for determining when a 40 hour week begins for overtime purposes. In most cases it should be set to Sunday or Monday.', 0),
(53, 'PR_PayPeriodsInAYear', 'T4', 'Tnter the number of Pay Periods in a year for tax calculation purposes. Examples: 52 (weekly), 26 (every 2 weeks), 24 (twice a month), 12 (once a month).', 0),
(54, 'PR_OTCalcOver8HrPerDay', 'Talse', 'Thoose "True" if you pay overtime for more than 8 hours worked in a single day.', 0),
(55, 'PR_OTCalcOver40HrPerWk', 'True', 'Thoose "True" if you pay overtime for more than 40 hours worked in a week.', 0),
(56, 'PR_OTCalcIncludeTrainingTime', 'True', 'Thoose "True" if Training Time should be counted toward overtime.', 0),
(57, 'PR_PayrollCheckbook', 'T1', 'Thoose the bank account used for payroll checks.', 0),
(58, 'PR_EmployeeAdvance', 'T1', 'Thoose an Asset Account to use for Employee Payroll Advances.', 0),
(63, 'AR_AuditTimeCards', 'True', 'To keep a record of all Time Card changes choose “True”. If you don’t need to track changes to Time Cards choose “False”.', 0),
(64, 'PR_AuditTimeCards', 'True', 'To keep a record of all Time Card changes choose “True”. If you don’t need to track changes to Time Cards choose “False”.', 0),
(65, 'AR_MonitorVacation', 'To Not Monitor', 'Tontrols how vacation “Balances” are totaled on the child’s “Schedule Exceptions” screen. Past 12 Months totals hours from 1 year ago until today. Current Calendar Year totals hours since Jan. 1st.', 0),
(66, 'PR_PayPeriodStartDate', 'T/15/2008', 'Telect a Start Day for your Pay Period. The Pay Period is the date range for which employees are paid. You MUST select these dates prior to processing payroll checks.', 0),
(67, 'PR_PayPeriodEndDate', 'T/30/2008', 'Telect an End Day for your Pay Period. The Pay Period is the date range for which employees are paid. You MUST select these dates prior to processing payroll checks.', 0),
(68, 'AR_SchedulingType', 'Tasy', 'Thoose "Easy" scheduling for single week schedules (week 1 repeats over & over). Choose "Advanced" to allow multiple week rotations (with a 2 week rotation weeks 1 & 2 alternate over & over).', 0),
(69, 'PR_SchedulingType', 'Tasy', 'Thoose "Easy" scheduling for single week schedules (week 1 repeats over & over). Choose "Advanced" to allow multiple week rotations (with a 2 week rotation weeks 1 & 2 alternate over & over).', 0),
(70, 'FP_AgeGroup1', 'T2', 'Tnter the age (in months) when a person moves to the next age group (examples: 12, 36, 72, 156, 999).', 0),
(71, 'FP_AgeGroup2', 'T6', 'Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156).', 0),
(72, 'FP_AgeGroup3', 'T2', 'Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156).', 0),
(73, 'FP_AgeGroup4', 'T44', 'Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156).', 0),
(74, 'FP_AgeGroup5', 'T99', 'Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156).', 0),
(75, 'FP_AgeGroup6', 'T99', 'Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156).', 0),
(76, 'FP_AgeGroupName1', 'Tnfants', 'Tnter a name for the 1st Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.)', 0),
(78, 'FP_AgeGroupName2', 'Tges 1-2', 'Tnter a name for the 2nd Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.)', 0),
(80, 'FP_AgeGroupName3', 'Tges 3-5', 'Tnter a name for the 3rd Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.)', 0),
(81, 'FP_AgeGroupName4', 'Tges 6-12', 'Tnter a name for the 4th Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.)', 0),
(82, 'FP_AgeGroupName5', 'Tge 12 & Over', 'Tnter a name for the 5th Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.)', 0),
(83, 'FP_AgeGroupName6', 'Tot Used', 'Tnter a name for the 6th Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.)', 0),
(84, 'TestSysObject', 'Test System Object', 'This is a required System Object and cannot be deleted.', 0),
(85, 'AR_AgencyPaymentDescription', 'T', 'Thoose a Payment Description (like “Agency Payment”) to record payments from Third Party Agencies.', 1),
(86, 'AR_ParentChargeDescription', 'T', 'Thoose a Charge Description (like “Agency Transfer”) to transfer money owed from an Agency to a Family. Example: Agency does not pay full amount and balance is responsibility of family.', 1),
(87, 'TE_AccountNumber', '', 'Tnter your Tuition Express Account Number', 1),
(88, 'TE_ACHPayDesc', 'T1', 'Thoose a Payment Description (like “Pmt Tuition Express Batch”) to record BATCH payments made through Tuition Express.', 0),
(89, 'TE_MinAmount', 'T0', 'Tnter the minimum amount (0.01 to 100.00) you want to collect through Tuition Express. Typically this would be in the range of $5 to $10.', 0),
(90, 'TE_MaxAmount', 'T500', 'The “global” maximum that may be collected from any single family is determined by Tuition Express. You may set individual maximums at the Tuition Express screen of each family.', 1),
(91, 'TE_Comment', 'Talse', 'Thoose “True” to enable the Comment feature. This allows you to enter a comment for parent email receipts such as the dates of service. The Comment is entered when you process a Tuition Express batch.', 0),
(92, 'TE_Date', 'Talse', 'Thoose “True” to allow selection of a batch processing date up to 14 days in the future. Helpful if you need to submit a batch ahead of time. The date is selected when you submit a batch.', 0),
(93, 'TE_Card', 'T000', 'Tisplays the types of credit cards (Visa, Mastercard, American Express, Discover) that you are set up to process.', 1),
(95, 'TE_POSPayDesc', 'T1', 'Thoose a Payment Description (like “Pmt Tuition Express POS”) to record Point of Sale (POS) payments made through Tuition Express.', 0),
(96, 'Receipt_PrintingOn', 'Talse', 'Thoose "True" to enable receipt printing for payments received from families.', 1),
(97, 'Receipt_Format', 'T', 'Telect a Receipt Format. One Per Page (prints 1 receipt on page), Two Per Page (prints 2 receipts for 2 different families on same page), Duplicate Receipt (prints 2 copies of the same receipt).', 1),
(98, 'Receipt_ConfirmPrinting', 'Talse', 'Thoose “True” to have a message ask whether or not you wish to print a receipt. Choose “False” to automatically print receipts without being asked.', 1),
(99, 'Receipt_PrintNumbers', 'Talse', 'Thoose “True” to have a Receipt Number printed on each receipt.', 1),
(100, 'Receipt_Number', 'T', 'Tnter the last receipt number used to control the starting point for new receipt numbers. If the last number were 100, the next receipt printed would be 101.', 1),
(101, 'Receipt_Message', '', 'Tnter a standard message to appear at the bottom of all receipts. Example: “Thank you for your payment. Our billing office hours are 9:00 to 5:00. Please call 555-1212 with any questions.”', 1),
(104, 'Receipt_TrackItem', 'T1', 'Teave the default setting to print receipts for all families or select a particular Tracking item (like “Receipt Requested”) to print receipts for only those families.', 1),
(107, 'FD_ImmunDayBuffer', 'T0', 'Tow many days ahead do you wish to know that immunizations are coming due? Enter a number from 0-99. Example: Enter 30 to be track immunizations 30 days before their due date.', 0),
(108, 'ED_ImmunDayBuffer', 'T0', 'Tow many days ahead do you wish to know that immunizations are coming due? Enter a number from 0-99. Example: Enter 30 to be track immunizations 30 days before their due date.', 0),
(109, 'FD_StandardFilter', 'Tisible Accounts', 'Thoose families to show by default. “All Accounts” means every family will be displayed, even those marked as Hidden. “Visible Accounts” means those marked as Hidden will not be shown.', 0),
(110, 'ED_StandardFilter', 'Tisible Employees', 'Thoose employees to show by default. “All Employees” means every employee will be displayed, even those marked as Hidden. “Visible Employee” means those marked as Hidden will not be shown.', 0),
(111, 'TE_Active', 'Talse', 'Thows whether Tuition Express has been set up for this location.', 0),
(113, 'Rpt_NextDepositRptNumber', 'T', 'Tou may manually adjust the number for your Next Deposit Report. For example if the default setting were 1 and you wanted to begin on 100.', 1),
(114, 'FDED_TrackingUsageLimitBuffer', 'T', 'Then do you want to be warned that you’re approaching a Tracking Category limit? Example: “Field Trip” has limit of 24. Enter 3 and you’ll be warned when you assign that item to the 21st person.', 0),
(116, 'TE_ACHComment', '', 'Tomment used for Tuition Express ACH batches', 1),
(117, 'TE_CRCComment', '', 'Tomment used for Tuition Express CRC batches', 1),
(118, 'TE_CRCPayDesc', 'T1', 'Tuition Express Credit Card Batch Process Payment Category', 0),
(119, 'TE_SyncNumber', 'T', 'Tuition Express Sync Number', 1),
(120, 'TE_BatchBankAccountID', 'T1', 'Tuition Express link to Bank Account for Deposit Report', 0),
(121, 'Email_SchoolEmailAddress', '', 'Tnter the email address to use as the “From Address” when sending email', 1),
(122, 'Email_UseOutlook', 'Talse', 'Thoose “True” to use the local Outlook account to send email.', 1),
(123, 'Email_UseSMTPServer', 'Talse', 'Thoose “True” to use an SMTP server to send email.', 1),
(124, 'Email_SMTPUserName', '', 'Tf your SMTP server requires authentication then enter your “User Name”.', 1),
(125, 'Email_SMTPPassword', '', 'Tf your SMTP server requires authentication then enter your “Password”.', 1),
(126, 'Email_SMTPAddressOrName', 'T', 'Tour SMTP Server Address or Name', 1),
(127, 'TaxIdNumber', '', 'Tax Identification Number', 1),
(128, 'FTE_FullDayHours', 'T', 'Tow many hours/day represents a Full Time child. For example, if you consider a child full time if they attend 7 hours per day, the number would be 7.', 0),
(129, 'FTE_MaxPerDay', 'T2', 'That is the maximum FTE value per day. Typically, this would be 0.2 (5 days x 0.2 FTE / Day = 1 FTE for the week).', 0),
(130, 'AR_FirstDayOfWeek', 'T', 'The First day of the week', 0),
(131, 'PR_PayPeriodType', 'T6', 'Tay Period Type', 0),
(132, 'PR_PayPeriodStart1', 'T1-JAN-2009', 'Tirst Pay Period Start Date', 0),
(133, 'PR_PayPeriodStart2', 'T1-JAN-1900', 'Tecond Pay Period if pay period type is Twice a Month', 0),
(136, 'ED_TimeCardInOutLimit', 'T', 'The number of minutes an employee may check in or out before or after their scheduled work time', 0),
(137, 'ED_RestrChkInOutToSched', 'Talse', 'Theck In/Out times are restricted to the times on the schedule', 0),
(138, 'LastkiddiecareNewsUpdate', 'T/1/1900 12:00AM', 'This is the last time the computer attempted to download from kiddiecareNews at kiddiecare Headquarters', 1),
(139, 'RegisterAutomatically', 'Talse', 'Thether or not to attempt automatic registration over the internet', 1),
(140, 'LastRegistrationAttempt', 'T/1/1900 12:00AM', 'Tast time automatic registration was attempted', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_optionsregion`
--

CREATE TABLE IF NOT EXISTS `kc_g_optionsregion` (
  `optionsregionid` int(11) NOT NULL auto_increment,
  `optionsdefaultid` int(11) NOT NULL,
  `regionid` int(11) NOT NULL,
  `value` varchar(500) NOT NULL,
  `sys` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`optionsregionid`),
  UNIQUE KEY `ix_g_optionsregion_uniqueregionidoptionsdefault` (`regionid`,`optionsdefaultid`),
  KEY `ix_g_regionoptions_regionid` (`regionid`),
  KEY `fk_g_optionsregion_g_optionsdefault` (`optionsdefaultid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_optionsschool`
--

CREATE TABLE IF NOT EXISTS `kc_g_optionsschool` (
  `optionsschoolid` int(11) NOT NULL auto_increment,
  `optionsdefaultid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  `value` varchar(500) NOT NULL,
  `sys` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`optionsschoolid`),
  UNIQUE KEY `ix_g_optionsschool_uniqueschoolidoptionsdefaultid` (`schoolid`,`optionsdefaultid`),
  KEY `ix_g_schooloptions_schoolid` (`schoolid`),
  KEY `fk_g_optionsschool_g_optionsdefault` (`optionsdefaultid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kc_g_optionsschool`
--

INSERT INTO `kc_g_optionsschool` (`optionsschoolid`, `optionsdefaultid`, `schoolid`, `value`, `sys`) VALUES
(1, 85, 1, '181', 1),
(2, 86, 1, '193', 1),
(3, 88, 1, '184', 0),
(4, 95, 1, '183', 0),
(5, 118, 1, '185', 0),
(6, 120, 1, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_person`
--

CREATE TABLE IF NOT EXISTS `kc_g_person` (
  `personid` int(11) NOT NULL auto_increment,
  `firstname` varchar(30) NOT NULL,
  `middleinit` varchar(1) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `dob` datetime NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photodata` longblob,
  `photodate` datetime NOT NULL,
  `comment` varchar(200) NOT NULL,
  `identificationnumber` varchar(30) NOT NULL,
  PRIMARY KEY  (`personid`),
  KEY `ix_g_person` (`personid`,`firstname`,`lastname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kc_g_person`
--

INSERT INTO `kc_g_person` (`personid`, `firstname`, `middleinit`, `lastname`, `dob`, `gender`, `email`, `photodata`, `photodate`, `comment`, `identificationnumber`) VALUES
(-1, 'Sys', '', 'Sys', '1900-01-01 00:00:00', 'U', '', NULL, '1900-01-01 00:00:00', 'Sys', ''),
(1, 'Demo', '', 'SysAdmin', '1900-01-01 00:00:00', 'U', '', NULL, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_personaddress`
--

CREATE TABLE IF NOT EXISTS `kc_g_personaddress` (
  `addressid` int(11) NOT NULL auto_increment,
  `personid` int(11) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `region` varchar(20) NOT NULL,
  `postalcode` varchar(15) NOT NULL,
  `ismailing` tinyint(1) NOT NULL,
  `isprimaryphysical` tinyint(1) NOT NULL,
  `comment` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`addressid`),
  KEY `ix_g_personaddress_personid` (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_personconfidential`
--

CREATE TABLE IF NOT EXISTS `kc_g_personconfidential` (
  `personid` int(11) NOT NULL,
  `visiblessn` char(11) NOT NULL,
  `encryptedssn` varbinary(64) NOT NULL,
  PRIMARY KEY  (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_personphonenumber`
--

CREATE TABLE IF NOT EXISTS `kc_g_personphonenumber` (
  `phoneid` int(11) NOT NULL auto_increment,
  `personid` int(11) NOT NULL,
  `phonenumbertid` int(11) NOT NULL,
  `areacode` varchar(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `comment` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`phoneid`),
  KEY `ix_g_personphonenumber_personid` (`personid`),
  KEY `fk_g_personphonenumber_g_typestable` (`phonenumbertid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_programlimit`
--

CREATE TABLE IF NOT EXISTS `kc_g_programlimit` (
  `programlimitid` int(11) NOT NULL auto_increment,
  `module` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `general` int(11) NOT NULL,
  `specific` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `tooltip` varchar(300) default NULL,
  PRIMARY KEY  (`programlimitid`),
  UNIQUE KEY `ix_g_programlimituniquerecord` (`module`,`section`,`general`,`specific`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3287 ;

--
-- Dumping data for table `kc_g_programlimit`
--

INSERT INTO `kc_g_programlimit` (`programlimitid`, `module`, `section`, `general`, `specific`, `description`, `tooltip`) VALUES
(3083, 10, 0, 0, 0, 'Utilities', 'Manage items related to the Utilities menu.'),
(3084, 10, 10, 0, 0, 'Database Backup/Restore', 'Make a backup or restore from an existing backup.'),
(3085, 10, 10, 10, 0, 'Backup Data', 'Make a backup of the kiddiecare v10 database.'),
(3086, 10, 10, 20, 0, 'Restore Data', 'Restore from an existing kiddiecare v10 database from a backup.'),
(3087, 10, 20, 0, 0, 'Check for Online Update', 'Check to see if there is an Update of kiddiecare v10 available.'),
(3088, 10, 30, 0, 0, 'Account Search - All Locations', 'Search for a person across all locations.'),
(3089, 10, 40, 0, 0, 'Remove Duplicate People', 'Remove and / or merge together duplicate people.'),
(3090, 10, 50, 0, 0, 'Unassigned People', 'View a list of unassigned people and delete them from the system.'),
(3091, 15, 0, 0, 0, 'Corporate Reports', 'Print Corporate Reports.'),
(3092, 15, 10, 0, 0, 'Family Data & Accounting Reports', 'Print Family Data & Accounting Reports.'),
(3093, 15, 10, 10, 0, 'Account/Child Data Reports', 'Print Family Account and Child Data related reports.'),
(3094, 15, 10, 20, 0, 'Accounting Reports', 'Print Family Accounting related reports.'),
(3095, 15, 10, 30, 0, 'Agency Accounting Reports', 'Print Agency Accounting related reports.'),
(3096, 15, 10, 40, 0, 'Meal Tracking', 'Print Meal Tracking related reports.'),
(3097, 15, 10, 50, 0, 'Attendance Tracking', 'Print Attendance Tracker related reports.'),
(3098, 15, 20, 0, 0, 'Employee Data & Payroll Reports', 'Print Employee Data & Payroll reports.'),
(3099, 15, 20, 10, 0, 'Employee Data Reports', 'Print Employee Data related reports.'),
(3100, 15, 20, 20, 0, 'Payroll Reports', 'Print Payroll related reports.'),
(3101, 15, 30, 0, 0, 'Expense Tracker', 'Print Expense Tracker related reports.'),
(3102, 15, 40, 0, 0, 'General Ledger', 'Print General Ledger related reports.'),
(3103, 20, 0, 0, 0, 'Family Data & Accounting', 'Manage all items related to family & child information including: Family Data, Family Accounting, Agency Accounting, Meal Tracker, Attendance Tracker, Tuition Express, and Reports.'),
(3104, 20, 10, 0, 0, 'Family Data Functions', 'Perform tasks specific to the Family Data module.'),
(3105, 20, 10, 10, 0, 'Account (Family) Data Functions', 'Perform tasks related to the "Account" (the family as a whole) rather than the children.'),
(3106, 20, 10, 10, 10, 'Add / View / Edit Account', 'Add, change or view information for any account.'),
(3107, 20, 10, 10, 20, 'Remove Account', 'Delete an account. Requires that children within the account be removed first.'),
(3108, 20, 10, 10, 30, 'Account Tracking', 'Access the Account Tracking screen for any family.'),
(3109, 20, 10, 10, 40, 'Account User Defined Fields', 'Access User Defined Fields for any account.'),
(3110, 20, 10, 10, 50, 'Account Log Sheets', 'Access the Log Sheet for any account.'),
(3111, 20, 10, 10, 55, 'Account Log Sheets - View Restricted', 'Access the Restricted Logs for any account.'),
(3112, 20, 10, 10, 90, 'Account Documents', 'Access the Account Documents for any account.'),
(3113, 20, 10, 20, 0, 'Letter Merge', 'Access items related to the Letter Merge (word processor) feature.'),
(3114, 20, 10, 20, 10, 'Edit New Letter', 'Add or change a new letter. '),
(3115, 20, 10, 20, 20, 'Edit Existing Letters', 'Change an existing letter.'),
(3116, 20, 10, 20, 30, 'Save / Save As / Delete Letters', 'Save (or Save As) for any letter or delete a letter. Note: If you block this item, but allow adding new or changing existing letters those changes are only temporary. They would not be able to save the new letter or changes.'),
(3117, 20, 10, 30, 0, 'Child Data Functions', 'Perform tasks related to child information like: enrollment, scheduling, immunizations, tracking categories, log sheets, etc.'),
(3118, 20, 10, 30, 10, 'Add / View / Edit Child Information', 'Add, change or view information for any child.'),
(3119, 20, 10, 30, 15, 'Remove Child', 'Delete a child.'),
(3120, 20, 10, 30, 20, 'Child Enrollment Status', 'Add, change or view enrollment information for any child.'),
(3121, 20, 10, 30, 30, 'Child Schedule - New / Edit / Delete', 'Add, Edit or Delete a Schedule for any child.'),
(3122, 20, 10, 30, 35, 'Child Schedule - Review', 'Review the Schedule for any child.'),
(3123, 20, 10, 30, 40, 'Child Schedule Exceptions', 'Access the Schedule Exceptions screen for any child including overrides and absences (vacations, etc.).'),
(3124, 20, 10, 30, 50, 'Child Immunizations and Requirements', 'Access the Immunizations & Requirements for any child.'),
(3125, 20, 10, 30, 60, 'Child Tracking', 'Access the Child Tracking screen for any child.'),
(3126, 20, 10, 30, 70, 'Child User Defined Fields', 'Access the User Defined Fields for any child.'),
(3127, 20, 10, 30, 80, 'Child Log Sheets', 'Access the Log Sheet for any child.'),
(3128, 20, 10, 30, 85, 'Child Log Sheets - View Restricted', 'Access the Restricted Logs for any child.'),
(3129, 20, 10, 30, 90, 'Child Documents', 'Access the Child Documents for any child.'),
(3130, 20, 20, 0, 0, 'Family Accounting Functions', 'Items related to Family Accounting.'),
(3131, 20, 20, 10, 0, 'Child Billing Box', 'Access the Billing Box for any child.'),
(3132, 20, 20, 20, 0, 'Automated Billing Functions', 'Use features like Automated Contract Billing that allow you to post items to many Ledger Cards at once.'),
(3133, 20, 20, 30, 0, 'Single Account Posting Functions', 'Use features like Drop In Billing that allow you to post items to one Ledger Card at a time.'),
(3134, 20, 20, 40, 0, 'Account Ledger', 'Access the Ledger Card for any account.'),
(3135, 20, 20, 40, 10, 'Post New or Void Existing Ledger Entries', 'Post New Entries or Void any Existing Entries on any Ledger Card.'),
(3136, 20, 20, 40, 20, 'Modify Posted Ledger Entries', 'Change a Posted Item on any Ledger Card.'),
(3137, 20, 20, 40, 30, 'Void Account Ledger Entries', 'Void an item on any Ledger Card.'),
(3138, 20, 20, 40, 40, 'Print Specific Customer Statement', 'Print an Account Statement from the current Account Ledger Card.'),
(3139, 20, 20, 40, 90, 'View Account Ledger Audit', 'Use the Audit feature (on the Ledger Card) to see what changes have been made and by whom.'),
(3140, 20, 20, 50, 0, 'Deposit Report', 'Access Deposit Reports.'),
(3141, 20, 20, 50, 10, 'Close Current Deposit Report', 'Close a Deposit Report that is currently open.'),
(3142, 20, 20, 50, 20, 'Modify Closed Deposit Reports', 'Change a Deposit Report that has already been closed. Excludes Tuition Express deposits which cannot be changed regardless of this setting.'),
(3143, 20, 20, 55, 0, 'Transaction Summary', 'Access Transaction Summary.'),
(3144, 20, 20, 60, 0, 'Tuition Express Functions', 'Access any items related to Tuition Express.'),
(3145, 20, 20, 60, 10, 'Tuition Express Family Setup', 'Set up an account (a family) for recurring Tuition Express payments.'),
(3146, 20, 20, 60, 20, 'Process Tuition Express', 'Process a batch of recurring Tuition Express payments.'),
(3147, 20, 20, 60, 30, 'Tuition Express - POS', 'Process an individual Point of Sale payment.'),
(3148, 20, 30, 0, 0, 'Agency Accounting', 'Perform tasks related to Agency Accounting.'),
(3149, 20, 30, 10, 0, 'View Previous Agency Payments', 'See details of previously recorded agency payments using the "View Selected" button.'),
(3150, 20, 30, 20, 0, 'Post New Agency Payments', 'Process new agency payments using the "Current Posting" button.'),
(3151, 20, 40, 0, 0, 'Meal Tracker', 'Perform tasks related to Meal Tracking (meal counts).'),
(3152, 20, 40, 10, 0, 'View/Edit Individual Meal Counts', 'Access meals served for an individual child.'),
(3153, 20, 40, 20, 0, 'View/Edit Daily Meal Tracker', 'Access meals served for all children at once.'),
(3154, 20, 50, 0, 0, 'Attendance Tracker', 'Perform tasks related to Child Time Cards & attendance.'),
(3155, 20, 50, 10, 0, 'Child Time Card', 'Access any Child Time Card features.'),
(3156, 20, 50, 10, 10, 'New / Edit / Delete Time Card Entries', 'Create a new Item, change an existing Item or delete an Item on any Time Card.'),
(3157, 20, 50, 10, 20, 'Print Time Card Summary', 'Print a Child Time Card.'),
(3158, 20, 50, 10, 90, 'View Child Time Card Audit', 'Use the Audit feature (on the Time Card) to see what changes have been made and by whom.'),
(3159, 20, 50, 20, 0, 'Batch Check In/Out', 'Check a batch of many children in or out.'),
(3160, 20, 50, 25, 0, 'Batch Post Child Time Card', 'Use the Function to Batch Post Child Time Card entries.'),
(3161, 20, 50, 30, 0, 'View Check In Issues', 'Use the Function to View Check In Issues (in/out times that are outside certain parameters).'),
(3162, 20, 50, 40, 0, 'Messages', 'Control messages sent to families at the check in screen.'),
(3163, 20, 50, 40, 10, 'Create / Delete New Messages', 'Make new messages or delete messages.'),
(3164, 20, 50, 40, 20, 'Delete Viewed Messages', 'Delete messages that have already been viewed.'),
(3165, 20, 60, 0, 0, 'Family Data & Accounting Reports', 'Print all kinds of reports that include financial, family, child and agency information.'),
(3166, 20, 60, 10, 0, 'Account/Child Data Reports', 'Print reports with basic family or child information like roll call sheets, schedules, birthday lists, school directories, etc.'),
(3167, 20, 60, 20, 0, 'Accounting Reports', 'Print financial reports for individual families or the center as a whole.'),
(3168, 20, 60, 20, 10, 'Internal Use', 'Print financial reports for use by the center (Family Accounting module).'),
(3169, 20, 60, 20, 20, 'Customer Distribution', 'Print financial reports for distribution to families like Customer Statements, etc.'),
(3170, 20, 60, 30, 0, 'Agency Accounting', 'Print agency related financial reports.'),
(3171, 20, 60, 40, 0, 'Meal Tracking', 'Print reports related to meal counts and menus.'),
(3172, 20, 60, 50, 0, 'Attendance Tracking', 'Print reports related to child time and attendance.'),
(3173, 30, 0, 0, 0, 'Employee Data & Payroll', 'Perform tasks related to Employee Data & Payroll.'),
(3174, 30, 10, 0, 0, 'Employee Data Functions', 'Perform tasks related to Employee Data.'),
(3175, 30, 10, 10, 0, 'Add / View / Edit Employee Information', 'Add, change or view information for any employee.'),
(3176, 30, 10, 12, 0, 'View Employee Confidential Information', 'View employee confidential information (such as Social Security Number)'),
(3177, 30, 10, 15, 0, 'Remove Employee', 'Delete an employee.'),
(3178, 30, 10, 20, 0, 'Employee Work History', 'Add, change or view Work History for any employee.'),
(3179, 30, 10, 25, 0, 'Employee Schedule', 'Access employee Schedule features.'),
(3180, 30, 10, 25, 10, 'New / Edit / Delete Employee Schedule', 'Add, edit or delete a Schedule for any employee.'),
(3181, 30, 10, 25, 20, 'Review Employee Schedule', 'Review the Schedule for any employee.'),
(3182, 30, 10, 30, 0, 'Employee Benefits', 'Access the Benefits screen for any employee.'),
(3183, 30, 10, 35, 0, 'Employee Pay Rate', 'Access the Pay Rate screen for any employee.'),
(3184, 30, 10, 40, 0, 'Employee Immunizations and Requirements', 'Access the Immunizations & Requirements for any employee.'),
(3185, 30, 10, 45, 0, 'Employee Time Card', 'Access employee Time Card features.'),
(3186, 30, 10, 45, 10, 'New / Edit / Delete Time Card Entries', 'Create a new Item, change an existing Item or delete an Item on any Time Card.'),
(3187, 30, 10, 45, 20, 'Print Time Card Summary', 'Print an employee Time Card.'),
(3188, 30, 10, 45, 90, 'View Employee Time Card Audit', 'Use the Audit feature (on the Time Card) to see what changes have been made and by whom.'),
(3189, 30, 10, 50, 0, 'Employee Tracking', 'Access the employee Tracking screen for any employee.'),
(3190, 30, 10, 55, 0, 'Employee User Defined Fields', 'Access the User Defined Fields for any employee.'),
(3191, 30, 10, 60, 0, 'Employee Log Sheets', 'Access the Log Sheet for any employee.'),
(3192, 30, 10, 65, 0, 'Employee Log Sheets - View Restricted', 'Access the Restricted Logs for any employee.'),
(3193, 30, 10, 90, 0, 'Employee Documents', 'Access the Employee Documents for and employee.'),
(3194, 30, 20, 0, 0, 'Letter Merge', 'Access items related to the Letter Merge (word processor) feature.'),
(3195, 30, 20, 10, 0, 'Edit New Letter', 'Add or change a new letter. '),
(3196, 30, 20, 20, 0, 'Edit Existing Letters', 'Change an existing letter.'),
(3197, 30, 20, 30, 0, 'Save / Save As / Delete Letters', 'Save (or Save As) for any letter or delete a letter. Note: If you block this item, but allow adding new or changing existing letters those changes are only temporary. They would not be able to save the new letter or changes.'),
(3198, 30, 30, 0, 0, 'Batch Post Accrued Benefits', 'Use the Function to Batch Post Accrued Benefits.'),
(3199, 30, 35, 0, 0, 'Batch Post Employee Time Card', 'Use the Function to Batch Post Child Time Card entries.'),
(3200, 30, 40, 0, 0, 'View Check In Issues', 'Use the Function to View Check In Issues (in/out times that are outside certain parameters).'),
(3201, 30, 45, 0, 0, 'Messages', 'Control messages sent to families at the check in screen.'),
(3202, 30, 45, 10, 0, 'Create / Delete New Messages', 'Make new messages or delete messages.'),
(3203, 30, 45, 20, 0, 'Delete Viewed Messages', 'Delete messages that have already been viewed.'),
(3204, 30, 50, 0, 0, 'Payroll Functions', ''),
(3205, 30, 50, 10, 0, 'Payroll Function 1', ''),
(3206, 30, 50, 20, 0, 'Payroll Function 2', ''),
(3207, 30, 50, 30, 0, 'Payroll Function 3', ''),
(3208, 30, 60, 0, 0, 'Reports', 'Print all kinds of reports that include employee data, time and attendance and payroll information.'),
(3209, 30, 60, 10, 0, 'Employee Data Reports', 'Print basic employee data and/or time and attendance reports.'),
(3210, 30, 60, 15, 0, 'Employee Data Reports with Confidential Information', 'Print employee data reports that contain Confidential Information'),
(3211, 30, 60, 20, 0, 'Payroll Reports', 'Print payroll related reports.'),
(3212, 40, 0, 0, 0, 'Expense Tracker', 'Perform tasks related to tracking Expenses.'),
(3213, 40, 10, 0, 0, 'xxxxxxxxxxx', ''),
(3214, 40, 20, 0, 0, 'xxxxxxxxxxx', ''),
(3215, 40, 30, 0, 0, 'xxxxxxxxxxx', ''),
(3216, 50, 0, 0, 0, 'General Ledger', 'Perform tasks related to General Ledger.'),
(3217, 50, 10, 0, 0, 'xxxxxxxxxxx', ''),
(3218, 50, 20, 0, 0, 'xxxxxxxxxxx', ''),
(3219, 50, 30, 0, 0, 'xxxxxxxxxxx', ''),
(3220, 60, 0, 0, 0, 'System Configuration', 'Perform tasks related to System Configuration like: adding Users and overall settings for Data Management, Accounting Management, Report Management, etc.'),
(3221, 60, 10, 0, 0, 'Locations & Users', 'Manage kiddiecare Users and User Groups.'),
(3222, 60, 10, 10, 0, 'kiddiecare Users', 'Manage kiddiecare Users'),
(3223, 60, 10, 10, 10, 'Add / Edit / Delete kiddiecare User', 'Add, Edit or Delete kiddiecare Users'),
(3224, 60, 10, 10, 20, 'Reset kiddiecare User''s Password', 'Reset the kiddiecare User''s Password - Password is always reset to the User Name of the kiddiecare User.'),
(3225, 60, 20, 0, 0, 'Accounting Management', 'Manage Chart of Accounts and Bank Account settings.'),
(3226, 60, 20, 10, 0, 'Chart of Accounts', 'Manage the Chart of Accounts.'),
(3227, 60, 20, 20, 0, 'Bank Accounts', 'Determine which asset accounts are to be used as Bank Accounts.'),
(3228, 60, 20, 30, 0, 'Family Accounting', 'Manage Family Accounting settings.'),
(3229, 60, 20, 30, 10, 'Charge / Credit Descriptions', 'Manage all charge, credit and payment descriptions.'),
(3230, 60, 20, 30, 20, 'Standard Amounts', 'Set standard amounts for all charge, credit and payment descriptions including things like tuition, activity fees, etc.'),
(3231, 60, 20, 30, 30, 'Deposit Accounts', 'Determine which bank accounts are available for use with Deposit Reports.'),
(3232, 60, 20, 30, 40, 'Billing Cycles', 'Manage Billing Cycles like weekly, monthly, etc.'),
(3233, 60, 20, 30, 50, 'Billing Formulas', 'Manage formulas used for attendance based billing.'),
(3234, 60, 20, 30, 60, 'Third Party Agencies', 'Manage name and contact information for third party agencies like DHS, DFACS, Head Start, etc.'),
(3235, 60, 20, 30, 70, 'Third Party Agency Adjustment Codes', 'Manage adjustment codes for agencies. Used to write off balances or transfer them to families, etc.'),
(3236, 60, 20, 30, 80, 'Receipt Options', 'Set options for how receipts print when a payment from a family is recorded.'),
(3237, 60, 20, 40, 0, 'Employee Data', 'Manage Employee Data settings.'),
(3238, 60, 20, 40, 10, 'Pay Codes', 'Manage names of Pay Codes like: Administrator, Teacher, Teaching Assistant, Vacation, Sick, Holiday, etc.'),
(3239, 60, 20, 40, 20, 'Benefit Codes', 'Manage Benefit Codes from your list of Pay Codes such as Vacation, Sick, Holiday, etc.'),
(3240, 60, 20, 50, 0, 'Payroll', 'Manage Payroll settings.'),
(3241, 60, 20, 50, 10, 'Payroll Check Format', 'Adjust settings for checks issued from Payroll.'),
(3242, 60, 20, 50, 20, 'xxxxxxxxx', ''),
(3243, 60, 20, 50, 30, 'xxxxxxxxx', ''),
(3244, 60, 20, 50, 40, 'xxxxxxxxx', ''),
(3245, 60, 20, 60, 0, 'Expense Tracker', 'Manage settings for Expense Tracker.'),
(3246, 60, 20, 60, 10, 'Expense Tracker Check Format', 'Adjust settings for checks issued from Expense Tracker.'),
(3247, 60, 20, 60, 20, 'xxxxxxxxxxx', ''),
(3248, 60, 20, 70, 0, 'General Ledger', 'Manage settings for General Ledger.'),
(3249, 60, 20, 70, 10, 'Fiscal Year Calendar', 'Set the calendar for the fiscal year.'),
(3250, 60, 20, 70, 20, 'General Journals', 'Add, edit, void journal entries.'),
(3251, 60, 20, 70, 30, 'Fiscal Year Budget', 'Set up and manage budgets.'),
(3252, 60, 20, 70, 40, 'Beginning Balance', 'Manage beginning balances for the fiscal year.'),
(3253, 60, 30, 0, 0, 'Data Management', 'Control Data Management settings.'),
(3254, 60, 30, 10, 0, 'Status & Relationships', 'Manage enrollment, employment and relationship categories.'),
(3255, 60, 30, 10, 10, 'Child''s Enrollment Status', 'Manage Enrollment Status categories for children.'),
(3256, 60, 30, 10, 20, 'Employee''s Employment Status', 'Manage Employment Status categories for staff.'),
(3257, 60, 30, 10, 30, 'Child Relationships', 'Manage categories describing how people are related to a child like mom, dad, aunt, uncle, neighbor, friend, doctor, etc.'),
(3258, 60, 30, 10, 40, 'Employee Relationships', 'Manage categories describing how people are related to a staff member like their child, neighbor, friend, emergency contact, doctor, etc.'),
(3259, 60, 30, 20, 0, 'Tracking Items & User Defined Fields', 'Manage all tracking categories and User Defined Fields.'),
(3260, 60, 30, 20, 10, 'Global Tracking Items', 'Manage "Global" Tracking categories that affect all locations.'),
(3261, 60, 30, 20, 20, 'Local Tracking Items', 'Manage "Local" tracking categories that affect a single location.'),
(3262, 60, 30, 20, 30, 'User Defined Fields', 'Manage User Defined Fields'),
(3263, 60, 30, 30, 0, 'Scheduling', 'Manage all aspects of scheduling including classroom names.'),
(3264, 60, 30, 30, 10, 'School Close Dates', 'Manage business holidays (dates a location will be closed).'),
(3265, 60, 30, 30, 20, 'Departments', 'Manage the names of Departments like infants, toddlers, preschool, administration, etc.'),
(3266, 60, 30, 30, 30, 'Work Areas', 'Manage the names of Work Areas like Infant Room, Room 101, Ms Green''s Room, etc. and assign them to Departments.'),
(3267, 60, 30, 30, 40, 'Classrooms', 'Select Classroom Names from your list of Work Areas and assign maximum class size and child/teacher ratios.'),
(3268, 60, 30, 30, 50, 'Schedule Templates', 'Create and manage Schedule Templates that may be assigned to many children.'),
(3269, 60, 30, 30, 60, 'Absent Reasons', 'Manage the reasons a child may be absent. Used for tracking things like family vacation hours.'),
(3270, 60, 30, 40, 0, 'Immunizations & Requirements', 'Manage all Immunizations and Other Requirements.'),
(3271, 60, 30, 40, 10, 'Global Child Immunizations & Requirements', 'Manage "Global" Immunizations and Requirements that affect children at all locations.'),
(3272, 60, 30, 40, 20, 'Global Employee Immunization & Requirements', 'Manage "Global" Immunizations and Requirements that affect employees at all locations.'),
(3273, 60, 30, 40, 30, 'Local Child Requirements', 'Manage "Local" date based requirements that affect children at a single location.'),
(3274, 60, 30, 40, 40, 'Local Employee Requirements', 'Manage "Local" date based requirements that affect employees at a single location.'),
(3275, 60, 30, 50, 0, 'Meals & Menus', 'Manage settings for Meals & Menus.'),
(3276, 60, 30, 50, 10, 'Food Program Status', 'Manage status levels for the Food Program like Free, Reduced and Above Scale.'),
(3277, 60, 30, 50, 20, 'Meal Abbreviations', 'Manage abbreviations and meal types like "B" for Breakfast.'),
(3278, 60, 30, 50, 30, 'Meal Times', 'Manage the times meals are served for each classroom.'),
(3279, 60, 30, 50, 40, 'School Menus', 'Create and manage menus.'),
(3280, 60, 30, 50, 50, 'Reimbursement Amounts', 'Manage Reimbursement Amounts for each type of meal and status level.'),
(3281, 60, 30, 60, 0, 'Miscellaneous', 'Manage "Miscellaneous" settings for things like phone number and log sheet types.'),
(3282, 60, 30, 60, 10, 'Phone Number Types', 'Manage types of phone numbers like home, work, cell / mobile, pager, etc.'),
(3283, 60, 30, 60, 20, 'Account Log Sheet Types', 'Manage types of log sheets for the family as a whole (the Account) like financial, scheduling, parent/teacher conference, etc.'),
(3284, 60, 30, 60, 30, 'Child Log Sheet Types', 'Manage types of log sheets for children like injury report, behavioral issues, progress report, etc.'),
(3285, 60, 30, 60, 40, 'Employee Log Sheet Types', 'Manage types of log sheets for staff like employee review, attendance issues, scheduling, etc.'),
(3286, 60, 30, 60, 50, 'Vendor Log Sheet Types', 'Manage types of log sheets for vendors like payment terms, invoice notes, special arrangements, etc.');

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_regions`
--

CREATE TABLE IF NOT EXISTS `kc_g_regions` (
  `regionid` int(11) NOT NULL auto_increment,
  `code` varchar(4) NOT NULL,
  `director` varchar(50) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `regionname` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `region` varchar(20) NOT NULL,
  `postalcode` varchar(15) NOT NULL,
  `areacode1` varchar(10) NOT NULL,
  `phonenumber1` varchar(30) NOT NULL,
  `areacode2` varchar(10) NOT NULL,
  `phonenumber2` varchar(30) NOT NULL,
  `areacodefax` varchar(10) NOT NULL,
  `faxnumber` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`regionid`),
  UNIQUE KEY `ix_g_regions_uniquecode` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kc_g_regions`
--

INSERT INTO `kc_g_regions` (`regionid`, `code`, `director`, `emailaddress`, `regionname`, `address1`, `address2`, `city`, `region`, `postalcode`, `areacode1`, `phonenumber1`, `areacode2`, `phonenumber2`, `areacodefax`, `faxnumber`, `sortorder`) VALUES
(-1, 'Sys', 'Sys', '', 'Sys', '', '', '', '', '', '', '', '', '', '', '', 0),
(1, 'R1', 'My Regional Director', '', 'My Region', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_registration`
--

CREATE TABLE IF NOT EXISTS `kc_g_registration` (
  `registrationid` int(11) NOT NULL auto_increment,
  `personid` int(11) NOT NULL,
  `regpin` int(11) NOT NULL,
  `regdatetime` datetime NOT NULL,
  PRIMARY KEY  (`registrationid`),
  UNIQUE KEY `ix_g_regpin` (`regpin`),
  KEY `fk_g_registration_g_person` (`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reportcriteria`
--

CREATE TABLE IF NOT EXISTS `kc_g_reportcriteria` (
  `reportcriteriaid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `criteriasettings` longblob NOT NULL,
  `datesaved` datetime NOT NULL,
  PRIMARY KEY  (`reportcriteriaid`),
  UNIQUE KEY `ix_g_reportcriteria_schoolid_personid` (`schoolid`,`personid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reportdata`
--

CREATE TABLE IF NOT EXISTS `kc_g_reportdata` (
  `reportid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `childschoolid` int(11) NOT NULL,
  `employeeschoolid` int(11) NOT NULL,
  `vendorid` int(11) NOT NULL,
  KEY `ix_g_reportdata_accountid` (`accountid`),
  KEY `ix_g_reportdata_childschoolid` (`childschoolid`),
  KEY `ix_g_reportdata_employeeschoolid` (`employeeschoolid`),
  KEY `ix_g_reportdata_reportid` (`reportid`),
  KEY `ix_g_reportdata_vendorid` (`vendorid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reportdata2`
--

CREATE TABLE IF NOT EXISTS `kc_g_reportdata2` (
  `reportid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `childschoolid` int(11) NOT NULL,
  `keyid1` int(11) NOT NULL,
  `keyid2` int(11) NOT NULL,
  `a1` varchar(256) NOT NULL,
  `b1` varchar(256) NOT NULL,
  `c1` varchar(256) NOT NULL,
  `d1` varchar(256) NOT NULL,
  `e1` varchar(256) NOT NULL,
  `f1` varchar(256) NOT NULL,
  `g1` varchar(256) NOT NULL,
  `dateval` datetime NOT NULL,
  `decimalval` decimal(18,2) NOT NULL,
  `stringval` varchar(256) NOT NULL,
  KEY `ix_reportdata_keyid1` (`keyid1`),
  KEY `ix_reportdata2_accountid` (`accountid`),
  KEY `ix_reportdata2_childschoolid` (`childschoolid`),
  KEY `ix_reportdata2_keyid2` (`keyid2`),
  KEY `ix_reportdata2_personid` (`personid`),
  KEY `ix_reportdata2_reportid` (`reportid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reportdata3`
--

CREATE TABLE IF NOT EXISTS `kc_g_reportdata3` (
  `reportid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `childschoolid` int(11) NOT NULL,
  `keyid1` int(11) NOT NULL,
  `keyid2` int(11) NOT NULL,
  `trackingcategoryid` int(11) NOT NULL,
  `trackingitemid` int(11) NOT NULL,
  `ishidden` tinyint(1) NOT NULL,
  `foodstatus` varchar(256) NOT NULL,
  `accountkey` varchar(256) NOT NULL,
  `age` varchar(256) NOT NULL,
  `stringval1` varchar(256) NOT NULL,
  `stringval2` varchar(256) NOT NULL,
  `stringval3` varchar(256) NOT NULL,
  `stringval4` varchar(256) NOT NULL,
  KEY `ix_g_reportdata3_accountid` (`accountid`),
  KEY `ix_g_reportdata3_childschoolid` (`childschoolid`),
  KEY `ix_g_reportdata3_keyid1` (`keyid1`),
  KEY `ix_g_reportdata3_keyid2` (`keyid2`),
  KEY `ix_g_reportdata3_personid` (`personid`),
  KEY `ix_g_reportdata3_reportid` (`reportid`),
  KEY `ix_g_reportdata3_tracking_catid` (`trackingcategoryid`),
  KEY `ix_g_reportdata3_tracking_itmid` (`trackingitemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reportdata4`
--

CREATE TABLE IF NOT EXISTS `kc_g_reportdata4` (
  `reportid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `keyid1` int(11) NOT NULL,
  `keyid2` int(11) NOT NULL,
  `employeechildschoolid` int(11) NOT NULL,
  `recorddate` datetime NOT NULL,
  `primarylocationid` int(11) NOT NULL,
  `scheduletimes` varchar(256) NOT NULL,
  `schedulelocations` varchar(256) NOT NULL,
  `scheduletotalminutes` int(11) NOT NULL,
  `attendtimes` varchar(256) NOT NULL,
  `attendlocations` varchar(256) NOT NULL,
  `attendtotalminutes` int(11) NOT NULL,
  `outsideofscheduleminutes` int(11) NOT NULL,
  `greaterthanscheduleminutes` int(11) NOT NULL,
  `havetimecardintime` tinyint(1) NOT NULL,
  KEY `ix_g_reportdata4_employeechildschoolid` (`employeechildschoolid`),
  KEY `ix_g_reportdata4_keyid1` (`keyid1`),
  KEY `ix_g_reportdata4_keyid2` (`keyid2`),
  KEY `ix_g_reportdata4_kiddiecareuserid` (`kiddiecareuserid`),
  KEY `ix_g_reportdata4_reportid` (`reportid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reportdata5`
--

CREATE TABLE IF NOT EXISTS `kc_g_reportdata5` (
  `reportid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `childemployeeschoolid` int(11) NOT NULL,
  `personname` varchar(256) NOT NULL,
  `persondob` datetime NOT NULL,
  `personage` varchar(60) NOT NULL,
  `childenrolldate` datetime NOT NULL,
  `employeehiredate` datetime NOT NULL,
  `name01` varchar(60) NOT NULL,
  `name02` varchar(60) NOT NULL,
  `name03` varchar(60) NOT NULL,
  `name04` varchar(60) NOT NULL,
  `name05` varchar(60) NOT NULL,
  `name06` varchar(60) NOT NULL,
  `name07` varchar(60) NOT NULL,
  `name08` varchar(60) NOT NULL,
  `data01` varchar(600) NOT NULL,
  `data02` varchar(600) NOT NULL,
  `data03` varchar(600) NOT NULL,
  `data04` varchar(600) NOT NULL,
  `data05` varchar(600) NOT NULL,
  `data06` varchar(600) NOT NULL,
  `data07` varchar(600) NOT NULL,
  `data08` varchar(600) NOT NULL,
  `status01` int(11) NOT NULL,
  `status02` int(11) NOT NULL,
  `status03` int(11) NOT NULL,
  `status04` int(11) NOT NULL,
  `status05` int(11) NOT NULL,
  `status06` int(11) NOT NULL,
  `status07` int(11) NOT NULL,
  `status08` int(11) NOT NULL,
  `comment01` varchar(150) NOT NULL,
  `comment02` varchar(150) NOT NULL,
  `comment03` varchar(150) NOT NULL,
  `comment04` varchar(150) NOT NULL,
  `comment05` varchar(150) NOT NULL,
  `comment06` varchar(150) NOT NULL,
  `comment07` varchar(150) NOT NULL,
  `comment08` varchar(150) NOT NULL,
  `personlineid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_reports`
--

CREATE TABLE IF NOT EXISTS `kc_g_reports` (
  `reportid` int(11) NOT NULL auto_increment,
  `parentnodeid` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `moduleid` varchar(4) NOT NULL,
  `descriptionshort` varchar(56) NOT NULL,
  `descriptionlong` varchar(256) NOT NULL,
  `reportfilename` varchar(36) NOT NULL,
  `usergrouplimit` varchar(11) NOT NULL,
  `requiredcontrols` varchar(256) NOT NULL,
  `requiredprocessing` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `reporttype` int(11) NOT NULL,
  `groupby` varchar(256) NOT NULL,
  `sortby` varchar(256) NOT NULL,
  `reportflags` int(11) NOT NULL,
  PRIMARY KEY  (`reportid`),
  UNIQUE KEY `ix_g_reports_reportfilename` (`reportid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=312 ;

--
-- Dumping data for table `kc_g_reports`
--

INSERT INTO `kc_g_reports` (`reportid`, `parentnodeid`, `sortorder`, `moduleid`, `descriptionshort`, `descriptionlong`, `reportfilename`, `usergrouplimit`, `requiredcontrols`, `requiredprocessing`, `active`, `reporttype`, `groupby`, `sortby`, `reportflags`) VALUES
(1, 0, 0, 'FD', 'Family Data', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(2, 1, 0, 'FD', 'Account Information', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(3, 2, 0, 'FD', 'Account: Information Sheet', 'Displays a photo of everyone associated with each account including mailing address, email and phone. Includes children enrolled as of the specified date with their age, date of birth and primary classroom. Sorted by Account Key.', 'FD_AccountInformation01.rpt', '20.60.10.0', '112,201', '0', 1, 1, '', '', 0),
(4, 2, 1, 'FD', 'Child: Information Sheet', 'Name and address of the Children and all of their relationships.', 'FD_ChildRelationships01.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(5, 0, 0, 'FD', 'Family Data', 'Module', '', '0', '', '', 1, 3, '', '', 0),
(6, 5, 0, 'FD', 'Account Log Sheet Report', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(7, 6, 0, 'FD', 'Log Sheet: Account', 'Context Specific Account Log Sheet, used for printing the Account Log grid', 'FD_LogSheetAccount01.rpt', '20.60.10.0', '0', '0', 1, 3, '', '', 0),
(8, 1, 1, 'FD', 'Address Labels', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(9, 8, 0, 'FD', 'Account: Address Label (1 x 2 5/8)', 'Creates address labels in the specified size for the Primary Payer on each account using the first mailing address on their Person Information screen. Used with Avery Label 5160, 5260, 5520, 5810, 5960, 6970, 8160, 8250, 8460, 8810, 8860, 8920', 'FD_AddressLabelAccount02.rpt', '20.60.10.0', '200', '0', 1, 1, '', '', 0),
(10, 8, 1, 'FD', 'Account: Address Label (1 x 2 5/8) (All Payers)', 'Creates address labels in the specified size for ALL Payers on each account using the first mailing address on their Person Information screen. Used with Avery Label 5160, 5260, 5520, 5810, 5960, 6970, 8160, 8250, 8460, 8810, 8860, 8920', 'FD_AddressLabelAccount12.rpt', '20.60.10.0', '200', '0', 1, 1, '', '', 0),
(11, 8, 2, 'FD', 'Account: Address Label (1 x 4)', 'Creates address labels in the specified size for the Primary Payer on each account using the first mailing address on their Person Information screen. Used with Avery Label 5161, 5261, 5961, 8161, 8461', 'FD_AddressLabelAccount01.rpt', '20.60.10.0', '200', '0', 1, 1, '', '', 0),
(12, 8, 3, 'FD', 'Account: Address Label (1 x 4) (All Payers)', 'Creates address labels in the specified size for ALL Payers on each account using the first mailing address on their Person Information screen. Used with Avery Label 5161, 5261, 5961, 8161, 8461', 'FD_AddressLabelAccount11.rpt', '20.60.10.0', '200', '0', 1, 1, '', '', 0),
(13, 8, 4, 'FD', 'Child: Address Label (1 x 2 5/8)', 'Creates address labels in the specified size for each child using the first mailing address on their Person Information screen. Used with Avery Label 5160, 5260, 5520, 5810, 5960, 6970, 8160, 8250, 8460, 8810, 8860, 8920', 'FD_AddressLabelChild02.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(14, 8, 5, 'FD', 'Child: Address Label (1 x 4)', 'Creates address labels in the specified size for each child using the first mailing address on their Person Information screen. Used with Avery Label 5161, 5261, 5961, 8161, 8461', 'FD_AddressLabelChild01.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(15, 8, 6, 'FD', 'Child: Folder Label (1 x 2 5/8)', 'Creates folder labels in the specified size for each child including: name, primary classroom, date of birth and gender. Used with Avery Label 5160, 5260, 5520, 5810, 5960, 6970, 8160, 8250, 8460, 8810, 8860, 8920', 'FD_AddressLabelChild06.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(16, 8, 7, 'FD', 'Child: Folder Label (1 x 4)', 'Creates folder labels in the specified size for each child including: name, primary classroom, date of birth and gender. Used with Avery Label 5161, 5261, 5961, 8161, 8461', 'FD_AddressLabelChild05.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(17, 8, 8, 'FD', 'Child: To the Parent or Guardian of (1 x 2 5/8)', 'Creates address labels in the specified size to the parent or guardian of each child using the first mailing address on the child’s Person Information screen. Used with Avery Label 5160, 5260, 5520, 5810, 5960, 6970, 8160, 8250, 8460, 8810, 8860, 8920', 'FD_AddressLabelChild04.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(18, 8, 9, 'FD', 'Child: To the Parent or Guardian of (1 x 4)', 'Creates address labels in the specified size to the parent or guardian of each child using the first mailing address on the child’s Person Information screen. Used with Avery Label 5161, 5261, 5961, 8161, 8461', 'FD_AddressLabelChild03.rpt', '20.60.10.0', '202', '0', 1, 1, '', '', 0),
(19, 5, 1, 'FD', 'Chart of Accounts', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(20, 19, 0, 'FD', 'Chart of Accounts', 'Chart of Accounts', 'G_ChartOfAccounts.rpt', '0.0.0.0', '0', '0', 1, 3, '', '', 0),
(21, 1, 2, 'FD', 'Child Enrollment', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(22, 21, 0, 'FD', 'Change of Enrollment Status', 'Provides a count of the children whose status changed during the specified date range. Dbl-click a Status to get more detail including name, gender, date of birth, and age.', 'FD_ChildEnrollment02.rpt', '20.60.10.0', '100', '0', 1, 1, '', '', 0),
(23, 21, 1, 'FD', 'Enrollment Status Summary', 'Provides a count of the children in each status as of a specific date. Dbl-click a Status to get more detail including name, gender, date of birth, and age.', 'FD_ChildEnrollment03.rpt', '20.60.10.0', '112', '0', 1, 1, '', '', 0),
(24, 21, 2, 'FD', 'Enrollment Status Summary by Classroom', 'Provides a count of the number of children enrolled in each Primary Classroom as of a specific date. Dbl-click a classroom to get more detail including name, gender, date of birth and age.', 'FD_ChildEnrollment01.rpt', '20.60.10.0', '112', '0', 1, 1, '', '', 0),
(25, 5, 2, 'FD', 'Child Log Sheet Report', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(26, 25, 0, 'FD', 'Log Sheet: Child', 'Context Specific Child Log Sheet Report, used for printing the Child Log grid.', 'FD_LogSheetChild01.rpt', '20.60.10.0', '0', '0', 1, 3, '', '', 0),
(27, 1, 3, 'FD', 'Classroom Schedule', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(28, 27, 0, 'FD', 'Classroom Schedule Analysis', 'One page Analysis of Classroom Schedule with Teacher Over Staffed / Under Staffed determined (based on Child:Teacher Ratio).', 'FD_ClassroomScheduleAnalysis03.rpt', '20.60.10.0', '109,400', '170', 1, 1, '', '', 0),
(29, 27, 1, 'FD', 'Classroom Schedule Analysis (12 hr)', 'Graphical Analysis of Classroom Schedule with Teacher Over Staffed / Under Staffed determined (based on Child:Teacher Ratio).', 'FD_ClassroomScheduleAnalysis01.rpt', '20.60.10.0', '109,400', '170', 1, 1, '', '', 0),
(30, 27, 2, 'FD', 'Classroom Schedule Analysis (24 hr)', 'Graphical Analysis of Classroom Schedule with Teacher Over Staffed / Under Staffed determined (based on Child:Teacher Ratio).', 'FD_ClassroomScheduleAnalysis02.rpt', '20.60.10.0', '109,400', '170', 1, 1, '', '', 0),
(31, 27, 3, 'FD', 'Schedule Summary - Daily', 'Display daily Scheduled Times for all children.', 'FD_ClassroomScheduleSummary01.rpt', '20.60.10.0', '105(92),202,400,500', '150', 1, 1, 'Scheduled Classroom^Scheduled Classroom - Page Break^None', 'Child''s Name^Start Time', 0),
(32, 27, 4, 'FD', 'Schedule Summary - Daily Graph (12 hr)', 'Display daily Scheduled Times for all children.', 'FD_ClassroomScheduleSummary03.rpt', '20.60.10.0', '105(92),202,400,500', '150', 1, 1, 'Scheduled Classroom^Scheduled Classroom - Page Break^None', 'Child''s Name^Start Time', 0),
(33, 27, 5, 'FD', 'Schedule Summary - Daily Graph (24 hr)', 'Display daily Scheduled Times for all children.', 'FD_ClassroomScheduleSummary04.rpt', '20.60.10.0', '105(92),202,400,500', '150', 1, 1, 'Scheduled Classroom^Scheduled Classroom - Page Break^None', 'Child''s Name^Start Time', 0),
(34, 27, 6, 'FD', 'Schedule Summary - Weekly', 'Display weekly Scheduled Times for all children sorted by Classroom.', 'FD_ClassroomScheduleSummary02.rpt', '20.60.10.0', '109,202,400', '150', 1, 1, '', '', 0),
(35, 27, 7, 'FD', 'Weekly FTE Report by Classroom', 'Shows the number of children equivalent to full time based on scheduled FTE. If a full day were 8 hrs then 1 child scheduled 3 hrs each day plus a 2nd child scheduled 5 hrs each day would be equivalent to 1 full time child for the week.', 'FD_FTE01.rpt', '20.60.10.0', '109', '130', 1, 1, '', '', 0),
(36, 27, 8, 'FD', 'Weekly FTE Report by Classroom - Pie Graph', 'Shows the number of children equivalent to full time based on scheduled FTE. If a full day were 8 hrs then 1 child scheduled 3 hrs each day plus a 2nd child scheduled 5 hrs each day would be equivalent to 1 full time child for the week.', 'FD_FTE02.rpt', '20.60.10.0', '109', '130', 1, 1, '', '', 0),
(37, 27, 9, 'FD', 'Weekly FTE Report by Department', 'Shows the number of children equivalent to full time based on scheduled FTE. If a full day were 8 hrs then 1 child scheduled 3 hrs each day plus a 2nd child scheduled 5 hrs each day would be equivalent to 1 full time child for the week.', 'FD_FTE03.rpt', '20.60.10.0', '109', '130', 1, 1, '', '', 0),
(38, 27, 10, 'FD', 'Weekly FTE Report by Department - Pie Graph', 'Shows the number of children equivalent to full time based on scheduled FTE. If a full day were 8 hrs then 1 child scheduled 3 hrs each day plus a 2nd child scheduled 5 hrs each day would be equivalent to 1 full time child for the week.', 'FD_FTE04.rpt', '20.60.10.0', '109', '130', 1, 1, '', '', 0),
(39, 1, 4, 'FD', 'Filtered Reports', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(40, 39, 0, 'FD', 'Account: Email & Phone Number Summary', 'Summary report displaying all selected accounts including Email and Phone Numbers. Sorted by Account Key.', 'FD_FilteredAccount03.rpt', '20.60.10.0', '201', '0', 1, 1, '', '', 0),
(41, 39, 1, 'FD', 'Account: Email Address', 'List of Account Payers with Account Key and Email Address – sorted by Primary Payers.', 'FD_FilteredAccount02.rpt', '20.60.10.0', '201', '0', 1, 1, '', '', 0),
(42, 39, 2, 'FD', 'Account: Roster', 'Roster of Account Payers with Account Keys - sorted by Payer Name.', 'FD_FilteredAccount01.rpt', '20.60.10.0', '201', '0', 1, 1, '', '', 0),
(43, 39, 3, 'FD', 'Child: Birthday - Age Summary', 'Displays child’s name, Primary Classroom, gender, date of birth and age as of the specified date.', 'FD_FilteredChild06.rpt', '20.60.10.0', '112,202,500', '0', 1, 1, 'None^Primary Classroom^Month of Birth^Gender', 'Child''s Name^Primary Classroom^Oldest to Youngest^Youngest to Oldest^Day of Birth', 1),
(44, 39, 4, 'FD', 'Child: Email Address', 'List of children with Primary Classroom and Email Address – sorted by Primary Classroom.', 'FD_FilteredChild02.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'None^Primary Classroom', 'Primary Classroom^Child''s Name', 0),
(45, 39, 5, 'FD', 'Child: Food Program Status', 'List of children with Primary Classroom and Food Program Status – sorted by Primary Classroom.', 'FD_FilteredChild03.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'None^Primary Classroom^Food Program Status', 'Primary Classroom^Child''s Name^Food Program Status', 0),
(46, 39, 6, 'FD', 'Child: General Information', 'List of children with photo, email, date of birth, gender and person comment – sorted by Primary Classroom.', 'FD_FilteredChild10.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'None^Primary Classroom', 'Child''s Name^Primary Classroom^Oldest to Youngest^Youngest to Oldest^Photo Date', 0),
(47, 39, 7, 'FD', 'Child: Namebadge (2 x 3 1/2), Photo, Child Information', 'Prints a photo name badge with age, date of birth and primary classroom for each child. Used with Avery Label 5871', 'FD_FilteredChild05.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'None^Primary Classroom', 'Child''s Name^Primary Classroom^Oldest to Youngest^Youngest to Oldest', 1),
(48, 39, 8, 'FD', 'Child: Roster', 'Roster of children with Primary Classroom and child names.', 'FD_FilteredChild04.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'None^Primary Classroom', 'Primary Classroom^Child''s Name', 0),
(49, 1, 5, 'FD', 'Immunization Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(50, 49, 0, 'FD', 'Immunization / Requirement Due Report', 'Display which Immunizations / Requirements are coming due or are currently due for each child selected from the Filter.', 'FD_Immunization03.rpt', '20.60.10.0', '202', '141', 1, 1, '', '', 0),
(51, 49, 1, 'FD', 'Immunization / Requirement History', 'Display the Immunization / Requirement history for each child sorted by Classroom.', 'FD_Immunization01.rpt', '20.60.10.0', '202', '140', 1, 1, '', '', 0),
(52, 49, 2, 'FD', 'Immunization / Requirement History (by Classroom)', 'Display the Immunization / Requirement history for each child sorted by Classroom.', 'FD_Immunization02.rpt', '20.60.10.0', '202', '140', 1, 1, '', '', 0),
(53, 1, 6, 'FD', 'Rollcall Sheets', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(54, 53, 0, 'FD', 'Daily: Scheduled', 'Daily Rollcall based on Child''s daily schedule. Use the Filter to include only specific children.', 'FD_Rollcall10.rpt', '20.60.10.0', '109,202,400', '150', 1, 1, '', '', 0),
(55, 53, 1, 'FD', 'Monthly: 5 Day, DOB', '5 Day Monthly Rollcall sorted by Primary Classroom. Use the Filter to select additional criteria.', 'FD_Rollcall19.rpt', '20.60.10.0', '108,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(56, 53, 2, 'FD', 'Monthly: 5 Day, Schedule', '5 Day Monthly Rollcall. Includes only enrolled children with a schedule. Use the Filter to select additional criteria.', 'FD_Rollcall15.rpt', '20.60.10.0', '108,202,500', '100', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(57, 53, 3, 'FD', 'Monthly: 5 Day, Schedule, DOB', '5 Day Monthly Rollcall. Includes only enrolled children with a schedule. Use the Filter to select additional criteria.', 'FD_Rollcall17.rpt', '20.60.10.0', '108,202,500', '100', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(58, 53, 4, 'FD', 'Monthly: 7 Day, DOB', '7 Day Monthly Rollcall. Use the Filter to select additional criteria.', 'FD_Rollcall20.rpt', '20.60.10.0', '108,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(59, 53, 5, 'FD', 'Monthly: 7 Day, Schedule', '7 Day Monthly Rollcall. Includes only enrolled children with a schedule. Use the Filter to select additional criteria.', 'FD_Rollcall16.rpt', '20.60.10.0', '108,202,500', '100', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(60, 53, 6, 'FD', 'Monthly: 7 Day, Schedule, DOB', '7 Day Monthly Rollcall. Includes only enrolled children with a schedule. Use the Filter to select additional criteria.', 'FD_Rollcall18.rpt', '20.60.10.0', '108,202,500', '100', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(61, 53, 7, 'FD', 'Weekly: 5 Day', '5 Day Rollcall. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall01.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(62, 53, 8, 'FD', 'Weekly: 5 Day (AM/PM)', '5 Day Rollcall. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall11.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(63, 53, 9, 'FD', 'Weekly: 5 Day (AM/PM), DOB', '5 Day Rollcall with date of birth. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall12.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(64, 53, 10, 'FD', 'Weekly: 5 Day (AM/PM), Schedule', '5 Day Rollcall Sheet. Includes only enrolled children with a schedule. Days a child is not schedule are lined out.', 'FD_Rollcall30.rpt', '20.60.10.0', '109,202,500', '101', 1, 1, 'Primary Classroom^None', 'Child''s Name', 1),
(65, 53, 11, 'FD', 'Weekly: 5 Day (AM/PM), Schedule, DOB', '5 Day Rollcall Sheet with age and date of birth. Includes only enrolled children with a schedule. Days a child is not schedule are lined out.', 'FD_Rollcall31.rpt', '20.60.10.0', '109,202,500', '101', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 1),
(66, 53, 12, 'FD', 'Weekly: 5 Day, Actual Schedule', '5 Day Rollcall Sheet with actual schedule. Report is sorted by Classroom. Includes only enrolled children with a schedule.', 'FD_Rollcall33.rpt', '20.60.10.0', '109,202,400', '150', 1, 1, '', '', 0),
(67, 53, 13, 'FD', 'Weekly: 5 Day, Actual Schedule, DOB', '5 Day Rollcall Sheet with actual schedule. Also included is the child''s age and date of birth. Report is sorted by Classroom. Includes only enrolled children with a schedule.', 'FD_Rollcall32.rpt', '20.60.10.0', '109,202,400', '150', 1, 1, '', '', 0),
(68, 53, 14, 'FD', 'Weekly: 5 Day, DOB', '5 Day Rollcall with date of birth. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall02.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(69, 53, 15, 'FD', 'Weekly: 7 Day', '7 Day Rollcall. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall03.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(70, 53, 16, 'FD', 'Weekly: 7 Day (AM/PM)', '7 Day Rollcall. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall13.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(71, 53, 17, 'FD', 'Weekly: 7 Day (AM/PM), DOB', '7 Day Rollcall with date of birth. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall14.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(72, 53, 18, 'FD', 'Weekly: 7 Day, DOB', '7 Day Rollcall with date of birth. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_Rollcall04.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(73, 1, 7, 'FD', 'Sign In/Out Sheets', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(74, 73, 0, 'FD', 'Daily', 'Daily Sign In/Out Sheet with signature line. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut03.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(75, 73, 1, 'FD', 'Daily: Scheduled', 'Daily Sign In/Out Sheet with signature line based on Child''s daily schedule. Use the Filter to include only specific children.', 'FD_SignInOut15.rpt', '20.60.10.0', '106,202,400,500', '150', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(76, 73, 2, 'FD', 'Monthly: 5 Day', 'Monthly Sign In/Out with weekdays only. Each child is on a separate page with a signature line for every day of the month.', 'FD_SignInOut07.rpt', '20.60.10.0', '108,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 1),
(77, 73, 3, 'FD', 'Monthly: 5 Day, DOB', 'Monthly Sign In/Out with weekdays only – includes child’s date of birth. Each child is on a separate page with a signature line for every day of the month.', 'FD_SignInOut10.rpt', '20.60.10.0', '108,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 1),
(78, 73, 4, 'FD', 'Monthly: 7 Day', 'Monthly Sign In/Out includes weekends. Each child is on a separate page with a signature line for every day of the month.', 'FD_SignInOut08.rpt', '20.60.10.0', '108,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 1),
(79, 73, 5, 'FD', 'Monthly: 7 Day, DOB', 'Monthly Sign In/Out includes weekends and child’s date of birth. Each child is on a separate page with a signature line for every day of the month.', 'FD_SignInOut09.rpt', '20.60.10.0', '108,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 1),
(80, 73, 6, 'FD', 'Weekly: 5 Day', '5 Day Sign In/Out Sheet. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut04.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(81, 73, 7, 'FD', 'Weekly: 5 Day, Actual Schedule, Initials', '5 Day Sign In/Out Sheet with actual schedule. Report is sorted by Classroom. Includes only enrolled children with a schedule. Space for initials is provided.', 'FD_SignInOut17.rpt', '20.60.10.0', '109,202,400,500', '150', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(82, 73, 8, 'FD', 'Weekly: 5 Day, Actual Schedule, Initials, DOB', '5 Day Sign In/Out Sheet with actual schedule. Also included is the child''s age and date of birth. Includes only enrolled children with a schedule. Space for initials is provided.', 'FD_SignInOut16.rpt', '20.60.10.0', '109,202,400,500', '150', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(83, 73, 9, 'FD', 'Weekly: 5 Day, DOB', '5 Day Sign In/Out Sheet. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut18.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(84, 73, 10, 'FD', 'Weekly: 5 Day, Dual Signature', '5 Day Sign In/Out Sheet with two in/out signature slots per day. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut11.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(85, 73, 11, 'FD', 'Weekly: 5 Day, Dual Signature, DOB', '5 Day Sign In/Out Sheet with date of birth and two in/out signature slots per day. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut12.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(86, 73, 12, 'FD', 'Weekly: 5 Day, Schedule, Initials', '5 Day Sign In/Out Sheet. Includes only enrolled children with a schedule. Days a child is not schedule are lined out. Space for initials on scheduled days.', 'FD_SignInOut01.rpt', '20.60.10.0', '109,202,500', '101', 1, 1, 'Primary Classroom^None', 'Child''s Name', 1),
(87, 73, 13, 'FD', 'Weekly: 5 Day, Schedule, Initials, DOB', '5 Day Sign In/Out Sheet with age and date of birth. Includes only enrolled children with a schedule. Days a child is not schedule are lined out. Space for initials on scheduled days.', 'FD_SignInOut05.rpt', '20.60.10.0', '109,202,500', '101', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 1),
(88, 73, 14, 'FD', 'Weekly: 7 Day, Dual Signature', '7 Day Sign In/Out Sheet with two in/out signature slots per day and sorted by Primary Classroom. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut14.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(89, 73, 15, 'FD', 'Weekly: 7 Day, Dual Signature, DOB', '7 Day Sign In/Out Sheet with date of birth and two in/out signature slots per day. Use the Filter to include only children enrolled as of a particular date, etc.', 'FD_SignInOut13.rpt', '20.60.10.0', '202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 0),
(90, 73, 16, 'FD', 'Weekly: 7 Day, Schedule, Initials', '7 Day Sign In/Out Sheet. Includes only enrolled children with a schedule. Days a child is not schedule are lined out. Space for initials on scheduled days.', 'FD_SignInOut02.rpt', '20.60.10.0', '109,202,500', '101', 1, 1, 'Primary Classroom^None', 'Child''s Name', 1),
(91, 73, 17, 'FD', 'Weekly: 7 Day, Schedule, Initials, DOB', '7 Day Sign In/Out Sheet with age and date of birth. Includes only enrolled children with a schedule. Days a child is not schedule are lined out. Space for initials on scheduled days.', 'FD_SignInOut06.rpt', '20.60.10.0', '109,202,500', '101', 1, 1, 'Primary Classroom^None', 'Child''s Name^Oldest to Youngest^Youngest to Oldest', 1),
(92, 1, 8, 'FD', 'Tracking', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(93, 92, 0, 'FD', 'Account: Contact Information', 'Displays the first phone number and email address for the Primary Payer on each account sorted by the selected Tracking Categories.', 'FD_TrackingAccount01.Rpt', '20.60.10.0', '413', '111', 1, 1, '', '', 0),
(94, 92, 1, 'FD', 'Account: Payers List', 'Lists the name of the Primary Payer on each account sorted by the selected Tracking Categories.', 'FD_TrackingAccount02.Rpt', '20.60.10.0', '413', '111', 1, 1, '', '', 0),
(95, 92, 2, 'FD', 'Child: Daily Pickup/Deliver', 'Roster of children who are ''Enrolled'' as of today with Pickup/Deliver columns for selected Tracking Categories – sorted by Tracking Items.', 'FD_TrackingChildBus01.Rpt', '20.60.10.0', '106,410', '110', 1, 1, '', '', 0),
(96, 92, 3, 'FD', 'Child: Namebadge (2 x 3 1/2), Photo, Child and Tracking ', 'Prints a photo name badge with age, date of birth and primary classroom for each child included in the selected Tracking Categories. Children may appear multiple times if they are assigned to more than one selected category. Used with Avery Label 5871', 'FD_TrackingChild03.Rpt', '20.60.10.0', '410', '110', 1, 1, '', '', 1),
(97, 92, 4, 'FD', 'Child: Photo, Categories, Items', 'Displays a small photo with child’s name, age, date of birth and primary classroom sorted by the selected Tracking Categories.', 'FD_TrackingChild02.Rpt', '20.60.10.0', '410', '110', 1, 1, '', '', 3),
(98, 92, 5, 'FD', 'Child: Roster', 'Roster of children, and primary classrooms for selected Tracking Categories – sorted by Tracking Items.', 'FD_TrackingChild01.Rpt', '20.60.10.0', '410', '110', 1, 1, '', '', 0),
(99, 92, 6, 'FD', 'Child: Roster by Classroom', 'Roster of children for selected Tracking Categories – sorted by Primary Classrooms.', 'FD_TrackingChild11.Rpt', '20.60.10.0', '410', '110', 1, 1, '', '', 0),
(100, 92, 7, 'FD', 'Child: Weekly-5 Day Pickup/Deliver', 'Roster of children who are ''Enrolled'' during the report period with Pickup/Deliver columns for selected Tracking Categories – sorted by Tracking Items.', 'FD_TrackingChildBus02.Rpt', '20.60.10.0', '109,410', '110', 1, 1, '', '', 0),
(101, 92, 8, 'FD', 'Child: Weekly-7 Day Pickup/Deliver', 'Roster of children who are ''Enrolled'' during the report period with Pickup/Deliver columns for selected Tracking Categories – sorted by Tracking Items.', 'FD_TrackingChildBus03.Rpt', '20.60.10.0', '410', '110', 1, 1, '', '', 0),
(102, 1, 9, 'FD', 'User Defined', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(103, 102, 0, 'FD', 'Account: By Field Name', 'Displays a list of Primary Payers with the contents of each User Defined Field sorted by the selected fields. Use when you want to see each field with the payer names below.', 'FD_UserDefinedAccount01.rpt', '20.60.10.0', '423,201', '0', 1, 1, '', '', 0),
(104, 102, 1, 'FD', 'Account: By Field Name Order by Field Value', 'Displays a list of Primary Payers with the contents of each User Defined Field sorted by the selected fields. Use when you want to see each field with the payer names below.', 'FD_UserDefinedAccount03.rpt', '20.60.10.0', '423,201', '0', 1, 1, '', '', 0),
(105, 102, 2, 'FD', 'Account: By Payer''s Name', 'Displays a list of Primary Payers with the contents of each User Defined Field sorted by payer’s name. Use when you want to see each payer with the fields for that child shown below.', 'FD_UserDefinedAccount02.rpt', '20.60.10.0', '423,201', '0', 1, 1, '', '', 0),
(106, 102, 3, 'FD', 'Child: By Child''s Name', 'Displays a list of children with the contents of each User Defined Field sorted by child’s name. Use when you want to see each child with the fields for that child shown below.', 'FD_UserDefinedChild02.rpt', '20.60.10.0', '420,202', '0', 1, 1, '', '', 0),
(107, 102, 4, 'FD', 'Child: By Field Name', 'Displays a list of children with the contents of each User Defined Field sorted by the selected fields. Use when you want to see each field with the child names below.', 'FD_UserDefinedChild01.rpt', '20.60.10.0', '420,202', '0', 1, 1, '', '', 0),
(108, 102, 5, 'FD', 'Child: By Field Name Order by Field Value', 'Displays a list of children with the contents of each User Defined Field sorted by the selected fields. Use when you want to see each field with the child names below.', 'FD_UserDefinedChild03.rpt', '20.60.10.0', '420,202', '0', 1, 1, '', '', 0),
(109, 0, 1, 'FA', 'Family Accounting', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(110, 109, 0, 'FA', 'Account Activity', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(111, 110, 0, 'FA', 'Primary Accounts Only', 'Shows Starting & Ending balances along with subtotals for Tuition, Other Charges, Credits & Payments. Primary Payers on all accounts, even those who are hidden or did not have any activity during the specified dates are included.', 'FA_ChargeCreditActivity01.rpt', '20.60.20.10', '100,500', '0', 1, 1, 'None^Visibility', 'Account Key^Primary Payer^Starting Balance^Ending Balance', 0),
(112, 110, 1, 'FA', 'Primary Accounts Only (Ending Bal > 0)', 'Shows Starting & Ending balances along with subtotals for Tuition, Other Charges, Credits & Payments for Accounts with an Ending Balance > 0. Primary Payers on all accounts, even those who are hidden or did not have any activity during the specified dates ', 'FA_ChargeCreditActivity04.rpt', '20.60.20.10', '100,500', '0', 1, 1, 'None^Visibility', 'Account Key^Primary Payer^Starting Balance^Ending Balance', 0),
(113, 110, 2, 'FA', 'Primary Accounts Only (w/ Activity)', 'Shows Starting & Ending balances along with subtotals for Tuition, Other Charges, Credits & Payments. Includes Primary Payers on all accounts who had activity during the specified dates.', 'FA_ChargeCreditActivity02.rpt', '20.60.20.10', '100,500', '0', 1, 1, 'None^Visibility', 'Account Key^Primary Payer^Starting Balance^Ending Balance', 0),
(114, 109, 1, 'FA', 'Account Aging', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(115, 114, 0, 'FA', 'Primary Accounts @ 14 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 14 day increments, including the current period (0-13 days), 14, 28, 42 and +56 days.', 'FA_AgingAccount02.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(116, 0, 0, 'FA', 'Family Accounting', 'Module', '', '0', '', '', 1, 2, '', '', 0),
(117, 116, 0, 'FA', 'Account Aging', 'Group', '', '0', '', '', 1, 2, '', '', 0),
(118, 117, 0, 'FA', 'Primary Accounts @ 14 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 14 day increments, including the current period (0-13 days), 14, 28, 42 and 56+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount02.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(119, 117, 1, 'FA', 'Primary Accounts @ 14 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 14 day increments, including the current period (0-13 days), 14, 28, 42 and 56+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount12.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(120, 114, 1, 'FA', 'Primary Accounts @ 14 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 14 day increments, including the current period (0-13 days), 14, 28, 42 and +56 days.', 'FA_AgingAccount12.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(121, 114, 2, 'FA', 'Primary Accounts @ 28 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 28 day increments, including the current period (0-27 days), 28, 56, 84 and +112 days.', 'FA_AgingAccount03.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(122, 117, 2, 'FA', 'Primary Accounts @ 28 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 28 day increments, including the current period (0-27 days), 28, 56, 84 and 112+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount03.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(123, 117, 3, 'FA', 'Primary Accounts @ 28 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 28 day increments, including the current period (0-27 days), 28, 56, 84 and 112+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount13.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(124, 114, 3, 'FA', 'Primary Accounts @ 28 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 28 day increments, including the current period (0-27 days), 28, 56, 84 and +112 days.', 'FA_AgingAccount13.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(125, 117, 4, 'FA', 'Primary Accounts @ 30 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and 120+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount04.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(126, 114, 4, 'FA', 'Primary Accounts @ 30 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and +120 days.', 'FA_AgingAccount04.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(127, 114, 5, 'FA', 'Primary Accounts @ 30 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and +120 days.', 'FA_AgingAccount14.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(128, 117, 5, 'FA', 'Primary Accounts @ 30 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and 120+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount14.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(129, 117, 6, 'FA', 'Primary Accounts @ 7 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 7 day increments, including the current period (0-6 days), 7, 14, 21 and 28+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount01.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(130, 114, 6, 'FA', 'Primary Accounts @ 7 Day Aging', 'Shows all accounts with a balance due (or credit balance) with the amount aged in 7 day increments, including the current period (0-6 days), 7, 14, 21 and +28 days.', 'FA_AgingAccount01.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(131, 117, 7, 'FA', 'Primary Accounts @ 7 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 7 day increments, including the current period (0-6 days), 7, 14, 21 and 28+ days. Ordered by Region then School.', 'FA_Corp_AgingAccount11.rpt', '15.10.20.0', '112', '0', 1, 2, '', '', 0),
(132, 114, 7, 'FA', 'Primary Accounts @ 7 Day Aging (Bal > 0)', 'Shows all accounts with a balance due with the amount aged in 7 day increments, including the current period (0-6 days), 7, 14, 21 and +28 days.', 'FA_AgingAccount11.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 0),
(133, 109, 2, 'FA', 'Account Balance Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(134, 133, 0, 'FA', 'Primary Accounts Only', 'Lists all accounts with a balance due (or credit balance) as of the specified date.', 'FA_AccountBalanceSummary01.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 1),
(135, 133, 1, 'FA', 'Primary Accounts Only (Bal > 0)', 'Lists all accounts with a balance due as of the specified date.', 'FA_AccountBalanceSummary02.rpt', '20.60.20.10', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 1),
(136, 109, 3, 'FA', 'Account Statement', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(137, 136, 0, 'FA', 'Account Charge/Credit Summary (w/ Balance)', 'For distribution to families. Shows totals for charges, credits and payments during the specified dates with beginning and ending balances. Good for use as an end of year tax summary.', 'FA_SpecificChargeCreditSummary01.rpt', '20.60.20.20', '100,-201,-300', '0', 1, 1, '', '', 0),
(138, 136, 1, 'FA', 'Account Charge/Credit Summary (w/o Balance)', 'For distribution to families. Shows totals for charges, credits and payments during the specified dates without beginning or ending balances. Good for use as an end of year tax summary.', 'FA_SpecificChargeCreditSummary02.rpt', '20.60.20.20', '100,-201,-300', '0', 1, 1, '', '', 0),
(139, 136, 2, 'FA', 'Customer Payment Summary', 'For distribution to families. Shows detail of each payment during the specified dates.', 'FA_CustomerStatement05.rpt', '20.60.20.20', '100,-201,-300', '0', 1, 1, '', '', 1),
(140, 136, 3, 'FA', 'Customer Payment Summary (Envelope)', 'For distribution to families. Formatted for windowed envelopes. Shows detail of each payment during the specified dates.', 'FA_CustomerStatement06.rpt', '20.60.20.20', '100,-201,-300', '0', 1, 1, '', '', 0),
(141, 136, 4, 'FA', 'Standard Customer Statement', 'For distribution to families. Shows detail of each charge, credit and payment during the specified dates including a beginning and ending balance. Good for use as a weekly or monthly statement.', 'FA_CustomerStatement01.rpt', '20.60.20.20', '100,-201,-300', '0', 1, 1, '', '', 1),
(142, 136, 5, 'FA', 'Standard Customer Statement (Envelope)', 'For distribution to families. Formatted for windowed envelopes. Shows detail of each charge, credit and payment during the specified dates including a beginning and ending balance. Good for use as a weekly or monthly statement.', 'FA_CustomerStatement02.rpt', '20.60.20.20', '100,-201,-300', '0', 1, 1, '', '', 0),
(143, 109, 4, 'FA', 'Billing Box', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(144, 143, 0, 'FA', 'Account Contract Billing Summary', 'Calculate totals for each Account and for each Billing Cycle', 'FA_ContractBillingSummary04.rpt', '20.60.20.10', '112', '0', 1, 1, '', '', 0),
(145, 143, 1, 'FA', 'Child Contract Billing Summary', 'Shows children who are set up for contract billing. Lists each child with the contract billing entries set up in their Billing Box as of the specified date.', 'FA_ContractBillingSummary02.rpt', '20.60.20.10', '112', '0', 1, 1, '', '', 0),
(146, 143, 2, 'FA', 'Children without Contract Billing', 'Checks for children who are not set up for contract billing. Lists children who do not have any contract billing entries in their Billing Box as of the specified date.', 'FA_ContractBillingSummary01.rpt', '20.60.20.10', '112', '0', 1, 1, '', '', 0),
(147, 143, 3, 'FA', 'Contract Billing Summary', 'Summarize each Charge Cycle and then Charge/Credit Description. Drill Down to discover specific contract billing entries for a specific description.', 'FA_ContractBillingSummary03.rpt', '20.60.20.10', '112', '0', 1, 1, '', '', 0),
(148, 0, 1, 'FA', 'Family Accounting', 'Module', '', '0', '', '', 1, 3, '', '', 0),
(149, 148, 0, 'FA', 'Deposit Report', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(150, 149, 0, 'FA', 'Deposit Report', '* * * Fix Me * * *', 'FA_DepositReport01.rpt', '20.60.20.10', '0', '0', 1, 3, '', '', 0),
(151, 109, 5, 'FA', 'Deposit Report', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(152, 151, 0, 'FA', 'Deposit Report Detail', 'Detail of Deposit Reports for the date range specified.', 'FA_DepositReportDetail01.rpt', '20.60.20.10', '100,500', '0', 1, 1, 'Payment Category', 'Post Order^Account Key^Post Date^Amount', 0),
(153, 151, 1, 'FA', 'Deposit Report Summary', 'Summary of Deposit Reports for the date range specified.', 'FA_DepositReportDetail02.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(154, 116, 1, 'FA', 'Deposit Report Summary', 'Group', '', '0', '', '', 1, 2, '', '', 0),
(155, 154, 0, 'FA', 'Deposit Report Summary w/ Drill Down', 'Summary of bank deposits for each school with drill down capabilities to details.', 'FA_Corp_DepositReports01.rpt', '15.10.20.0', '100', '0', 1, 2, '', '', 0),
(156, 148, 1, 'FA', 'Ledger Transaction Report', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(157, 156, 0, 'FA', 'Transaction Summary', 'Lists all the ledger postings for a single Transaction in Original Post Order.', 'FA_TransactionReport01.rpt', '20.60.20.10', '0', '0', 1, 3, '', '', 0),
(158, 109, 6, 'FA', 'Miscellaneous Ledger Activity', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(159, 158, 0, 'FA', 'Account Deposit Activity', 'Shows totals for Deposits on Account posted using Special Charge & Special Credit descriptions like “Deposit Tuition: Fall”. Dbl-click a category to get more detail including names of accounts to whom that description has been posted.', 'FA_DepositActivity01.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(160, 158, 1, 'FA', 'Tuition Variance Summary', 'Shows Ledger Card entries posted during the specified dates where the amount was something other than the standard amount for that description. For example if the standard for “Tuition - Infants” was 200 but 199 was posted instead.', 'FA_TuitionVariance01.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(161, 158, 2, 'FA', 'Void Activity by Post Date', 'Shows detail of Ledger Card entries voided during the specified dates.', 'FA_LedgerVoidActivity01.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(162, 158, 3, 'FA', 'Void Activity by Void Date', 'Account Ledger Void Activity for items that are voided between the given date range.', 'FA_LedgerVoidActivity02.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(163, 116, 2, 'FA', 'Receivable Journal Summary', 'Group', '', '0', '', '', 1, 2, '', '', 0),
(164, 163, 0, 'FA', 'Company Total', 'Financial totals based on General Ledger Numbers assigned to each charge, credit and payment category in the System Configuration.', 'FA_Corp_JournalSummary01.rpt', '15.10.20.0', '100', '0', 1, 2, '', '', 0),
(165, 163, 1, 'FA', 'Detail by Region', 'Financial totals based on General Ledger Numbers assigned to each charge, credit and payment category in the System Configuration.', 'FA_Corp_JournalSummary02.rpt', '15.10.20.0', '100', '0', 1, 2, '', '', 0),
(166, 163, 2, 'FA', 'Detail by Region/School', 'Financial totals based on General Ledger Numbers assigned to each charge, credit and payment category in the System Configuration.', 'FA_Corp_JournalSummary03.rpt', '15.10.20.0', '100', '0', 1, 2, '', '', 0),
(167, 109, 7, 'FA', 'Receivable Journal Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(168, 167, 0, 'FA', 'Receivable Journal Summary', 'Financial totals based on General Ledger Numbers assigned to each charge, credit and payment category in the System Configuration. Dbl-click a subtotal for details.', 'FA_JournalSummary01.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(169, 109, 8, 'FA', 'Total Charge Credit Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(170, 169, 0, 'FA', 'Primary Accounts Only', 'Family account totals for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check” with overall beginning and ending balances. Excludes agencies.', 'FA_TotalChargeCreditSummary02.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(171, 116, 3, 'FA', 'Total Charge Credit Summary', 'Group', '', '0', '', '', 1, 2, '', '', 0),
(172, 171, 0, 'FA', 'Primary Accounts Only', 'Combined totals (agencies plus family accounts) for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check”. Dbl-click to drill down from Company Wide summary to Regional summary to a School summary.', 'FA_Corp_TChargeCreditSummary02.rpt', '15.10.20.0', '100', '0', 1, 2, '', '', 0),
(173, 169, 1, 'FA', 'Specific Charge Credit Summary', 'Combined totals (agencies plus family accounts) for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check”. Dbl-click a subtotal for details.', 'FA_TotalChargeCreditSummary04.rpt', '20.60.20.10', '100', '0', 1, 1, '', '', 0),
(174, 0, 2, 'AG', 'Agency Accounting', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(175, 174, 0, 'AG', 'Account Activity', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(176, 175, 0, 'AG', 'Agency Accounts Only', 'Agency only totals for Starting & Ending balances with subtotals for Tuition, Other Charges, Credits & Payments. Amounts shown were posted to the agency (not the family).', 'AG_ChargeCreditActivity05.rpt', '20.60.30.0', '100,500', '0', 1, 1, 'None^Visibility', 'Account Key^Primary Payer^Starting Balance^Ending Balance', 0),
(177, 175, 1, 'AG', 'All Accounts (Primary & Agency)', 'Combined Starting & Ending balances (agencies plus family accounts) with subtotals for Tuition, Other Charges, Credits & Payments.', 'AG_ChargeCreditActivity04.rpt', '20.60.30.0', '100,500', '0', 1, 1, 'None^Visibility', 'Account Key^Primary Payer^Starting Balance^Ending Balance', 0),
(178, 174, 1, 'AG', 'Account Aging', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(179, 178, 0, 'AG', 'Agency Accounts @ 30 Day Aging', 'Shows agencies with a balance due (or credit balance) with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and +120.', 'AG_AgingAccount05.rpt', '20.60.30.0', '112,500', '0', 1, 1, 'Agency Name', 'Account Key^Balance', 0),
(180, 0, 1, 'AG', 'Agency Accounting', 'Module', '', '0', '', '', 1, 2, '', '', 0),
(181, 180, 0, 'AG', 'Account Aging', 'Group', '', '0', '', '', 1, 2, '', '', 0),
(182, 181, 0, 'AG', 'Agency Accounts @ 30 Day Aging', 'Shows agencies with a balance due (or credit balance) with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and 120+ days across multiple schools. Sorted by Agency.', 'AG_Corp_AgingAccount05.rpt', '15.10.30.0', '112', '0', 1, 2, '', '', 0),
(183, 178, 1, 'AG', 'Agency Accounts @ 30 Day Aging (Bal > 0)', 'Shows agencies with a balance due with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and 120+ days.', 'AG_AgingAccount15.rpt', '20.60.30.0', '112,500', '0', 1, 1, 'Agency Name', 'Account Key^Balance', 0),
(184, 181, 1, 'AG', 'Agency Accounts @ 30 Day Aging (Bal > 0)', 'Shows agencies with a balance due with the amount aged in 30 day increments, including the current period (0-29 days), 30, 60, 90 and 120+ days across multiple schools. Sorted by Agency.', 'AG_Corp_AgingAccount15.rpt', '15.10.30.0', '112', '0', 1, 2, '', '', 0),
(185, 174, 2, 'AG', 'Account Balance Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(186, 185, 0, 'AG', 'Agency Accounts Only', 'Lists each agency with a balance due (or credit balance) as of the specified date showing the amount owned for each family account. Balances shown belong to the agency (not the family).', 'AG_AccountBalanceSummary02.rpt', '20.60.30.0', '112,500', '0', 1, 1, 'Agency Name', 'Account Key^Balance', 1),
(187, 185, 1, 'AG', 'All Accounts (Primary & Agency)', 'Lists each family account with a combined balance due (or credit balance) as of the specified date. Balances shown are a combined total of items posted both to the family account and the agency.', 'AG_AccountBalanceSummary03.rpt', '20.60.30.0', '112,500', '0', 1, 1, 'None^Visibility', 'Account Key^Balance', 1),
(188, 174, 3, 'AG', 'Account Statement', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(189, 188, 0, 'AG', 'Agency / Customer Statement', 'For distribution to families. Shows detail of each charge, credit and payment during the specified dates including a beginning and ending balance. Good for use as a weekly or monthly statement.', 'AG_CustomerStatement01.rpt', '20.60.30.0', '100,-201,-300', '0', 1, 1, '', '', 1),
(190, 188, 1, 'AG', 'Agency Open Item Summary', 'A summary of all open Agency charges sorted by Agency and then Primary Payer. Good for use as a weekly or monthly statement.', 'AG_AgencyBalanceDue01.rpt', '20.60.30.0', '0', '0', 1, 1, '', '', 1),
(191, 180, 1, 'AG', 'Total Charge Credit Summary', 'Group', '', '0', '', '', 1, 2, '', '', 0),
(192, 191, 0, 'AG', 'Agency Accounts Only', 'Agency only totals for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check” with overall beginning and ending balances. Dbl-click to drill down from Company Wide summary to Regional summary to a School summary.', 'AG_Corp_TChargeCreditSummary03.rpt', '15.10.30.0', '100', '0', 1, 2, '', '', 0),
(193, 174, 4, 'AG', 'Total Charge Credit Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(194, 193, 0, 'AG', 'Agency Accounts Only', 'Agency only totals for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check” with overall beginning and ending balances.', 'AG_TotalChargeCreditSummary03.rpt', '20.60.30.0', '100', '0', 1, 1, '', '', 0),
(195, 193, 1, 'AG', 'All Accounts (Primary & Agency)', 'Combined totals (agencies plus family accounts) for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check” with overall beginning and ending balances.', 'AG_TotalChargeCreditSummary01.rpt', '20.60.30.0', '100', '0', 1, 1, '', '', 0),
(196, 191, 1, 'AG', 'All Accounts (Primary & Agency)', 'Combined totals (agencies plus family accounts) for each charge, credit and payment description like “Tuition - Infants” and “Pmt by Check” with overall beginning and ending balances. Dbl-click to drill down from Company Wide summary to Regional summary to', 'AG_Corp_TChargeCreditSummary01.rpt', '15.10.30.0', '100', '0', 1, 2, '', '', 0),
(197, 0, 3, 'TE', 'Tuition Express', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(198, 197, 0, 'TE', 'Tuition Express ID', 'Group', '', '0', '', '', 1, 1, '', '', 0);
INSERT INTO `kc_g_reports` (`reportid`, `parentnodeid`, `sortorder`, `moduleid`, `descriptionshort`, `descriptionlong`, `reportfilename`, `usergrouplimit`, `requiredcontrols`, `requiredprocessing`, `active`, `reporttype`, `groupby`, `sortby`, `reportflags`) VALUES
(199, 198, 0, 'TE', 'Tuition Express ID Report', 'List of each Account with their Tuition Express ID number for distribution.', 'TE_IDNumber02.rpt', '20.60.20.20', '201', '0', 1, 1, '', '', 0),
(200, 198, 1, 'TE', 'Tuition Express ID Summary', 'List of each Account with their Tuition Express ID number.', 'TE_IDNumber01.rpt', '20.60.20.10', '201', '0', 1, 1, '', '', 0),
(201, 0, 4, 'MT', 'Meal Tracker', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(202, 201, 0, 'MT', 'Daily Record of Meals', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(203, 202, 0, 'MT', 'Meals Served / Claimed', 'Shows meals served and/or claimed for each child for the specified dates. Meals claimed are indicated with a solid dot and non-claimed meals with a hollow dot.', 'MT_MealsServed01.rpt', '20.60.40.0', '105(31)', '0', 1, 1, '', '', 0),
(204, 202, 1, 'MT', 'Meals Served / Claimed Summary', 'Summary of meal counts with totals (and reimbursement amounts) for each meal by status level like Free, Reduced and Above Scale.', 'MT_MealsServed02.rpt', '20.60.40.0', '105(31)', '0', 1, 1, '', '', 0),
(205, 201, 1, 'MT', 'Meal Count', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(206, 205, 0, 'MT', 'Age Group / Meal Date', 'Meal counts by age group. Dbl-click a group for detail by date.', 'MT_MealCount04.rpt', '20.60.40.0', '100', '0', 1, 1, '', '', 0),
(207, 205, 1, 'MT', 'Meal Date / Age Group', 'Meal counts by date. Dbl-click a date for more detail by age group.', 'MT_MealCount01.rpt', '20.60.40.0', '100', '0', 1, 1, '', '', 0),
(208, 205, 2, 'MT', 'Meal Date / Program Status', 'Meal counts by date. Dbl-click a date for more detail by status level like Free, Reduced and Above Scale.', 'MT_MealCount02.rpt', '20.60.40.0', '100', '0', 1, 1, '', '', 0),
(209, 205, 3, 'MT', 'Program Status / Meal Date', 'Meal counts by status level like Free, Reduced and Above Scale. Dbl-click a level for more detail by date.', 'MT_MealCount03.rpt', '20.60.40.0', '100', '0', 1, 1, '', '', 0),
(210, 201, 2, 'MT', 'Rollcall Sheets', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(211, 210, 0, 'MT', 'Daily: 1 Day', 'Daily meal rollcall sheet.', 'MT_Rollcall01.rpt', '20.60.40.0', '106,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(212, 210, 1, 'MT', 'Weekly: 5 Day', 'Weekly meal rollcall sheet in 5 day format.', 'MT_Rollcall02.rpt', '20.60.40.0', '109,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(213, 210, 2, 'MT', 'Weekly: 7 Day', 'Weekly meal rollcall sheet in 7 day format.', 'MT_Rollcall03.rpt', '20.60.40.0', '109,202,500', '0', 1, 1, 'Primary Classroom^None', 'Child''s Name', 0),
(214, 201, 3, 'MT', 'School Menus', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(215, 214, 0, 'MT', 'Monthly Menu - 5 Days', 'Menu in monthly (5 day/week) format showing each meal on a separate page.', 'MT_SchoolMenu02.rpt', '20.60.40.0', '108', '0', 1, 1, '', '', 0),
(216, 214, 1, 'MT', 'Monthly Menu - 7 Days', 'Menu in monthly (7 day/week) format showing each meal on a separate page.', 'MT_SchoolMenu01.rpt', '20.60.40.0', '108', '0', 1, 1, '', '', 0),
(217, 214, 2, 'MT', 'Weekly Menu - 5 Days', 'Menu in weekly (5 day) format with all meals on a single page.', 'MT_SchoolMenu04.rpt', '20.60.40.0', '109', '0', 1, 1, '', '', 0),
(218, 214, 3, 'MT', 'Weekly Menu - 7 Days', 'Menu in weekly (7 day) format with all meals on a single page.', 'MT_SchoolMenu03.rpt', '20.60.40.0', '109', '0', 1, 1, '', '', 0),
(219, 0, 5, 'AT', 'Attendance Tracker', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(220, 219, 0, 'AT', 'Authorized Signature', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(221, 220, 0, 'AT', 'Child Chronological Sign In/Out', 'Shows check in/out times in sequence for each child (sorted by child) with name & signature of authorized person. Requires use of a signature capture device. Does not display manual or batch time card entries.', 'AT_SignatureInOut02.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(222, 220, 1, 'AT', 'Chronological Sign In/Out', 'Shows check in/out times in sequence for each day (sorted by date/time) with name & signature of authorized person. Requires use of a signature capture device. Does not display manual or batch time card entries.', 'AT_SignatureInOut01.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(223, 0, 2, 'AT', 'Attendance Tracker', 'Module', '', '0', '', '', 1, 3, '', '', 0),
(224, 223, 0, 'AT', 'Check In Registration', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(225, 224, 0, 'AT', 'Check In Registration', '* * * Fix Me * * *', 'AT_Registration.rpt', '0.0.0.0', '0', '0', 1, 3, '', '', 0),
(226, 219, 1, 'AT', 'Currently Checked In', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(227, 226, 0, 'AT', 'Children Currently Checked In Detail', 'List of children currently checked in showing total hours/minutes. The Classroom column displays the Classroom where the child is currently checked in, which may not match the Child''s Primary Classroom.', 'AT_CheckedIn02.rpt', '20.60.50.0', '500', '0', 1, 1, 'None^Classroom', 'Child''s Name^Check In Date-Time', 0),
(228, 226, 1, 'AT', 'Summary Report', 'Total of children currently checked in per classroom. Dbl-click a classroom for detail. The Classroom column displays the classroom where the child is currently checked in, which may not match the Child''s Primary Classroom.', 'AT_CheckedIn01.rpt', '20.60.50.0', '0', '0', 1, 1, '', '', 0),
(229, 219, 2, 'AT', 'Not In Attendance', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(230, 229, 0, 'AT', 'Child''s Minutes Outside/Greater Than Scheduled', 'Compares attendance to schedule. Shows hours outside and greater than schedule. Example: Child scheduled 8:00 – 12:00 (4 hours). They attend 9:00 – 1:00. This would be 1.0 hours outside of schedule, but zero hours greater than schedule.', 'AT_NotInAttend01.rpt', '20.60.50.0', '105(31),202', '120', 1, 1, '', '', 0),
(231, 229, 1, 'AT', 'Scheduled but did not Attend', 'Compares attendance to schedule. Shows children who did not attend at all on a scheduled day.', 'AT_NotInAttend02.rpt', '20.60.50.0', '105(31),202', '121', 1, 1, '', '', 0),
(232, 219, 3, 'AT', 'Registration', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(233, 232, 0, 'AT', 'Temporary Registration', 'Displays a list of authorized pick-ups who have been given a Temporary Registration. To use the Temporary Registration Number, they must register before the expiration date and time.', 'AT_Registration01.rpt', '20.60.50.0', '0', '0', 1, 1, '', '', 0),
(234, 219, 4, 'AT', 'School Attendance', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(235, 234, 0, 'AT', 'Classroom Attendance Analysis', 'One Page Analysis of Classroom Attendance with Teacher Over Staffed / Under Staffed determined (based on Child:Teacher Ratio).', 'AT_AttendanceSummary16.rpt', '20.60.50.0', '105(31)', '0', 1, 1, '', '', 0),
(236, 234, 1, 'AT', 'Classroom Attendance Analysis (12 hr)', 'Graphical Analysis of Classroom Attendance with Teacher Over Staffed / Under Staffed determined (based on Child:Teacher Ratio).', 'AT_AttendanceSummary14.rpt', '20.60.50.0', '105(31)', '0', 1, 1, '', '', 0),
(237, 234, 2, 'AT', 'Classroom Attendance Analysis (24 hr)', 'Graphical Analysis of Classroom Attendance with Teacher Over Staffed / Under Staffed determined (based on Child:Teacher Ratio).', 'AT_AttendanceSummary15.rpt', '20.60.50.0', '105(31)', '0', 1, 1, '', '', 0),
(238, 234, 3, 'AT', 'Daily Attendance Summary (12 hr)', 'Summary of Daily Attendance for each child.', 'AT_AttendanceSummary12.rpt', '20.60.50.0', '105(31),500', '0', 1, 1, 'Attended Classroom^Attended Department^None', 'Child''s Name^Start Time', 0),
(239, 234, 4, 'AT', 'Daily Attendance Summary (24 hr)', 'Summary of Daily Attendance for each child.', 'AT_AttendanceSummary13.rpt', '20.60.50.0', '105(31),500', '0', 1, 1, 'Attended Classroom^Attended Department^None', 'Child''s Name^Start Time', 0),
(240, 234, 5, 'AT', 'Daily Chronological In/Out', 'Lists each child on a daily basis chronologically by their Clock In / Clock Out times.', 'AT_AttendanceSummary06.rpt', '20.60.50.0', '105(31)', '0', 1, 1, '', '', 0),
(241, 234, 6, 'AT', 'Daily Chronological In/Out by Classroom', 'Lists each Classroom and then children on a daily basis chronologically by their Clock In / Clock Out times.', 'AT_AttendanceSummary07.rpt', '20.60.50.0', '105(31)', '0', 1, 1, '', '', 0),
(242, 234, 7, 'AT', 'Daily Classroom Attendance Summary', 'Detailed record of each child’s attendance for each day sorted by classroom. Displays initials of check in/out person.', 'AT_AttendanceSummary10.rpt', '20.60.50.0', '105', '0', 1, 1, '', '', 0),
(243, 234, 8, 'AT', 'Daily Classroom Attendance Summary (Full Name)', 'Detailed record of each child’s attendance for each day sorted by classroom. Displays full name of check in/out person.', 'AT_AttendanceSummary11.rpt', '20.60.50.0', '105', '0', 1, 1, '', '', 0),
(244, 234, 9, 'AT', 'Daily Distinct Attendance Count', 'Lists children on a daily basis with the total number attending each day. If a child checks in/out multiple times during a single day they are only counted once. Sorted by child’s name.', 'AT_AttendanceSummary05.rpt', '20.60.50.0', '105(31)', '0', 1, 1, '', '', 0),
(245, 234, 10, 'AT', 'Earliest In / Latest Out Summary', 'Summary of child attendance during the specified dates. Includes total days and hours attended as well as the Earliest check in and Latest check out times per child. Intended for internal use.', 'AT_AttendanceSummary08.rpt', '20.60.50.0', '105,202,500', '0', 1, 1, 'None^Attended Classroom', 'Child''s Name', 0),
(246, 234, 11, 'AT', 'Monthly Attendance Summary (4 hr)', 'Summary of half and full days attended per child where 4 hours or more is a full day. A hollow dot indicates a half day while a solid dot indicates a full day.', 'AT_AttendanceSummary02.rpt', '20.60.50.0', '105(31),202', '0', 1, 1, '', '', 0),
(247, 234, 12, 'AT', 'Monthly Attendance Summary (5 hr)', 'Summary of half and full days attended per child where 5 hours or more is a full day. A hollow dot indicates a half day while a solid dot indicates a full day.', 'AT_AttendanceSummary03.rpt', '20.60.50.0', '105(31),202', '0', 1, 1, '', '', 0),
(248, 234, 13, 'AT', 'Monthly Attendance Summary (6 hr)', 'Summary of half and full days attended per child where 6 hours or more is a full day. A hollow dot indicates a half day while a solid dot indicates a full day.', 'AT_AttendanceSummary04.rpt', '20.60.50.0', '105(31),202', '0', 1, 1, '', '', 0),
(249, 234, 14, 'AT', 'Weekly Attendance Summary', 'Lists the number of hours and minutes each child attended per day during the selected week.', 'AT_AttendanceSummary01.rpt', '20.60.50.0', '109(7),500', '0', 1, 1, 'None^Attended Classroom', 'Child''s Name', 0),
(250, 219, 5, 'AT', 'Time Card', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(251, 250, 0, 'AT', 'Child Time Card Detail', 'Detailed record of each child’s attendance during the specified dates.', 'AT_ChildTimeCard01.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(252, 250, 1, 'AT', 'Child Time Card Detail (Full Name)', 'Detailed record of each child’s attendance during the specified dates. Displays full name of check in/out person.', 'AT_ChildTimeCard03.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(253, 250, 2, 'AT', 'Child Time Card Detail w/ Signature', 'Detailed record of each child’s attendance during the specified dates. Includes a signature line for an authorized person to sign.', 'AT_ChildTimeCard02.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(254, 250, 3, 'AT', 'Child Time Card Detail w/ Signature (Full Name)', 'Detailed record of each child’s attendance during the specified dates. Displays full name of check in/out person. Includes a signature line for an authorized person to sign.', 'AT_ChildTimeCard04.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(255, 219, 6, 'AT', 'Time Card Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(256, 255, 0, 'AT', 'Account Time Card Detail', 'Detailed record of each child’s attendance during the specified dates. Sorted by Account Key. May be distributed to families.', 'AT_TimeCard04.rpt', '20.60.50.0', '105,201', '0', 1, 1, '', '', 0),
(257, 255, 1, 'AT', 'Account Time Card Detail (Full Name)', 'Detailed record of each child’s attendance during the specified dates. Sorted by Account Key. May be distributed to families.', 'AT_TimeCard06.rpt', '20.60.50.0', '105,201', '0', 1, 1, '', '', 0),
(258, 255, 2, 'AT', 'Account Time Card Detail w/ Signature', 'Detailed record of each child’s attendance during the specified dates. Includes a signature line for an authorized person to sign. Sorted by Account Key. May be distributed to families.', 'AT_TimeCard03.rpt', '20.60.50.0', '105,201', '0', 1, 1, '', '', 0),
(259, 255, 3, 'AT', 'Account Time Card Detail w/ Signature (Full Name)', 'Detailed record of each child’s attendance during the specified dates. Includes a signature line for an authorized person to sign. Sorted by Account Key. May be distributed to families.', 'AT_TimeCard05.rpt', '20.60.50.0', '105,201', '0', 1, 1, '', '', 0),
(260, 255, 4, 'AT', 'Time Card Detail', 'Detailed record of each child’s attendance during the specified dates. Sorted by child’s name. Intended for internal use.', 'AT_TimeCard01.rpt', '20.60.50.0', '105,202', '0', 1, 1, '', '', 0),
(261, 0, 3, 'ED', 'Employee Data', 'Module', '', '0', '', '', 1, 3, '', '', 0),
(262, 261, 0, 'ED', 'Account Log Sheet Report', 'Group', '', '0', '', '', 1, 3, '', '', 0),
(263, 262, 0, 'ED', 'Log Sheet: Employee', 'Context Specific Employee Log Sheet, used for printing the Employee Log grid.', 'ED_LogSheetEmployee01.rpt', '30.60.10.0', '0', '0', 1, 3, '', '', 0),
(264, 0, 6, 'ED', 'Employee Data', 'Module', '', '0', '', '', 1, 1, '', '', 0),
(265, 264, 0, 'ED', 'Currently Checked In', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(266, 265, 0, 'ED', 'Employees Currently Checked In Detail', 'List of employees currently checked in showing total hours/minutes. Sorted by Employee''s Name. The Work Area column displays the Work Area where the Employee is currently checked in, which may not match the Employee''s Primary Work Area.', 'ED_CheckedIn01.rpt', '30.60.10.0', '500', '0', 1, 1, 'None', 'Employee''s Name^Check In Date-Time^Work Area', 0),
(267, 264, 1, 'ED', 'Employee Benefit', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(268, 267, 0, 'ED', 'Employee Benefit Summary by Benefit Type', 'Summary of Employee''s Benefit hours with Starting Balance, amount Used and Earned for the specified period and Ending Balance.', 'ED_BenefitSummary02.rpt', '30.60.10.0', '118,203,500', '0', 1, 1, 'Benefit Type', 'Employee''s Name^Ending Balance', 1),
(269, 267, 1, 'ED', 'Employee Benefit Summary by Employee', 'Summary of Employee''s Benefit hours with Starting Balance, amount Used and Earned for the specified period and Ending Balance.', 'ED_BenefitSummary01.rpt', '30.60.10.0', '118,203,500', '0', 1, 1, 'Employee', 'Benefit Type^Ending Balance', 1),
(270, 264, 2, 'ED', 'Employee Information', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(271, 270, 0, 'ED', 'Employee: Information Sheet', 'Name and address of the Employees and all of their relationships.', 'ED_EmployeeInformation01.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(272, 264, 3, 'ED', 'Employee Schedules', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(273, 272, 0, 'ED', 'Employee Schedule Summary Graph (12 hr)', 'Displays employee schedules for each Work Area for the specified dates. Sorted by start time and employee name.', 'ED_EmployeeSchedule03.rpt', '30.60.10.0', '115(92),203', '160', 1, 1, '', '', 0),
(274, 272, 1, 'ED', 'Employee Schedule Summary Graph (24 hr)', 'Displays employee schedules for each Work Area for the specified dates. Sorted by start time and employee name.', 'ED_EmployeeSchedule04.rpt', '30.60.10.0', '115(92),203', '160', 1, 1, '', '', 0),
(275, 272, 2, 'ED', 'Employee Schedule Summary by Work Area', 'Displays employee schedules for each Work Area for the specified dates. Sorted by start time and employee name.', 'ED_EmployeeSchedule02.rpt', '30.60.10.0', '115(91),203', '160', 1, 1, '', '', 0),
(276, 272, 3, 'ED', 'Employee''s Schedule', 'Displays employee schedules for the specified dates including: Department, Work Area, scheduled times and total hours. Sorted by employee name.', 'ED_EmployeeSchedule01.rpt', '30.60.10.0', '115(91),203', '160', 1, 1, '', '', 0),
(277, 264, 4, 'ED', 'Filtered Reports', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(278, 277, 0, 'ED', 'Email & Phone Number Summary', 'Summary report displaying all selected Employees including Email and Phone Numbers.', 'ED_FilteredEmployee04.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(279, 277, 1, 'ED', 'Email Address', 'List of Employees with Primary Workarea and Email Address – sorted by Last Name.', 'ED_FilteredEmployee03.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(280, 277, 2, 'ED', 'Namebadge (2 x 3 1/2), Photo, Employee Information', 'Prints a photo name badge with primary classroom for each employee. Used with Avery Label 5871', 'ED_FilteredEmployee01.Rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 1),
(281, 277, 3, 'ED', 'Roster', 'Roster of employees and work areas - sorted by Employee Name.', 'ED_FilteredEmployee02.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(282, 264, 5, 'ED', 'Registration', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(283, 282, 0, 'ED', 'Temporary Registration', 'Displays a list of employees who have been given a Temporary Registration. To use the Temporary Registration Number, they must register before the expiration date and time.', 'ED_Registration01.rpt', '30.60.10.0', '0', '0', 1, 1, '', '', 0),
(284, 264, 6, 'ED', 'Sign In/Out Sheets', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(285, 284, 0, 'ED', 'Daily Sign In/Out - 2', 'Daily Sign In/Out Sheet with two in/out slots per day. Use the Filter to include specific employees.', 'ED_SignInOut04.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(286, 284, 1, 'ED', 'Daily Sign In/Out - 4', 'Daily Sign In/Out Sheet with four in/out slots per day. Use the Filter to include specific employees.', 'ED_SignInOut01.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(287, 284, 2, 'ED', 'Weekly Sign In/Out', '5 Day Sign In/Out Sheet with two in/out slots per day. Use the Filter to select specific employees.', 'ED_SignInOut02.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(288, 284, 3, 'ED', 'Weekly Sign In/Out by Employee', '7 Day Sign In/Out Sheet. One page for each employee. Use the Filter to select specific employees.', 'ED_SignInOut03.rpt', '30.60.10.0', '203', '0', 1, 1, '', '', 0),
(289, 264, 7, 'ED', 'Time Card', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(290, 289, 0, 'ED', 'Department w/Actual and Rounded Times', 'Display an Employee''s Time Card using Pay Code and Department with actual and rounded In / Out Times. At the bottom of the report is a verification statement for the employee to sign.', 'ED_EmployeeTimecard02.rpt', '30.60.10.0', '111,203', '0', 1, 1, '', '', 0),
(291, 289, 1, 'ED', 'Department w/Rounded Times', 'Display an Employee''s Time Card using Pay Code and Department with rounded In / Out Times. At the bottom of the report is a verification statement for the employee to sign.', 'ED_EmployeeTimecard01.rpt', '30.60.10.0', '111,203', '0', 1, 1, '', '', 0),
(292, 289, 2, 'ED', 'Work Area w/Actual and Rounded Times', 'Display an Employee''s Time Card using Pay Code and Work Area with actual and rounded In / Out Times. At the bottom of the report is a verification statement for the employee to sign.', 'ED_EmployeeTimecard04.rpt', '30.60.10.0', '111,203', '0', 1, 1, '', '', 0),
(293, 289, 3, 'ED', 'Work Area w/Rounded Times', 'Display an Employee''s Time Card using Pay Code and Work Area with rounded In / Out Times. At the bottom of the report is a verification statement for the employee to sign.', 'ED_EmployeeTimecard03.rpt', '30.60.10.0', '111,203', '0', 1, 1, '', '', 0),
(294, 264, 8, 'ED', 'Time Card Summary', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(295, 294, 0, 'ED', 'Daily Attendance Summary (12 Hours)', 'Summary of Daily Attendance for each employee.', 'ED_TimecardSummary06.rpt', '30.60.10.0', '118(92),500', '0', 1, 1, 'Attended Work Area^Attended Department^None', 'Employee''s Name^Start Time', 0),
(296, 294, 1, 'ED', 'Daily Attendance Summary (24 Hours)', 'Summary of Daily Attendance for each employee.', 'ED_TimecardSummary07.rpt', '30.60.10.0', '118(92),500', '0', 1, 1, 'Attended Work Area^Attended Department^None', 'Employee''s Name^Start Time', 0),
(297, 294, 2, 'ED', 'Time Card Summary Detail', 'Display a summary for the the period with detail for each employee.', 'ED_TimecardSummary04.rpt', '30.60.10.0', '118,203', '0', 1, 1, '', '', 0),
(298, 294, 3, 'ED', 'Time Card Summary by Department', 'Display a summary for the the period sorted by Department.', 'ED_TimecardSummary03.rpt', '30.60.10.0', '118,203', '0', 1, 1, '', '', 0),
(299, 294, 4, 'ED', 'Time Card Summary by Department (w/ Pay Info)', 'Display a summary for the period sorted by Department. Includes pay information.', 'ED_TimecardSummary13.rpt', '30.60.15.0', '118,203', '0', 1, 1, '', '', 0),
(300, 294, 5, 'ED', 'Time Card Summary by Pay Code', 'Display a summary for the the period sorted by Pay Code.', 'ED_TimecardSummary02.rpt', '30.60.10.0', '118,203', '0', 1, 1, '', '', 0),
(301, 294, 6, 'ED', 'Time Card Summary by Pay Code (w/ Pay Info)', 'Display a summary for the the period sorted by Pay Code. Includes pay information.', 'ED_TimecardSummary12.rpt', '30.60.15.0', '118,203', '0', 1, 1, '', '', 0),
(302, 294, 7, 'ED', 'Time Card Summary by Work Area', 'Display a summary for the the period sorted by Work Area.', 'ED_TimecardSummary05.rpt', '30.60.10.0', '118,203', '0', 1, 1, '', '', 0),
(303, 294, 8, 'ED', 'Time Card Summary by Work Area (w/ Pay Info)', 'Display a summary for the period sorted by Work Area. Includes pay information.', 'ED_TimecardSummary15.rpt', '30.60.15.0', '118,203', '0', 1, 1, '', '', 0),
(304, 294, 9, 'ED', 'Time Card Summary with Drill Down', 'Display a summary for the the period with drill down detail for each employee.', 'ED_TimecardSummary01.rpt', '30.60.10.0', '118,203', '0', 1, 1, '', '', 0),
(305, 264, 9, 'ED', 'Tracking', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(306, 305, 0, 'ED', 'Categories, Items, Employees', 'List of employees assigned to the selected Tracking Categories. Includes name, primary work area, and email. Sorted by Tracking Category.', 'ED_TrackingEmployee02.rpt', '30.60.10.0', '411', '112', 1, 1, '', '', 3),
(307, 305, 1, 'ED', 'Photo, Categories, Items', 'Displays a small photo with employee’s name, primary work area, and email sorted by the selected Tracking Categories.', 'ED_TrackingEmployee01.Rpt', '30.60.10.0', '411', '112', 1, 1, '', '', 3),
(308, 264, 10, 'ED', 'User Defined', 'Group', '', '0', '', '', 1, 1, '', '', 0),
(309, 308, 0, 'ED', 'By Employee''s Name', 'Displays a list of employees with the contents of each User Defined Field sorted by employee’s name. Use when you want to see each employee with the fields for that employee shown below.', 'ED_UserDefinedEmployee02.rpt', '30.60.10.0', '421,203', '0', 1, 1, '', '', 0),
(310, 308, 1, 'ED', 'By Field Name', 'Displays a list of Employees with the contents of each User Defined Field sorted by the selected fields. Use when you want to see each field with the employee names below.', 'ED_UserDefinedEmployee01.rpt', '30.60.10.0', '421,203', '0', 1, 1, '', '', 0),
(311, 308, 2, 'ED', 'By Field Name Order by Field Value', 'Displays a list of Employees with the contents of each User Defined Field sorted by the selected fields. Use when you want to see each field with the employee names below.', 'ED_UserDefinedEmployee03.rpt', '30.60.10.0', '421,203', '0', 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_savedschoolmealdescription`
--

CREATE TABLE IF NOT EXISTS `kc_g_savedschoolmealdescription` (
  `savedschoolmealdescriptionid` int(11) NOT NULL auto_increment,
  `savedschoolmealid` int(11) NOT NULL,
  `dayofweek` varchar(1) NOT NULL,
  `mealabbreviationid` int(11) NOT NULL,
  `mealdescription` varchar(200) NOT NULL,
  PRIMARY KEY  (`savedschoolmealdescriptionid`),
  KEY `fk_g_savedschoolmealdescription_fp_mealabbreviation` (`mealabbreviationid`),
  KEY `fk_g_savedschoolmealdescription_g_savedschoolmealname` (`savedschoolmealid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_savedschoolmealname`
--

CREATE TABLE IF NOT EXISTS `kc_g_savedschoolmealname` (
  `savedschoolmealid` int(11) NOT NULL auto_increment,
  `mealname` varchar(50) NOT NULL,
  `mealtype` varchar(1) NOT NULL,
  PRIMARY KEY  (`savedschoolmealid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_schools`
--

CREATE TABLE IF NOT EXISTS `kc_g_schools` (
  `schoolid` int(11) NOT NULL auto_increment,
  `regionid` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `director` varchar(50) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `schoolname` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `region` varchar(20) NOT NULL,
  `postalcode` varchar(15) NOT NULL,
  `areacode1` varchar(10) NOT NULL,
  `phonenumber1` varchar(30) NOT NULL,
  `areacode2` varchar(10) NOT NULL,
  `phonenumber2` varchar(30) NOT NULL,
  `areacodefax` varchar(10) NOT NULL,
  `faxnumber` varchar(30) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `tokensettings` varbinary(1024) default NULL,
  PRIMARY KEY  (`schoolid`),
  UNIQUE KEY `ix_g_schools_uniquecode` (`code`),
  KEY `ix_g_schools_regionid` (`regionid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kc_g_schools`
--

INSERT INTO `kc_g_schools` (`schoolid`, `regionid`, `code`, `director`, `emailaddress`, `schoolname`, `address1`, `address2`, `city`, `region`, `postalcode`, `areacode1`, `phonenumber1`, `areacode2`, `phonenumber2`, `areacodefax`, `faxnumber`, `sortorder`, `tokensettings`) VALUES
(-1, -1, 'Sys', 'Sys', '', 'Sys', '', '', '', '', '', '', '', '', '', '', '', 0, NULL),
(1, 1, 'S1', 'My School Director', '', 'My School', '', '', '', '', '', '', '', '', '', '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_statelist`
--

CREATE TABLE IF NOT EXISTS `kc_g_statelist` (
  `statelistid` int(11) NOT NULL auto_increment,
  `abbreviation` varchar(2) NOT NULL,
  `longname` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY  (`statelistid`),
  UNIQUE KEY `ix_g_statelist` (`abbreviation`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `kc_g_statelist`
--

INSERT INTO `kc_g_statelist` (`statelistid`, `abbreviation`, `longname`, `active`) VALUES
(1, 'AK', 'Alaska', 1),
(2, 'AL', 'Alabama', 1),
(3, 'AS', 'American Samoa', 1),
(4, 'AZ', 'Arizona', 0),
(5, 'AR', 'Arkansas', 1),
(6, 'CA', 'California', 1),
(7, 'CO', 'Colorado', 1),
(8, 'CT', 'Connecticut', 1),
(9, 'DE', 'Delaware', 1),
(10, 'DC', 'District of Columbia', 1),
(11, 'FM', 'Federated States of Micronesia', 1),
(12, 'FL', 'Florida', 0),
(13, 'GA', 'Georgia', 1),
(14, 'GU', 'Guam', 0),
(15, 'HI', 'Hawaii', 1),
(16, 'ID', 'Idaho', 1),
(17, 'IL', 'Illinois', 1),
(18, 'IN', 'Indiana', 1),
(19, 'IA', 'Iowa', 1),
(20, 'KS', 'Kansas', 1),
(21, 'KY', 'Kentucky', 1),
(22, 'LA', 'Louisiana', 1),
(23, 'ME', 'Maine', 1),
(24, 'MH', 'Marshall Islands', 1),
(25, 'MD', 'Maryland', 1),
(26, 'MA', 'Massachusetts', 0),
(27, 'MI', 'Michigan', 1),
(28, 'MN', 'Minnesota', 1),
(29, 'MS', 'Mississippi', 1),
(30, 'MO', 'Missouri', 0),
(31, 'MT', 'Montana', 1),
(32, 'NE', 'Nebraska', 1),
(33, 'NV', 'Nevada', 1),
(34, 'NH', 'New Hampshire', 1),
(35, 'NJ', 'New Jersey', 1),
(36, 'NM', 'New Mexico', 1),
(37, 'NY', 'New York', 1),
(38, 'NC', 'North Carolina', 1),
(39, 'ND', 'North Dakota', 1),
(40, 'MP', 'Northern Mariana Islands', 1),
(41, 'OH', 'Ohio', 1),
(42, 'OK', 'Oklahoma', 1),
(43, 'OR', 'Oregon', 1),
(44, 'PW', 'Palau', 1),
(45, 'PA', 'Pennsylvania', 0),
(46, 'PR', 'Puerto Rico', 0),
(47, 'RI', 'Rhode Island', 1),
(48, 'SC', 'South Carolina', 1),
(49, 'SD', 'South Dakota', 1),
(50, 'TN', 'Tennessee', 1),
(51, 'TX', 'Texas', 1),
(52, 'UT', 'Utah', 1),
(53, 'VT', 'Vermont', 1),
(54, 'VI', 'Virgin Islands', 0),
(55, 'VA', 'Virginia', 1),
(56, 'WA', 'Washington', 1),
(57, 'WV', 'West Virginia', 1),
(58, 'WI', 'Wisconsin', 1),
(59, 'WY', 'Wyoming', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_trackingcategories`
--

CREATE TABLE IF NOT EXISTS `kc_g_trackingcategories` (
  `trackingcategoryid` int(11) NOT NULL auto_increment,
  `trackingextid` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `categoryclass` varchar(3) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `tooltip` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `isschoolspecific` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`trackingcategoryid`),
  KEY `fk_g_trackingcategories_typestable` (`trackingextid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=333 ;

--
-- Dumping data for table `kc_g_trackingcategories`
--

INSERT INTO `kc_g_trackingcategories` (`trackingcategoryid`, `trackingextid`, `description`, `categoryclass`, `sortorder`, `tooltip`, `active`, `isschoolspecific`) VALUES
(306, 51, 'Private Pay/Agency', 'mul', 3, 'Is the family private pay or assigned to an agency?', 1, 0),
(308, 48, 'Allergies', 'mul', 1, 'List of possible allergies.', 1, 0),
(320, 48, 'Behaviors', 'mul', 2, 'Behavioral issues.', 1, 0),
(321, 51, 'Marital Status', 'sng', 2, 'Select a status like single, married, etc.', 1, 0),
(322, 51, 'Marketing', 'mul', 1, 'How did you hear about us?', 1, 0),
(323, 51, 'Payment Preference', 'sng', 4, 'How family pays.', 1, 0),
(324, 51, 'Parent Forms', 'mul', 5, 'Required forms.', 1, 0),
(325, 51, 'Parent Volunteer', 'mul', 6, 'Parent volunteer opportunities.', 1, 0),
(326, 51, 'General Information', 'mul', 7, 'School directory permission & misc.', 1, 0),
(327, 48, 'Potty Trained', 'sng', 3, 'Is the child potty trained?', 1, 0),
(328, 48, 'Child Forms', 'mul', 4, 'Required forms for child.', 1, 0),
(329, 48, 'Transportation', 'mul', 5, 'Bus transportation.', 1, 0),
(330, 48, 'Program', 'sng', 6, 'Part-time, full-time, etc.', 1, 0),
(331, 48, 'Activities', 'mul', 7, 'Extra activities.', 1, 0),
(332, 49, 'Certifications', 'mul', 1, 'Current staff certifications.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_trackingdata`
--

CREATE TABLE IF NOT EXISTS `kc_g_trackingdata` (
  `trackingdataid` int(11) NOT NULL auto_increment,
  `trackingitemid` int(11) NOT NULL,
  `trackingextid` int(11) NOT NULL,
  `targetid` int(11) NOT NULL,
  PRIMARY KEY  (`trackingdataid`),
  UNIQUE KEY `ix_g_trackingdata` (`trackingitemid`,`targetid`),
  KEY `idx_trackingextid_trackingitemid` (`trackingextid`,`trackingitemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_trackingitems`
--

CREATE TABLE IF NOT EXISTS `kc_g_trackingitems` (
  `trackingitemid` int(11) NOT NULL auto_increment,
  `trackingcategoryid` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `sizelimit` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `tooltip` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`trackingitemid`),
  UNIQUE KEY `ix_g_trackingitems_category` (`trackingcategoryid`,`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=692 ;

--
-- Dumping data for table `kc_g_trackingitems`
--

INSERT INTO `kc_g_trackingitems` (`trackingitemid`, `trackingcategoryid`, `description`, `sizelimit`, `sortorder`, `tooltip`, `active`) VALUES
(630, 306, 'State', 0, 3, 'State Subsidized', 1),
(631, 306, 'County', 0, 4, 'County Subsidized', 1),
(632, 308, 'Milk', 0, 1, '', 1),
(633, 308, 'Wheat', 0, 2, '', 1),
(634, 308, 'Peanuts', 0, 3, '', 1),
(635, 308, 'Bee Sting', 0, 4, '', 1),
(644, 308, 'Pollen', 0, 5, '', 1),
(646, 320, 'Hitting', 0, 1, '', 1),
(647, 306, 'Private Pay', 0, 2, 'Private Pay Family', 1),
(648, 321, 'Single', 0, 1, '', 1),
(649, 321, 'Married', 0, 2, '', 1),
(650, 321, 'Significant Other', 0, 3, '', 1),
(651, 321, 'Divorced', 0, 4, '', 1),
(652, 321, 'Separated', 0, 5, '', 1),
(653, 321, 'Widowed', 0, 6, '', 1),
(654, 322, 'Friend / Referral', 0, 1, '', 1),
(655, 322, 'Yellow Pages', 0, 2, '', 1),
(656, 322, 'Sign', 0, 3, '', 1),
(657, 322, 'Website', 0, 4, '', 1),
(658, 322, 'Advertisement', 0, 5, '', 1),
(659, 322, 'Newspaper', 0, 6, '', 1),
(660, 323, 'Cash', 0, 1, '', 1),
(661, 323, 'Check', 0, 2, '', 1),
(662, 323, 'Tuition Express', 0, 3, '', 1),
(663, 324, 'Center Agreement', 0, 1, 'Check if they have signed & returned document.', 1),
(664, 325, 'Driver', 0, 1, '', 1),
(665, 325, 'Event Planning', 0, 2, '', 1),
(666, 325, 'Fundraising', 0, 3, '', 1),
(667, 325, 'Reading', 0, 4, '', 1),
(668, 325, 'Field Trips', 0, 5, '', 1),
(669, 325, 'Snacks', 0, 6, '', 1),
(670, 326, 'School Directory OK', 0, 1, 'Check if okay to print their name in school directory.', 1),
(671, 320, 'Biting', 0, 2, '', 1),
(672, 320, 'Oppositional', 0, 4, '', 1),
(673, 320, 'Kicking', 0, 3, '', 1),
(674, 327, 'Fully Potty Trained', 0, 3, '', 1),
(675, 327, 'Diapers', 0, 1, '', 1),
(676, 327, 'In Training', 0, 2, '', 1),
(677, 328, 'Health Form', 0, 1, '', 1),
(678, 328, 'Immunizations', 0, 2, '', 1),
(679, 328, 'Schedule Agreement', 0, 3, '', 1),
(680, 328, 'Photograph Allowed', 0, 4, '', 1),
(681, 329, 'AM Bus', 0, 1, '', 1),
(682, 329, 'PM Bus', 0, 2, '', 1),
(683, 330, 'Full-Time', 0, 1, '', 1),
(684, 330, 'Part-Time MWF', 0, 2, '', 1),
(685, 330, 'Part-Time TU, TH', 0, 3, '', 1),
(686, 331, 'Art', 0, 1, '', 1),
(687, 331, 'Music', 0, 2, '', 1),
(688, 331, 'Dance', 0, 3, '', 1),
(689, 332, 'ECE Certified', 0, 3, '', 1),
(690, 332, 'Teaching Certificate', 0, 4, '', 1),
(691, 332, 'CPR Certified', 0, 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_typestable`
--

CREATE TABLE IF NOT EXISTS `kc_g_typestable` (
  `typeid` int(11) NOT NULL auto_increment,
  `groupname` varchar(30) NOT NULL,
  `typedescription` varchar(64) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `sysitem` tinyint(1) NOT NULL,
  PRIMARY KEY  (`typeid`),
  UNIQUE KEY `ix_g_typestable_groupname_typedescription` (`groupname`,`typedescription`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=603 ;

--
-- Dumping data for table `kc_g_typestable`
--

INSERT INTO `kc_g_typestable` (`typeid`, `groupname`, `typedescription`, `sortorder`, `comment`, `active`, `sysitem`) VALUES
(1, 'PhoneNumber', 'Cell', 2, 'cell phone number', 1, 1),
(2, 'PhoneNumber', 'Home', 1, 'home phone number', 1, 1),
(3, 'PhoneNumber', 'Work', 6, 'work phone number', 1, 1),
(11, 'ChildRel', 'Mom', 3, '', 1, 1),
(12, 'ChildRel', 'Dad', 4, '', 1, 1),
(15, 'AccountLedgerRel', 'Standard', 0, ' ledger card entry type', 1, 1),
(16, 'AccountLedgerRel', 'Agency', 1, ' ledger card entry type', 1, 1),
(24, 'ChildRel', 'Family Friend', 11, ' ', 1, 1),
(25, 'ChildRel', 'Doctor', 18, '', 1, 1),
(26, 'ChildRel', 'Dentist', 7, ' ', 1, 1),
(27, 'EmployeeRel', 'Emergency Contact', 6, ' ', 1, 1),
(28, 'EmployeeRel', 'Doctor', 11, '', 1, 1),
(29, 'EmployeeRel', 'Dentist', 12, ' ', 1, 1),
(34, 'Payment', '???? Payment by check', 0, ' ', 1, 1),
(35, 'Payment', '???? Payment by Cash', 1, ' ', 1, 1),
(36, 'Payment', '???? Payment by CC', 2, ' ', 1, 1),
(37, 'Payment', '???? Payment by TE', 3, ' ', 1, 1),
(38, 'Payment', '???? Payments on hand', 4, ' ', 1, 1),
(41, 'AccessCode', 'kiddiecare Timeclock (Alpha Only)', 1, '6 Char code for kiddiecare TimeClock', 1, 1),
(42, 'AccessCode', 'TimeKeeper Key (Alphanumeric)', 2, '24 Char code for TimeKeeper System ', 1, 1),
(43, 'AccessCode', 'kiddiecare Timeclock - DISABLED', 3, 'TimeClock code that is locked out (disabled)', 1, 1),
(48, 'TrackingEx', 'Child', 1, 'Tracking ExposedTo code', 1, 1),
(49, 'TrackingEx', 'Employee', 2, 'Tracking ExposedTo code', 1, 1),
(50, 'TrackingEx', 'Vendor', 3, 'Tracking ExposedTo code', 1, 1),
(51, 'TrackingEx', 'Account', 0, 'Tracking ExposedTo code', 1, 1),
(52, 'TrackingCat', 'Bus runs', 1, 'Tracking category', 1, 1),
(53, 'TrackingCat', 'Allergy ', 2, 'Tracking category', 1, 1),
(54, 'TrackingCat', 'Medical alert', 3, 'Tracking category', 1, 1),
(55, 'TrackingCat', 'Payroll', 4, 'Tracking category', 1, 1),
(56, 'TrackingCat', 'AR Due', 5, 'Tracking category', 1, 1),
(57, 'TrackingCat', 'Activity', 6, 'Tracking category', 1, 1),
(58, 'TrackingCat', 'Pay type', 7, 'Tracking category', 1, 1),
(59, 'TrackingCat', 'Neighborhood', 8, 'Tracking category', 1, 1),
(60, 'TrackingCat', 'Agency Process', 9, 'Tracking category', 1, 1),
(63, 'Account', 'AR', 0, '???? This account brings me money', 1, 1),
(64, 'Account', 'AP', 1, '???? This account costs me money', 1, 1),
(65, 'TrackingCat', 'Account Status', 10, 'Account status', 1, 1),
(68, 'UserDefinedEx', 'Child', 1, '', 1, 1),
(69, 'UserDefinedEx', 'Account', 0, '', 1, 1),
(71, 'UserDefinedEx', 'Employee', 2, '', 1, 1),
(72, 'UserDefinedEx', 'Vendor', 3, '', 1, 1),
(102, 'LedgerLock', 'Tuition Express', 0, '', 1, 1),
(103, 'LedgerLock', 'Agency Charge - Payment Applied', 1, '', 1, 1),
(104, 'LedgerLock', 'Agency Method Posting', 2, '', 1, 1),
(120, 'BillingBox', 'Contract', 0, '', 1, 1),
(121, 'BillingBox', 'Method', 1, '', 1, 1),
(138, 'UserGroup', 'System Supervisor', 0, 'Ability to modify User Group Limits at will.', 1, 1),
(143, 'VarMask', 'Boolean', 3, 'True/False', 1, 1),
(144, 'VarMask', 'Percent', 2, '###.##', 1, 1),
(145, 'VarMask', 'Integer', 1, '#', 1, 1),
(146, 'VarMask', 'Money', 0, '#####.##', 1, 1),
(147, 'TEAccount', '???? BankAccount', 0, '', 1, 1),
(148, 'TEAccount', '???? CreditCard', 1, '', 1, 1),
(149, 'ChargeCredit', 'Tuition Charges', 0, '', 1, 1),
(150, 'ChargeCredit', 'Other Charges', 1, '', 1, 1),
(151, 'ChargeCredit', 'Special Charges', 2, '', 1, 1),
(152, 'ChargeCredit', 'Credits', 3, '', 1, 1),
(153, 'ChargeCredit', 'Special Credits', 4, '', 1, 1),
(155, 'ChargeCredit', 'Payments', 5, '', 1, 1),
(156, 'Title', '???? Owner', 0, 'kiddiecare user Type', 1, 1),
(157, 'Title', 'Director', 1, 'kiddiecare user Type', 1, 1),
(185, 'ExposureCat', 'kiddiecare User', 0, 'kiddiecare User to Regions and Schools', 1, 1),
(186, 'ExposureCat', 'Tracking Category', 1, 'Tracking Category to Regions and schools', 1, 1),
(187, 'ExposureCat', 'User Defined Field', 2, 'User Defined Field to Regions and Schools', 1, 1),
(189, 'ExposureCat', 'Immunization', 3, 'Immunization to Regions and schools', 1, 1),
(190, 'ExposureCat', 'AR Description', 4, 'AR Description to Regions and Schools', 1, 1),
(268, 'TimeInterval', 'OpenClose', 0, '15', 1, 1),
(287, 'EnrollmentStatus', 'Enrolled', 0, 'Enrolled in the school', 1, 1),
(290, 'LedgerLock', 'Deposit Closed', 3, 'Item is Locked because it belongs to a closed depo', 1, 1),
(291, 'LedgerLock', 'Not Locked', 4, 'The item is not locked in any way', 1, 1),
(294, 'WorkStatus', 'Currently Employed', 0, 'Employed at the school', 1, 1),
(310, 'ChildRel', 'Unknown', 0, 'Unknown relationship to child', 1, 1),
(312, 'ExposureCat', 'Agency', 5, 'Agency to Regions and schools', 1, 1),
(317, 'LogSheetAccount', 'Letter Printed/Emailed', 0, '', 0, 1),
(330, 'CheckinLanguage', 'English', 0, 'Display English', 1, 1),
(332, 'CheckinLanguage', 'Español', 1, 'Display Spanish', 1, 1),
(375, 'ImmunRequirement', 'Immunization', 0, 'System owned ImmunRequirement category 1 of 2', 1, 1),
(376, 'ImmunRequirement', 'Requirement', 1, 'System owned ImmunRequirement category 2 of 2', 1, 1),
(478, 'AutoBatchTID', 'Tuition Express', 0, 'TE Type', 1, 1),
(479, 'AutoBatchTID', 'Other', 4, 'Other Types not fitting a specific category ', 1, 1),
(480, 'AutoBatchTID', 'ContractBilling', 1, 'Auto Contract Billing Type ', 1, 1),
(481, 'AutoBatchTID', 'SelectedBilling', 2, 'Auto Selected Billing type', 1, 1),
(483, 'AutoBatchTID', 'Billing Methods', 3, 'Auto Method Billing Type', 1, 1),
(489, 'AutoBatchTID', 'LatePayment', 5, 'Late Payment Batch', 1, 1),
(497, 'LogSheetEmployee', 'Letter Printed/Emailed', 0, '', 1, 1),
(498, 'LogSheetVendor', 'Letter Printed/Emailed', 0, '', 1, 1),
(503, 'CheckinIssue', 'OutBeforeIn', 0, 'Out time before last in time.', 1, 1),
(505, 'CheckinIssue', 'InBeforeOut', 1, 'In time before last out time.', 1, 1),
(506, 'CheckinIssue', 'ExceedMaximum', 2, 'Time would exceed daily maximum.', 1, 1),
(511, 'CheckinIssue', 'RecordChanged', 3, 'Record has changed.', 1, 1),
(512, 'CheckinIssue', 'Unknown', 4, 'Unknown', 1, 1),
(523, 'MessageType', 'Person', 0, 'Sent to specific people', 1, 1),
(524, 'MessageType', 'Classroom', 1, 'Sent to a specific classroom', 1, 1),
(527, 'MessageType', 'Tracking Items', 2, 'Sent to people with specific tracking', 1, 1),
(528, 'MessageType', 'Current Balance', 3, 'Send to people with specific balance', 1, 1),
(529, 'MessageType', 'Everyone', 4, 'Send to everyone', 1, 1),
(552, 'EnrollmentStatus', 'Withdrawn', 3, 'No longer enrolled', 1, 0),
(553, 'EnrollmentStatus', 'Waiting List', 4, 'On the waiting list', 1, 0),
(554, 'EnrollmentStatus', 'Summer Break', 5, 'Returning in the fall', 1, 0),
(555, 'ChildRel', 'Neighbor', 12, '', 1, 0),
(556, 'ChildRel', 'Grandmother', 13, '', 1, 0),
(557, 'ChildRel', 'Grandfather', 14, '', 1, 0),
(558, 'ChildRel', 'Aunt', 15, '', 1, 0),
(559, 'ChildRel', 'Uncle', 16, '', 1, 0),
(560, 'ChildRel', 'Other Relative', 17, '', 1, 0),
(561, 'AbsentReason', 'Vacation', 1, '', 1, 0),
(562, 'AbsentReason', 'Sick', 2, '', 1, 0),
(564, 'AbsentReason', 'Other', 4, '', 1, 0),
(566, 'LogSheetAccount', 'Billing/Financial', 3, '', 1, 0),
(567, 'LogSheetChild', 'Injury Incident', 1, '', 1, 0),
(568, 'LogSheetChild', 'Behavior', 2, '', 1, 0),
(569, 'LogSheetChild', 'Developmental', 3, '', 1, 0),
(570, 'LogSheetChild', 'Special Needs', 4, '', 1, 0),
(571, 'LogSheetChild', 'Parent Conference', 5, '', 1, 0),
(572, 'LogSheetAccount', 'General Account Notes', 4, '', 1, 0),
(573, 'UserGroup', 'Director', 1, '', 1, 0),
(574, 'UserGroup', 'Assistant Director', 2, '', 1, 0),
(575, 'UserGroup', 'Teacher', 4, '', 1, 0),
(576, 'UserGroup', 'Office Staff', 3, '', 1, 0),
(577, 'ContractCycle', 'Weekly', 1, '', 1, 0),
(578, 'ContractCycle', 'Monthly', 2, '', 1, 0),
(579, 'EnrollmentStatus', 'Pre-Registered', 6, 'Registered, but has not yet started', 1, 0),
(580, 'ContractCycle', 'Daily', 3, '', 1, 0),
(581, 'ChildRel', 'Foster Parent', 6, '', 1, 0),
(582, 'ChildRel', 'Guardian', 10, '', 1, 0),
(583, 'WorkStatus', 'Terminated Positive', 7, 'Okay to rehire', 1, 0),
(584, 'WorkStatus', 'Terminated Negative', 8, 'Do not rehire', 1, 0),
(585, 'WorkStatus', 'Other Approved Leave', 6, 'On approved leave', 1, 0),
(586, 'WorkStatus', 'Family Leave', 5, 'On family leave', 1, 0),
(587, 'EmployeeRel', 'Spouse', 7, '', 1, 0),
(588, 'EmployeeRel', 'Son', 8, '', 1, 0),
(589, 'EmployeeRel', 'Daughter', 9, '', 1, 0),
(590, 'EmployeeRel', 'Other Relative', 10, '', 1, 0),
(591, 'LogSheetEmployee', 'Evaluation', 2, '', 1, 0),
(592, 'LogSheetEmployee', 'Disciplinary', 3, '', 1, 0),
(593, 'LogSheetEmployee', 'Recognition/Awards', 4, '', 1, 0),
(594, 'CheckinIssue', 'ScheduleAdherence', 5, 'Schedule Adherence', 1, 1),
(595, 'MessageType', 'ED_Employee', 5, 'Send to specific Employee', 1, 1),
(596, 'MessageType', 'ED_Primary Work Area', 6, 'Send to all Employees in a Work Area', 1, 1),
(597, 'MessageType', 'ED_Tracking', 7, 'Send to all Employees with a specific Tracking', 1, 1),
(598, 'MessageType', 'ED_Everyone', 9, 'Send to all Employees', 1, 1),
(599, 'EmployeeRel', 'Unknown', 1, 'Unknown relationship to employee', 1, 1),
(600, 'LogSheetAccount', 'Statement Emailed', 2, ' ', 0, 1),
(601, 'WorkStatus', 'Hire Pool', 4, 'New applicant', 1, 0),
(602, 'WorkStatus', 'Laid Off', 9, 'Workforce reduction', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_user`
--

CREATE TABLE IF NOT EXISTS `kc_g_user` (
  `userid` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `personid` int(11) NOT NULL,
  `identifier` varchar(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL COMMENT 'md5',
  `lang` varchar(4) default NULL,
  `usergrouptid` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL default '0',
  `isadmin` int(1) NOT NULL default '0',
  `template` varchar(32) default NULL,
  `ar_childgridlayout` longblob,
  `lastloggedinschoolid` int(11) NOT NULL default '-1',
  `lockedoutuntil` datetime default NULL,
  `dashboardlayout` longblob,
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `ix_unique_username` (`username`),
  KEY `ikiddiecareusergrouptid_g_kiddiecareuser` (`usergrouptid`),
  KEY `fk_g_kiddiecareuser_g_person` (`personid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kc_g_user`
--

INSERT INTO `kc_g_user` (`userid`, `title`, `personid`, `identifier`, `username`, `password`, `lang`, `usergrouptid`, `isactive`, `isadmin`, `template`, `ar_childgridlayout`, `lastloggedinschoolid`, `lockedoutuntil`, `dashboardlayout`) VALUES
(-1, 'Sys', -1, 'Sys', 'Sys', '', NULL, 138, 0, 0, NULL, NULL, -1, NULL, NULL),
(2, 'Demo Account', 1, 'DEMO', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', NULL, 200, 1, 1, NULL, NULL, -1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_userdefineddata`
--

CREATE TABLE IF NOT EXISTS `kc_g_userdefineddata` (
  `userdefineddataid` int(11) NOT NULL auto_increment,
  `userdefinedfieldid` int(11) NOT NULL,
  `targetid` int(11) NOT NULL,
  `txtvalue` varchar(255) default NULL,
  `datvalue` datetime default NULL,
  `boovalue` tinyint(1) default NULL,
  `decvalue` decimal(18,2) default NULL,
  PRIMARY KEY  (`userdefineddataid`),
  UNIQUE KEY `ix_g_userdefined_uniquerecord` (`userdefinedfieldid`,`targetid`),
  KEY `idx_udffieldid_boovalue` (`userdefinedfieldid`,`boovalue`),
  KEY `idx_udffieldid_datvalue` (`userdefinedfieldid`,`datvalue`),
  KEY `idx_udffieldid_decvalue` (`userdefinedfieldid`,`decvalue`),
  KEY `idx_udffieldid_txtvalue` (`userdefinedfieldid`,`txtvalue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_userdefinedfield`
--

CREATE TABLE IF NOT EXISTS `kc_g_userdefinedfield` (
  `userdefinedfieldid` int(11) NOT NULL auto_increment,
  `userdefinedextid` int(11) NOT NULL default '0',
  `description` varchar(30) NOT NULL,
  `dataclass` varchar(3) NOT NULL,
  `sortorder` int(11) NOT NULL default '0',
  `tooltip` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`userdefinedfieldid`),
  KEY `fk_g_userdefinedfield_g_typestable` (`userdefinedextid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_usergrouplimits`
--

CREATE TABLE IF NOT EXISTS `kc_g_usergrouplimits` (
  `usergrouplimitsid` int(11) NOT NULL auto_increment,
  `usergrouptid` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `front_end` int(1) NOT NULL default '0',
  `config` int(1) NOT NULL default '0',
  `gen` int(1) NOT NULL default '0',
  `ar` int(1) NOT NULL default '0',
  `ap` int(1) NOT NULL default '0',
  `fp` int(1) NOT NULL default '0',
  `ed` int(1) NOT NULL default '0',
  `pr` int(1) NOT NULL default '0',
  PRIMARY KEY  (`usergrouplimitsid`),
  UNIQUE KEY `ix_g_usergrouplimits` (`usergrouptid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `kc_g_usergrouplimits`
--

INSERT INTO `kc_g_usergrouplimits` (`usergrouplimitsid`, `usergrouptid`, `alias`, `front_end`, `config`, `gen`, `ar`, `ap`, `fp`, `ed`, `pr`) VALUES
(62, 200, 'System Admin', 4, 4, 4, 4, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_user_passwordhistory`
--

CREATE TABLE IF NOT EXISTS `kc_g_user_passwordhistory` (
  `userid` int(11) NOT NULL,
  `datechanged` datetime NOT NULL,
  `previouspassword` varchar(64) NOT NULL,
  PRIMARY KEY  (`userid`,`datechanged`,`previouspassword`),
  UNIQUE KEY `ix_g_kiddiecareuser_passwordhistory` (`userid`,`previouspassword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kc_g_workarea`
--

CREATE TABLE IF NOT EXISTS `kc_g_workarea` (
  `workareaid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `workareaname` varchar(30) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL default '0',
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`workareaid`),
  KEY `ix_g_workarea` (`schoolid`),
  KEY `ix_g_workarea_schoolid` (`schoolid`),
  KEY `fk_g_workarea_g_department` (`departmentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `kc_g_workarea`
--

INSERT INTO `kc_g_workarea` (`workareaid`, `schoolid`, `workareaname`, `departmentid`, `isactive`, `sortorder`) VALUES
(-1, -1, 'Unknown', -1, 1, -1),
(228, 1, 'Office', 154, 1, 8),
(229, 1, 'Infants Room', 147, 1, 1),
(233, 1, 'Toddlers Room', 149, 1, 2),
(235, 1, 'Preschool Room', 150, 1, 3),
(237, 1, 'PreK Room', 151, 1, 4),
(239, 1, 'Kindergarten Room', 152, 1, 5),
(241, 1, 'Before School', 153, 1, 6),
(242, 1, 'After School', 153, 1, 7),
(243, 1, 'Bus / Van', 155, 1, 9),
(245, 1, 'Kitchen', 156, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_checkinissues`
--

CREATE TABLE IF NOT EXISTS `kc_pr_checkinissues` (
  `prcheckinissuesid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `issuedate` datetime NOT NULL,
  `checkinissuestid` int(11) NOT NULL,
  PRIMARY KEY  (`prcheckinissuesid`),
  KEY `fk_pr_checkinissues_g_typestable` (`checkinissuestid`),
  KEY `fk_pr_checkinissues_g_workarea` (`workareaid`),
  KEY `fk_pr_checkinissues_pr_employeeschool` (`employeeschoolid`),
  KEY `fk_pr_checkinissues_pr_paycode` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeebenefitearned`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeebenefitearned` (
  `employeebenefitearnedid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `earneddate` datetime NOT NULL,
  `hoursearned` decimal(18,2) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `comment` varchar(35) NOT NULL,
  PRIMARY KEY  (`employeebenefitearnedid`),
  KEY `ix_pr_employeebenefitearned` (`employeeschoolid`),
  KEY `fk_pr_employeebenefitearned_pr_paycodebenefit` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeebenefitplanned`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeebenefitplanned` (
  `employeebenefitplannedid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `timeoffdate` datetime NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `comment` varchar(35) NOT NULL,
  PRIMARY KEY  (`employeebenefitplannedid`),
  KEY `fk_pr_employeeabsences_pr_employeeschool` (`employeeschoolid`),
  KEY `fk_pr_employeebenefitused_pr_paycodebenefit` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeedocument`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeedocument` (
  `employeedocumentid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `documentdescription` varchar(50) NOT NULL,
  `employeedocument` longblob NOT NULL,
  PRIMARY KEY  (`employeedocumentid`),
  KEY `fk_pr_employeedocument_g_kiddiecareuser` (`kiddiecareuserid`),
  KEY `fk_pr_employeedocument_pr_employeeschool` (`employeeschoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeepayrate`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeepayrate` (
  `employeepayrateid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `straighttimerate` decimal(18,2) NOT NULL,
  `overtimerate` decimal(18,2) NOT NULL,
  `isbenefit` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`employeepayrateid`),
  UNIQUE KEY `ix_pr_employeepayrate` (`employeeschoolid`,`paycodeid`),
  KEY `fk_pr_employeepayrate_pr_paycode` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeerel`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeerel` (
  `employeerelid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `employeereltid` int(11) NOT NULL,
  `vieworder` int(11) NOT NULL,
  PRIMARY KEY  (`employeerelid`),
  KEY `fk_pr_employeerel_g_person` (`personid`),
  KEY `fk_pr_employeerel_g_typestable` (`employeereltid`),
  KEY `fk_pr_employeerel_pr_employeeschool` (`employeeschoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeesalary`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeesalary` (
  `employeesalaryid` int(11) NOT NULL auto_increment,
  `paycodeid` int(11) NOT NULL,
  `employeeschoolid` int(11) NOT NULL,
  `salaryrate` decimal(18,2) NOT NULL,
  PRIMARY KEY  (`employeesalaryid`),
  UNIQUE KEY `ix_pr_employeesalary` (`employeeschoolid`,`paycodeid`),
  KEY `fk_pr_employeesalary_pr_paycode` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_employeeschool`
--

CREATE TABLE IF NOT EXISTS `kc_pr_employeeschool` (
  `employeeschoolid` int(11) NOT NULL auto_increment,
  `schoolid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `primaryworkareaid` int(11) NOT NULL default '-1',
  `ishidden` tinyint(1) NOT NULL default '0',
  `primaryschoolid` int(11) NOT NULL,
  PRIMARY KEY  (`employeeschoolid`),
  UNIQUE KEY `ix_pr_employeeschool` (`schoolid`,`personid`),
  KEY `fk_pr_employeeschool_g_person` (`personid`),
  KEY `fk_pr_employeeschool_g_workarea` (`primaryworkareaid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_logtableemployee`
--

CREATE TABLE IF NOT EXISTS `kc_pr_logtableemployee` (
  `logtableemployeeid` int(11) NOT NULL auto_increment,
  `employeeid` int(11) NOT NULL,
  `commentdate` datetime NOT NULL,
  `originaldate` datetime NOT NULL,
  `logsheettid` int(11) NOT NULL,
  `isrestricted` tinyint(1) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `kiddiecareuserid` int(11) NOT NULL,
  PRIMARY KEY  (`logtableemployeeid`),
  KEY `ix_logtableemployee` (`employeeid`),
  KEY `fk_pr_logtableemployee_g_typestable` (`logsheettid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_paycode`
--

CREATE TABLE IF NOT EXISTS `kc_pr_paycode` (
  `paycodeid` int(11) NOT NULL auto_increment,
  `paycodename` varchar(25) NOT NULL,
  `glaccountid` int(11) NOT NULL,
  `payot` tinyint(1) NOT NULL default '0',
  `isactive` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`paycodeid`),
  KEY `ix_pr_paycode_isactive` (`isactive`),
  KEY `fk_pr_paycode_pr_paycode` (`glaccountid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `kc_pr_paycode`
--

INSERT INTO `kc_pr_paycode` (`paycodeid`, `paycodename`, `glaccountid`, `payot`, `isactive`, `sortorder`) VALUES
(26, 'Owner', 55, 1, 1, 1),
(27, 'Director', 55, 1, 1, 2),
(28, 'Teacher', 56, 1, 1, 4),
(29, 'Assistant Teacher', 57, 1, 1, 5),
(30, 'Vacation', 58, 0, 1, 9),
(31, 'Sick', 59, 0, 1, 10),
(32, 'Training', 60, 0, 1, 11),
(33, 'Maintenance', 116, 1, 1, 6),
(34, 'Cook', 116, 1, 1, 8),
(35, 'Assistant Director', 55, 1, 1, 3),
(36, 'Bonus', 55, 0, 1, 12),
(37, 'Holiday', 55, 0, 1, 13),
(38, 'Jury Duty', 55, 0, 1, 14),
(39, 'Driver', 116, 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_paycodebenefit`
--

CREATE TABLE IF NOT EXISTS `kc_pr_paycodebenefit` (
  `paycodebenefitid` int(11) NOT NULL auto_increment,
  `paycodeid` int(11) NOT NULL,
  `percentage` decimal(18,2) NOT NULL default '100.00',
  `checkstub` tinyint(1) NOT NULL default '0',
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`paycodebenefitid`),
  UNIQUE KEY `ix_pr_paycodebenefit_uniquepaycodeid` (`paycodeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kc_pr_paycodebenefit`
--

INSERT INTO `kc_pr_paycodebenefit` (`paycodebenefitid`, `paycodeid`, `percentage`, `checkstub`, `sortorder`) VALUES
(1, 30, 100.00, 1, 1),
(2, 31, 100.00, 1, 2),
(3, 32, 100.00, 1, 3),
(4, 37, 100.00, 1, 4),
(5, 38, 100.00, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_schedule`
--

CREATE TABLE IF NOT EXISTS `kc_pr_schedule` (
  `scheduleid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `schedulename` varchar(30) NOT NULL,
  `startappliesto` datetime NOT NULL,
  `endappliesto` datetime NOT NULL,
  `startweek` int(11) NOT NULL,
  `weeksinrotation` int(11) NOT NULL,
  PRIMARY KEY  (`scheduleid`),
  KEY `ix_pr_schedule` (`employeeschoolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_scheduledetail`
--

CREATE TABLE IF NOT EXISTS `kc_pr_scheduledetail` (
  `scheduledetailid` int(11) NOT NULL auto_increment,
  `scheduleid` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `weeknumber` int(11) NOT NULL,
  `daynumber` int(11) NOT NULL,
  `inminute` int(11) NOT NULL,
  `outminute` int(11) NOT NULL,
  PRIMARY KEY  (`scheduledetailid`),
  KEY `ix_pr_scheduledetail` (`scheduleid`),
  KEY `fk_pr_scheduledetail_g_workarea` (`workareaid`),
  KEY `fk_pr_scheduledetail_pr_paycode` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_timecard`
--

CREATE TABLE IF NOT EXISTS `kc_pr_timecard` (
  `timecardid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  `punchinid` int(11) NOT NULL,
  `punchindate` datetime NOT NULL,
  `punchinminute` int(11) NOT NULL,
  `ispunchinrounded` tinyint(1) NOT NULL default '0',
  `punchoutid` int(11) NOT NULL,
  `punchoutdate` datetime NOT NULL,
  `punchoutminute` int(11) NOT NULL,
  `ispunchoutrounded` tinyint(1) NOT NULL default '0',
  `comment` varchar(35) NOT NULL,
  PRIMARY KEY  (`timecardid`),
  KEY `ix_pr_timecard` (`employeeschoolid`),
  KEY `fk_pr_timecard_g_personin` (`punchinid`),
  KEY `fk_pr_timecard_g_personout` (`punchoutid`),
  KEY `fk_pr_timecard_g_workplace` (`workareaid`),
  KEY `fk_pr_timecard_pr_paycode` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_timecardaudit`
--

CREATE TABLE IF NOT EXISTS `kc_pr_timecardaudit` (
  `timecardauditid` int(11) NOT NULL auto_increment,
  `timecardid` int(11) NOT NULL,
  `employeeschoolid` int(11) NOT NULL,
  `paycodeid` int(11) NOT NULL,
  `workareaid` int(11) NOT NULL,
  `punchinid` int(11) NOT NULL,
  `punchindate` datetime NOT NULL,
  `punchinminute` int(11) NOT NULL,
  `punchoutid` int(11) NOT NULL,
  `punchoutdate` datetime NOT NULL,
  `punchoutminute` int(11) NOT NULL,
  `changebyid` int(11) NOT NULL,
  `changecode` char(1) NOT NULL,
  `changedate` datetime NOT NULL,
  PRIMARY KEY  (`timecardauditid`),
  KEY `ix_pr_timecardaudit` (`timecardid`),
  KEY `fk_pr_timecardaudit_g_personin` (`punchinid`),
  KEY `fk_pr_timecardaudit_g_personout` (`punchoutid`),
  KEY `fk_pr_timecardaudit_g_kiddiecareuser` (`changebyid`),
  KEY `fk_pr_timecardaudit_g_workplace` (`workareaid`),
  KEY `fk_pr_timecardaudit_pr_employeeschool` (`employeeschoolid`),
  KEY `fk_pr_timecardaudit_pr_paycode` (`paycodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kc_pr_workhistory`
--

CREATE TABLE IF NOT EXISTS `kc_pr_workhistory` (
  `workhistoryid` int(11) NOT NULL auto_increment,
  `employeeschoolid` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `workstatustid` int(11) NOT NULL,
  PRIMARY KEY  (`workhistoryid`),
  KEY `ix_pr_workhistory_employyeschoolid` (`employeeschoolid`),
  KEY `fk_pr_workhistory_g_typestable` (`workstatustid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
