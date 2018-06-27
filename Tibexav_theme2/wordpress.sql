-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 25 Juin 2018 à 14:27
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'a.demizieux@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=55&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:50:"slider-comparison-image-before-and-after/sciba.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:"D:\\wamp64\\www\\wordpress/wp-content/themes/Tibexav_theme/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'Tibexav_theme2', 'yes'),
(41, 'stylesheet', 'Tibexav_theme2', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '55', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'nonce_key', '[>b@%(;DL7.,]PQbB?dnJ-;97os[pfkz:aHh3@B`vVXq/N@a9>U1e])G]]j)XRRQ', 'no'),
(107, 'nonce_salt', 'Q{=e*qm14_z^K<5LH;Ua*u@N.mUm/|4/*hCZTfp:u5-W0DaQ=JoR{k3{t]RNXHSh', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1529936668;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1529936946;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1529957452;a:3:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1529957476;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519417460;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'auth_key', 'i^+lut~-_uO>dXoHxmHS{yaJnes?DDSI!]yE}9pC0TRHc|E!cfYsqW:zQs[i;#/7', 'no'),
(125, 'logged_in_key', 'R=f%~teoLFg`%2O(p<%| f%+E`#t,L:f= .gUQAdEHFj#YS.IdfL/5hn0wO)DXKt', 'no'),
(347, '_site_transient_timeout_theme_roots', '1529916320', 'no'),
(348, '_site_transient_theme_roots', 'a:5:{s:13:"Tibexav_theme";s:7:"/themes";s:14:"Tibexav_theme2";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(173, 'theme_mods_Tibexav_theme2', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:5;s:16:"MenuPpal_TibeXav";i:5;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519588941;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(124, 'auth_salt', '{!M5-F;pKRjZ_bG?/4`#R1Zi!=,ZPCqJ]7tIn6).V]IyrjPa@PCA_{/{wPj)*gW.', 'no'),
(126, 'logged_in_salt', 'U^&Hj.sm&cqX];+q kjf}9}p&4&o$FlsmW1oWUYoChpW//I9*-(;69YGv!D2A!8)', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(285, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"a.demizieux@gmail.com";s:7:"version";s:5:"4.9.6";s:9:"timestamp";i:1529087276;}', 'no'),
(223, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(325, 'category_children', 'a:0:{}', 'yes'),
(250, 'page_for_posts', '97', 'yes'),
(282, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1529914541;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(307, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1529914520;s:7:"checked";a:5:{s:13:"Tibexav_theme";s:0:"";s:14:"Tibexav_theme2";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(350, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1529960255', 'no'),
(351, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div>', 'no'),
(304, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1529915271;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:50:"slider-comparison-image-before-and-after/sciba.php";O:8:"stdClass":9:{s:2:"id";s:54:"w.org/plugins/slider-comparison-image-before-and-after";s:4:"slug";s:40:"slider-comparison-image-before-and-after";s:6:"plugin";s:50:"slider-comparison-image-before-and-after/sciba.php";s:11:"new_version";s:5:"0.8.3";s:3:"url";s:71:"https://wordpress.org/plugins/slider-comparison-image-before-and-after/";s:7:"package";s:83:"https://downloads.wordpress.org/plugin/slider-comparison-image-before-and-after.zip";s:5:"icons";a:1:{s:7:"default";s:91:"https://s.w.org/plugins/geopattern-icon/slider-comparison-image-before-and-after_b4af92.svg";}s:7:"banners";a:1:{s:2:"1x";s:95:"https://ps.w.org/slider-comparison-image-before-and-after/assets/banner-772x250.png?rev=1212393";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(194, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1519583787;s:7:"version";s:3:"5.0";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(145, 'current_theme', '', 'yes'),
(146, 'theme_mods_Tibexav_theme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519588973;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(338, 100, '_wp_page_template', 'default'),
(336, 100, '_edit_last', '1'),
(337, 100, '_edit_lock', '1529593919:1'),
(305, 90, '_menu_item_url', ''),
(218, 76, '_menu_item_target', ''),
(219, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(220, 76, '_menu_item_xfn', ''),
(221, 76, '_menu_item_url', ''),
(185, 72, '_menu_item_url', ''),
(184, 72, '_menu_item_xfn', ''),
(325, 99, '_menu_item_target', ''),
(323, 99, '_menu_item_object_id', '97'),
(324, 99, '_menu_item_object', 'page'),
(321, 99, '_menu_item_type', 'post_type'),
(322, 99, '_menu_item_menu_item_parent', '0'),
(328, 99, '_menu_item_url', ''),
(97, 55, '_wp_page_template', 'LeAccueil.php'),
(98, 55, '_edit_lock', '1528379972:1'),
(96, 55, '_edit_last', '1'),
(398, 127, '_wp_attached_file', '2018/06/jardin-du-botrain-mur-de-bretagne_large_rwd.jpg'),
(399, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:55:"2018/06/jardin-du-botrain-mur-de-bretagne_large_rwd.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"jardin-du-botrain-mur-de-bretagne_large_rwd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:55:"jardin-du-botrain-mur-de-bretagne_large_rwd-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:55:"jardin-du-botrain-mur-de-bretagne_large_rwd-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(215, 76, '_menu_item_menu_item_parent', '0'),
(216, 76, '_menu_item_object_id', '55'),
(217, 76, '_menu_item_object', 'page'),
(214, 76, '_menu_item_type', 'post_type'),
(213, 75, '_menu_item_orphaned', '1528119310'),
(212, 75, '_menu_item_url', ''),
(408, 127, '_wp_attachment_image_alt', 'deux'),
(409, 95, '_thumbnail_id', '126'),
(411, 93, '_thumbnail_id', '127'),
(413, 113, '_thumbnail_id', '125'),
(397, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:372;s:4:"file";s:58:"2018/06/amenagement-de-jardin-objectif-zero-entretien.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"amenagement-de-jardin-objectif-zero-entretien-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"amenagement-de-jardin-objectif-zero-entretien-300x149.jpeg";s:5:"width";i:300;s:6:"height";i:149;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(396, 126, '_wp_attached_file', '2018/06/amenagement-de-jardin-objectif-zero-entretien.jpeg'),
(222, 76, '_menu_item_orphaned', '1528119310'),
(208, 75, '_menu_item_object', 'page'),
(209, 75, '_menu_item_target', ''),
(210, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 75, '_menu_item_xfn', ''),
(207, 75, '_menu_item_object_id', '55'),
(206, 75, '_menu_item_menu_item_parent', '0'),
(326, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(304, 90, '_menu_item_xfn', ''),
(303, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(302, 90, '_menu_item_target', ''),
(301, 90, '_menu_item_object', 'page'),
(182, 72, '_menu_item_target', ''),
(183, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 72, '_menu_item_menu_item_parent', '0'),
(180, 72, '_menu_item_object_id', '55'),
(181, 72, '_menu_item_object', 'page'),
(178, 72, '_menu_item_type', 'post_type'),
(169, 71, '_menu_item_type', 'post_type'),
(170, 71, '_menu_item_menu_item_parent', '0'),
(171, 71, '_menu_item_object_id', '55'),
(172, 71, '_menu_item_object', 'page'),
(173, 71, '_menu_item_target', ''),
(174, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 71, '_menu_item_xfn', ''),
(176, 71, '_menu_item_url', ''),
(177, 71, '_menu_item_orphaned', '1528119159'),
(110, 62, '_menu_item_menu_item_parent', '0'),
(111, 62, '_menu_item_object_id', '55'),
(112, 62, '_menu_item_object', 'page'),
(113, 62, '_menu_item_target', ''),
(114, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 62, '_menu_item_xfn', ''),
(116, 62, '_menu_item_url', ''),
(117, 62, '_menu_item_orphaned', '1528116422'),
(118, 63, '_menu_item_type', 'post_type'),
(119, 63, '_menu_item_menu_item_parent', '0'),
(120, 63, '_menu_item_object_id', '55'),
(121, 63, '_menu_item_object', 'page'),
(122, 63, '_menu_item_target', ''),
(123, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 63, '_menu_item_xfn', ''),
(125, 63, '_menu_item_url', ''),
(126, 63, '_menu_item_orphaned', '1528116422'),
(299, 90, '_menu_item_menu_item_parent', '0'),
(298, 90, '_menu_item_type', 'post_type'),
(186, 72, '_menu_item_orphaned', '1528119159'),
(379, 117, '_edit_lock', '1529675996:1'),
(291, 86, '_wp_desired_post_slug', ''),
(320, 97, '_wp_page_template', 'LesReals.php'),
(295, 88, '_edit_last', '1'),
(296, 88, '_edit_lock', '1528721673:1'),
(109, 62, '_menu_item_type', 'post_type'),
(68, 46, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre mail (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]'),
(69, 46, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:26:"wordpress "[your-subject]"";s:6:"sender";s:35:"[your-name] <a.demizieux@gmail.com>";s:9:"recipient";s:25:"antoine.demizieux@free.fr";s:4:"body";s:174:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wordpress (http://localhost/wordpress)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(70, 46, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:26:"wordpress "[your-subject]"";s:6:"sender";s:33:"wordpress <a.demizieux@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:116:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wordpress (http://localhost/wordpress)";s:18:"additional_headers";s:31:"Reply-To: a.demizieux@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(71, 46, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(72, 46, '_additional_settings', ''),
(73, 46, '_locale', 'en_US'),
(205, 75, '_menu_item_type', 'post_type'),
(297, 88, '_wp_page_template', 'LeContact.php'),
(289, 86, '_wp_trash_meta_status', 'draft'),
(290, 86, '_wp_trash_meta_time', '1528121604'),
(288, 86, '_edit_lock', '1528121593:1'),
(287, 86, '_edit_last', '1'),
(327, 99, '_menu_item_xfn', ''),
(300, 90, '_menu_item_object_id', '88'),
(246, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 79, '_menu_item_target', ''),
(244, 79, '_menu_item_object', 'page'),
(243, 79, '_menu_item_object_id', '55'),
(242, 79, '_menu_item_menu_item_parent', '0'),
(241, 79, '_menu_item_type', 'post_type'),
(247, 79, '_menu_item_xfn', ''),
(248, 79, '_menu_item_url', ''),
(249, 79, '_menu_item_orphaned', '1528119457'),
(250, 80, '_menu_item_type', 'post_type'),
(251, 80, '_menu_item_menu_item_parent', '0'),
(252, 80, '_menu_item_object_id', '55'),
(253, 80, '_menu_item_object', 'page'),
(254, 80, '_menu_item_target', ''),
(255, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(256, 80, '_menu_item_xfn', ''),
(257, 80, '_menu_item_url', ''),
(258, 80, '_menu_item_orphaned', '1528119457'),
(378, 117, '_edit_last', '1'),
(376, 115, '_wp_page_template', 'default'),
(374, 115, '_edit_last', '1'),
(375, 115, '_edit_lock', '1529675983:1'),
(372, 113, '_wp_page_template', 'default'),
(371, 113, '_edit_lock', '1529918678:1'),
(319, 97, '_edit_lock', '1528380300:1'),
(318, 97, '_edit_last', '1'),
(316, 95, '_wp_page_template', 'default'),
(314, 95, '_edit_last', '1'),
(315, 95, '_edit_lock', '1529918673:1'),
(310, 93, '_edit_last', '1'),
(311, 93, '_edit_lock', '1529918668:1'),
(312, 93, '_wp_page_template', 'default'),
(370, 113, '_edit_last', '1'),
(357, 109, '_menu_item_menu_item_parent', '0'),
(358, 109, '_menu_item_object_id', '100'),
(359, 109, '_menu_item_object', 'post'),
(360, 109, '_menu_item_target', ''),
(361, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(362, 109, '_menu_item_xfn', ''),
(363, 109, '_menu_item_url', ''),
(380, 117, '_wp_page_template', 'default'),
(382, 119, '_edit_last', '1'),
(383, 119, '_edit_lock', '1529676009:1'),
(384, 119, '_wp_page_template', 'default'),
(386, 121, '_edit_last', '1'),
(387, 121, '_edit_lock', '1529676024:1'),
(388, 121, '_wp_page_template', 'default'),
(390, 123, '_edit_last', '1'),
(391, 123, '_edit_lock', '1529679408:1'),
(392, 123, '_wp_page_template', 'default'),
(394, 125, '_wp_attached_file', '2018/06/Jardin-de-charme.jpg'),
(395, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:28:"2018/06/Jardin-de-charme.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Jardin-de-charme-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Jardin-de-charme-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"Jardin-de-charme-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(356, 109, '_menu_item_type', 'post_type');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(113, 1, '2018-06-22 14:01:50', '2018-06-22 14:01:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\r\n\r\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\r\n\r\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'essai 3', '', 'publish', 'open', 'open', '', 'essai-3', '', '', '2018-06-25 09:26:00', '2018-06-25 09:26:00', '', 0, 'http://localhost/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2018-06-22 14:01:50', '2018-06-22 14:01:50', 'fafafafaf', 'essai 3', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-06-22 14:01:50', '2018-06-22 14:01:50', '', 113, 'http://localhost/wordpress/2018/06/22/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-06-22 14:02:03', '2018-06-22 14:02:03', 'sgdsgsg', 'essai 4', '', 'publish', 'open', 'open', '', 'essai-4', '', '', '2018-06-22 14:02:03', '2018-06-22 14:02:03', '', 0, 'http://localhost/wordpress/?p=115', 0, 'post', '', 0),
(116, 1, '2018-06-22 14:02:03', '2018-06-22 14:02:03', 'sgdsgsg', 'essai 4', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-06-22 14:02:03', '2018-06-22 14:02:03', '', 115, 'http://localhost/wordpress/2018/06/22/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-06-22 14:02:16', '2018-06-22 14:02:16', 'sfsdf', 'essai 5', '', 'publish', 'open', 'open', '', 'essai-5', '', '', '2018-06-22 14:02:16', '2018-06-22 14:02:16', '', 0, 'http://localhost/wordpress/?p=117', 0, 'post', '', 0),
(118, 1, '2018-06-22 14:02:16', '2018-06-22 14:02:16', 'sfsdf', 'essai 5', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-22 14:02:16', '2018-06-22 14:02:16', '', 117, 'http://localhost/wordpress/2018/06/22/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-06-22 14:02:28', '2018-06-22 14:02:28', 'sdfsdfsdf', 'essai 6', '', 'publish', 'open', 'open', '', 'essai-6', '', '', '2018-06-22 14:02:28', '2018-06-22 14:02:28', '', 0, 'http://localhost/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2018-06-22 14:02:28', '2018-06-22 14:02:28', 'sdfsdfsdf', 'essai 6', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-06-22 14:02:28', '2018-06-22 14:02:28', '', 119, 'http://localhost/wordpress/2018/06/22/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-06-22 14:02:43', '2018-06-22 14:02:43', 'sdfsdfsdf', 'essai 7', '', 'publish', 'open', 'open', '', 'essai-7', '', '', '2018-06-22 14:02:43', '2018-06-22 14:02:43', '', 0, 'http://localhost/wordpress/?p=121', 0, 'post', '', 0),
(122, 1, '2018-06-22 14:02:43', '2018-06-22 14:02:43', 'sdfsdfsdf', 'essai 7', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-06-22 14:02:43', '2018-06-22 14:02:43', '', 121, 'http://localhost/wordpress/2018/06/22/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-06-22 14:02:55', '2018-06-22 14:02:55', 'sdfsdfsdf', 'essai 8', '', 'publish', 'open', 'open', '', 'essai-8', '', '', '2018-06-22 14:02:55', '2018-06-22 14:02:55', '', 0, 'http://localhost/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2018-06-22 14:02:55', '2018-06-22 14:02:55', 'sdfsdfsdf', 'essai 8', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-06-22 14:02:55', '2018-06-22 14:02:55', '', 123, 'http://localhost/wordpress/2018/06/22/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-06-25 09:00:01', '2018-06-25 09:00:01', '', 'Jardin-de-charme', '', 'inherit', 'open', 'closed', '', 'jardin-de-charme', '', '', '2018-06-25 09:00:01', '2018-06-25 09:00:01', '', 93, 'http://localhost/wordpress/wp-content/uploads/2018/06/Jardin-de-charme.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-06-20 14:53:55', '2018-06-20 14:53:55', '', 'Qui sommes nous?', '', 'publish', 'closed', 'closed', '', 'qui-sommes-nous', '', '', '2018-06-20 14:53:55', '2018-06-20 14:53:55', '', 0, 'http://localhost/wordpress/?p=109', 3, 'nav_menu_item', '', 0),
(111, 1, '2018-06-21 15:03:18', '2018-06-21 15:03:18', 'Qui sommes-nous ?\r\n\r\nDiplômés de l’école du Breuil, nous sommes deux artisans du paysage et exerçons depuis 2008 à notre compte. Situés en région parisienne, nous intervenons sur l’ensemble du territoire.\r\n\r\nDe la conception, réalisation, à l’entretien de vos jardins, terrasses, balcons et patios, l’Atelier Nature fait aussi parti d’un réseau de collaborateurs de confiance permettant d’offrir de multiples expertises (artiste peintre, élagueur, électricien, maçon, fontainerie,…).\r\n\r\nNous accordons une importance particulière dans la construction de projets destinés à perdurer dans le temps et à évoluer avec leur écosystème.\r\n\r\nXavier et Thibaut\r\n\r\n&nbsp;\r\n\r\nNos valeurs\r\n\r\nDéveloppement durable\r\n<ol>\r\n 	<li>Retraitement des déchets</li>\r\n 	<li>Economie d’eau</li>\r\n 	<li>Pas de produit phytosanitaire</li>\r\n 	<li>Diminution des entretiens</li>\r\n 	<li>Respect de l’écosystème des plantes</li>\r\n</ol>\r\n&nbsp;\r\n\r\nHumain\r\n<ul>\r\n 	<li>Accompagnement personnalisé et à l’écoute du client</li>\r\n 	<li>Partage des connaissances (botanique, écologique, technique)</li>\r\n</ul>\r\n&nbsp;\r\n\r\nQualité\r\n<ul>\r\n 	<li>Conseils avisés</li>\r\n 	<li>Proposition d’un large choix de matériaux et de plantes (visites en pépinière possible, échantillons de matériaux à disposition,…)</li>\r\n 	<li>Technique</li>\r\n</ul>\r\n&nbsp;\r\n\r\nUn juste équilibre entre les aspirations du client et les caractéristiques du milieu…\r\n\r\n&nbsp;\r\n\r\nFaire appel à nous\r\n\r\n&nbsp;\r\n\r\nRencontre – première discussion\r\n\r\nUne première discussion nous permet de nous enquérir de vos attentes et besoins et de faire un relevé de terrain. Une attention particulière est portée à vos sensibilités.\r\n\r\n&nbsp;\r\n\r\nRéflexion\r\n\r\nTrois esquisses vous sont présentées comme point de départ de la réflexion. Nous pourrons alors ensemble élaborer et modeler votre projet, et choisir l’ambiance que vous souhaitez donner à votre espace.\r\n\r\n&nbsp;\r\n\r\nDébut de la collaboration\r\n\r\nPrésentation détaillée du projet avec un devis.\r\n\r\n&nbsp;\r\n\r\nChantier\r\n\r\nLes travaux peuvent débuter suite à la signature du devis. Nous vous soumettons un planning des travaux et un acompte de 30% vous est demandé.\r\n\r\nNous restons à l’écoute de vos attentes et envies pendant toute la durée du chantier et continuons de vous conseiller par notre expertise.', 'Méthodologie', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-06-21 15:03:18', '2018-06-21 15:03:18', '', 100, 'http://localhost/wordpress/2018/06/21/100-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-06-21 15:03:44', '2018-06-21 15:03:44', 'Qui sommes-nous ?\r\n\r\nDiplômés de l’école du Breuil, nous sommes deux artisans du paysage et exerçons depuis 2008 à notre compte. Situés en région parisienne, nous intervenons sur l’ensemble du territoire.\r\n\r\nDe la conception, réalisation, à l’entretien de vos jardins, terrasses, balcons et patios, l’Atelier Nature fait aussi parti d’un réseau de collaborateurs de confiance permettant d’offrir de multiples expertises (artiste peintre, élagueur, électricien, maçon, fontainerie,…).\r\n\r\nNous accordons une importance particulière dans la construction de projets destinés à perdurer dans le temps et à évoluer avec leur écosystème.\r\n\r\nXavier et Thibaut\r\n\r\n&nbsp;\r\n\r\nNos valeurs\r\n\r\nDéveloppement durable\r\n<ul>\r\n 	<li>Retraitement des déchets</li>\r\n 	<li>Economie d’eau</li>\r\n 	<li>Pas de produit phytosanitaire</li>\r\n 	<li>Diminution des entretiens</li>\r\n 	<li>Respect de l’écosystème des plantes</li>\r\n</ul>\r\n&nbsp;\r\n\r\nHumain\r\n<ul>\r\n 	<li>Accompagnement personnalisé et à l’écoute du client</li>\r\n 	<li>Partage des connaissances (botanique, écologique, technique)</li>\r\n</ul>\r\n&nbsp;\r\n\r\nQualité\r\n<ul>\r\n 	<li>Conseils avisés</li>\r\n 	<li>Proposition d’un large choix de matériaux et de plantes (visites en pépinière possible, échantillons de matériaux à disposition,…)</li>\r\n 	<li>Technique</li>\r\n</ul>\r\n&nbsp;\r\n\r\nUn juste équilibre entre les aspirations du client et les caractéristiques du milieu…\r\n\r\n&nbsp;\r\n\r\nFaire appel à nous\r\n\r\n&nbsp;\r\n\r\nRencontre – première discussion\r\n\r\nUne première discussion nous permet de nous enquérir de vos attentes et besoins et de faire un relevé de terrain. Une attention particulière est portée à vos sensibilités.\r\n\r\n&nbsp;\r\n\r\nRéflexion\r\n\r\nTrois esquisses vous sont présentées comme point de départ de la réflexion. Nous pourrons alors ensemble élaborer et modeler votre projet, et choisir l’ambiance que vous souhaitez donner à votre espace.\r\n\r\n&nbsp;\r\n\r\nDébut de la collaboration\r\n\r\nPrésentation détaillée du projet avec un devis.\r\n\r\n&nbsp;\r\n\r\nChantier\r\n\r\nLes travaux peuvent débuter suite à la signature du devis. Nous vous soumettons un planning des travaux et un acompte de 30% vous est demandé.\r\n\r\nNous restons à l’écoute de vos attentes et envies pendant toute la durée du chantier et continuons de vous conseiller par notre expertise.', 'Méthodologie', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-06-21 15:03:44', '2018-06-21 15:03:44', '', 100, 'http://localhost/wordpress/2018/06/21/100-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-06-11 12:56:39', '2018-06-11 12:56:39', '&nbsp;\r\n\r\n[contact-form-7 id="46" title="Form TibeXav"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-06-11 12:56:39', '2018-06-11 12:56:39', '', 88, 'http://localhost/wordpress/2018/06/11/88-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-06-04 14:37:32', '2018-06-04 14:37:32', 'Page de contact\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="46" title="Form TibeXav"]', 'Contact Page', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-06-04 14:37:32', '2018-06-04 14:37:32', '', 88, 'http://localhost/wordpress/2018/06/04/88-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-06-20 14:49:52', '2018-06-20 14:49:52', 'Qui sommes-nous ?\r\n\r\nDiplômés de l’école du Breuil, nous sommes deux artisans du paysage et exerçons depuis 2008 à notre compte. Situés en région parisienne, nous intervenons sur l’ensemble du territoire.\r\n\r\nDe la conception, réalisation, à l’entretien de vos jardins, terrasses, balcons et patios, l’Atelier Nature fait aussi parti d’un réseau de collaborateurs de confiance permettant d’offrir de multiples expertises (artiste peintre, élagueur, électricien, maçon, fontainerie,…).\r\n\r\nNous accordons une importance particulière dans la construction de projets destinés à perdurer dans le temps et à évoluer avec leur écosystème.\r\n\r\nXavier et Thibaut\r\n\r\n&nbsp;\r\n\r\nNos valeurs\r\n\r\nDéveloppement durable\r\n<ul>\r\n 	<li>Retraitement des déchets</li>\r\n 	<li>Economie d’eau</li>\r\n 	<li>Pas de produit phytosanitaire</li>\r\n 	<li>Diminution des entretiens</li>\r\n 	<li>Respect de l’écosystème des plantes</li>\r\n</ul>\r\n&nbsp;\r\n\r\nHumain\r\n<ul>\r\n 	<li>Accompagnement personnalisé et à l’écoute du client</li>\r\n 	<li>Partage des connaissances (botanique, écologique, technique)</li>\r\n</ul>\r\n&nbsp;\r\n\r\nQualité\r\n<ul>\r\n 	<li>Conseils avisés</li>\r\n 	<li>Proposition d’un large choix de matériaux et de plantes (visites en pépinière possible, échantillons de matériaux à disposition,…)</li>\r\n 	<li>Technique</li>\r\n</ul>\r\n&nbsp;\r\n\r\nUn juste équilibre entre les aspirations du client et les caractéristiques du milieu…\r\n\r\n&nbsp;\r\n\r\nFaire appel à nous\r\n\r\n&nbsp;\r\n\r\nRencontre – première discussion\r\n\r\nUne première discussion nous permet de nous enquérir de vos attentes et besoins et de faire un relevé de terrain. Une attention particulière est portée à vos sensibilités.\r\n\r\n&nbsp;\r\n\r\nRéflexion\r\n\r\nTrois esquisses vous sont présentées comme point de départ de la réflexion. Nous pourrons alors ensemble élaborer et modeler votre projet, et choisir l’ambiance que vous souhaitez donner à votre espace.\r\n\r\n&nbsp;\r\n\r\nDébut de la collaboration\r\n\r\nPrésentation détaillée du projet avec un devis.\r\n\r\n&nbsp;\r\n\r\nChantier\r\n\r\nLes travaux peuvent débuter suite à la signature du devis. Nous vous soumettons un planning des travaux et un acompte de 30% vous est demandé.\r\n\r\nNous restons à l’écoute de vos attentes et envies pendant toute la durée du chantier et continuons de vous conseiller par notre expertise.', 'Méthodologie', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-06-20 14:49:52', '2018-06-20 14:49:52', '', 100, 'http://localhost/wordpress/2018/06/20/100-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-06-25 09:00:41', '2018-06-25 09:00:41', 'trois', 'jardin-du-botrain-mur-de-bretagne_large_rwd', 'un', 'inherit', 'open', 'closed', '', 'jardin-du-botrain-mur-de-bretagne_large_rwd', '', '', '2018-06-25 09:25:10', '2018-06-25 09:25:10', '', 93, 'http://localhost/wordpress/wp-content/uploads/2018/06/jardin-du-botrain-mur-de-bretagne_large_rwd.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-06-25 09:00:40', '2018-06-25 09:00:40', '', 'amenagement-de-jardin-objectif-zero-entretien', '', 'inherit', 'open', 'closed', '', 'amenagement-de-jardin-objectif-zero-entretien', '', '', '2018-06-25 09:00:40', '2018-06-25 09:00:40', '', 93, 'http://localhost/wordpress/wp-content/uploads/2018/06/amenagement-de-jardin-objectif-zero-entretien.jpeg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-06-04 14:29:10', '2018-06-04 14:29:10', 'Page de contact', 'Contact Page', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-06-04 14:29:10', '2018-06-04 14:29:10', '', 88, 'http://localhost/wordpress/2018/06/04/88-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-06-04 13:32:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 13:32:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2018-06-04 13:32:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 13:32:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=72', 1, 'nav_menu_item', '', 0),
(86, 1, '2018-06-04 14:13:24', '2018-06-04 14:13:24', '', 'Le Blog', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-06-04 14:13:24', '2018-06-04 14:13:24', '', 0, 'http://localhost/wordpress/?page_id=86', 0, 'page', '', 0),
(75, 1, '2018-06-04 13:35:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 13:35:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2018-06-04 13:35:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 13:35:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=76', 1, 'nav_menu_item', '', 0),
(110, 1, '2018-06-21 15:00:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-21 15:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=110', 0, 'post', '', 0),
(107, 1, '2018-06-20 14:49:49', '2018-06-20 14:49:49', 'Qui sommes-nous ?\n\nDiplômés de l’école du Breuil, nous sommes deux artisans du paysage et exerçons depuis 2008 à notre compte. Situés en région parisienne, nous intervenons sur l’ensemble du territoire.\n\nDe la conception, réalisation, à l’entretien de vos jardins, terrasses, balcons et patios, l’Atelier Nature fait aussi parti d’un réseau de collaborateurs de confiance permettant d’offrir de multiples expertises (artiste peintre, élagueur, électricien, maçon, fontainerie,…).\n\nNous accordons une importance particulière dans la construction de projets destinés à perdurer dans le temps et à évoluer avec leur écosystème.\n\nXavier et Thibaut\n\n&nbsp;\n\nNos valeurs\n\nDéveloppement durable\n<ul>\n 	<li>Retraitement des déchets</li>\n 	<li>Economie d’eau</li>\n 	<li>Pas de produit phytosanitaire</li>\n 	<li>Diminution des entretiens</li>\n 	<li>Respect de l’écosystème des plantes</li>\n</ul>\n&nbsp;\n\nHumain\n<ul>\n 	<li>Accompagnement personnalisé et à l’écoute du client</li>\n 	<li>Partage des connaissances (botanique, écologique, technique)</li>\n</ul>\n&nbsp;\n\nQualité\n<ul>\n 	<li>Conseils avisés</li>\n 	<li>Proposition d’un large choix de matériaux et de plantes (visites en pépinière possible, échantillons de matériaux à disposition,…)</li>\n 	<li>Technique</li>\n</ul>\n&nbsp;\n\nUn juste équilibre entre les aspirations du client et les caractéristiques du milieu…\n\n&nbsp;\n\nFaire appel à nous\n\n&nbsp;\n\nRencontre – première discussion\n\nUne première discussion nous permet de nous enquérir de vos attentes et besoins et de faire un relevé de terrain. Une attention particulière est portée à vos sensibilités.\n\n&nbsp;\n\nRéflexion\n\nTrois esquisses vous sont présentées comme point de départ de la réflexion. Nous pourrons alors ensemble élaborer et modeler votre projet, et choisir l’ambiance que vous souhaitez donner à votre espace.\n\n&nbsp;\n\nDébut de la collaboration\n\nPrésentation détaillée du projet avec un devis.\n\n&nbsp;\n\nChantier\n\nLes travaux peuvent débuter suite à la signature du devis. Nous vous soumettons un planning des travaux et un acompte de 30% vous est demandé.\n\nNous restons à l’écoute de vos attentes et envies pendant toute la durée du chantier et continuons de vous conseiller par notre expertise.', 'Méthodologie', '', 'inherit', 'closed', 'closed', '', '100-autosave-v1', '', '', '2018-06-20 14:49:49', '2018-06-20 14:49:49', '', 100, 'http://localhost/wordpress/2018/06/20/100-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2018-06-04 14:45:16', '2018-06-04 14:45:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\r\n\r\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\r\n\r\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'Essai 1', '', 'publish', 'open', 'open', '', 'essai-1', '', '', '2018-06-25 09:25:46', '2018-06-25 09:25:46', '', 0, 'http://localhost/wordpress/?p=93', 0, 'post', '', 0),
(94, 1, '2018-06-04 14:45:16', '2018-06-04 14:45:16', 'le premier essai', 'Essai 1', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-06-04 14:45:16', '2018-06-04 14:45:16', '', 93, 'http://localhost/wordpress/2018/06/04/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-06-04 14:45:37', '2018-06-04 14:45:37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\r\n\r\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\r\n\r\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'Essai 2', '', 'publish', 'open', 'open', '', 'essai-2', '', '', '2018-06-25 09:25:30', '2018-06-25 09:25:30', '', 0, 'http://localhost/wordpress/?p=95', 0, 'post', '', 0),
(96, 1, '2018-06-04 14:45:37', '2018-06-04 14:45:37', 'Le 2e essai', 'Essai 2', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-06-04 14:45:37', '2018-06-04 14:45:37', '', 95, 'http://localhost/wordpress/2018/06/04/95-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-06-04 12:47:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 12:47:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2018-06-04 12:47:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 12:47:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=63', 1, 'nav_menu_item', '', 0),
(88, 1, '2018-06-04 14:29:10', '2018-06-04 14:29:10', '&nbsp;\r\n\r\n[contact-form-7 id="46" title="Form TibeXav"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-page', '', '', '2018-06-11 12:56:39', '2018-06-11 12:56:39', '', 0, 'http://localhost/wordpress/?page_id=88', 0, 'page', '', 0),
(79, 1, '2018-06-04 13:37:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 13:37:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=79', 1, 'nav_menu_item', '', 0),
(98, 1, '2018-06-04 14:48:30', '2018-06-04 14:48:30', 'Les les', 'Realisations', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-04 14:48:30', '2018-06-04 14:48:30', '', 97, 'http://localhost/wordpress/2018/06/04/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-06-04 14:48:50', '2018-06-04 14:48:50', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2018-06-20 14:53:55', '2018-06-20 14:53:55', '', 0, 'http://localhost/wordpress/?p=99', 2, 'nav_menu_item', '', 0),
(101, 1, '2018-06-07 14:28:38', '2018-06-07 14:28:38', 'c\'est là qu\'est la methodo', 'Méthodologie', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-06-07 14:28:38', '2018-06-07 14:28:38', '', 100, 'http://localhost/wordpress/2018/06/07/100-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-06-07 15:16:54', '2018-06-07 15:16:54', 'Page de contact\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="46" title="Form TibeXav"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-06-07 15:16:54', '2018-06-07 15:16:54', '', 88, 'http://localhost/wordpress/2018/06/07/88-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-06-04 14:13:24', '2018-06-04 14:13:24', '', 'Le Blog', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-06-04 14:13:24', '2018-06-04 14:13:24', '', 86, 'http://localhost/wordpress/2018/06/04/86-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-02-25 18:43:58', '2018-02-25 18:43:58', '<label> Votre nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre mail (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Objet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Envoyer"]\n1\nwordpress "[your-subject]"\n[your-name] <a.demizieux@gmail.com>\nantoine.demizieux@free.fr\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wordpress (http://localhost/wordpress)\nReply-To: [your-email]\n\n\n\n\nwordpress "[your-subject]"\nwordpress <a.demizieux@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wordpress (http://localhost/wordpress)\nReply-To: a.demizieux@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Form TibeXav', '', 'publish', 'closed', 'closed', '', 'form-tibexav', '', '', '2018-06-15 19:13:01', '2018-06-15 19:13:01', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=46', 0, 'wpcf7_contact_form', '', 0),
(55, 1, '2018-06-04 12:24:29', '2018-06-04 12:24:29', 'Page accueil', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-06-04 12:24:29', '2018-06-04 12:24:29', '', 0, 'http://localhost/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 1, '2018-06-04 12:24:29', '2018-06-04 12:24:29', 'Page accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-06-04 12:24:29', '2018-06-04 12:24:29', '', 55, 'http://localhost/wordpress/2018/06/04/55-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-06-07 14:28:38', '2018-06-07 14:28:38', 'Qui sommes-nous ?\r\n\r\nDiplômés de l’école du Breuil, nous sommes deux artisans du paysage et exerçons depuis 2008 à notre compte. Situés en région parisienne, nous intervenons sur l’ensemble du territoire.\r\n\r\nDe la conception, réalisation, à l’entretien de vos jardins, terrasses, balcons et patios, l’Atelier Nature fait aussi parti d’un réseau de collaborateurs de confiance permettant d’offrir de multiples expertises (artiste peintre, élagueur, électricien, maçon, fontainerie,…).\r\n\r\nNous accordons une importance particulière dans la construction de projets destinés à perdurer dans le temps et à évoluer avec leur écosystème.\r\n\r\nXavier et Thibaut\r\n\r\n&nbsp;\r\n\r\nNos valeurs\r\n\r\nDéveloppement durable\r\n<ul>\r\n 	<li>Retraitement des déchets</li>\r\n 	<li>Economie d’eau</li>\r\n 	<li>Pas de produit phytosanitaire</li>\r\n 	<li>Diminution des entretiens</li>\r\n 	<li>Respect de l’écosystème des plantes</li>\r\n</ul>\r\n&nbsp;\r\n\r\nHumain\r\n<ul>\r\n 	<li>Accompagnement personnalisé et à l’écoute du client</li>\r\n 	<li>Partage des connaissances (botanique, écologique, technique)</li>\r\n</ul>\r\n&nbsp;\r\n\r\nQualité\r\n<ul>\r\n 	<li>Conseils avisés</li>\r\n 	<li>Proposition d’un large choix de matériaux et de plantes (visites en pépinière possible, échantillons de matériaux à disposition,…)</li>\r\n 	<li>Technique</li>\r\n</ul>\r\n&nbsp;\r\n\r\nUn juste équilibre entre les aspirations du client et les caractéristiques du milieu…\r\n\r\n&nbsp;\r\n\r\nFaire appel à nous\r\n\r\n&nbsp;\r\n\r\nRencontre – première discussion\r\n\r\nUne première discussion nous permet de nous enquérir de vos attentes et besoins et de faire un relevé de terrain. Une attention particulière est portée à vos sensibilités.\r\n\r\n&nbsp;\r\n\r\nRéflexion\r\n\r\nTrois esquisses vous sont présentées comme point de départ de la réflexion. Nous pourrons alors ensemble élaborer et modeler votre projet, et choisir l’ambiance que vous souhaitez donner à votre espace.\r\n\r\n&nbsp;\r\n\r\nDébut de la collaboration\r\n\r\nPrésentation détaillée du projet avec un devis.\r\n\r\n&nbsp;\r\n\r\nChantier\r\n\r\nLes travaux peuvent débuter suite à la signature du devis. Nous vous soumettons un planning des travaux et un acompte de 30% vous est demandé.\r\n\r\nNous restons à l’écoute de vos attentes et envies pendant toute la durée du chantier et continuons de vous conseiller par notre expertise.', 'Méthodologie', '', 'publish', 'open', 'open', '', 'methodologie', '', '', '2018-06-21 15:13:08', '2018-06-21 15:13:08', '', 0, 'http://localhost/wordpress/?p=100', 0, 'post', '', 0),
(91, 1, '2018-06-11 12:56:34', '2018-06-11 12:56:34', '&nbsp;\n\n[contact-form-7 id="46" title="Form TibeXav"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '88-autosave-v1', '', '', '2018-06-11 12:56:34', '2018-06-11 12:56:34', '', 88, 'http://localhost/wordpress/2018/06/04/88-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2018-06-04 13:37:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-04 13:37:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=80', 1, 'nav_menu_item', '', 0),
(97, 1, '2018-06-04 14:48:30', '2018-06-04 14:48:30', 'Les les', 'Realisations', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2018-06-07 12:45:18', '2018-06-07 12:45:18', '', 0, 'http://localhost/wordpress/?page_id=97', 0, 'page', '', 0),
(90, 1, '2018-06-04 14:29:22', '2018-06-04 14:29:22', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2018-06-20 14:53:55', '2018-06-20 14:53:55', '', 0, 'http://localhost/wordpress/?p=90', 1, 'nav_menu_item', '', 0),
(128, 1, '2018-06-25 09:02:08', '2018-06-25 09:02:08', '<img class="alignnone size-medium wp-image-127" src="http://localhost/wordpress/wp-content/uploads/2018/06/jardin-du-botrain-mur-de-bretagne_large_rwd-300x200.jpg" alt="" width="300" height="200" />\r\n\r\nle premier essai', 'Essai 1', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-06-25 09:02:08', '2018-06-25 09:02:08', '', 93, 'http://localhost/wordpress/2018/06/25/93-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-06-25 09:03:13', '2018-06-25 09:03:13', '<img class="alignnone size-medium wp-image-126" src="http://localhost/wordpress/wp-content/uploads/2018/06/amenagement-de-jardin-objectif-zero-entretien-300x149.jpeg" alt="" width="300" height="149" />\r\n\r\nLe 2e essai', 'Essai 2', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-06-25 09:03:13', '2018-06-25 09:03:13', '', 95, 'http://localhost/wordpress/2018/06/25/95-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-06-25 09:22:51', '2018-06-25 09:22:51', 'fafafafaf', 'essai 3', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-06-25 09:22:51', '2018-06-25 09:22:51', '', 113, 'http://localhost/wordpress/2018/06/25/113-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-06-25 09:03:34', '2018-06-25 09:03:34', '<img class="alignnone size-medium wp-image-125" src="http://localhost/wordpress/wp-content/uploads/2018/06/Jardin-de-charme-300x225.jpg" alt="" width="300" height="225" />\r\n\r\nfafafafaf', 'essai 3', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-06-25 09:03:34', '2018-06-25 09:03:34', '', 113, 'http://localhost/wordpress/2018/06/25/113-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-06-25 09:23:19', '2018-06-25 09:23:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\n\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\n\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'essai 3', '', 'inherit', 'closed', 'closed', '', '113-autosave-v1', '', '', '2018-06-25 09:23:19', '2018-06-25 09:23:19', '', 113, 'http://localhost/wordpress/2018/06/25/113-autosave-v1/', 0, 'revision', '', 0),
(133, 1, '2018-06-25 09:23:21', '2018-06-25 09:23:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\r\n\r\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\r\n\r\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'essai 3', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-06-25 09:23:21', '2018-06-25 09:23:21', '', 113, 'http://localhost/wordpress/2018/06/25/113-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-06-25 09:23:52', '2018-06-25 09:23:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\r\n\r\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\r\n\r\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'Essai 1', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-06-25 09:23:52', '2018-06-25 09:23:52', '', 93, 'http://localhost/wordpress/2018/06/25/93-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-06-25 09:24:07', '2018-06-25 09:24:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis ipsum enim. Phasellus non est ligula. Ut pharetra sem a turpis ultricies posuere. Morbi commodo accumsan volutpat. In id lectus libero. Nunc vitae quam eu justo luctus blandit sed in risus. Donec vehicula arcu nec quam fringilla, vitae rhoncus nulla tincidunt. Curabitur vulputate viverra dapibus. Mauris quis urna vitae nibh congue luctus quis in arcu. Suspendisse diam enim, ornare dictum ligula in, pulvinar consectetur urna. Sed tristique mi velit, vel mattis velit ultricies eget. Suspendisse potenti. Duis faucibus at libero et luctus.\r\n\r\nVivamus dictum iaculis turpis at ultrices. Etiam vitae rutrum justo. Nam sed nulla quis mi tincidunt euismod quis eget est. Vivamus in justo sit amet nulla rutrum vehicula. Fusce eu quam metus. Phasellus iaculis felis et ligula dignissim tincidunt. Fusce non orci convallis, gravida nisl in, placerat nunc. Nullam rhoncus, leo ac commodo imperdiet, sapien dui varius lacus, at aliquam lacus urna in arcu. Proin in lacus molestie magna condimentum ultricies eget eget mauris. Praesent eu augue non massa tincidunt tempus. Nullam facilisis eget orci at hendrerit.\r\n\r\nQuisque rutrum dolor ut risus gravida, porttitor scelerisque sem iaculis. Etiam blandit tortor ligula, id efficitur sapien pharetra in. Etiam ac nulla lacinia leo tincidunt pellentesque. Nunc vel dignissim enim. Proin enim lacus, gravida eu purus vel, fermentum efficitur libero. Aenean volutpat nibh elementum ipsum rutrum, ac vulputate nunc dapibus. Fusce rhoncus pharetra ultrices. Praesent gravida lorem ac consectetur cursus. Nulla consectetur egestas urna ut venenatis. Cras porta urna sed felis efficitur tincidunt. Proin auctor metus nec odio ultrices, ac tincidunt nibh sodales. Aliquam viverra aliquam erat, ac sodales tellus interdum ultricies. Sed rhoncus augue pharetra justo interdum, vitae facilisis justo scelerisque. Aliquam nulla ligula, consequat nec dui nec, tristique egestas libero. Donec at scelerisque leo. Nulla pretium libero at tellus tristique fringilla.', 'Essai 2', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-06-25 09:24:07', '2018-06-25 09:24:07', '', 95, 'http://localhost/wordpress/2018/06/25/95-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(5, 'Menu 1', 'menu-1', 0),
(6, 'Methodo', 'methodo', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(90, 5, 0),
(113, 1, 0),
(95, 1, 0),
(99, 5, 0),
(93, 1, 0),
(100, 6, 0),
(109, 5, 0),
(115, 1, 0),
(117, 1, 0),
(119, 1, 0),
(121, 1, 0),
(123, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'category', 'La catégorie Methodo juste pour l\'article "qui sommes nous". Les autres artciles ne doivent pas avoir cette actéggorie sinon ils n\'apparaitront pas sur la page nos realisations', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"1dad6b39156679ad2f790c76e851923059c28fa876cbcff84629f6a935508742";a:4:{s:10:"expiration";i:1530089828;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1529917028;}}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(25, 1, 'nav_menu_recently_edited', '5'),
(26, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:38:"submitdiv,categorydiv,tagsdiv-post_tag";s:6:"normal";s:96:"revisionsdiv,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_post', '2'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '110'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1529593513'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:"revisionsdiv";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BliD5DXZv8wOEZaowJuztFqA.RWn9O.', 'admin', 'a.demizieux@gmail.com', '', '2018-02-23 20:10:52', '', 0, 'Admin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
