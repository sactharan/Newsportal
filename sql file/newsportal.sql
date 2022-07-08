-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 11:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2021-11-10 18:28:11', NULL),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2021-11-10 18:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2021-06-05 18:30:00', '2021-06-13 18:30:00', 1),
(5, 'World', 'World', '2021-06-13 18:30:00', '2022-06-18 07:08:49', 1),
(6, 'Oman', 'Oman', '2021-06-21 18:30:00', '2022-06-18 07:08:27', 1),
(7, 'Business', 'Business', '2021-06-21 18:30:00', '0000-00-00 00:00:00', 1),
(8, 'COVID-19', 'COVID-19', '2021-11-07 18:17:28', '2022-06-18 07:09:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2021-11-20 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'Muscat Daily', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2021-06-29 18:30:00', '2022-06-18 07:19:37'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address:&nbsp; </b>Muscat</p><p><b>Phone Number:</b>+968-24799388</p><p><b>Email -id : </b>muscatdailylofficial@gmail.com</p>', '2021-06-29 18:30:00', '2022-06-18 07:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 11, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2021-07-07 18:30:00', '2022-06-18 07:11:21', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg', 24, 'admin', 'admin'),
(10, 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 14, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2021-06-30 18:30:00', '2022-06-18 07:11:38', 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', '505e59c459d38ce4e740e3c9f5c6caf7.jpg', 1, 'admin', 'admin'),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 5, 12, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2021-06-30 18:30:00', '2022-06-18 07:11:55', 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg', 34, 'admin', 'admin'),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2021-06-30 18:30:00', '2022-06-18 07:12:11', 0, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg', 22, 'admin', NULL),
(13, 'T20 World Cup 2021: Semi-final 1, England vs New Zealand â€“ Who Said What', 3, 4, '<p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">New Zealand held their nerves admirably to make it a hat-trick of ICC event final entrances, trumping&nbsp;<a href=\"https://www.crictracker.com/cricket-teams/england/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(4, 93, 233);\"><strong>England</strong></a>&nbsp;in a see-sawing semi-final clash in Abu Dhabi. You would feel they are too nice to believe in revenging anything, even if it is as bitter as the fateful 2019 ODI World Cup loss, so letâ€™s put it this way: the scores are settled. And in doing so, New Zealand have made it to the finals of a tournament no one counted them as the favourites of.&nbsp;</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">After being inserted, a Jason Roy-less England managed 166/4 largely on the back of Dawid Malan (41 off 30), who got back his mojo at the right time, and Moeen Ali (51 off 37), who proved it for the umpteenth time what a marvellous short-format asset he is.</p>', '2021-11-10 18:50:09', '2022-06-18 07:12:04', 0, 'T20-World-Cup-2021:-Semi-final-1,-England-vs-New-Zealand-â€“-Who-Said-What', '8bc5c30be91dca9d07c1db858c60e39f.jpg', 6, 'admin', 'subadmin'),
(14, 'HM reshuffles cabinet, three new ministers appointed', 6, 13, '<p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Muscat –</span>&nbsp;His Majesty Sultan Haitham bin Tarik on Thursday issued 12 Royal Decrees restructuring the Council of Ministers and appointing some new positions.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">According to a royal decree, H E Engineer Salim al Awfi has been appointed as Minister of Energy and Minerals, Dr Mohammed al Maamari as Minister of Awqaf and Religious Affairs; and Dr Hilal al Sabti as Minister of Health.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"></p><figure class=\"wp-block-image size-large\" style=\"margin-bottom: 1em; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><img loading=\"lazy\" width=\"1024\" height=\"606\" src=\"https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXm2y9WYAAvunv-1024x606.jpeg\" alt=\"\" class=\"wp-image-31496\" srcset=\"https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXm2y9WYAAvunv-1024x606.jpeg 1024w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXm2y9WYAAvunv-300x178.jpeg 300w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXm2y9WYAAvunv-768x454.jpeg 768w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXm2y9WYAAvunv.jpeg 1068w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" style=\"height: auto; max-width: 100%; vertical-align: bottom; border-style: none; border-radius: inherit;\"></figure><figure class=\"wp-block-image size-full\" style=\"margin-bottom: 1em; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><img loading=\"lazy\" width=\"721\" height=\"1000\" src=\"https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXcUTKWUAAYw4l.jpeg\" alt=\"\" class=\"wp-image-31494\" srcset=\"https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXcUTKWUAAYw4l.jpeg 721w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXcUTKWUAAYw4l-216x300.jpeg 216w\" sizes=\"(max-width: 721px) 100vw, 721px\" style=\"height: auto; max-width: 100%; vertical-align: bottom; border-style: none; border-radius: inherit;\"></figure><figure class=\"wp-block-image size-full\" style=\"margin-bottom: 1em; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><img loading=\"lazy\" width=\"625\" height=\"470\" src=\"https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02.jpeg\" alt=\"\" class=\"wp-image-31495\" srcset=\"https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02.jpeg 625w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02-300x226.jpeg 300w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02-206x155.jpeg 206w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02-540x405.jpeg 540w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02-460x345.jpeg 460w, https://www.muscatdaily.com/wp-content/uploads/2022/06/FVXhfbMWQAAVC02-207x155.jpeg 207w\" sizes=\"(max-width: 625px) 100vw, 625px\" style=\"height: 246.033px; max-width: 100%; vertical-align: bottom; border-style: none; border-radius: inherit; width: 327.172px;\"></figure><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">His Majesty also issued more new royal decrees, which are as follows:</p><ul style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><li>Royal Decree regulating the administration of judicial affairs.</li><li>Royal Decree issuing the governorates’ system.</li><li>Royal Decree defining the functions of the Ministry of Interior and approving its organisational structure.</li><li>Royal Decree transferring the jurisdiction of inventory and valuation of property from the Ministry of Interior to the Ministry of Housing and Urban Planning.</li><li>Royal Decree appointing Sayyid Muhammad bin Sultan bin Hamoud Al Busaidi as Vice President of the Supreme Judicial Council, with the same rank and financial allocations.</li><li>Royal decree appointing governors.</li><li>Royal Decree amending some provisions of the Municipal Councils Law.</li><li>Royal Decree appointing Sheikh Ghsn bin Hilal bin Khalifa al Alwi as Head of the State’s Financial and Administrative Audit Institution (SAI) at the rank of Minister.</li><li>Royal Decree appointing Issa bin Hamad bin Mohammed al Azri Secretary-General of the Supreme Judicial Council.</li><li>Royal Decree transferring Talal bin Sulaiman al Rahbi to the Ministry of Foreign with the same rank and financial allocations.</li></ul>', '2022-06-18 07:13:29', NULL, 1, 'HM-reshuffles-cabinet,-three-new-ministers-appointed', '972be3fe3cd9fe3d3c7778aeba40a32cjpeg', NULL, 'admin', NULL),
(15, 'OETC signs three agreements with GCC Interconnection Authority', 6, 13, '<p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Muscat –</span>&nbsp;Oman Electricity Transmission Company (OETC) signed three agreements with the Gulf Cooperation Council Interconnection Authority (GCCIA), at the authority’s headquarters in Saudi Arabia in Dammam, in the presence of stakeholders and representatives of both parties.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">OETC was represented by Eng Saleh bin Nasser al Rumhi, CEO, and a number of managers of the company’s departments.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The first agreement stipulated the exclusive right to use the electrical interconnection assets. The agreement deals with the mechanisms of owning, operating and maintaining the 220 kV electrical interconnection assets in the Sultanate of Oman on behalf of the GCCIA.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">As for the second agreement, it provided for operating and maintaining services for the electrical link, whereby OETC will manage the link entirely, and the authority has the exclusive right to use the assets of the electrical link in case of emergency and the exchange of other energy. The third agreement provided for the operation of the electrical link between the two parties.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Rumhi pointed out the importance of these agreements. Since November 2014, the Sultanate of Oman officially signed the general agreement with the Gulf Cooperation Council and has become a member of the Gulf Electricity Interconnection System, after being connected to the electricity transmission network of the GCCIA network, which is considered part of the Gulf Electricity Interconnection System.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Rumhi also valued the role played by the GCCIA by increasing the reliability and security of networks and providing high financial savings through trade exchange, and by sharing spare capacity.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">It is worth noting that OETC is the company responsible for the transmission and control of electricity in the northern part of the sultanate’s network and also in the Governorate of Dhofar, where electricity is transferred from production stations to distributed load centres in all governorates of the sultanate.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The transmission network operates at a voltage of 132 kV and above to cover most governorates of the sultanate, whether in the north or in the south. Also, OETC manages the interconnection lines between the sultanate and the Gulf interconnection network with a voltage of 220 kV.</p>', '2022-06-18 07:14:26', NULL, 1, 'OETC-signs-three-agreements-with-GCC-Interconnection-Authority', '900723ca7ec6eb66472744e7653ec51ajpeg', NULL, 'admin', NULL),
(16, 'MoL raises number of programme’s beneficiaries', 6, 13, '<p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Muscat –</span>&nbsp;The Ministry of Labour (MoL) announced that it has raised the number of beneficiaries of the teacher preparation and qualification programme on Thursday.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">A statement issued by MoL said, “The Ministry decided to raise the number of beneficiaries of the teacher preparation and qualification programme from 1500 to 1,982 – an increase of 482 male and female candidates.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The ministry said that the public and private sectors are partners in creating and generating job opportunities. The total number of Omanis employed during the first quarter of this year is 10,017; of these, 4,126 are in the government sector and 5,891 in the private sector. ‘With this, 29 per cent of the total jobs targeted in 2022 has been achieved,’ MoL stated.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">‘The statistics show the ministry’s keenness on employment, qualification, and training associated with employment, as well as the localisation of jobs, which is the supreme goal of the government,’ the statement said.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">MoL is aiming to provide 35,000 job opportunities through recruitment, replacement, and training for citizens in 2022.</p>', '2022-06-18 07:15:25', NULL, 1, 'MoL-raises-number-of-programme’s-beneficiaries', 'c52cb440c976ede09881f91604934309jpeg', NULL, 'admin', NULL),
(17, 'Advario: Capitalising on Oman’s strategic location', 7, 14, '<p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Muscat –</span>&nbsp;Germany-based Oiltanking has been active in tank storage logistics since 1972. The company owns a portfolio of storage terminal companies, each with a different strategic focus, operating across five continents. Celebrating its 50<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em;\">th</span>&nbsp;anniversary, Oiltanking recently launched a its new brand ‘Advario’ in Oman. In an interview, Yasvin Buckhoreelall, CEO of Oiltanking Terminals &amp; Co LLC, talked about Oiltanking’s global operations and worldwide presence. He also shared views on energy transition opportunities and the company’s future plans for Oman.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Oiltanking GmbH this year celebrates its 50th anniversary. Can you elaborate about the company’s global presence and how it has evolved over past five decades?</span></p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The Group was initially founded with a 1 million cube capacity in Germany and in the 1970s, Oiltanking started its international expansion with terminals in Amsterdam and Houston. Over the following two decades, Oiltanking successfully developed its first entity in Asia through a terminal in Singapore and continued to grow with new assets in South America, India, and within Europe. In the early 2000s, Daya Bay and Nanjin represented the Group’s first investment in China and was followed up with new presence in the Middle East with the acquisition of a terminal in Jebel Ali, UAE and the greenfield development in Sohar, Oman. Oiltanking continued to grow in Europe and USA with a landmark terminal in Antwerp and the acquisitions of terminals in Finland, Texas City, and a gas terminal in Antwerp. Further developments in South Africa, South-East Asia added to the portfolio and contributed to the 20 million cubes storage capacity that the company held. In 2022, Oiltanking was rebranded to Advario, with over xx million cubes of storage capacity around the globe. Advario represents a strategic shift for the company, with its focused growth strategy on chemicals, gas and new energy and a strong commitment to embed ESG and sustainability across its entire operations. It incorporates the operational excellence, expertise, and flexibility of Oiltanking with an organizational direction to account for the evolution of the storage industry and rapidly evolving needs of our customers.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Advario Terminals recently introduced its brand in Oman. What are the company’s immediate and future plans for the Omani market?</span></p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">After 15 years under the global brand of Oil- tanking, the Group decided to carve out 13 of its terminals and place them on a new road for growth in strategic markets. The new carve-out, Advario, is focused on developing infrastructure solutions to support the energy transition whilst balancing the current needs of our customers and stakeholders. Advario Oman will continue to build on the strong foundation established by Oiltanking, with the ambition to grow the business in a sustainable manner and achieve a net-zero carbon footprint by 2040. The company also aims to strengthen its Employee Value Proposition to enhance its status as an Employer of Choice within the region.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Oman has heavily invested in building logistics infrastructure and energy projects in recent years. Given these developments, how do you see business prospectus for Advario Terminals in Oman and what solutions do you plan to provide in this market?</span></p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Oman is a country with a huge potential for further development in the field of new ener- gies and can take a leadership role in the en- ergy transition. Advario Oman will continue to nurture strong relationships with existing and new customers and partners and aim to capi- talize on Oman’s strategic position in the re- gion. Advario Oman will also focus on providing industry leading infrastructure to support the significant growth we’re seeing for the greener molecules. Our solutions are di- verse and backed by our 50 years of expertise originating from Oiltanking. We have a proven track record in applying the most relevant technologies when it comes to design, con- struction and operations of world-class infra- structures.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">AdvarioTerminals is widely recognized for its leading global role in the energy storage and logistics infrastructure. How does the company’s strengths fit into Omani market which is building mega oil storage and energy export terminals, particularlyinDuqm?</span></p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">We’re proud of our longstanding track record in the Middle East and particularly in Oman. We have had the opportunity to build a strong business from the ground up here in Sohar and collaborate with leading partners locally and internationally. The location of Duqm for the continuous green power generation makes it an ideal spot to produce green molecules and Advario Oman is well-positioned to support with the right expertise and depth of our global portfolio. Furthermore, Advario Oman is committed to supporting the Oman 2040 Vision and working together with our stakeholders to efficiently develop top-tier storage infrastructure.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">How does Advario Terminals see energy transition goals in terms of future opportunities ? Any plan to introduce any new entity to target energy transition opportunities in the Middle-East</span></p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">We see that the Middle East presents a lot of opportunities and our presence in Oman and the UAE are strong anchors that allow us to support our existing and prospective partners in the region. A major component of Advario Oman’s strategy is to support and expedite the energy transformation. With a focus on gas, chemicals, and new energy, Advario Oman is well prepared to support our partners in their planned developments. As a company, Advario has committed to being net zero by 2040 and we are eager to help our partners in their sustainability pursuits.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Going forward, what are you plans in terms of knowledge transfer and training for Omanis for the areas of your business?</span></p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">With a 90% Omanisation rate, we are very proud of our current legacy. We have also made a conscious effort to recruit locally in Oman and 50% of our Management Team comprises of Omanis. Our global network allows for daily interaction with colleagues outside of Oman and continuous opportunities for individual growth. As we introduce new technologies on an ongoing basis, we also ensure that our teams are fully trained to promote their development and deliver on the evolving needs of our customers. Moreover, through the global network, our teams regularly participate in cross-regional meetings and are often called to travel abroad to learn and teach their colleagues in other locations. Advario Oman also integrates Leadership training and coaching sessions in its routine knowledge transfer programmes for its people.</p>', '2022-06-18 07:16:35', NULL, 1, 'Advario:-Capitalising-on-Oman’s-strategic-location', '884a48c8c29fbe30f6babf7e26065d9e.jpg', NULL, 'admin', NULL),
(18, 'Israel convicts former World Vision Gaza chief of aiding Hamas', 5, 12, '<p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><span style=\"font-weight: bolder;\">Beersheba,&nbsp;Israel</span>&nbsp;– An Israeli court on Wednesday found the former Gaza head of a major US-based NGO guilty of embezzling millions of dollars to Islamist group Hamas, six years after his arrest.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Israel had accused Palestinian Mohammed al-Halabi, who headed Gaza operations for World Vision, of siphoning-off millions of dollars to Hamas, which rules the Palestinian enclave.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">He was arrested in June 2016 and indicted in August that year.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Both Halabi and the charity have staunchly denied any irregularities.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">But the Israeli court in Beersheba on Wednesday convicted Halabi of belonging to a terrorist group, Hamas, and of financing terrorist activities, of having ‘transmitted information to the enemy’ as well as the possession of a weapon, according to a summary of the ruling viewed by AFP.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">“The charges against the accused point to extensive financial support and information sharing with Hamas,” it said.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Much of the evidence against Halabi was kept secret, with Israeli citing ‘security concerns’, prompting his legal team to question the verdict’s legitimacy.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Halabi’s lawyer Maher Hanna called the judgement ‘totally political’, saying it had ‘nothing to do with the facts’.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">He said Halabi would be appealing.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The Australian government, a major donor to World Vision, announced it was freezing funding to projects in the Gaza Strip following Halabi’s arrest.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">A subsequent Australian government probe found no evidence of embezzlement.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">Sharon Marshall, senior director of public engagement for World Vision, expressed ‘extreme disappointment’ following the verdict.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">“In our view, there have been irregularities in the trial process and a lack of substantive and publicly available evidence,” she said.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The UN Human Rights Office on Tuesday had expressed ‘serious concerns’ over the proceedings, in particular regarding the ‘lack of evidence’.</p><p style=\"margin-bottom: 1rem; font-family: suisseintl-regular, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">The sentencing is expected in the coming weeks.</p>', '2022-06-18 07:17:46', '2022-06-18 07:22:58', 1, 'Israel-convicts-former-World-Vision-Gaza-chief-of-aiding-Hamas', 'b5d323a79ef3fbb424e49e2be8c07e24.jpg', NULL, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2021-06-21 18:30:00', '2022-06-18 07:10:01', 0),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2021-06-29 18:30:00', '2022-06-18 07:09:58', 0),
(5, 3, 'Football', 'Football', '2021-06-29 18:30:00', '2022-06-18 07:09:56', 0),
(6, 5, 'Television', 'TeleVision', '2021-06-30 18:30:00', '2022-06-18 07:09:54', 0),
(7, 6, 'National', 'National', '2021-06-30 18:30:00', '2022-06-18 07:09:53', 0),
(8, 6, 'International', 'International', '2021-06-30 18:30:00', '2022-06-18 07:09:51', 0),
(9, 7, 'World', 'World', '2021-06-30 18:30:00', '2022-06-18 07:09:49', 0),
(10, 8, 'Vaccination', 'Vaccination', '2021-11-07 18:18:25', '2022-06-18 07:09:19', 0),
(11, 3, 'Sports News', 'Sports News', '2022-06-18 07:10:15', NULL, 1),
(12, 5, 'World News', 'World News', '2022-06-18 07:10:28', NULL, 1),
(13, 6, 'Oman National News', 'Oman National News', '2022-06-18 07:10:42', NULL, 1),
(14, 7, 'World Business News', 'World Business News', '2022-06-18 07:10:59', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
