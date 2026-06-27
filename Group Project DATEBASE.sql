-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2026 at 05:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"appointment\"},{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"Visit\"},{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"Patients\"},{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"medicalrecords\"},{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"patients\"},{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"healthworker\"},{\"db\":\"publichealthclinicrecordssysytem\",\"table\":\"visit\"},{\"db\":\"public health clinic records system\",\"table\":\"medicalrecords\"},{\"db\":\"public health clinic records system\",\"table\":\"patient\"},{\"db\":\"public health clinic records system\",\"table\":\"appointment\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-06-11 12:19:31', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `publichealthclinicrecordssysytem`
--
CREATE DATABASE IF NOT EXISTS `publichealthclinicrecordssysytem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `publichealthclinicrecordssysytem`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` int(11) NOT NULL,
  `PatientsID` int(11) DEFAULT NULL,
  `WorkerID` int(11) DEFAULT NULL,
  `Appointment_Date` datetime NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `PatientsID`, `WorkerID`, `Appointment_Date`, `Reason`, `Status`, `Notes`) VALUES
(1, 1, 1, '2024-01-10 09:00:00', 'Routine Checkup', 'Completed', 'Patient in good condition'),
(2, 2, 2, '2024-01-11 10:00:00', 'Fever and Headache', 'Completed', 'Prescribed antimalaria'),
(3, 3, 3, '2024-01-12 11:00:00', 'Wound dressing', 'Completed', 'Follow up in 3 days'),
(4, 4, 1, '2024-01-13 10:30:00', 'Blood pressure check', 'Completed', 'BP slithtil high'),
(5, 5, 4, '2024-01-14 11:40:00', 'Abdominal pain', 'Completed', 'Referred for scan'),
(6, 6, 5, '2024-01-15 08:00:00', 'Antenatal Care', 'Completed', 'First antinatal visit'),
(7, 7, 2, '2024-01-16 11:50:00', 'Malaria test', 'Completed', 'Test confirmed positive'),
(8, 8, 3, '2024-01-17 11:00:00', 'General checkup', 'Completed', 'Routine visit'),
(9, 9, 6, '2024-01-18 09:00:00', 'Chest pain', 'Completed', 'ECG ordered'),
(10, 10, 7, '2024-01-19 10:00:00', 'Vaccination', 'Completed', 'Childhood immunization'),
(11, 11, 8, '2024-01-20 14:00:00', 'Heart palpitations', 'Completed', 'Referred to cardiologist'),
(12, 12, 9, '2024-01-21 10:40:00', 'Child fever', 'Completed', 'Pediatric consultation'),
(13, 13, 10, '2024-01-22 10:50:00', 'Skin rash', 'Completed', 'Allergic reaction suspected'),
(14, 14, 11, '2024-01-23 10:00:00', 'Post surgery follow up', 'Completed', 'Recovery progressing well'),
(15, 15, 12, '2024-01-24 10:40:00', 'Eye examination', 'Completed', 'Prescribed glasses'),
(16, 16, 1, '2024-01-25 09:00:00', 'Diabetes management', 'Completed', 'Blood sugar levels monitored'),
(17, 17, 2, '2024-01-26 10:30:00', 'Typhoid treatment', 'Completed', 'Antibiotics prescribed'),
(18, 18, 3, '2024-01-27 07:00:00', 'Prenatal Care', 'Scheduled', 'Second trimester checkup'),
(19, 19, 4, '2024-01-28 14:00:00', 'Appendix pain', 'Scheduled', 'Surgical consultation needed'),
(20, 20, 5, '2024-01-29 10:00:00', 'Postnatal Care', 'Scheduled', 'Mother and baby checkup');

-- --------------------------------------------------------

--
-- Table structure for table `healthworker`
--

