-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2026 at 06:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `civicissue`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('b2c3d4e5f6g7');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `icon`, `is_active`, `created_at`) VALUES
('12bd9b4d-173d-4a55-88d8-0f888658b70e', 'Street Light', NULL, NULL, 1, '2026-03-16 05:25:47'),
('1efe0ac6-bb7f-4d24-a9c9-63307e87e125', 'Building Damage', NULL, NULL, 1, '2026-03-25 08:33:45'),
('2e8720ec-387f-404c-b3af-ff19e03350fe', 'Other', NULL, NULL, 1, '2026-03-16 05:25:47'),
('484219ef-651f-4ca1-9328-2672f02e865e', 'Drainage', NULL, NULL, 1, '2026-03-16 05:25:47'),
('62eb4ac0-efdd-4de3-8dee-980b47515d4b', 'Pothole', NULL, NULL, 1, '2026-03-16 05:25:47'),
('6926edc6-33e6-48ad-a7ea-85999e163812', 'Broken Infrastructure', NULL, NULL, 1, '2026-03-16 05:25:47'),
('771bb5dd-7747-480b-a21c-23423034ddc3', 'Water Leakage', NULL, NULL, 1, '2026-03-16 05:25:47'),
('a04f19a8-2e1e-43d8-85c6-64063b8523a7', 'Garbage/Waste', NULL, NULL, 1, '2026-03-16 05:25:47'),
('e10d79aa-1f41-42fd-8126-002442f87704', 'Road Damage', NULL, NULL, 1, '2026-03-16 05:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_messages`
--

CREATE TABLE `chatbot_messages` (
  `id` varchar(36) NOT NULL,
  `session_id` varchar(36) NOT NULL,
  `text` text NOT NULL,
  `is_user` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot_messages`
--

INSERT INTO `chatbot_messages` (`id`, `session_id`, `text`, `is_user`, `created_at`) VALUES
('0240d898-6fae-4232-a580-85c746e1bd44', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'hi', 1, '2026-03-30 05:38:35'),
('043a0d45-8f60-4bac-ad0c-4b06fc9fa7d6', '428277e6-742f-462a-877a-3379dbdd85ba', 'Manage Complaints', 1, '2026-03-16 06:16:30'),
('0dd285d0-3493-4c19-a010-b1ec60083d99', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'I don\'t understand \"ytty.\" Could you please tell me what you\'d like to do?\n\nAre you trying to:\n*   Report an issue?\n*   Check the status of a report?\n*   Ask a question about CivicIssue?', 0, '2026-03-31 03:40:07'),
('17e667d5-fc76-4a0d-afc4-14adf422b62c', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'To assign a new worker:\n\n1.  Navigate to the **Team Management** or **User Accounts** section in your admin dashboard.\n2.  Click **Add New User** or **Invite Worker**.\n3.  Enter their details and assign relevant roles (e.g., \"Issue Resolver\", \"Field Agent\") and permissions.', 0, '2026-03-30 05:38:08'),
('2189279c-a345-403f-a7be-a1c3f4007c2c', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'To view unassigned work:\n\n1.  Go to your **Issue Tracker** or **Complaint List**.\n2.  Use the **Filter** options and select \"Unassigned\" or \"Pending Assignment\" under the \'Worker\' or \'Status\' category.', 0, '2026-03-30 05:39:01'),
('22010259-39c0-4589-bd73-649912262f30', '428277e6-742f-462a-877a-3379dbdd85ba', 'To assign an officer:\n1.  Go to **View Active Complaints**.\n2.  Select the specific complaint you wish to assign.\n3.  Within the complaint details, look for an \"Assign Officer\" or \"Edit Assignment\" option and choose the appropriate officer from the list.', 0, '2026-03-16 06:16:52'),
('2a9720f9-9c49-4c72-ae40-11450db5eb13', 'eca75c92-f099-4a49-b8f3-f249bb49076a', 'I can help you with officer assignments.\n\nPlease specify:\n1.  **Which officers** you would like to assign.\n2.  **To which issues or categories** you\'d like them assigned.\n\nAlternatively, I can provide recommendations based on:\n*   Officer workload\n*   Issue urgency\n*   Geographic location', 0, '2026-03-24 15:09:04'),
('397f6ed2-de88-485e-b153-46476a9566c7', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'what are the not assigned work ', 1, '2026-03-30 05:38:58'),
('3f11a4ff-dcee-4d19-bc27-e7ce2ad1bc2b', 'eca75c92-f099-4a49-b8f3-f249bb49076a', 'what is process to assign ooficers?', 1, '2026-03-24 15:09:22'),
('4681f5e9-16b1-4a66-9bce-b00c23be8cc7', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'no', 1, '2026-03-31 03:39:39'),
('49d07ffc-8f2c-4b60-abd1-e96f89ba7869', 'eca75c92-f099-4a49-b8f3-f249bb49076a', 'The process to assign officers typically involves these steps:\n\n1.  **Identify Officers:** You provide the names or IDs of the officers you wish to assign.\n2.  **Select Issues/Categories:** You specify the particular issues (by ID, type, or location) or broader categories (e.g., \"pothole reports,\" \"graffiti complaints\") you want them assigned to.\n3.  **Review & Confirm:** I will present a summary of the proposed assignments for your review and approval.\n4.  **Execute Assignment:** Once you confirm, the officers will be officially assigned to the specified issues or categories.\n\nI can also generate recommendations based on officer workload, issue urgency, or geographic location to help streamline this process.', 0, '2026-03-24 15:09:28'),
('648adf96-97a7-4b3e-bbc8-088589e87bab', '646216a8-ed08-4995-8e91-2e740b8a43fc', 'To raise an issue on CivicIssue, follow these steps:\n\n1.  Open the CivicIssue app.\n2.  Tap the \"Report New Issue\" or \"+\" button.\n3.  Fill in the details: type of issue, description, and location.\n4.  Optionally, add photos or videos.\n5.  Tap \"Submit Report.\"', 0, '2026-03-16 06:25:49'),
('65af4d59-e9c1-46ec-abdb-751661a2bdac', '646216a8-ed08-4995-8e91-2e740b8a43fc', 'how to raise an issue', 1, '2026-03-16 06:25:47'),
('6f4c808b-79a4-466b-b283-9dd4839b3229', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'try my beast', 1, '2026-03-31 03:39:00'),
('808111f3-4b2d-4a5e-b172-e72554332c5c', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'Hello! Welcome to CivicIssue. How can I help you report an issue or find information today?', 0, '2026-03-31 03:38:50'),
('8717ff42-5e67-4c3c-a890-b93eaa82c557', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'how to assign new worler', 1, '2026-03-30 05:38:04'),
('8c9178be-ed3a-452b-9118-9a402086bb83', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'hii', 1, '2026-03-31 03:38:48'),
('9a1ace83-288c-4cd0-8c7e-b1e48322df75', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'ytty', 1, '2026-03-31 03:40:05'),
('9c5d16bd-69b8-47da-97c4-0fdac2dafb89', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'how to assign new workert', 1, '2026-03-30 05:38:18'),
('a27908cc-97df-40c6-9d38-4e5317d870f3', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'Understood. My apologies for the misunderstanding.\n\nWhat issue would you like to report, or what information are you looking for today?', 0, '2026-03-31 03:39:42'),
('aefaefa1-c984-46d8-ae8d-c42b5f7667ed', 'cc6a9518-5628-45c3-bf3c-e0c885e024bf', 'how to assign a task to worker', 1, '2026-03-30 06:57:45'),
('b8815105-80ef-45f4-b351-3dd4361182b5', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'Hello! As an admin, how can I assist you today with managing civic issues?', 0, '2026-03-30 05:38:37'),
('c784afb9-536b-4c90-bea1-ba2335613370', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'I\'m not quite sure what \"try my beast\" means in this context. Could you please rephrase or tell me what you\'d like to do?\n\nAre you looking to:\n*   Report a new issue?\n*   Check the status of a previously reported issue?\n*   Learn more about how CivicIssue works?', 0, '2026-03-31 03:39:03'),
('d46c6793-0f51-4b7f-836e-c402996f7920', 'cd0dd049-1ae8-48e3-973d-4b89710a2b6c', 'To assign a new worker:\n\n1.  Go to the **Team Management** or **User Accounts** section in your admin dashboard.\n2.  Select **Add New User** or **Invite Worker**.\n3.  Fill in their information and assign appropriate roles and permissions.', 0, '2026-03-30 05:38:20'),
('d8bfe088-a519-4975-8f85-93c910645bc3', '428277e6-742f-462a-877a-3379dbdd85ba', 'Alright, Admin. To help you manage complaints, would you like to:\n*   **View Active Complaints**\n*   **Prioritize New Submissions**\n*   **Summarize Complaint Trends**\n*   **Update Complaint Statuses**', 0, '2026-03-16 06:16:34'),
('d8db7e76-b9e9-4adc-9e41-e9bbc9aee26f', '428277e6-742f-462a-877a-3379dbdd85ba', 'how to assign officer?', 1, '2026-03-16 06:16:49'),
('e7fc11b4-6acc-4988-a49e-4f6ace3e0fc1', 'cc6a9518-5628-45c3-bf3c-e0c885e024bf', 'As an admin, you can assign tasks (reported issues) to workers through the platform:\n\n1.  **Access the Issue:** Navigate to the specific issue report you wish to assign.\n2.  **Locate Assignment Option:** Look for an \"Assign,\" \"Take Action,\" or similar button/section within the issue details.\n3.  **Select Worker:** Choose the appropriate worker or department from the provided list.\n4.  **Confirm:** Save your changes to complete the assignment.', 0, '2026-03-30 06:57:49'),
('eb8c6753-7218-4212-af78-5194dc896903', 'eca75c92-f099-4a49-b8f3-f249bb49076a', 'Assign Officers', 1, '2026-03-24 15:08:56'),
('f628a567-81a8-44e1-8394-b573ed0723bf', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'food', 1, '2026-03-31 03:39:23'),
('fc6a771e-3f57-4c61-93c2-ddcb32eaa6da', '3149622a-0714-45f4-9d7d-2bff4088be4c', 'Are you looking to report a food-related issue? Please provide more details. For example, is it about:\n\n*   **Food safety** (e.g., unsanitary conditions at a restaurant, contaminated food)?\n*   **Food waste** or improper disposal?\n*   Another food-related concern?\n\nKnowing more will help me guide you through the reporting process.', 0, '2026-03-31 03:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_sessions`
--

CREATE TABLE `chatbot_sessions` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot_sessions`
--

INSERT INTO `chatbot_sessions` (`id`, `user_id`, `created_at`) VALUES
('3149622a-0714-45f4-9d7d-2bff4088be4c', '2aceba95-70d7-4131-8a11-8b4fc9246fec', '2026-03-31 03:38:48'),
('428277e6-742f-462a-877a-3379dbdd85ba', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '2026-03-16 06:16:30'),
('646216a8-ed08-4995-8e91-2e740b8a43fc', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '2026-03-16 06:25:47'),
('cc6a9518-5628-45c3-bf3c-e0c885e024bf', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '2026-03-30 06:57:45'),
('cd0dd049-1ae8-48e3-973d-4b89710a2b6c', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '2026-03-30 05:38:04'),
('eca75c92-f099-4a49-b8f3-f249bb49076a', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '2026-03-24 15:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` varchar(36) NOT NULL,
  `complaint_number` varchar(20) DEFAULT NULL,
  `citizen_id` varchar(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `ai_detected_category` varchar(100) DEFAULT NULL,
  `ai_text_category` varchar(100) DEFAULT NULL,
  `location_text` varchar(500) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `priority` enum('LOW','MEDIUM','HIGH') DEFAULT NULL,
  `severity_level` enum('LOW','MEDIUM','HIGH','CRITICAL') DEFAULT NULL,
  `status` enum('UNASSIGNED','ASSIGNED','IN_PROGRESS','COMPLETED','RESOLVED','REWORK') DEFAULT NULL,
  `assigned_officer_id` varchar(36) DEFAULT NULL,
  `group_id` varchar(36) DEFAULT NULL,
  `ai_confidence` float DEFAULT NULL,
  `ai_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ai_keywords`)),
  `resolution_notes` text DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `resolution_image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_number`, `citizen_id`, `title`, `description`, `category`, `ai_detected_category`, `ai_text_category`, `location_text`, `latitude`, `longitude`, `priority`, `severity_level`, `status`, `assigned_officer_id`, `group_id`, `ai_confidence`, `ai_keywords`, `resolution_notes`, `resolved_at`, `created_at`, `updated_at`, `resolution_image`) VALUES
