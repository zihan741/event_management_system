

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `royal_event`
--

-- --------------------------------------------------------

--
-- Table  for `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', '1', '1', '1', '1'),
(2, 'Admin', '1', NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table  for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Staffid` varchar(255) DEFAULT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Photo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
--  data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Staffid`, `AdminName`, `UserName`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Status`, `Photo`, `Password`, `AdminRegdate`) VALUES
(2, 'U002', 'Admin', 'zihanhossain', 'Zihan', 'Hossain', 942397933, 'zihanhossain2004@gmail.com', 1, 'pro4.jpg', '21232f297a57a5a743894a0e4a801fc3', '2024-11-01 10:18:39'),
(28, 'U001', 'Admin', 'admin', 'Xihan', 'Hossain', 942397933, 'xihanhossain@gmail.com', 0, 'avatar15.jpg', '21232f297a57a5a743894a0e4a801fc3', '2024-11-01 19:45:45');

-- --------------------------------------------------------

--
-- Table for `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `EventEndingtime` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext,
  `EventType` varchar(200) DEFAULT NULL,
  `AdditionalInformation` mediumtext,
  `BookingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `EventEndingtime`, `VenueAddress`, `EventType`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(14, 954554731, 1, 'Tamim', 8080808080, 'tamim@gmail.cmo', '2024-11-22', '11 a.m', '12 p.m', 'Galaxy Tower, near  Petrol Pump, Green Hotel, Saidpur', 'Birthday Party', 'Special Menu with Professional waiters', '2024-11-22 09:28:13', 'Done', 'Approved', '2024-12-22 09:37:17'),
(15, 977361722, 1, 'Shakib', 7070707070, 'shakib768@gmail.com', '2024-11-24', '1 p.m', '5 p.m', ' Plaza, near  Hotel, Saidpur', 'Wedding', 'Special Menu', '2024-11-22 09:29:18', NULL, NULL, '2024-11-22 09:37:20');

-- --------------------------------------------------------

--
-- Table  for  `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `regno` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyemail` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyphone` text NOT NULL,
  `companyaddress` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companylogo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `regno`, `companyname`, `companyemail`, `country`, `companyphone`, `companyaddress`, `companylogo`, `status`, `creationdate`) VALUES
(4, '43422332', 'Bengal Event Management', 'zts@bengalevents.com', 'Bangladesh', '01927699316', 'Saidpur', 'logo.jpg', '1', '2024-8-22 12:17:15');

-- --------------------------------------------------------

--
-- Table  for  `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
--  data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Anniversary', '2024-11-22 07:01:39'),
(2, 'Birthday Party', '2024-11-23 07:02:34'),
(3, 'Charity', '2024-11-24 07:02:43'),
(4, 'Cocktail', '2024-11-25 07:03:00'),
(5, 'College', '2024-11-22 07:03:11'),
(6, 'Community', '2024-11-23 07:03:24'),
(7, 'Concert', '2024-11-24 07:03:35'),
(8, 'Engagement', '2024-11-25 07:03:51'),
(9, 'Get Together', '2024-11-26 07:04:04'),
(10, 'Government', '2024-11-27 07:04:15'),
(11, 'Night Club', '2024-11-28 07:04:26'),
(13, 'Post Wedding', '2024-11-22 07:05:01'),
(14, 'Pre Engagement', '2024-11-23 07:05:18'),
(15, 'Religious', '2024-11-24 07:05:27'),
(16, 'Sangeet', '2024-11-22 07:05:43'),
(17, 'Social', '2024-11-25 07:05:58'),
(18, 'Wedding', '2024-11-26 07:06:07');

-- --------------------------------------------------------

--
-- Table  `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Party decorations', 'we finish designing 4 hours  before your ceremony .', '8000', '2024-09-24 07:17:43'),
(2, 'Party DJ', '(we install the DJ equipment 1 hour before your selected event start time)', '700', '2024-09-25 07:18:32'),
(3, 'Ceremony Music', 'Our ceremony music service is a popular add on to our wedding DJ stay all day hire.', '650', '2024-09-26 07:19:14'),
(4, 'Photo Booth Hire', 'we install the DJ equipment before your ceremony ', '500', '2024-09-26 07:19:51'),
(6, 'Uplighters', 'Uplighters are bright lighting fixtures which are installed on the floor and shine a vibrant wash of colour over the walls of your venue', '200', '2024-09-27 07:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

