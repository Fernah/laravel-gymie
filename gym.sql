-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 03:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\User', 'staff', '20211102_091110', 'staff_2jpg', 'media', 1168467, '[]', '[]', 1, '2021-11-17 20:52:12', '2021-11-17 20:52:12'),
(2, 3, 'App\\User', 'staff', '20210819_081754', 'staff_3jpg', 'media', 2311511, '[]', '[]', 2, '2021-11-20 18:39:19', '2021-11-20 18:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2018_03_07_055231_create_media_table', 1),
('2018_03_07_055231_create_mst_enquiries_table', 1),
('2018_03_07_055231_create_mst_expenses_categories_table', 1),
('2018_03_07_055231_create_mst_members_table', 1),
('2018_03_07_055231_create_mst_plans_table', 1),
('2018_03_07_055231_create_mst_services_table', 1),
('2018_03_07_055231_create_mst_sms_events_table', 1),
('2018_03_07_055231_create_mst_sms_triggers_table', 1),
('2018_03_07_055231_create_mst_users_table', 1),
('2018_03_07_055231_create_password_resets_table', 1),
('2018_03_07_055231_create_permission_role_table', 1),
('2018_03_07_055231_create_permissions_table', 1),
('2018_03_07_055231_create_role_user_table', 1),
('2018_03_07_055231_create_roles_table', 1),
('2018_03_07_055231_create_trn_access_log_table', 1),
('2018_03_07_055231_create_trn_cheque_details_table', 1),
('2018_03_07_055231_create_trn_enquiry_followups_table', 1),
('2018_03_07_055231_create_trn_expenses_table', 1),
('2018_03_07_055231_create_trn_invoice_details_table', 1),
('2018_03_07_055231_create_trn_invoice_table', 1),
('2018_03_07_055231_create_trn_payment_details_table', 1),
('2018_03_07_055231_create_trn_settings_table', 1),
('2018_03_07_055231_create_trn_sms_log_table', 1),
('2018_03_07_055231_create_trn_subscriptions_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_enquiries_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_expenses_categories_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_members_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_plans_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_services_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_sms_events_table', 1),
('2018_03_07_055232_add_foreign_keys_to_permission_role_table', 1),
('2018_03_07_055232_add_foreign_keys_to_role_user_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_access_log_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_cheque_details_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_enquiry_followups_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_expenses_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_invoice_details_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_invoice_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_payment_details_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_subscriptions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_enquiries`
--

CREATE TABLE `mst_enquiries` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Unique record ID',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Lost , 1 = Lead  , 2 =Member',
  `contact` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pin_code` int(11) NOT NULL,
  `occupation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_by` date NOT NULL,
  `interested_in` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `aim` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_expenses_categories`
--

CREATE TABLE `mst_expenses_categories` (
  `id` int(11) NOT NULL COMMENT 'Unique Record Id for system',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'category name',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_members`
--

CREATE TABLE `mst_members` (
  `id` int(11) NOT NULL COMMENT 'Unique Record Id for system',
  `member_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unique member id for reference',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'member''s name',
  `photo` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'member''s photo',
  `DOB` date NOT NULL COMMENT 'member''s date of birth',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'member''s email id',
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'member''s address',
  `status` tinyint(1) NOT NULL COMMENT '0 for inactive , 1 for active',
  `proof_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name of the proof provided by member',
  `proof_photo` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'photo of the proof',
  `gender` char(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'member''s gender',
  `contact` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'member''s contact number',
  `emergency_contact` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `health_issues` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pin_code` int(11) NOT NULL,
  `occupation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `aim` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_plans`
--

CREATE TABLE `mst_plans` (
  `id` int(11) NOT NULL COMMENT 'Unique Record Id for system',
  `plan_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unique plan id for reference',
  `service_id` int(11) NOT NULL,
  `plan_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name of the plan',
  `plan_details` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'plan details',
  `days` int(11) NOT NULL COMMENT 'duration of the plans in days',
  `amount` int(11) NOT NULL COMMENT 'amount to charge for the plan',
  `status` tinyint(1) NOT NULL COMMENT '0 for inactive , 1 for active',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_services`
--

CREATE TABLE `mst_services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_sms_events`
--

CREATE TABLE `mst_sms_events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `send_to` int(11) NOT NULL COMMENT '0 = active members , 1 = inactive members , 2= lead enquiries , 3 = lost enquiries',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_sms_triggers`
--

CREATE TABLE `mst_sms_triggers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_sms_triggers`
--

INSERT INTO `mst_sms_triggers` (`id`, `name`, `alias`, `message`, `status`, `updated_at`) VALUES
(1, 'Member admission (Paid)', 'member_admission_with_paid_invoice', 'Hi %s , Welcome to %s . Your payment of Rs %u against your invoice no. %s has been received. Thank you and we hope to see you in action soon. Good day!', 0, '2021-11-17 21:44:41'),
(2, 'Member admission (Partial)', 'member_admission_with_partial_invoice', 'Hi %s , Welcome to %s . Your payment of Rs %u against your invoice no. %s has been received. Outstanding payment to be cleared is Rs %u .Thank you!', 0, '2021-11-17 21:44:41'),
(3, 'Member admission (Unpaid)', 'member_admission_with_unpaid_invoice', 'Hi %s , Welcome to %s . Your payment of Rs %u is pending against your invoice no. %s . Thank you!', 0, '2021-11-17 21:44:41'),
(4, 'Enquiry placement', 'enquiry_placement', 'Hi %s , Thank you for your enquiry with %s . We would love to hear from you soon. Good day!', 0, '2021-11-17 21:44:41'),
(5, 'Followup', 'followup', 'Hi %s , This is regarding the inquiry you placed at %s . Let us know by when would you like to get started? Good day!', 0, '2021-11-17 21:44:41'),
(6, 'Subscription renewal (Paid)', 'subscription_renewal_with_paid_invoice', 'Hi %s , Your subscription has been renewed successfully. Your payment of Rs %u against your invoice no. %s  has been received. Thank you!', 0, '2021-11-17 21:44:41'),
(7, 'Subscription renewal (Partial)', 'subscription_renewal_with_partial_invoice', 'Hi %s , Your subscription has been renewed successfully. Your payment of Rs %u against your invoice no. %s has been received. Outstanding payment to be cleared is Rs %u . Thank you!', 0, '2021-11-17 21:44:41'),
(8, 'Subscription renewal (Unpaid)', 'subscription_renewal_with_unpaid_invoice', 'Hi %s , Your subscription has been renewed successfully. Your payment of Rs %u is pending against your invoice no. %s . Thank you!', 0, '2021-11-17 21:44:41'),
(9, 'Subscription expiring', 'subscription_expiring', 'Hi %s ,  Last few days to renew your gym subscription. Kindly renew it before %s . Thank you!', 0, '2021-11-17 21:44:41'),
(10, 'Subscription expired', 'subscription_expired', 'Hi %s , Your gym subscription has been expired on %s . Kindly renew it soon!', 0, '2021-11-17 21:44:41'),
(11, 'Payment recieved', 'payment_recieved', 'Hi %s , Your payment of Rs %u  has been received against your invoice no. %s . Thank you!', 0, '2021-11-17 21:44:41'),
(12, 'Pending invoice', 'pending_invoice', 'Hi %s , Your payment of Rs %u is still pending against your invoice no. %s . Kindly clear it soon!', 0, '2021-11-17 21:44:41'),
(13, 'Expense alertexpense_alert', 'expense_alert', 'Hi , You have an expense lined up for%s of Rs %u on %s . Thank you!', 0, '2021-11-17 21:44:41'),
(14, 'Member birthday wishes', 'member_birthday', 'Hi %s , Team %s wishes you a very Happy birthday :) Enjoy your day!Payment with cheque', 0, '2021-11-17 21:44:41'),
(15, 'Payment with cheque', 'payment_with_cheque', 'Hi %s , your cheque of Rs %u with cheque no. %u has been recieved against your invoice no. %s . Regards %s .', 0, '2021-11-17 21:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `mst_users`
--

CREATE TABLE `mst_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_users`
--

INSERT INTO `mst_users` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gymie', 'admin@gymie.in', '$2y$10$bG52NjhEa6yfx1BLInxB0OKPV6t9n60RnqM7CRoHV5t8KPRBKWYKO', 1, 'srYyVrz2luUsnPWsKNakpFnYEIOI6xWOpTgtLnT8BuRjz0hf3OMsa0pzfzvs', '2021-11-17 20:44:42', '2021-11-20 18:38:15'),
(3, 'Fernandez ', 'fernandezmayen609@gmail.com', '$2y$10$IVqMQeNqjghpRJtZ10Mrn.PmSNmhfBsOAvaqofbFRWl6s59XklZTO', 1, NULL, '2021-11-20 18:38:08', '2021-11-20 18:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group_key`, `created_at`, `updated_at`) VALUES
(1, 'manage-gymie', 'Manage Gymie', '', 'Global', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(2, 'view-dashboard-quick-stats', 'View quick stats on dashboard', '', 'Dashboard', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(3, 'view-dashboard-charts', 'View charts on dashboard', '', 'Dashboard', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(4, 'view-dashboard-members-tab', 'View members tab on dashboard', '', 'Dashboard', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(5, 'view-dashboard-enquiries-tab', 'View enquiries tab on dashboard', '', 'Dashboard', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(6, 'add-member', 'Add member', '', 'Members', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(7, 'view-member', 'View member details', '', 'Members', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(8, 'edit-member', 'Edit member details', '', 'Members', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(9, 'delete-member', 'Delete member', '', 'Members', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(10, 'add-plan', 'Add plans', '', 'Plans', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(11, 'view-plan', 'View plan details', '', 'Plans', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(12, 'edit-plan', 'Edit plan details', '', 'Plans', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(13, 'delete-plan', 'Delete plans', '', 'Plans', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(14, 'add-subscription', 'Add subscription', '', 'Subscriptions', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(15, 'edit-subscription', 'Edit subscription details', '', 'Subscriptions', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(16, 'renew-subscription', 'Renew subscription', '', 'Subscriptions', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(17, 'view-invoice', 'View invoice', '', 'Invoices', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(18, 'add-payment', 'Add payments', '', 'Payments', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(19, 'view-subscription', 'View subscription details', '', 'Subscriptions', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(20, 'view-payment', 'View payment details', '', 'Payments', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(21, 'edit-payment', 'Edit payment details', '', 'Payments', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(22, 'manage-members', 'Manage members', '', 'Members', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(23, 'manage-plans', 'Manage plans', '', 'Plans', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(24, 'manage-subscriptions', 'Manage subscriptions', '', 'Subscriptions', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(25, 'manage-invoices', 'Manage invoices', '', 'Invoices', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(26, 'manage-payments', 'Manage payments', '', 'Payments', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(27, 'manage-users', 'Manage users', '', 'Users', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(28, 'add-enquiry', 'Add enquiry', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(29, 'view-enquiry', 'View enquiry details', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(30, 'edit-enquiry', 'Edit enquiry details', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(31, 'add-enquiry-followup', 'Add enquiry followup', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(32, 'edit-enquiry-followup', 'Edit enquiry followup', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(33, 'transfer-enquiry', 'Transfer enquiry', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(34, 'manage-enquiries', 'Manage enquiries', '', 'Enquiries', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(35, 'add-expense', 'Add expense', '', 'Expenses', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(36, 'view-expense', 'View expense details', '', 'Expenses', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(37, 'edit-expense', 'Edit expense details', '', 'Expenses', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(38, 'manage-expenses', 'Manage expenses', '', 'Expenses', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(39, 'add-expenseCategory', 'Add expense category', '', 'Expense Categories', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(40, 'view-expenseCategory', 'View expense categories', '', 'Expense Categories', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(41, 'edit-expenseCategory', 'Edit expense category details', '', 'Expense Categories', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(42, 'delete-expenseCategory', 'Delete expense category', '', 'Expense Categories', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(43, 'manage-expenseCategories', 'Manage expense categories', '', 'Expense Categories', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(44, 'manage-settings', 'Manage settings', '', 'Global', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(45, 'cancel-subscription', 'Cancel subscription', '', 'Subscriptions', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(46, 'manage-services', 'Manage services', '', 'Services', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(47, 'add-service', 'Add services', '', 'Services', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(48, 'edit-service', 'Edit service details', '', 'Services', '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(49, 'view-service', 'View service details', '', 'Services', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(50, 'manage-sms', 'Manage SMS', '', 'SMS', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(51, 'pagehead-stats', 'View pagehead counts', '', 'Global', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(52, 'view-dashboard-expense-tab', 'View expenses tab on dashboard', '', 'Dashboard', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(53, 'print-invoice', 'Print invoices', '', 'Invoices', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(54, 'delete-invoice', 'Delete invoices', '', 'Invoices', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(55, 'delete-subscription', 'Delete subscriptions', '', 'Subscriptions', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(56, 'delete-payment', 'Delete payment transactions', '', 'Payments', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(57, 'delete-expense', 'Delete expense details', '', 'Expenses', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(58, 'delete-service', 'Delete Service details', '', 'Services', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(59, 'add-discount', 'Add discount on a invoice', '', 'Invoices', '2021-11-17 20:44:42', '2021-11-17 20:44:42'),
(60, 'change-subscription', 'Upgrade or downgrade a subscription', '', 'Subscriptions', '2021-11-17 20:44:42', '2021-11-17 20:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 3),
(2, 4),
(3, 3),
(3, 4),
(4, 3),
(4, 4),
(5, 3),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 3),
(24, 4),
(25, 3),
(25, 4),
(26, 3),
(26, 4),
(27, 3),
(27, 4),
(28, 3),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 3),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 3),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 3),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 3),
(54, 4),
(55, 3),
(55, 4),
(56, 3),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Gymie', NULL, NULL, '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(2, 'Admin', NULL, NULL, '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(3, 'Manager', NULL, NULL, '2021-11-17 20:44:41', '2021-11-17 20:44:41'),
(4, 'Access all', 'Creator', 'access to everything ', '2021-11-20 18:37:11', '2021-11-20 18:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `trn_access_log`
--

CREATE TABLE `trn_access_log` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `record` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_cheque_details`
--

CREATE TABLE `trn_cheque_details` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = recieved , 1 = deposited , 2 = cleared , 3 = bounced',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_enquiry_followups`
--

CREATE TABLE `trn_enquiry_followups` (
  `id` int(10) UNSIGNED NOT NULL,
  `enquiry_id` int(10) UNSIGNED NOT NULL,
  `followup_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `outcome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Pending , 1 = Done',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_expenses`
--

CREATE TABLE `trn_expenses` (
  `id` int(11) NOT NULL COMMENT 'Unique Record Id for system',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name of the expense',
  `category_id` int(11) NOT NULL COMMENT 'name of the category of expense',
  `amount` int(11) NOT NULL COMMENT 'expense amount',
  `due_date` date NOT NULL COMMENT 'Due Date for the expense created',
  `repeat` tinyint(1) NOT NULL COMMENT '0 = never repeat , 1 = every day , 2 = every week , 3 = every month , 4 = every year',
  `paid` tinyint(1) NOT NULL COMMENT '0 = false , 1 = true i.e. paid',
  `note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_invoice`
--

CREATE TABLE `trn_invoice` (
  `id` int(11) NOT NULL COMMENT 'Unique Record Id for system',
  `member_id` int(11) NOT NULL COMMENT 'links to unique record id of mst_members',
  `total` int(11) NOT NULL COMMENT 'total fees/amount generated',
  `pending_amount` int(11) NOT NULL COMMENT 'pending amount',
  `note` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'note regarding payments',
  `status` tinyint(1) NOT NULL COMMENT '0 = Unpaid, 1 = Paid,  2 = Partial 3 = overpaid',
  `invoice_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'number of the inovice/reciept',
  `discount_percent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `discount_note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `tax` int(11) NOT NULL,
  `additional_fees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_invoice_details`
--

CREATE TABLE `trn_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL COMMENT 'links to unique record id of trn_invoice',
  `item_amount` int(11) NOT NULL COMMENT 'amount of the items',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `plan_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_payment_details`
--

CREATE TABLE `trn_payment_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL COMMENT 'links to unique record id of trn_invoice',
  `payment_amount` int(11) NOT NULL COMMENT 'amount of transaction being done',
  `mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '1 = Cash , 0 = Cheque',
  `note` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'misc. note',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_settings`
--

CREATE TABLE `trn_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trn_settings`
--

INSERT INTO `trn_settings` (`id`, `key`, `value`, `updated_at`) VALUES
(1, 'financial_start', '2021-11-14', '2021-11-17 21:49:58'),
(2, 'financial_end', '2022-09-21', '2021-11-17 21:49:58'),
(3, 'gym_logo', 'gym_logo.jpg', '2021-11-17 21:50:00'),
(4, 'gym_name', 'Fernandez Gym', '2021-11-17 21:49:58'),
(5, 'gym_address_1', 'Etoug-ebe', '2021-11-17 21:49:58'),
(6, 'gym_address_2', 'Baptist', '2021-11-17 21:49:58'),
(7, 'invoice_prefix', 'fcfa', '2021-11-17 21:49:58'),
(8, 'invoice_last_number', '0', '2021-11-17 21:49:58'),
(9, 'invoice_name_type', 'gym_logo', '2021-11-17 21:49:58'),
(10, 'invoice_number_mode', '1', '2021-11-17 21:49:58'),
(11, 'member_prefix', 'Gym', '2021-11-17 21:49:58'),
(12, 'member_last_number', '0', '2021-11-17 21:49:58'),
(13, 'member_number_mode', '1', '2021-11-17 21:49:58'),
(14, 'last_membership_check', '', '2021-11-17 21:44:41'),
(15, 'admission_fee', '10.000', '2021-11-17 21:49:58'),
(16, 'taxes', '18', '2021-11-17 21:49:58'),
(17, 'sms_api_key', '', '2021-11-17 21:44:41'),
(18, 'sms_sender_id', '', '2021-11-17 21:44:41'),
(19, 'sms', '1', '2021-11-17 21:49:58'),
(20, 'primary_contact', '675120124', '2021-11-17 21:49:58'),
(21, 'discounts', '5,10,15,20,25', '2021-11-17 21:49:58'),
(22, 'sms_balance', '0', '2021-11-17 21:44:41'),
(23, 'sms_request', '1', '2021-11-17 21:49:58'),
(24, 'sender_id_list', '', '2021-11-17 21:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `trn_sms_log`
--

CREATE TABLE `trn_sms_log` (
  `id` int(11) NOT NULL,
  `number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `shoot_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NA',
  `send_time` datetime NOT NULL,
  `sender_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_subscriptions`
--

CREATE TABLE `trn_subscriptions` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL COMMENT 'links to unique record id of mst_members',
  `invoice_id` int(11) NOT NULL COMMENT 'links to unique record id of trn_invoice',
  `plan_id` int(11) NOT NULL COMMENT 'links to unique record if of mst_plans',
  `start_date` date NOT NULL COMMENT 'start date of subscription',
  `end_date` date NOT NULL COMMENT 'end date of subscription',
  `status` tinyint(1) NOT NULL COMMENT '0 = expired, 1 = ongoing, 2 = renewed, 3 = canceled',
  `is_renewal` tinyint(1) NOT NULL COMMENT '0= false , 1=true',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `mst_enquiries`
--
ALTER TABLE `mst_enquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_enquiries_mst_staff_1` (`created_by`),
  ADD KEY `FK_mst_enquiries_mst_staff_2` (`updated_by`);

--
-- Indexes for table `mst_expenses_categories`
--
ALTER TABLE `mst_expenses_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_expenses_categories_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_expenses_categories_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_members`
--
ALTER TABLE `mst_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_id` (`member_code`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD KEY `FK_mst_members_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_members_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_plans`
--
ALTER TABLE `mst_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_id` (`plan_code`),
  ADD KEY `FK_mst_plans_mst_services` (`service_id`),
  ADD KEY `FK_mst_plans_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_plans_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_services`
--
ALTER TABLE `mst_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_services_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_services_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_sms_events`
--
ALTER TABLE `mst_sms_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_sms_events_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_sms_events_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_sms_triggers`
--
ALTER TABLE `mst_sms_triggers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_users`
--
ALTER TABLE `mst_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `trn_access_log`
--
ALTER TABLE `trn_access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_activities_mst_users_1` (`user_id`);

--
-- Indexes for table `trn_cheque_details`
--
ALTER TABLE `trn_cheque_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_cheque_details_trn_payment_details` (`payment_id`),
  ADD KEY `FK_trn_cheque_details_mst_users` (`created_by`),
  ADD KEY `FK_trn_cheque_details_mst_users_2` (`updated_by`);

--
-- Indexes for table `trn_enquiry_followups`
--
ALTER TABLE `trn_enquiry_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_enquiry_followups_mst_enquiries_1` (`enquiry_id`),
  ADD KEY `FK_trn_enquiry_followups_mst_staff_2` (`created_by`),
  ADD KEY `FK_trn_enquiry_followups_mst_staff_3` (`updated_by`);

--
-- Indexes for table `trn_expenses`
--
ALTER TABLE `trn_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_expenses_mst_expenses_categories_1` (`category_id`),
  ADD KEY `FK_trn_expenses_mst_users_2` (`created_by`),
  ADD KEY `FK_trn_expenses_mst_users_3` (`updated_by`);

--
-- Indexes for table `trn_invoice`
--
ALTER TABLE `trn_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_invoice_mst_members_1` (`member_id`),
  ADD KEY `FK_trn_payments_mst_users_3` (`created_by`),
  ADD KEY `FK_trn_payments_mst_users_4` (`updated_by`);

--
-- Indexes for table `trn_invoice_details`
--
ALTER TABLE `trn_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_invoice_details_trn_invoice_1` (`invoice_id`),
  ADD KEY `FK_trn_invoice_details_mst_staff_2` (`created_by`),
  ADD KEY `FK_trn_invoice_details_mst_staff_3` (`updated_by`),
  ADD KEY `trn_invoice_details_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `trn_payment_details`
--
ALTER TABLE `trn_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_payment_details_1` (`invoice_id`),
  ADD KEY `FK_trn_payment_details_mst_staff_2` (`created_by`),
  ADD KEY `FK_trn_payment_details_mst_staff_3` (`updated_by`);

--
-- Indexes for table `trn_settings`
--
ALTER TABLE `trn_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `trn_sms_log`
--
ALTER TABLE `trn_sms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_subscriptions`
--
ALTER TABLE `trn_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_subscriptions_mst_members_1` (`member_id`),
  ADD KEY `FK_trn_subscriptions_trn_invoice` (`invoice_id`),
  ADD KEY `FK_trn_subscriptions_mst_plans_2` (`plan_id`),
  ADD KEY `FK_trn_subscriptions_mst_staff_3` (`created_by`),
  ADD KEY `FK_trn_subscriptions_mst_staff_4` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_enquiries`
--
ALTER TABLE `mst_enquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique record ID';

--
-- AUTO_INCREMENT for table `mst_expenses_categories`
--
ALTER TABLE `mst_expenses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `mst_members`
--
ALTER TABLE `mst_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `mst_plans`
--
ALTER TABLE `mst_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `mst_services`
--
ALTER TABLE `mst_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_sms_events`
--
ALTER TABLE `mst_sms_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_sms_triggers`
--
ALTER TABLE `mst_sms_triggers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_users`
--
ALTER TABLE `mst_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trn_access_log`
--
ALTER TABLE `trn_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_cheque_details`
--
ALTER TABLE `trn_cheque_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_enquiry_followups`
--
ALTER TABLE `trn_enquiry_followups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_expenses`
--
ALTER TABLE `trn_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `trn_invoice`
--
ALTER TABLE `trn_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `trn_invoice_details`
--
ALTER TABLE `trn_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_payment_details`
--
ALTER TABLE `trn_payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trn_settings`
--
ALTER TABLE `trn_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `trn_sms_log`
--
ALTER TABLE `trn_sms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_subscriptions`
--
ALTER TABLE `trn_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mst_enquiries`
--
ALTER TABLE `mst_enquiries`
  ADD CONSTRAINT `FK_mst_enquiries_mst_staff_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_mst_enquiries_mst_staff_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `mst_expenses_categories`
--
ALTER TABLE `mst_expenses_categories`
  ADD CONSTRAINT `FK_mst_expenses_categories_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_mst_expenses_categories_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `mst_members`
--
ALTER TABLE `mst_members`
  ADD CONSTRAINT `FK_mst_members_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_mst_members_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `mst_plans`
--
ALTER TABLE `mst_plans`
  ADD CONSTRAINT `FK_mst_plans_mst_services` FOREIGN KEY (`service_id`) REFERENCES `mst_services` (`id`),
  ADD CONSTRAINT `FK_mst_plans_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_mst_plans_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `mst_services`
--
ALTER TABLE `mst_services`
  ADD CONSTRAINT `FK_mst_services_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_mst_services_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `mst_sms_events`
--
ALTER TABLE `mst_sms_events`
  ADD CONSTRAINT `FK_mst_sms_events_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_mst_sms_events_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `mst_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trn_access_log`
--
ALTER TABLE `trn_access_log`
  ADD CONSTRAINT `FK_trn_activities_mst_users_1` FOREIGN KEY (`user_id`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `trn_cheque_details`
--
ALTER TABLE `trn_cheque_details`
  ADD CONSTRAINT `FK_trn_cheque_details_mst_users` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_cheque_details_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_cheque_details_trn_payment_details` FOREIGN KEY (`payment_id`) REFERENCES `trn_payment_details` (`id`);

--
-- Constraints for table `trn_enquiry_followups`
--
ALTER TABLE `trn_enquiry_followups`
  ADD CONSTRAINT `FK_trn_enquiry_followups_mst_enquiries_1` FOREIGN KEY (`enquiry_id`) REFERENCES `mst_enquiries` (`id`),
  ADD CONSTRAINT `FK_trn_enquiry_followups_mst_staff_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_enquiry_followups_mst_staff_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `trn_expenses`
--
ALTER TABLE `trn_expenses`
  ADD CONSTRAINT `FK_trn_expenses_mst_expenses_categories_1` FOREIGN KEY (`category_id`) REFERENCES `mst_expenses_categories` (`id`),
  ADD CONSTRAINT `FK_trn_expenses_mst_users_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_expenses_mst_users_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `trn_invoice`
--
ALTER TABLE `trn_invoice`
  ADD CONSTRAINT `FK_trn_invoice_mst_members_1` FOREIGN KEY (`member_id`) REFERENCES `mst_members` (`id`),
  ADD CONSTRAINT `FK_trn_invoice_mst_staff_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_invoice_mst_staff_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `trn_invoice_details`
--
ALTER TABLE `trn_invoice_details`
  ADD CONSTRAINT `FK_trn_invoice_details_mst_staff_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_invoice_details_mst_staff_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_invoice_details_trn_invoice_1` FOREIGN KEY (`invoice_id`) REFERENCES `trn_invoice` (`id`),
  ADD CONSTRAINT `trn_invoice_details_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `mst_plans` (`id`);

--
-- Constraints for table `trn_payment_details`
--
ALTER TABLE `trn_payment_details`
  ADD CONSTRAINT `FK_trn_payment_details_1` FOREIGN KEY (`invoice_id`) REFERENCES `trn_invoice` (`id`),
  ADD CONSTRAINT `FK_trn_payment_details_mst_staff_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_payment_details_mst_staff_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`);

--
-- Constraints for table `trn_subscriptions`
--
ALTER TABLE `trn_subscriptions`
  ADD CONSTRAINT `FK_trn_subscriptions_mst_members_1` FOREIGN KEY (`member_id`) REFERENCES `mst_members` (`id`),
  ADD CONSTRAINT `FK_trn_subscriptions_mst_plans_2` FOREIGN KEY (`plan_id`) REFERENCES `mst_plans` (`id`),
  ADD CONSTRAINT `FK_trn_subscriptions_mst_staff_3` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_subscriptions_mst_staff_4` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`),
  ADD CONSTRAINT `FK_trn_subscriptions_trn_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `trn_invoice` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