('2c0f8db2-a82a-42b6-83f0-9c722d604de1', '#CE-5994', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'The white dashed center line and solid edge lines show minor fading and wear, indicating a cosmetic ', 'The white dashed center line and solid edge lines show minor fading and wear, indicating a cosmetic issue and future re-painting requirement but no immediate safety hazard.', 'road_damage', 'road_damage', NULL, 'NH48, Palanjur, Sriperumbudur, Kanchipuram, Thiruvallur, Tamil Nadu, 600124, India', 13.0270226, 80.0153884, 'MEDIUM', 'LOW', 'RESOLVED', NULL, NULL, 0.85, 'null', 'completed successfully ', '2026-03-17 03:28:52', '2026-03-17 08:17:06', '2026-03-17 08:58:52', '/uploads/bf82a370766f405fab4a770ba6de3cd4.jpg'),
('5582ebb5-370d-4344-ba6b-49c4a1ca1347', '#CE-7746', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Clear it', 'Clear it', 'Street Light', '', NULL, 'Saveetha Engineering College, NH48, Palanjur, Sriperumbudur, Kanchipuram, Thiruvallur, Tamil Nadu, 600124, India', 13.0259655, 80.0159379, 'MEDIUM', 'MEDIUM', 'RESOLVED', NULL, NULL, 0, 'null', 'Done', '2026-03-17 02:48:11', '2026-03-16 09:02:15', '2026-03-17 08:18:11', NULL),
('5e2bdc6b-538a-44aa-bced-a82a7819a93d', '#CE-1095', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'The road is too damaged Clear Asap ', 'The road is too damaged Clear Asap ', 'Drainage', '', NULL, 'Saveetha Engineering College, NH48, Palanjur, Sriperumbudur, Kanchipuram, Thiruvallur, Tamil Nadu, 600124, India', 13.0265391, 80.0159671, 'MEDIUM', 'MEDIUM', 'RESOLVED', NULL, NULL, 0, 'null', 'Done as per your request. Thanks for being a responsible citizen.\n', '2026-03-16 01:07:01', '2026-03-16 06:32:03', '2026-03-16 06:37:01', NULL),
('792239a1-a72f-452e-814a-855a41385630', '#CE-3086', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses', 'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses a significant safety hazard due to potential collapse.', 'broken_infrastructure', 'broken_infrastructure', NULL, 'Saveetha Engineering College, NH48, Palanjur, Sriperumbudur, Kanchipuram, Thiruvallur, Tamil Nadu, 600124, India', 13.0264735, 80.0159247, 'HIGH', 'HIGH', 'IN_PROGRESS', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', NULL, 0.95, 'null', NULL, NULL, '2026-03-30 05:34:31', '2026-03-30 05:37:06', NULL),
('79ca82dd-a112-45bd-a956-8f55b875194c', '#CE-2127', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s', 'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, significantly degrading its appearance and cleanliness.', 'garbage', 'garbage', NULL, 'NH48, Palanjur, Sriperumbudur, Kanchipuram, Thiruvallur, Tamil Nadu, 600124, India', 13.0283145, 80.0155496, 'HIGH', 'HIGH', 'IN_PROGRESS', 'c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', NULL, 0.98, 'null', NULL, NULL, '2026-03-31 10:44:44', '2026-03-31 10:47:14', NULL),
('876241b1-177e-46c8-b565-2888b9df06ab', '#CE-4936', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'A pipe joint is actively leaking a steady stream of water, indicating a plumbing issue leading to wa', 'A pipe joint is actively leaking a steady stream of water, indicating a plumbing issue leading to water waste and requiring scheduled repair.', 'water_leakage', 'water_leakage', NULL, '', 0, 0, 'MEDIUM', 'MEDIUM', 'UNASSIGNED', NULL, NULL, 0.98, 'null', NULL, NULL, '2026-03-30 03:14:31', '2026-03-30 03:14:31', NULL),
('965577bd-9079-4bbf-8059-7628aba08397', '#CE-6489', '2aceba95-70d7-4131-8a11-8b4fc9246fec', 'jdfnvdjnvnsdvkjn', 'jdfnvdjnvnsdvkjn', 'Other', NULL, NULL, 'Chennai, Tamil Nadu, India', 13.0895, 80.2739, 'MEDIUM', 'MEDIUM', 'ASSIGNED', 'c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '8645d5e7-577a-41fa-bdda-ac2f6a00731e', 0, 'null', NULL, NULL, '2026-03-31 03:43:49', '2026-03-31 03:44:30', NULL),
('9ad67bf5-f99f-4b04-aa5c-12517a17a733', '#CE-8136', '2aceba95-70d7-4131-8a11-8b4fc9246fec', 'Clear the garbage ', 'Clear the garbage ', 'Other', NULL, NULL, 'Chennai, Tamil Nadu, India', 13.0895, 80.2739, 'MEDIUM', 'MEDIUM', 'UNASSIGNED', NULL, '8645d5e7-577a-41fa-bdda-ac2f6a00731e', 0, 'null', NULL, NULL, '2026-03-31 03:42:10', '2026-03-31 03:43:49', NULL),
('b6e3e8c7-bace-4db1-a58d-462b972f2247', '#CE-8298', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door', 'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door frame.', 'Other', 'other', NULL, 'NH48, Palanjur, Sriperumbudur, Kanchipuram, Thiruvallur, Tamil Nadu, 600124, India', 13.0269776, 80.0153708, 'MEDIUM', 'LOW', 'RESOLVED', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', NULL, 0.9, 'null', 'done 👍✅', '2026-03-23 22:22:25', '2026-03-23 08:14:45', '2026-03-24 03:52:25', '/uploads/21cb277714dd415c8942d9efe9bfe206.jpg'),
('d0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', '#CE-9378', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Clear the dumping yard', 'Clear the dumping yard', 'Waste Collection', 'other', NULL, 'Chettipadu – Nemam Road, Kuthambakkam, Sriperumbudur, Poonamallee, Thiruvallur, Tamil Nadu, 600124, India', 13.0249113, 80.0222031, 'MEDIUM', 'MEDIUM', 'RESOLVED', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', NULL, 0, 'null', 'Done ', '2026-03-19 06:38:23', '2026-03-19 08:30:13', '2026-03-19 12:08:23', '/uploads/7e88fac36f154c85b050c534740e034f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_images`
--

CREATE TABLE `complaint_images` (
  `id` varchar(36) NOT NULL,
  `complaint_id` varchar(36) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `ai_analysis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ai_analysis`)),
  `uploaded_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_images`
--

INSERT INTO `complaint_images` (`id`, `complaint_id`, `image_url`, `ai_analysis`, `uploaded_at`) VALUES
('1802dfbb-0a65-42e8-95ed-13d7c632aa26', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', '/uploads/e487f119-0387-4305-9326-8450d31e7c21.jpg', NULL, '2026-03-19 08:30:13'),
('4236235d-d680-41e8-bf8a-19f466742977', '79ca82dd-a112-45bd-a956-8f55b875194c', '/uploads/c8d77e36-cb08-4fd9-ac9d-8a0fb405246a.jpg', NULL, '2026-03-31 10:44:44'),
('4838f1ac-c880-425f-97ae-96e40d282b3b', '5582ebb5-370d-4344-ba6b-49c4a1ca1347', '/uploads/68a7c7d0-ff99-471f-93e1-dbb6e272637b.jpg', NULL, '2026-03-16 09:02:15'),
('5cbcf32f-a3bd-4747-bdf2-c1d437d2dbd6', '965577bd-9079-4bbf-8059-7628aba08397', '/uploads/8c35e3f6-d839-426a-92e5-4a2ad5dd2b6b.webp', NULL, '2026-03-31 03:43:49'),
('6d77d62c-788f-49a8-a8ef-c779948e1a24', '876241b1-177e-46c8-b565-2888b9df06ab', '/uploads/ed874c9b-ca15-4559-80ec-dfef82c4d7e2.jpg', NULL, '2026-03-30 03:14:32'),
('8278680f-a8c0-4bdd-9ea0-746a87540899', '5e2bdc6b-538a-44aa-bced-a82a7819a93d', '/uploads/bbdb7839-67fe-43f3-bfac-ad9840923629.jpg', NULL, '2026-03-16 06:32:03'),
('94f45de0-258f-41be-970a-475d3a8b211e', '9ad67bf5-f99f-4b04-aa5c-12517a17a733', '/uploads/373ca346-55cc-423c-be62-7ea865618917.png', NULL, '2026-03-31 03:42:10'),
('d058bd76-6a3d-44a2-9d2a-20610a2f8916', '792239a1-a72f-452e-814a-855a41385630', '/uploads/21e65dd5-560b-459b-8eb3-e6d37a8ebef5.jpg', NULL, '2026-03-30 05:34:31'),
('d2c93f71-8133-46b8-9ebc-b4287d2103bb', '2c0f8db2-a82a-42b6-83f0-9c722d604de1', '/uploads/4b686770-d7d7-400b-9908-102c3d7885a3.jpg', NULL, '2026-03-17 08:17:06'),
('d899fa48-3f25-44f9-bed2-b5e2c2ee3d4a', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', '/uploads/d0a91d37-4c9b-4279-9d8d-d4f48699c389.jpg', NULL, '2026-03-23 08:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_status_history`
--

CREATE TABLE `complaint_status_history` (
  `id` varchar(36) NOT NULL,
  `complaint_id` varchar(36) NOT NULL,
  `old_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) NOT NULL,
  `changed_by` varchar(36) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_status_history`
--

INSERT INTO `complaint_status_history` (`id`, `complaint_id`, `old_status`, `new_status`, `changed_by`, `notes`, `created_at`) VALUES
('03e11ae0-3eaa-41fe-aed5-44f4da719a8d', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'UNASSIGNED', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer 9d778c2b-4569-4164-9ba1-57f6bcbedf33', '2026-03-19 12:07:34'),
('059a8862-bbea-4225-ace6-c7f904417ef8', '792239a1-a72f-452e-814a-855a41385630', 'UNASSIGNED', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '2026-03-30 05:35:32'),
('104f98fb-4b17-4247-b2fc-34108509bae2', '5582ebb5-370d-4344-ba6b-49c4a1ca1347', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-16 09:02:15'),
('23e9ad9c-4dfd-44fb-829f-b399c3281ffc', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'IN_PROGRESS', 'RESOLVED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'done 👍✅', '2026-03-24 03:52:25'),
('2ae0fcbc-8b93-404f-bd6b-8a0e6763f72e', '5e2bdc6b-538a-44aa-bced-a82a7819a93d', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-16 06:32:03'),
('2b77faf2-9a03-4fca-bac1-53201c67a96f', '9ad67bf5-f99f-4b04-aa5c-12517a17a733', NULL, 'UNASSIGNED', '2aceba95-70d7-4131-8a11-8b4fc9246fec', 'Complaint created', '2026-03-31 03:42:10'),
('2bfbb36a-c6fa-41e5-8110-3c5c138d705c', '5e2bdc6b-538a-44aa-bced-a82a7819a93d', 'UNASSIGNED', 'RESOLVED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Done as per your request. Thanks for being a responsible citizen.\n', '2026-03-16 06:37:01'),
('30adb1f3-3c49-4282-bc41-e00f21e76dfe', '965577bd-9079-4bbf-8059-7628aba08397', 'UNASSIGNED', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '2026-03-31 03:44:30'),
('3819f5cd-ffcb-4ea2-802c-1bb3cd010cbe', '5582ebb5-370d-4344-ba6b-49c4a1ca1347', 'UNASSIGNED', 'RESOLVED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Done', '2026-03-17 08:18:11'),
('5bb5379e-8b68-4c52-9ad5-4989be73a415', '792239a1-a72f-452e-814a-855a41385630', 'ASSIGNED', 'IN_PROGRESS', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Work started by admin', '2026-03-30 05:37:06'),
('5d48a98b-a1bf-418a-93b6-a6f95ecf0a62', '79ca82dd-a112-45bd-a956-8f55b875194c', 'ASSIGNED', 'IN_PROGRESS', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Work started by admin', '2026-03-31 10:47:14'),
('60822fa5-be2a-4f6f-a8ba-173ae944c589', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-19 08:30:13'),
('75350fed-90db-423c-947f-0b0ecf2c045e', '79ca82dd-a112-45bd-a956-8f55b875194c', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-31 10:44:44'),
('7de4a60c-2fd4-460e-a0eb-4819f532739a', '79ca82dd-a112-45bd-a956-8f55b875194c', 'UNASSIGNED', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer 9d778c2b-4569-4164-9ba1-57f6bcbedf33', '2026-03-31 10:47:04'),
('85b5ba7e-38d9-435d-a49a-4f567d57695a', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'UNASSIGNED', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer 9d778c2b-4569-4164-9ba1-57f6bcbedf33', '2026-03-23 08:15:46'),
('8e44d99d-7de4-4b26-9870-58636080c9c8', '876241b1-177e-46c8-b565-2888b9df06ab', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-30 03:14:32'),
('a2633ab7-84a8-4f08-bdec-1f45521158e8', '79ca82dd-a112-45bd-a956-8f55b875194c', 'ASSIGNED', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '2026-03-31 10:47:09'),
('b38f240a-5f1d-46a0-9277-da2080b231b5', '792239a1-a72f-452e-814a-855a41385630', 'IN_PROGRESS', 'ASSIGNED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Assigned to officer 9d778c2b-4569-4164-9ba1-57f6bcbedf33', '2026-03-30 05:37:04'),
('b8059cee-b87f-4748-b7f5-90082a2ddb4d', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'ASSIGNED', 'IN_PROGRESS', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Work started by admin', '2026-03-23 08:15:52'),
('c0c6cf84-8fd3-4d2c-a22c-41ed82b72aac', '965577bd-9079-4bbf-8059-7628aba08397', NULL, 'UNASSIGNED', '2aceba95-70d7-4131-8a11-8b4fc9246fec', 'Complaint created', '2026-03-31 03:43:49'),
('d0cf329e-f71c-4208-969c-27a4f4d9905c', '2c0f8db2-a82a-42b6-83f0-9c722d604de1', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-17 08:17:06'),
('d7154d95-347a-4ae2-8b26-e1fcb3172237', '2c0f8db2-a82a-42b6-83f0-9c722d604de1', 'UNASSIGNED', 'RESOLVED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'completed successfully ', '2026-03-17 08:58:52'),
('db33119a-0e9b-475a-ae38-e840869787dd', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-23 08:14:45'),
('e74a85d9-512b-4fde-b90b-d25ebb8c9c0d', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'ASSIGNED', 'IN_PROGRESS', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Work started by admin', '2026-03-19 12:07:44'),
('e78c83f1-c0cf-4e2b-8fba-ea55ad282ef7', '792239a1-a72f-452e-814a-855a41385630', NULL, 'UNASSIGNED', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Complaint created', '2026-03-30 05:34:31'),
('ec90dfc2-2fff-4474-82d9-e312cecb6355', '792239a1-a72f-452e-814a-855a41385630', 'ASSIGNED', 'IN_PROGRESS', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Work started by admin', '2026-03-30 05:36:58'),
('f5267a55-73e5-47e8-857b-f01a65a31021', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'IN_PROGRESS', 'RESOLVED', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Done ', '2026-03-19 12:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_updates`
--

CREATE TABLE `complaint_updates` (
  `id` char(36) NOT NULL,
  `complaint_id` char(36) NOT NULL,
  `officer_id` char(36) NOT NULL,
  `message` text NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES
('7aace23a-2cea-411b-8f7c-135772a6c612', 'Electricity', NULL, 1, '2026-03-16 05:25:47'),
('a75fddcc-62f4-4ed5-8caa-7885d54231ea', 'Water Supply', NULL, 1, '2026-03-16 05:25:47'),
('cabf9c1b-3559-4db6-a560-f96d43e24965', 'Sanitation', NULL, 1, '2026-03-16 05:25:47'),
('cbd6f3c3-b68c-41b8-aa39-a0fa3b7959e3', 'Roads & Infrastructure', NULL, 1, '2026-03-16 05:25:47'),
('e2b43231-c851-4ac9-8da5-b48aa1777b1a', 'General Maintenance', NULL, 1, '2026-03-16 05:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `issue_groups`
--

CREATE TABLE `issue_groups` (
  `id` varchar(36) NOT NULL,
  `category` varchar(100) NOT NULL,
  `center_lat` double NOT NULL,
  `center_lng` double NOT NULL,
  `radius_meters` float DEFAULT NULL,
  `complaint_count` int(11) DEFAULT NULL,
  `avg_severity` varchar(20) DEFAULT NULL,
  `status` enum('ACTIVE','RESOLVED') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_groups`
--

INSERT INTO `issue_groups` (`id`, `category`, `center_lat`, `center_lng`, `radius_meters`, `complaint_count`, `avg_severity`, `status`, `created_at`, `updated_at`) VALUES
('8645d5e7-577a-41fa-bdda-ac2f6a00731e', 'Other', 13.0895, 80.2739, 2000, 2, 'MEDIUM', 'ACTIVE', '2026-03-31 03:43:49', '2026-03-31 03:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(36) NOT NULL,
  `recipient_id` varchar(36) NOT NULL,
  `complaint_id` varchar(36) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` enum('STATUS_UPDATE','NEW_ISSUE','ASSIGNMENT','RESOLUTION','SYSTEM') NOT NULL,
  `priority` enum('LOW','MEDIUM','HIGH') DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `recipient_id`, `complaint_id`, `title`, `message`, `type`, `priority`, `is_read`, `created_at`, `image_url`) VALUES
('08a08a30-df32-417e-a632-e78d81c7db79', 'c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '965577bd-9079-4bbf-8059-7628aba08397', 'You have been assigned to an issue', 'You have been assigned to complaint \'jdfnvdjnvnsdvkjn\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-31 03:44:30', NULL),
('0be38183-3501-4f3a-ad6b-a7e584288700', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '792239a1-a72f-452e-814a-855a41385630', 'New broken_infrastructure issue reported', 'A new complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-30 05:34:31', NULL),
('17b4383f-e6d8-41c2-b75d-06bb76496052', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '5e2bdc6b-538a-44aa-bced-a82a7819a93d', 'Your complaint has been resolved', 'Your complaint \'The road is too damaged Clear Asap \' has been resolved. Notes: Done as per your request. Thanks for being a responsible citizen.\n', 'RESOLUTION', 'MEDIUM', 1, '2026-03-16 06:37:01', NULL),
('1a5a8bfe-d2b7-491b-a344-e856b78bffc7', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '9ad67bf5-f99f-4b04-aa5c-12517a17a733', 'New Other issue reported', 'A new complaint \'Clear the garbage \' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-31 03:42:10', NULL),
('2f01b4da-18a4-444e-8325-0f49a30cbd10', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'Complaint status updated to IN_PROGRESS', 'Your complaint \'Clear the dumping yard\' status changed from ASSIGNED to IN_PROGRESS.', 'STATUS_UPDATE', 'MEDIUM', 1, '2026-03-19 12:07:44', NULL),
('35ab1eea-e081-4f70-81f7-55a7b674afd8', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '5582ebb5-370d-4344-ba6b-49c4a1ca1347', 'New Street Light issue reported', 'A new complaint \'Clear it\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-16 09:02:15', NULL),
('386e878c-2c09-468a-9f30-3c081e84aa3a', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '79ca82dd-a112-45bd-a956-8f55b875194c', 'Your issue has been assigned', 'Your complaint \'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 0, '2026-03-31 10:47:04', NULL),
('39115896-1652-4a8e-addc-3ccb0e5775d7', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'New Waste Collection issue reported', 'A new complaint \'Clear the dumping yard\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-19 08:30:13', NULL),
('3fb15976-d965-4ea6-89aa-6c57d598e973', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '965577bd-9079-4bbf-8059-7628aba08397', 'New Other issue reported', 'A new complaint \'jdfnvdjnvnsdvkjn\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-31 03:43:49', NULL),
('4147bc86-24f8-4561-bb8e-e40d2590e5f3', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'You have been assigned to an issue', 'You have been assigned to complaint \'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-23 08:15:46', NULL),
('42c54fd0-ae61-4251-b361-f2bb36998ce2', 'c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '79ca82dd-a112-45bd-a956-8f55b875194c', 'You have been assigned to an issue', 'You have been assigned to complaint \'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-31 10:47:09', NULL),
('445afff0-2f82-4f8d-b89d-34bee41cd8ca', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '2c0f8db2-a82a-42b6-83f0-9c722d604de1', 'Your complaint has been resolved', 'Your complaint \'The white dashed center line and solid edge lines show minor fading and wear, indicating a cosmetic \' has been resolved. Notes: completed successfully ', 'RESOLUTION', 'MEDIUM', 1, '2026-03-17 08:58:52', '/uploads/bf82a370766f405fab4a770ba6de3cd4.jpg'),
('53a3b2e4-5751-4513-a58e-1a491d68c44f', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'Your complaint has been resolved', 'Your complaint \'Clear the dumping yard\' has been resolved. Notes: Done ', 'RESOLUTION', 'MEDIUM', 1, '2026-03-19 12:08:23', '/uploads/7e88fac36f154c85b050c534740e034f.jpg'),
('59ca7471-4840-4bb0-a35d-2b0944fa386e', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '5582ebb5-370d-4344-ba6b-49c4a1ca1347', 'Your complaint has been resolved', 'Your complaint \'Clear it\' has been resolved. Notes: Done', 'RESOLUTION', 'MEDIUM', 1, '2026-03-17 08:18:11', NULL),
('61a72459-1915-4e2a-884d-ff31b0611a65', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'Complaint status updated to IN_PROGRESS', 'Your complaint \'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door\' status changed from ASSIGNED to IN_PROGRESS.', 'STATUS_UPDATE', 'MEDIUM', 1, '2026-03-23 08:15:52', NULL),
('661b561f-ce9b-402c-819a-fb244ff403ac', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '79ca82dd-a112-45bd-a956-8f55b875194c', 'Your issue has been assigned', 'Your complaint \'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 0, '2026-03-31 10:47:09', NULL),
('66a0aaee-7bed-4e59-8c6c-9a06d84083fe', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '792239a1-a72f-452e-814a-855a41385630', 'Your issue has been assigned', 'Your complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 1, '2026-03-30 05:37:04', NULL),
('7e744bfc-42ab-4e35-ae7d-9ec3a42f583f', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'Your issue has been assigned', 'Your complaint \'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 1, '2026-03-23 08:15:46', NULL),
('8294cad5-54c3-45cc-ab4c-cb157574dd89', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '5e2bdc6b-538a-44aa-bced-a82a7819a93d', 'New Drainage issue reported', 'A new complaint \'The road is too damaged Clear Asap \' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-16 06:32:03', NULL),
('87b2aa77-e737-4b19-b1e7-8daa1f3800e8', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '792239a1-a72f-452e-814a-855a41385630', 'Your issue has been assigned', 'Your complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 1, '2026-03-30 05:35:32', NULL),
('9b139190-c831-4468-a557-5cd6c0996a07', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '792239a1-a72f-452e-814a-855a41385630', 'Complaint status updated to IN_PROGRESS', 'Your complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\' status changed from ASSIGNED to IN_PROGRESS.', 'STATUS_UPDATE', 'MEDIUM', 1, '2026-03-30 05:37:06', NULL),
('9e96753f-f504-4b23-9695-68d92c82f1c8', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '876241b1-177e-46c8-b565-2888b9df06ab', 'New water_leakage issue reported', 'A new complaint \'A pipe joint is actively leaking a steady stream of water, indicating a plumbing issue leading to wa\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-30 03:14:32', NULL),
('9ebb54ff-9ae0-446e-9fa6-230d34d03936', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', '79ca82dd-a112-45bd-a956-8f55b875194c', 'You have been assigned to an issue', 'You have been assigned to complaint \'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-31 10:47:04', NULL),
('b476f7e2-e405-451c-9811-019cae582b4e', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '79ca82dd-a112-45bd-a956-8f55b875194c', 'Complaint status updated to IN_PROGRESS', 'Your complaint \'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s\' status changed from ASSIGNED to IN_PROGRESS.', 'STATUS_UPDATE', 'MEDIUM', 0, '2026-03-31 10:47:14', NULL),
('b554e0ea-a8b1-4070-a27b-5db57c998179', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', '792239a1-a72f-452e-814a-855a41385630', 'You have been assigned to an issue', 'You have been assigned to complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-30 05:37:04', NULL),
('bfbefc91-4810-411c-9091-ea6988519ca0', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '792239a1-a72f-452e-814a-855a41385630', 'Complaint status updated to IN_PROGRESS', 'Your complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\' status changed from ASSIGNED to IN_PROGRESS.', 'STATUS_UPDATE', 'MEDIUM', 1, '2026-03-30 05:36:58', NULL),
('ca12540b-2611-46f0-b5a3-5248b49c3d42', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '79ca82dd-a112-45bd-a956-8f55b875194c', 'New garbage issue reported', 'A new complaint \'Widespread litter, including cans and paper, is scattered across the grassy area of a public park, s\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-31 10:44:44', NULL),
('d1b487e5-0587-4211-805f-e4e0a2abba38', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '2c0f8db2-a82a-42b6-83f0-9c722d604de1', 'New road_damage issue reported', 'A new complaint \'The white dashed center line and solid edge lines show minor fading and wear, indicating a cosmetic \' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-17 08:17:06', NULL),
('d30bc51c-10d9-4089-acdc-300e81300e75', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'New Other issue reported', 'A new complaint \'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door\' has been filed and needs attention.', 'NEW_ISSUE', 'MEDIUM', 1, '2026-03-23 08:14:45', NULL),
('d638d3df-1a66-40f1-96f0-a6aa3aa05718', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'You have been assigned to an issue', 'You have been assigned to complaint \'Clear the dumping yard\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-19 12:07:34', NULL),
('db83707e-3b55-445c-92d8-61852d7c8f22', 'c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', '792239a1-a72f-452e-814a-855a41385630', 'You have been assigned to an issue', 'You have been assigned to complaint \'A severely leaning and likely broken utility pole, supported precariously by wires and a tree, poses\'.', 'ASSIGNMENT', 'HIGH', 0, '2026-03-30 05:35:32', NULL),
('e7b7c7fc-f904-4f86-b276-37814dbb6943', '2aceba95-70d7-4131-8a11-8b4fc9246fec', '965577bd-9079-4bbf-8059-7628aba08397', 'Your issue has been assigned', 'Your complaint \'jdfnvdjnvnsdvkjn\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 1, '2026-03-31 03:44:30', NULL),
('f5ce4b03-d038-40f9-9950-c03e7335a4d2', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'b6e3e8c7-bace-4db1-a58d-462b972f2247', 'Your complaint has been resolved', 'Your complaint \'Minor accumulation of dust and discoloration is visible along the floor edge where it meets the door\' has been resolved. Notes: done 👍✅', 'RESOLUTION', 'MEDIUM', 1, '2026-03-24 03:52:25', '/uploads/21cb277714dd415c8942d9efe9bfe206.jpg'),
('f9ef7479-3e47-40bc-80d8-043cf5496d07', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'd0e0e992-2bd9-44f8-a22c-2f4d7cf78cf2', 'Your issue has been assigned', 'Your complaint \'Clear the dumping yard\' has been assigned to an officer.', 'ASSIGNMENT', 'MEDIUM', 1, '2026-03-19 12:07:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `workload_count` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `user_id`, `department`, `designation`, `workload_count`, `is_available`) VALUES
('96499ce1-5192-4e78-8479-fe1184f07283', 'c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', 'General Maintenance', 'Senior Inspector ', 3, 1),
('a7f2ef5b-92c5-47ba-8491-54a777f75707', '9d778c2b-4569-4164-9ba1-57f6bcbedf33', 'Sanitation', 'Senior Inspector ', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `purpose` enum('EMAIL_VERIFY','PASSWORD_RESET') NOT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `user_id`, `otp_code`, `purpose`, `is_used`, `expires_at`, `created_at`) VALUES
('1b0dd602-6755-4eba-9096-9b2ef1878eb3', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '595910', 'PASSWORD_RESET', 1, '2026-03-17 08:14:55', '2026-03-17 04:43:59'),
('1ba696c6-e4fc-4479-96f5-13ecb51d265a', 'ef11a8c2-5a37-4fd2-a065-0e6269ffecb1', '337375', 'EMAIL_VERIFY', 1, '2026-03-23 03:27:17', '2026-03-23 03:25:12'),
('2566ad39-7d5f-4fdc-8863-1e7c677ebf97', '718d64f7-48dc-46d0-b457-9eaf3b0b2814', '659518', 'PASSWORD_RESET', 0, '2026-03-17 07:52:54', '2026-03-17 07:42:54'),
('4299b1ca-7970-40e9-bea6-5264996a1a27', '10082877-eb8c-4fcb-b85f-3242bf8445d9', '577849', 'EMAIL_VERIFY', 0, '2026-03-16 06:23:28', '2026-03-16 06:13:28'),
('4645c255-12a4-4498-9e3a-c1e37d3b5651', '1a7e887f-e48f-4cba-962b-859479a289e4', '453391', 'PASSWORD_RESET', 0, '2026-03-17 04:36:29', '2026-03-17 04:26:29'),
('48149fe0-35ad-4228-a7bd-67c6dcce1256', 'ce04a93f-89ef-4a73-85b5-f1471a338fa8', '970016', 'EMAIL_VERIFY', 0, '2026-03-25 08:31:01', '2026-03-25 08:21:01'),
('48e8e4ef-4176-4bc0-ad95-dab4cc2af866', '71cddb9f-9822-4bc2-aac8-fc56c48a463b', '759268', 'EMAIL_VERIFY', 0, '2026-03-31 03:34:58', '2026-03-31 03:24:58'),
('60bff8f4-e9c2-4fc2-a88c-4b73ca80775c', '1a7e887f-e48f-4cba-962b-859479a289e4', '589065', 'PASSWORD_RESET', 0, '2026-03-17 07:56:53', '2026-03-17 07:46:53'),
('611ad1f3-a7e0-4324-a1fe-8b44f7a13e98', '2aceba95-70d7-4131-8a11-8b4fc9246fec', '970897', 'EMAIL_VERIFY', 1, '2026-03-31 03:28:31', '2026-03-31 03:27:19'),
('62d212e1-ae43-43ab-9a60-0fc60044ae46', '45e3b000-7512-44a1-b418-4f9534d6bf11', '635522', 'EMAIL_VERIFY', 0, '2026-03-25 08:29:14', '2026-03-25 08:19:14'),
('655e39b0-d27e-4900-9672-ee620c1f4237', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '223488', 'PASSWORD_RESET', 1, '2026-03-16 08:50:34', '2026-03-16 08:49:58'),
('6d3264d5-27a1-4c88-9e08-343bcd585882', '71cddb9f-9822-4bc2-aac8-fc56c48a463b', '646071', 'EMAIL_VERIFY', 1, '2026-03-31 03:24:58', '2026-03-31 03:21:10'),
('7b15af97-2a2a-4416-ba0c-89ae7abb07db', 'cbef6731-7fef-4a1c-9479-5a2026f15c01', '759346', 'EMAIL_VERIFY', 1, '2026-03-16 06:18:11', '2026-03-16 06:17:14'),
('7d901b99-0599-44e4-9873-32e6111ba3a6', '65900342-1647-4651-a9cc-810304d17518', '405575', 'EMAIL_VERIFY', 0, '2026-03-29 15:01:45', '2026-03-29 14:51:45'),
('83541708-02de-4cff-b878-ea33c354c79d', 'feda021d-359c-44e7-b549-2d98c8d44844', '677370', 'EMAIL_VERIFY', 0, '2026-03-17 04:57:00', '2026-03-17 04:47:00'),
('86c69a50-cac1-4a69-81b8-fabdda0b8042', 'e46e0749-8e18-4945-b96a-6d244dbed408', '371927', 'EMAIL_VERIFY', 0, '2026-03-17 04:59:01', '2026-03-17 04:49:01'),
('91748d03-657c-4b58-a794-b2b954baf71e', '8d7e16ce-314d-478c-a4f1-c03a99c0d14f', '137427', 'EMAIL_VERIFY', 1, '2026-03-29 14:57:21', '2026-03-29 14:56:34'),
('924b2f87-fe04-4c6d-8774-67ddb7983818', 'a10b9ff5-bffb-4485-b06f-81acf137fa94', '947682', 'EMAIL_VERIFY', 1, '2026-03-16 09:40:42', '2026-03-16 09:39:58'),
('9525b8a6-ca09-4b37-9d98-86201410afd5', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '174873', 'EMAIL_VERIFY', 1, '2026-03-16 06:21:54', '2026-03-16 06:21:32'),
('97168fb4-29c4-42be-81d0-e2b75dedbe99', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '841032', 'PASSWORD_RESET', 1, '2026-03-17 08:14:55', '2026-03-17 08:14:16'),
('9eece486-a433-4640-adca-1fad4581abb1', '10082877-eb8c-4fcb-b85f-3242bf8445d9', '738428', 'EMAIL_VERIFY', 1, '2026-03-16 06:12:40', '2026-03-16 06:12:19'),
('bea8ab42-e129-4ce0-bfab-aee179fead48', '1a7e887f-e48f-4cba-962b-859479a289e4', '515711', 'EMAIL_VERIFY', 0, '2026-03-16 08:03:59', '2026-03-16 07:53:59'),
('c09d2b86-6c88-48a8-a05a-141b23d5a468', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '592450', 'PASSWORD_RESET', 1, '2026-03-17 08:14:55', '2026-03-17 07:21:13'),
('c19e8e6a-bfc2-4536-98ef-03c7e8d88625', 'ef11a8c2-5a37-4fd2-a065-0e6269ffecb1', '539314', 'EMAIL_VERIFY', 0, '2026-03-23 03:37:17', '2026-03-23 03:27:17'),
('dd2c9e65-8ee2-4d0a-991f-a2d98ee98ccc', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '279468', 'PASSWORD_RESET', 1, '2026-03-17 08:14:55', '2026-03-17 06:53:32'),
('ddc2fe0d-e8c9-4ab2-8df0-ed5190268d59', '708cc678-4f8b-4c96-ac64-9a58811f68df', '345715', 'EMAIL_VERIFY', 1, '2026-03-16 06:23:44', '2026-03-16 06:23:24'),
('dec6cde4-0dde-4399-81b8-1f625edd6faf', 'a8ede502-1172-4f46-94a2-fad9bc4beb83', '481173', 'EMAIL_VERIFY', 1, '2026-03-23 03:31:48', '2026-03-23 03:31:18'),
('e543f300-c541-48eb-8ca5-53d2e2dcaaef', '63c029c0-7a28-42b3-bc3b-22f16ad44feb', '813002', 'PASSWORD_RESET', 1, '2026-03-17 08:14:55', '2026-03-16 10:48:54'),
('f108213a-8acf-4be4-9127-929df6412f52', '4bd9d468-5ca7-49a1-a64f-75a25225c380', '826036', 'EMAIL_VERIFY', 1, '2026-03-31 02:39:50', '2026-03-31 02:39:25'),
('f3c847ea-d9fd-421e-a724-feccc62601fe', '718d64f7-48dc-46d0-b457-9eaf3b0b2814', '855950', 'PASSWORD_RESET', 0, '2026-03-17 07:43:30', '2026-03-17 07:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id` varchar(36) NOT NULL,
  `action` varchar(100) NOT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` varchar(36) DEFAULT NULL,
  `performed_by` varchar(36) NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`id`, `action`, `entity_type`, `entity_id`, `performed_by`, `details`, `created_at`) VALUES
('89190338-0d21-4175-a951-c3f1135e97bb', 'CREATE_OFFICER', 'officer', '96499ce1-5192-4e78-8479-fe1184f07283', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '{\"full_name\": \"Radhan\", \"email\": \"vastralamadhavi899@gmail.com\"}', '2026-03-19 12:07:19'),
('9a850cb9-81bf-479b-9be7-d14eb8a397b1', 'CREATE_OFFICER', 'officer', 'a7f2ef5b-92c5-47ba-8491-54a777f75707', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '{\"full_name\": \"maanasa\", \"email\": \"pullamsetty.maanasa2731@gmail.com\"}', '2026-03-19 12:05:21'),
('f4ee0250-53cd-43c2-b448-0451870d24bf', 'CREATE_CATEGORY', 'category', '1efe0ac6-bb7f-4d24-a9c9-63307e87e125', '8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', '{\"name\": \"Building Damage\"}', '2026-03-25 08:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('citizen','admin','officer') NOT NULL,
  `avatar_url` varchar(500) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone_number`, `country_code`, `password_hash`, `role`, `avatar_url`, `is_verified`, `created_at`, `updated_at`) VALUES
('2aceba95-70d7-4131-8a11-8b4fc9246fec', 'Nanda', 'nandav2427@gmail.com', '8074484384', '+91', '$2b$12$JKM9YZ5ukDg924srN2CklexICM44NJjE1hKF19kUxQE91d3KTPOVu', 'citizen', NULL, 1, '2026-03-31 03:27:19', '2026-03-31 03:28:31'),
('4bd9d468-5ca7-49a1-a64f-75a25225c380', 'Nandana', 'vasthralavenkatasunanda0429.sse@saveetha.com', '8074484384', '+91', '$2b$12$SBNxybtWQaMn5Po3duIFduVCEp4pA4XTO3S76GLVEO1ub1lkZnBki', 'citizen', NULL, 1, '2026-03-31 02:39:25', '2026-03-31 02:39:50'),
('63c029c0-7a28-42b3-bc3b-22f16ad44feb', 'Sunanda Vastrala ', 'SunandaVastrala@gmail.com', '8074484384', '+91', '$2b$12$lj3m/M0wnaXR1g4aQNhUrOL98iDgnjfI2nefHAIcGg4lL8qNpWcTa', 'citizen', NULL, 1, '2026-03-16 06:21:32', '2026-03-27 04:23:44'),
('718d64f7-48dc-46d0-b457-9eaf3b0b2814', 'nandana', 'dadysdaughter88@gmail.com', '8074484384', '+91', '$2b$12$BgCL8775dq9jiVbDoPM26e521Ku5f0ofywffW3YeefAgN1ke.2Awe', 'citizen', NULL, 0, '2026-03-17 04:51:30', '2026-03-17 04:51:30'),
('71cddb9f-9822-4bc2-aac8-fc56c48a463b', '12345789', '1@gmail.co', '8088800008', '+91', '$2b$12$QJHFhx1jDr0Xnsm2232wJe0Sb3QCYuKwSCeX3ge5rIr72jyuwgNp6', 'citizen', NULL, 0, '2026-03-31 03:21:10', '2026-03-31 03:21:10'),
('8458fc96-34fe-4441-87e3-3ecb9d9ed7ed', 'Admin', 'admin@civicissue.com', NULL, NULL, '$2b$12$O7TY/tzQbB6a0shK0O7g9OWUN7r5GeSoM3cW3j5nHyFYrMz7M9te.', 'admin', NULL, 1, '2026-03-16 05:25:47', '2026-03-16 05:25:47'),
('8d7e16ce-314d-478c-a4f1-c03a99c0d14f', 'Maanasa Pullamsetty', 'pullamsetty.maanasa27@gmail.com', '9966332255', '+91', '$2b$12$xiQPXSw85BNhDMJRLm1Yi.tvqW7Bqg7stQPSioSA0i2sc4dSwb00q', 'citizen', NULL, 1, '2026-03-29 14:56:34', '2026-03-29 14:57:21'),
('9d778c2b-4569-4164-9ba1-57f6bcbedf33', 'maanasa', 'pullamsetty.maanasa2731@gmail.com', '9632580741', NULL, '$2b$12$UEkAEJORNA5.Rjqgpf1ms.Vw12UApveNSPozthv9QF7DlbULUjwVi', 'officer', NULL, 1, '2026-03-19 12:05:21', '2026-03-19 12:05:21'),
('a10b9ff5-bffb-4485-b06f-81acf137fa94', 'SunandaVastrala', 'nandamma01@gmail.com', '8074484384', '+91', '$2b$12$xONK0rNkFnlTJqqoq7PcG.XyFElSDxGE3kZDBIWKBUdcpwRE7G1RS', 'citizen', NULL, 1, '2026-03-16 09:39:58', '2026-03-16 09:40:42'),
('a8ede502-1172-4f46-94a2-fad9bc4beb83', 'sree', 'muramreddysreeja0547.sse@saveetha.com', '9632587412', '+91', '$2b$12$5Y8jP.5CckbNRId7EVlNZuP1KJn5lv4aYq9A6uu3yM4I0vn7N2x.q', 'citizen', NULL, 1, '2026-03-23 03:31:18', '2026-03-23 03:31:48'),
('c4917bc3-d35b-4f31-b15e-54e8a68d6f3c', 'Radhan', 'vastralamadhavi899@gmail.com', '9951122622', NULL, '$2b$12$cNXlylXoQznlvsY/5zAeMeQZ8MmoQuRXWNYxUn6A5MTelVA2zBppS', 'officer', NULL, 1, '2026-03-19 12:07:19', '2026-03-19 12:07:19'),
('ce04a93f-89ef-4a73-85b5-f1471a338fa8', 'john12', 'homiezz2504@gmail.com', '0000000000', '+91', '$2b$12$hg98ASxhv/14cPGCbcvDF.XTPml/amfMi1ScxYzaGeBLcn9pWnHby', 'citizen', NULL, 0, '2026-03-25 08:21:01', '2026-03-25 08:21:01'),
('e46e0749-8e18-4945-b96a-6d244dbed408', 'nandamma', 'mallupardhiva@gmail.com', '8074484384', '+91', '$2b$12$jjMAXIlkt0phMpriYpAIAuFKMnqnQy1UqODnx2dAzvVeP8GuhiYS.', 'citizen', NULL, 0, '2026-03-17 04:49:01', '2026-03-17 04:49:01'),
('ef11a8c2-5a37-4fd2-a065-0e6269ffecb1', 'Sreeja', 'muramreddysreeja@gmail.com', '9966338822', '+91', '$2b$12$DqTbTezv0g6.b1E3McSwNebE/J24Bzfc7K5dTAo.o3Or1j6b7/gj2', 'citizen', NULL, 0, '2026-03-23 03:25:12', '2026-03-23 03:25:12'),
('feda021d-359c-44e7-b549-2d98c8d44844', 'test', 'test123@gmail.com', '1234567890', '+91', '$2b$12$QB4nWkcbTsVdmctsgA9P/O.81sQ04j5pJuwHD5g1qgHKNJqIC.h7O', 'citizen', NULL, 0, '2026-03-17 04:47:00', '2026-03-17 04:47:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot_sessions`
--
ALTER TABLE `chatbot_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complaint_number` (`complaint_number`);

--
-- Indexes for table `complaint_images`
--
ALTER TABLE `complaint_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_status_history`
--
ALTER TABLE `complaint_status_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_updates`
--
ALTER TABLE `complaint_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_id` (`complaint_id`),
  ADD KEY `officer_id` (`officer_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `issue_groups`
--
ALTER TABLE `issue_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint_updates`
--
ALTER TABLE `complaint_updates`
  ADD CONSTRAINT `complaint_updates_ibfk_1` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`),
  ADD CONSTRAINT `complaint_updates_ibfk_2` FOREIGN KEY (`officer_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