CREATE TABLE `healthworker` (
  `WorkerID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `License_Number` varchar(30) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthworker`
--

INSERT INTO `healthworker` (`WorkerID`, `First_Name`, `Last_Name`, `Role`, `Specialization`, `License_Number`, `Phone`) VALUES
(1, 'James', 'Williams', 'Doctor', 'General Medicine', 'LIC001', '076111222'),
(2, 'Sarah', 'Johnson', 'Doctor', 'Pediatrics', 'LIC002', '077118882'),
(3, 'Mary', 'Brown', 'Nurse', 'Emergency Care', 'LIC003', '078911222'),
(4, 'Ahmed', 'Kanu', 'Doctor', 'Surgery', 'LIC004', '079444555'),
(5, 'Grace', 'Cole', 'Nurse', 'General Maternity', 'LIC005', '076555666'),
(6, 'David', 'Kamara', 'Doctor', 'Internal Medicine', 'LIC006', '077666555'),
(7, 'Fatima', 'Sesay', 'Nurse', 'General Nursing', 'LIC007', '078111765'),
(8, 'Robert', 'Tucker', 'Doctor', 'Cardiology', 'LIC008', '076113344'),
(9, 'Elizabeth', 'Conteh', 'Nurse', 'Padiatric Nursing', 'LIC009', '033889222'),
(10, 'Michael', 'Bangura', 'Doctor', 'Dermatology', 'LIC010', '076000111'),
(11, 'Patricia', 'Koroma', 'Nurse', 'ICU Nursing', 'LIC011', '078111222'),
(12, 'Joseph', 'Mansaray', 'Doctor', 'Ophthalmology', 'LIC012', '079889922'),
(13, 'Anges', 'Fofanah', 'Nurse', 'Surgical Nursing', 'LIC013', '077000222'),
(14, 'Emmanuel', 'Dumbuya', 'Doctor', 'Neurology', 'LIC014', '031667722'),
(15, 'Hawa', 'Bah', 'Doctor', 'Community Health', 'LIC015', '034888999'),
(16, 'Thomas', 'Williams', 'Doctor', 'Orthopedics', 'LIC016', '034222111'),
(17, 'Mariama', 'Jalloh', 'Nurse', 'Antenatal Care', 'LIC017', '079777222'),
(18, 'Peter', 'Bah', 'Doctor', 'Psychiatry', 'LIC018', '077999888'),
(19, 'Aminata', 'Sow', 'Doctor', 'Nutrition', 'LIC019', '030001222'),
(20, 'Charles', 'Kamara', 'Doctor', 'Radiology', 'LIC020', '078000002');

-- --------------------------------------------------------

--
-- Table structure for table `medicalrecords`
--

CREATE TABLE `medicalrecords` (
  `RecordsID` int(11) NOT NULL,
  `VisitID` int(11) DEFAULT NULL,
  `PatientsID` int(11) DEFAULT NULL,
  `Diagnosis` varchar(100) NOT NULL,
  `Treatment` varchar(200) DEFAULT NULL,
  `Medication` varchar(150) DEFAULT NULL,
  `Prescription_Date` date DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicalrecords`
--

INSERT INTO `medicalrecords` (`RecordsID`, `VisitID`, `PatientsID`, `Diagnosis`, `Treatment`, `Medication`, `Prescription_Date`, `Notes`) VALUES
(1, 1, 1, 'Healthy', 'No treatment required', 'Multivitamins', '2024-01-10', 'Next check up in 6 months'),
(2, 2, 2, 'Malaria', 'Antimalaria therapy', 'Artemether 80mg', '2024-01-11', 'Complete full course of medication'),
(3, 3, 3, 'Laceration', 'Wound cleaning and dressing', 'Amoxicillin 500mg', '2024-01-12', 'Change dressing daily for 5 days'),
(4, 4, 4, 'Hypertention', 'Lifestyle changes and medication', 'Amlodipine 5mg', '2024-01-13', 'Reduce salt intake and excercise regularly'),
(5, 5, 5, 'Appendicitis', 'Surgical intervention recommended', 'Paracetamol 5mg', '2024-01-14', 'Admitted for emergency surgery'),
(6, 6, 6, 'Normal pregnancy', 'Routine antenatal Care', 'Folic Acid 5mg, Iron supplement', '2024-01-15', 'Next antenatal visit in 4 weeks'),
(7, 7, 7, 'Malaria', 'Antimalaria therapy', 'Artemether 80mg, paracetamol', '2024-01-16', 'Rest and increased fluid intake'),
(8, 8, 8, 'General fatigue', 'Rest and nutritional support', 'Iron supplement, vitamin C', '2024-01-17', 'Follow up in 1 week'),
(9, 9, 9, 'Chest infection', 'Antibiotic therapy', 'Amoxicillin 500mg, cough syrup', '2024-01-18', 'Complete 7 days antibiotic course'),
(10, 10, 10, 'Immunization', 'Childhood vaccination completed', 'BCG, polio, DPT vaccines', '2024-01-19', 'Next vaccination due in 4 weeks'),
(11, 11, 11, 'Arrhythmia', 'Cardiology referral and monitoring', 'Metoprolol 25mg', '2024-01-20', 'Avoid strenuous physical activity'),
(12, 12, 12, 'Paediatric fever', 'Antipyretic therapy', 'Paracetamol syrup 120mg', '2024-01-21', 'Monitor temperature every 4 Hours'),
(13, 13, 13, 'Allergic Dermatitis', 'Anthisamine and topical cream', 'Cetirizine 10mg, hydrocortisone cream', '2024-01-22', 'AAvoid known allergens'),
(14, 14, 14, 'Post operative recovery', 'Wound Care and management', 'Ibuprofen 400mg dressing', '2024-01-23', 'Full recovery expected in 2 weeks'),
(15, 15, 15, 'Myopia', 'Corrective lenses prescribed', 'Prescription Glasses', '2024-01-24', 'Review vision in 12 months'),
(16, 16, 16, 'Diabetes', 'Insulin therapy and diet control', 'Metformin 500mg', '2024-01-25', 'Monitor blood sugar daily'),
(17, 17, 17, 'Typhoid fever', 'Antibiotic therapy', 'Ciprofloxacin 500mg', '2024-01-26', 'Complet full 14 days course'),
(18, 18, 18, 'Normal pregnancy', 'Prenatal vitamins and monitoring', 'Folic Acid , iron, calcium', '2024-01-27', 'Ultrasound scheduled next week'),
(19, 19, 19, 'Acute appendicitis', 'Emergency appendectomy', 'Metronidazole 400mg', '2024-01-18', 'Surgery performed successfully'),
(20, 20, 20, 'Postnatal depression', 'Counselling and medication', 'Sertraline 50mg', '2024-01-29', 'Weekly counselling session recommended');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientsID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `NationalID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientsID`, `First_Name`, `Last_Name`, `Date_Of_Birth`, `Gender`, `Address`, `Phone`, `NationalID`) VALUES
(1, 'Mohamed', 'Kamara', '1990-05-15', 'M', '45 Victoria Street', '076999888', 'NID001'),
(2, 'Fatmata', 'Sesay', '1985-08-22', 'F', '35 Kroo Town Road', '077234567', 'NID002'),
(3, 'Ibrahim', 'Cnteh', '2000-08-25', 'M', '65 Siaka Steven Stre', '077278546', 'NID003'),
(4, 'Aminata', 'Koroma', '1956-07-17', 'F', '8 Wilkinson Road', '033456789', 'NID004'),
(5, 'Alusine', 'Jalloh', '2003-10-12', 'M', '22 Sander Strret', '031834961', 'NID005'),
(6, 'Mariama', 'Bangura', '1991-08-27', 'F', '18 Pike Street', '078984321', 'NID006'),
(7, 'Samuel', 'Tucker', '1876-03-12', 'M', 'Lumley Beach Road', '077232267', 'NID007'),
(8, 'Hawa', 'Turay', '2001-04-08', 'F', 'Kenema Highway ', '077234567', 'NID008'),
(9, 'Brima', 'Mansaray', '1983-12-22', 'M', '14 Murray Town', '077234478', 'NID009'),
(10, 'Isata', 'Fofanah', '1999-08-26', 'F', '9 Pademba Road', '077999967', 'NID0010'),
(11, 'Sorie', 'Koroma', '1975-01-28', 'M', '67BCircular Road', '078444567', 'NID0011'),
(12, 'Kdiatu', 'Bah', '1975-09-05', 'F', '23 Bathurst Street', '088234567', 'NID0012'),
(13, 'Lansana', 'Dumbuya', '1986-08-12', 'M', '11 Main Street', '088987667', 'NID0013'),
(14, 'Adama', 'Sesay', '2003-02-14', 'F', '44 Hospital', '034334567', 'NID0014'),
(15, 'Foday', 'Kamara', '1985-09-21', 'M', '6 New Englang Road', '076777888', 'NID0015'),
(16, 'Memunatu', 'Conteh', '2022-08-22', 'F', '19 Spur Road', '031908976', 'NID0016'),
(17, 'Ousman', 'Barry', '1867-08-22', 'M', '33 Wilberforce', '079443311', 'NID0017'),
(18, 'Fanta', 'Kanu', '1852-07-12', 'F', '7 Lightfoot Boston S', '077888444', 'NID0018'),
(19, 'Alhassan', 'Sow', '1950-08-22', 'M', '55 Brookfield Road', '033899809', 'NID0019'),
(20, 'Sia', 'Koroma', '1777-09-30', 'F', '28 Congo Cross', '077255567', 'NID0020');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `VisitID` int(11) NOT NULL,
  `AppointmentID` int(11) DEFAULT NULL,
  `PatientsID` int(11) DEFAULT NULL,
  `WorkerID` int(11) DEFAULT NULL,
  `Visit_Date` datetime NOT NULL,
  `Reason` varchar(200) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Pending',
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`VisitID`, `AppointmentID`, `PatientsID`, `WorkerID`, `Visit_Date`, `Reason`, `Status`, `Notes`) VALUES
(1, 1, 1, 1, '2024-01-10 09:15:00', 'Routine checkup', 'Completed', 'No issues found , health patient'),
(2, 2, 2, 2, '2024-01-11 10:20:00', 'Fever and headache', 'Completed', 'Temperature 38.5, maalaria confirmed'),
(3, 3, 3, 3, '2024-01-12 11:10:00', 'Wound dressing', 'Completed', 'Wound healing well dressing changed'),
(4, 4, 4, 1, '2024-01-13 10:27:00', 'Blood pressure check', 'Completed', 'BP recorded at 140/90'),
(5, 5, 5, 4, '2024-01-14 09:30:00', 'Abdominal pain', 'Completed', 'Ultrasound scan ordered'),
(6, 6, 6, 5, '2024-01-15 07:20:00', 'Antenatal Care', 'Completed', '20 weeks pregnant baby healthy'),
(7, 7, 7, 2, '2024-01-16 10:40:00', 'Malaria test', 'Completed', 'Malaria positive, treatment started'),
(8, 8, 8, 3, '2024-01-17 10:50:10', 'General checkup', 'Completed', 'Patient in good health'),
(9, 9, 9, 6, '2024-01-18 06:20:00', 'Chest pain', 'Completed', 'ECG performed, result normal'),
(10, 10, 10, 7, '2024-01-19 10:15:00', 'Vaccination', 'Completed', 'Vaccine administered successfully'),
(11, 11, 11, 8, '2024-01-20 05:27:00', 'Heart palpitations', 'Completed', 'Cardiology referral made'),
(12, 12, 12, 9, '2024-01-21 10:00:00', 'Child fever', 'Completed', 'Fever reduce after medication'),
(13, 13, 13, 10, '2024-01-22 10:10:00', 'Skin rash', 'Completed', 'Antihistamine prescribed'),
(14, 14, 14, 11, '2024-01-23 08:30:00', 'Post surgery follow up', 'Completed', 'Stitches removed successfully'),
(15, 15, 15, 12, '2024-01-24 10:40:00', 'Eye examination', 'Completed', 'Vision test completed'),
(16, 16, 16, 1, '2024-01-25 07:20:00', 'Diabetes management', 'Completed', 'Insulin dosage adjusted'),
(17, 17, 17, 2, '2024-01-26 10:44:00', 'Typhoid treatment', 'Completed', 'Ciprofloxacin course started'),
(18, 18, 18, 3, '2024-01-27 11:30:00', 'Prenatal Care', 'Pending', 'Awaiting blood test results'),
(19, 19, 19, 4, '2024-01-28 10:45:00', 'Appendix pain', 'Pending', 'Surgery scheduled for tomorrow'),
(20, 20, 20, 5, '2024-01-29 10:25:00', 'Postnatal Care', 'Pending', 'Mother recovering well');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `PatientsID` (`PatientsID`),
  ADD KEY `WorkerID` (`WorkerID`);

--
-- Indexes for table `healthworker`
--
ALTER TABLE `healthworker`
  ADD PRIMARY KEY (`WorkerID`);

--
-- Indexes for table `medicalrecords`
--
ALTER TABLE `medicalrecords`
  ADD PRIMARY KEY (`RecordsID`),
  ADD KEY `VisitID` (`VisitID`),
  ADD KEY `PatientsID` (`PatientsID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientsID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`VisitID`),
  ADD KEY `AppointmentID` (`AppointmentID`),
  ADD KEY `PatientsID` (`PatientsID`),
  ADD KEY `WorkerID` (`WorkerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `healthworker`
--
ALTER TABLE `healthworker`
  MODIFY `WorkerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medicalrecords`
--
ALTER TABLE `medicalrecords`
  MODIFY `RecordsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `VisitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PatientsID`) REFERENCES `patients` (`PatientsID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`WorkerID`) REFERENCES `healthworker` (`WorkerID`);

--
-- Constraints for table `medicalrecords`
--
ALTER TABLE `medicalrecords`
  ADD CONSTRAINT `medicalrecords_ibfk_1` FOREIGN KEY (`VisitID`) REFERENCES `visit` (`VisitID`),
  ADD CONSTRAINT `medicalrecords_ibfk_2` FOREIGN KEY (`PatientsID`) REFERENCES `patients` (`PatientsID`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`AppointmentID`) REFERENCES `appointment` (`AppointmentID`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`PatientsID`) REFERENCES `patients` (`PatientsID`),
  ADD CONSTRAINT `visit_ibfk_3` FOREIGN KEY (`WorkerID`) REFERENCES `healthworker` (`WorkerID`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
