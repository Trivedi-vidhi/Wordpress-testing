-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 02:57 PM
-- Server version: 5.6.16
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-06-04 09:00:04', '2021-06-04 09:00:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=199 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:7882/wp', 'yes'),
(2, 'home', 'http://localhost:7882/wp', 'yes'),
(3, 'blogname', 'vidhitrivedi', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'trivediv2530@gmail.com', 'yes'),
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
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '32', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1638349194', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'cron', 'a:7:{i:1622973663;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1623013263;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1623056462;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1623056498;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1623056507;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1623488463;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.7.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.7.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.7.2";s:7:"version";s:5:"5.7.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1622972517;s:15:"version_checked";s:5:"5.7.2";s:12:"translations";a:0:{}}', 'no'),
(118, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1622972521;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.1.9";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.9";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1622972521;s:7:"checked";a:3:{s:14:"twentynineteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.7";s:15:"twentytwentyone";s:3:"1.3";}s:8:"response";a:0:{}s:9:"no_update";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.7";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.3";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_3a19c5b2ea764b667094aa0ea89035cb', '1623402105', 'no'),
(123, '_site_transient_browser_3a19c5b2ea764b667094aa0ea89035cb', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"91.0.4472.77";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(125, 'theme_mods_twentytwentyone', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:10;}}', 'yes'),
(127, 'recovery_keys', 'a:0:{}', 'yes'),
(128, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:21:"HTTPS request failed.";}}', 'yes'),
(133, 'finished_updating_comment_type', '1', 'yes'),
(134, '_site_transient_timeout_php_check_64febc64837d42d5be2db692345274e9', '1623404501', 'no'),
(135, '_site_transient_php_check_64febc64837d42d5be2db692345274e9', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:0;}', 'no'),
(155, 'category_children', 'a:2:{i:2;a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}i:6;a:2:{i:0;i:7;i:1;i:8;}}', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(186, 'current_theme', 'Twenty Twenty-One', 'yes'),
(187, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:10;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1622870592;s:4:"data";a:0:{}}}', 'yes'),
(188, 'theme_switched', '', 'yes'),
(191, 'theme_switch_menu_locations', 'a:1:{s:6:"menu-1";i:10;}', 'yes'),
(192, 'theme_switched_via_customizer', '', 'yes'),
(193, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(194, 'theme_mods_twentytwenty', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(196, '_site_transient_timeout_theme_roots', '1622974304', 'no'),
(197, '_site_transient_theme_roots', 'a:3:{s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no'),
(198, '_transient_health-check-site-status-result', '{"good":13,"recommended":6,"critical":1}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=129 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1622801209:1'),
(4, 8, '_edit_lock', '1622807279:1'),
(6, 10, '_wp_attached_file', '2021/06/drawing-e1622805801435.png'),
(7, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:658;s:6:"height";i:261;s:4:"file";s:34:"2021/06/drawing-e1622805801435.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:34:"drawing-e1622805801435-300x119.png";s:5:"width";i:300;s:6:"height";i:119;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"drawing-1024x558.png";s:5:"width";i:1024;s:6:"height";i:558;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:34:"drawing-e1622805801435-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"drawing-768x418.png";s:5:"width";i:768;s:6:"height";i:418;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 11, '_wp_attached_file', '2021/06/vidhi.png'),
(9, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:433;s:6:"height";i:516;s:4:"file";s:17:"2021/06/vidhi.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"vidhi-252x300.png";s:5:"width";i:252;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"vidhi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 10, '_edit_lock', '1622805667:1'),
(11, 10, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:1102;s:6:"height";i:600;s:4:"file";s:11:"drawing.png";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:19:"drawing-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"medium-orig";a:4:{s:4:"file";s:19:"drawing-300x163.png";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:9:"image/png";}s:17:"medium_large-orig";a:4:{s:4:"file";s:19:"drawing-768x418.png";s:5:"width";i:768;s:6:"height";i:418;s:9:"mime-type";s:9:"image/png";}s:10:"large-orig";a:4:{s:4:"file";s:20:"drawing-1024x558.png";s:5:"width";i:1024;s:6:"height";i:558;s:9:"mime-type";s:9:"image/png";}}'),
(12, 1, '_wp_trash_meta_status', 'publish'),
(13, 1, '_wp_trash_meta_time', '1622805907'),
(14, 1, '_wp_desired_post_slug', 'hello-world'),
(15, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(16, 12, '_edit_lock', '1622806487:1'),
(17, 13, '_wp_attached_file', '2021/06/vidhi-1.png'),
(18, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:433;s:6:"height";i:516;s:4:"file";s:19:"2021/06/vidhi-1.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:19:"vidhi-1-252x300.png";s:5:"width";i:252;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"vidhi-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 15, '_edit_lock', '1622806790:1'),
(22, 17, '_edit_lock', '1622807210:1'),
(24, 19, '_edit_lock', '1622807384:1'),
(27, 22, '_edit_lock', '1622807897:1'),
(29, 24, '_edit_lock', '1622808812:1'),
(31, 2, '_edit_lock', '1622810168:1'),
(32, 28, '_edit_lock', '1622810070:1'),
(33, 2, '_wp_trash_meta_status', 'publish'),
(34, 2, '_wp_trash_meta_time', '1622810220'),
(35, 2, '_wp_desired_post_slug', 'sample-page'),
(36, 28, '_wp_trash_meta_status', 'publish'),
(37, 28, '_wp_trash_meta_time', '1622810223'),
(38, 28, '_wp_desired_post_slug', 'contact-us'),
(39, 30, '_edit_lock', '1622810351:1'),
(40, 30, '_wp_trash_meta_status', 'publish'),
(41, 30, '_wp_trash_meta_time', '1622812963'),
(42, 30, '_wp_desired_post_slug', 'about-us'),
(43, 32, '_edit_lock', '1622813441:1'),
(44, 34, '_edit_lock', '1622813292:1'),
(45, 36, '_menu_item_type', 'post_type'),
(46, 36, '_menu_item_menu_item_parent', '0'),
(47, 36, '_menu_item_object_id', '34'),
(48, 36, '_menu_item_object', 'page'),
(49, 36, '_menu_item_target', ''),
(50, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 36, '_menu_item_xfn', ''),
(52, 36, '_menu_item_url', ''),
(54, 37, '_menu_item_type', 'post_type'),
(55, 37, '_menu_item_menu_item_parent', '0'),
(56, 37, '_menu_item_object_id', '32'),
(57, 37, '_menu_item_object', 'page'),
(58, 37, '_menu_item_target', ''),
(59, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 37, '_menu_item_xfn', ''),
(61, 37, '_menu_item_url', ''),
(63, 38, '_menu_item_type', 'taxonomy'),
(64, 38, '_menu_item_menu_item_parent', '0'),
(65, 38, '_menu_item_object_id', '2'),
(66, 38, '_menu_item_object', 'category'),
(67, 38, '_menu_item_target', ''),
(68, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 38, '_menu_item_xfn', ''),
(70, 38, '_menu_item_url', ''),
(72, 39, '_menu_item_type', 'taxonomy'),
(73, 39, '_menu_item_menu_item_parent', '38'),
(74, 39, '_menu_item_object_id', '3'),
(75, 39, '_menu_item_object', 'category'),
(76, 39, '_menu_item_target', ''),
(77, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 39, '_menu_item_xfn', ''),
(79, 39, '_menu_item_url', ''),
(81, 40, '_menu_item_type', 'taxonomy'),
(82, 40, '_menu_item_menu_item_parent', '38'),
(83, 40, '_menu_item_object_id', '4'),
(84, 40, '_menu_item_object', 'category'),
(85, 40, '_menu_item_target', ''),
(86, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 40, '_menu_item_xfn', ''),
(88, 40, '_menu_item_url', ''),
(90, 41, '_menu_item_type', 'taxonomy'),
(91, 41, '_menu_item_menu_item_parent', '38'),
(92, 41, '_menu_item_object_id', '5'),
(93, 41, '_menu_item_object', 'category'),
(94, 41, '_menu_item_target', ''),
(95, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 41, '_menu_item_xfn', ''),
(97, 41, '_menu_item_url', ''),
(99, 42, '_menu_item_type', 'taxonomy'),
(100, 42, '_menu_item_menu_item_parent', '0'),
(101, 42, '_menu_item_object_id', '6'),
(102, 42, '_menu_item_object', 'category'),
(103, 42, '_menu_item_target', ''),
(104, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 42, '_menu_item_xfn', ''),
(106, 42, '_menu_item_url', ''),
(108, 43, '_menu_item_type', 'taxonomy'),
(109, 43, '_menu_item_menu_item_parent', '42'),
(110, 43, '_menu_item_object_id', '7'),
(111, 43, '_menu_item_object', 'category'),
(112, 43, '_menu_item_target', ''),
(113, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 43, '_menu_item_xfn', ''),
(115, 43, '_menu_item_url', ''),
(117, 44, '_menu_item_type', 'taxonomy'),
(118, 44, '_menu_item_menu_item_parent', '42'),
(119, 44, '_menu_item_object_id', '8'),
(120, 44, '_menu_item_object', 'category'),
(121, 44, '_menu_item_target', ''),
(122, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 44, '_menu_item_xfn', ''),
(124, 44, '_menu_item_url', ''),
(126, 45, '_edit_lock', '1622814683:1'),
(127, 46, '_wp_trash_meta_status', 'publish'),
(128, 46, '_wp_trash_meta_time', '1622870593');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-06-04 09:00:04', '2021-06-04 09:00:04', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello vidhi', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-06-04 11:25:07', '2021-06-04 11:25:07', '', 0, 'http://localhost:7882/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-06-04 09:00:04', '2021-06-04 09:00:04', '<!-- wp:paragraph -->\n<p>Hello, i am vidhi trivedi from vadodara. i am taking training at akash techno labs. </p>\n<!-- /wp:paragraph -->', 'About us', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-06-04 12:37:00', '2021-06-04 12:37:00', '', 0, 'http://localhost:7882/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-06-04 09:00:04', '2021-06-04 09:00:04', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost:7882/wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-06-04 09:00:04', '2021-06-04 09:00:04', '', 0, 'http://localhost:7882/wp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-06-04 09:01:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-04 09:01:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:7882/wp/?p=4', 0, 'post', '', 0),
(5, 1, '2021-06-04 09:01:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-04 09:01:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:7882/wp/?p=5', 0, 'post', '', 0),
(6, 1, '2021-06-04 10:06:49', '2021-06-04 10:06:49', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello vidhi', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2021-06-04 10:06:49', '2021-06-04 10:06:49', '', 1, 'http://localhost:7882/wp/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-06-04 10:06:52', '2021-06-04 10:06:52', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello vidhi', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-06-04 10:06:52', '2021-06-04 10:06:52', '', 1, 'http://localhost:7882/wp/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-06-04 11:17:08', '2021-06-04 11:17:08', '<!-- wp:paragraph -->\n<p><strong><span class="has-inline-color has-dark-gray-color">Hello guys, welcome to my testing website. It is my first wordpress site. </span></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"className":"is-style-large"} -->\n<blockquote class="wp-block-quote is-style-large"><p><strong>The optimist sees opportunity in every difficulty.</strong></p></blockquote>\n<!-- /wp:quote -->', 'wordpress', '', 'publish', 'open', 'open', '', 'welcome-to-test-site', '', '', '2021-06-04 11:50:18', '2021-06-04 11:50:18', '', 0, 'http://localhost:7882/wp/?p=8', 0, 'post', '', 0),
(9, 1, '2021-06-04 11:17:08', '2021-06-04 11:17:08', '<!-- wp:paragraph -->\n<p><strong><span class="has-inline-color has-dark-gray-color">Hello guys, welcome to my testing website. It is my first wordpress site. </span></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"className":"is-style-large"} -->\n<blockquote class="wp-block-quote is-style-large"><p><strong>The optimist sees opportunity in every difficulty.</strong></p></blockquote>\n<!-- /wp:quote -->', 'Welcome to test site...', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-06-04 11:17:08', '2021-06-04 11:17:08', '', 8, 'http://localhost:7882/wp/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-06-04 11:21:42', '2021-06-04 11:21:42', '', 'drawing', '', 'inherit', 'open', 'closed', '', 'drawing', '', '', '2021-06-04 11:21:42', '2021-06-04 11:21:42', '', 0, 'http://localhost:7882/wp/wp-content/uploads/2021/06/drawing.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-06-04 11:21:52', '2021-06-04 11:21:52', '', 'vidhi', '', 'inherit', 'open', 'closed', '', 'vidhi', '', '', '2021-06-04 11:21:52', '2021-06-04 11:21:52', '', 0, 'http://localhost:7882/wp/wp-content/uploads/2021/06/vidhi.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2021-06-04 11:31:09', '2021-06-04 11:31:09', '<!-- wp:paragraph -->\n<p>you can develop android app using android studio. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[13],"linkTo":"none"} -->\n<figure class="wp-block-gallery columns-1 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://localhost:7882/wp/wp-content/uploads/2021/06/vidhi-1.png" alt="" data-id="13" data-full-url="http://localhost:7882/wp/wp-content/uploads/2021/06/vidhi-1.png" data-link="http://localhost:7882/wp/?attachment_id=13" class="wp-image-13"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Android', '', 'publish', 'open', 'open', '', 'android', '', '', '2021-06-04 11:31:09', '2021-06-04 11:31:09', '', 0, 'http://localhost:7882/wp/?p=12', 0, 'post', '', 0),
(13, 1, '2021-06-04 11:30:56', '2021-06-04 11:30:56', '', 'vidhi-1', '', 'inherit', 'open', 'closed', '', 'vidhi-1', '', '', '2021-06-04 11:30:56', '2021-06-04 11:30:56', '', 12, 'http://localhost:7882/wp/wp-content/uploads/2021/06/vidhi-1.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2021-06-04 11:31:09', '2021-06-04 11:31:09', '<!-- wp:paragraph -->\n<p>you can develop android app using android studio. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[13],"linkTo":"none"} -->\n<figure class="wp-block-gallery columns-1 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://localhost:7882/wp/wp-content/uploads/2021/06/vidhi-1.png" alt="" data-id="13" data-full-url="http://localhost:7882/wp/wp-content/uploads/2021/06/vidhi-1.png" data-link="http://localhost:7882/wp/?attachment_id=13" class="wp-image-13"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Android', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-06-04 11:31:09', '2021-06-04 11:31:09', '', 12, 'http://localhost:7882/wp/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-06-04 11:39:31', '2021-06-04 11:39:31', '<!-- wp:paragraph -->\n<p>Mobile app can be  develop in two ways either in android or IOS. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>It is Mobile app development page.</h2>\n<!-- /wp:heading -->', 'Mobile app Development', '', 'publish', 'open', 'open', '', 'mobile-app-development', '', '', '2021-06-04 11:39:31', '2021-06-04 11:39:31', '', 0, 'http://localhost:7882/wp/?p=15', 0, 'post', '', 0),
(16, 1, '2021-06-04 11:39:31', '2021-06-04 11:39:31', '<!-- wp:paragraph -->\n<p>Mobile app can be  develop in two ways either in android or IOS. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>It is Mobile app development page.</h2>\n<!-- /wp:heading -->', 'Mobile app Development', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-06-04 11:39:31', '2021-06-04 11:39:31', '', 15, 'http://localhost:7882/wp/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-06-04 11:47:10', '2021-06-04 11:47:10', '<!-- wp:paragraph -->\n<p>This application will run on IOS phone.</p>\n<!-- /wp:paragraph -->', 'IOS', '', 'publish', 'open', 'open', '', 'ios', '', '', '2021-06-04 11:47:10', '2021-06-04 11:47:10', '', 0, 'http://localhost:7882/wp/?p=17', 0, 'post', '', 0),
(18, 1, '2021-06-04 11:47:10', '2021-06-04 11:47:10', '<!-- wp:paragraph -->\n<p>This application will run on IOS phone.</p>\n<!-- /wp:paragraph -->', 'IOS', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-06-04 11:47:10', '2021-06-04 11:47:10', '', 17, 'http://localhost:7882/wp/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-06-04 11:49:36', '2021-06-04 11:49:36', '<!-- wp:paragraph -->\n<p>Web development is possible using laravel, php and wordpress.</p>\n<!-- /wp:paragraph -->', 'Web development', '', 'publish', 'open', 'open', '', 'web-development', '', '', '2021-06-04 11:49:36', '2021-06-04 11:49:36', '', 0, 'http://localhost:7882/wp/?p=19', 0, 'post', '', 0),
(20, 1, '2021-06-04 11:49:36', '2021-06-04 11:49:36', '<!-- wp:paragraph -->\n<p>Web development is possible using laravel, php and wordpress.</p>\n<!-- /wp:paragraph -->', 'Web development', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-06-04 11:49:36', '2021-06-04 11:49:36', '', 19, 'http://localhost:7882/wp/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-06-04 11:50:18', '2021-06-04 11:50:18', '<!-- wp:paragraph -->\n<p><strong><span class="has-inline-color has-dark-gray-color">Hello guys, welcome to my testing website. It is my first wordpress site. </span></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"className":"is-style-large"} -->\n<blockquote class="wp-block-quote is-style-large"><p><strong>The optimist sees opportunity in every difficulty.</strong></p></blockquote>\n<!-- /wp:quote -->', 'wordpress', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-06-04 11:50:18', '2021-06-04 11:50:18', '', 8, 'http://localhost:7882/wp/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-06-04 11:56:54', '2021-06-04 11:56:54', '<!-- wp:paragraph -->\n<p>Laravel can be use for web development.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"className":"is-style-large"} -->\n<blockquote class="wp-block-quote is-style-large"><p>you really can change the world if you care enough.</p></blockquote>\n<!-- /wp:quote -->', 'Laravel', '', 'publish', 'open', 'open', '', 'laravel', '', '', '2021-06-04 11:56:54', '2021-06-04 11:56:54', '', 0, 'http://localhost:7882/wp/?p=22', 0, 'post', '', 0),
(23, 1, '2021-06-04 11:56:54', '2021-06-04 11:56:54', '<!-- wp:paragraph -->\n<p>Laravel can be use for web development.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"className":"is-style-large"} -->\n<blockquote class="wp-block-quote is-style-large"><p>you really can change the world if you care enough.</p></blockquote>\n<!-- /wp:quote -->', 'Laravel', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-06-04 11:56:54', '2021-06-04 11:56:54', '', 22, 'http://localhost:7882/wp/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-06-04 12:13:12', '2021-06-04 12:13:12', '<!-- wp:paragraph -->\n<p>Php is very easy language.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I love php.</p>\n<!-- /wp:paragraph -->', 'php', '', 'publish', 'open', 'open', '', 'php', '', '', '2021-06-04 12:13:12', '2021-06-04 12:13:12', '', 0, 'http://localhost:7882/wp/?p=24', 0, 'post', '', 0),
(25, 1, '2021-06-04 12:13:12', '2021-06-04 12:13:12', '<!-- wp:paragraph -->\n<p>Php is very easy language.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I love php.</p>\n<!-- /wp:paragraph -->', 'php', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-06-04 12:13:12', '2021-06-04 12:13:12', '', 24, 'http://localhost:7882/wp/?p=25', 0, 'revision', '', 0),
(27, 1, '2021-06-04 12:29:17', '2021-06-04 12:29:17', '<!-- wp:paragraph -->\n<p>Hello, i am vidhi trivedi from vadodara. i am taking training at akash techno labs. </p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-06-04 12:29:17', '2021-06-04 12:29:17', '', 2, 'http://localhost:7882/wp/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-06-04 12:31:39', '2021-06-04 12:31:39', '<!-- wp:paragraph -->\n<p>You can contact me using number:9999988888</p>\n<!-- /wp:paragraph -->', 'contact us', '', 'trash', 'closed', 'closed', '', 'contact-us__trashed', '', '', '2021-06-04 12:37:03', '2021-06-04 12:37:03', '', 0, 'http://localhost:7882/wp/?page_id=28', 0, 'page', '', 0),
(29, 1, '2021-06-04 12:31:39', '2021-06-04 12:31:39', '<!-- wp:paragraph -->\n<p>You can contact me using number:9999988888</p>\n<!-- /wp:paragraph -->', 'contact us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-06-04 12:31:39', '2021-06-04 12:31:39', '', 28, 'http://localhost:7882/wp/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-06-04 12:38:14', '2021-06-04 12:38:14', '<!-- wp:paragraph -->\n<p>Hello i am vidhi  trivedi from  vadodara</p>\n<!-- /wp:paragraph -->', 'About us', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2021-06-04 13:22:43', '2021-06-04 13:22:43', '', 0, 'http://localhost:7882/wp/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-06-04 12:38:14', '2021-06-04 12:38:14', '<!-- wp:paragraph -->\n<p>Hello i am vidhi  trivedi from  vadodara</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-06-04 12:38:14', '2021-06-04 12:38:14', '', 30, 'http://localhost:7882/wp/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-06-04 13:26:12', '2021-06-04 13:26:12', '<!-- wp:paragraph -->\n<p>Hello, i am vidhi trivedi from vadodara. i am doing internship at akash technolabs.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-06-04 13:26:12', '2021-06-04 13:26:12', '', 0, 'http://localhost:7882/wp/?page_id=32', 0, 'page', '', 0),
(33, 1, '2021-06-04 13:26:12', '2021-06-04 13:26:12', '<!-- wp:paragraph -->\n<p>Hello, i am vidhi trivedi from vadodara. i am doing internship at akash technolabs.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-06-04 13:26:12', '2021-06-04 13:26:12', '', 32, 'http://localhost:7882/wp/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-06-04 13:28:31', '2021-06-04 13:28:31', '<!-- wp:paragraph -->\n<p>You can contact me using mobile number:9999977777</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Also you can contact me using e-mail address trivedividhi123@gmail.com</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-06-04 13:28:31', '2021-06-04 13:28:31', '', 0, 'http://localhost:7882/wp/?page_id=34', 0, 'page', '', 0),
(35, 1, '2021-06-04 13:28:31', '2021-06-04 13:28:31', '<!-- wp:paragraph -->\n<p>You can contact me using mobile number:9999977777</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Also you can contact me using e-mail address trivedividhi123@gmail.com</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2021-06-04 13:28:31', '2021-06-04 13:28:31', '', 34, 'http://localhost:7882/wp/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-06-04 13:45:20', '2021-06-04 13:44:32', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-06-04 13:45:20', '2021-06-04 13:45:20', '', 0, 'http://localhost:7882/wp/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2021-06-04 13:45:20', '2021-06-04 13:44:32', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-06-04 13:45:20', '2021-06-04 13:45:20', '', 0, 'http://localhost:7882/wp/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2021-06-04 13:45:20', '2021-06-04 13:44:32', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-06-04 13:45:20', '2021-06-04 13:45:20', '', 0, 'http://localhost:7882/wp/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2021-06-04 13:45:20', '2021-06-04 13:44:33', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2021-06-04 13:45:20', '2021-06-04 13:45:20', '', 2, 'http://localhost:7882/wp/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2021-06-04 13:45:21', '2021-06-04 13:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2021-06-04 13:45:21', '2021-06-04 13:45:21', '', 2, 'http://localhost:7882/wp/?p=40', 5, 'nav_menu_item', '', 0),
(41, 1, '2021-06-04 13:45:21', '2021-06-04 13:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-06-04 13:45:21', '2021-06-04 13:45:21', '', 2, 'http://localhost:7882/wp/?p=41', 6, 'nav_menu_item', '', 0),
(42, 1, '2021-06-04 13:45:21', '2021-06-04 13:44:35', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-06-04 13:45:21', '2021-06-04 13:45:21', '', 0, 'http://localhost:7882/wp/?p=42', 7, 'nav_menu_item', '', 0),
(43, 1, '2021-06-04 13:45:21', '2021-06-04 13:44:36', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2021-06-04 13:45:21', '2021-06-04 13:45:21', '', 6, 'http://localhost:7882/wp/?p=43', 8, 'nav_menu_item', '', 0),
(44, 1, '2021-06-04 13:45:21', '2021-06-04 13:44:36', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-06-04 13:45:21', '2021-06-04 13:45:21', '', 6, 'http://localhost:7882/wp/?p=44', 9, 'nav_menu_item', '', 0),
(45, 1, '2021-06-04 13:53:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-04 13:53:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:7882/wp/?p=45', 0, 'post', '', 0),
(46, 1, '2021-06-05 05:23:13', '2021-06-05 05:23:13', '{\n    "old_sidebars_widgets_data": {\n        "value": [],\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2021-06-05 05:23:12"\n    },\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-06-05 05:23:12"\n    },\n    "page_on_front": {\n        "value": "32",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-06-05 05:23:12"\n    },\n    "page_for_posts": {\n        "value": "0",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-06-05 05:23:12"\n    },\n    "twentytwentyone::nav_menu_locations[primary]": {\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-06-05 05:23:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cfe37cb4-8828-4f3c-bd40-90265ae79e0e', '', '', '2021-06-05 05:23:13', '2021-06-05 05:23:13', '', 0, 'http://localhost:7882/wp/?p=46', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'web development', 'web-development', 0),
(3, 'wordpress', 'wordpress', 0),
(4, 'laravel', 'laravel', 0),
(5, 'php', 'php', 0),
(6, 'Mobile app development', 'mobile-app-development', 0),
(7, 'Android', 'android', 0),
(8, 'IOS', 'ios', 0),
(9, 'wordpress', 'wordpress', 0),
(10, 'menu1', 'menu1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 3, 0),
(8, 9, 0),
(12, 7, 0),
(15, 6, 0),
(17, 8, 0),
(19, 2, 0),
(22, 4, 0),
(24, 5, 0),
(36, 10, 0),
(37, 10, 0),
(38, 10, 0),
(39, 10, 0),
(40, 10, 0),
(41, 10, 0),
(42, 10, 0),
(43, 10, 0),
(44, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 2, 1),
(4, 4, 'category', '', 2, 1),
(5, 5, 'category', '', 2, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 6, 1),
(8, 8, 'category', '', 6, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vidhi'),
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
(15, 1, 'session_tokens', 'a:7:{s:64:"596628fe10df78d236cd74063f45f450e32cb84e32f07f7acd9cdb4757e60095";a:4:{s:10:"expiration";i:1622970097;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622797297;}s:64:"a3a4d73375d68e3b3acdbbad9495540575085f1526afb84c9bd5fd3affd7709b";a:4:{s:10:"expiration";i:1622972499;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622799699;}s:64:"7a487f04317547bbfed190db9c5dfa9f7f2b2370d55f9e5ce267505470f7a6a5";a:4:{s:10:"expiration";i:1622977200;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622804400;}s:64:"26bbb5e1efab2888d04fce43264dc0e170b0b73471e96dea5818768933bacd91";a:4:{s:10:"expiration";i:1622985747;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622812947;}s:64:"c7a5b38745f1c4810d19f99815752d78acb398887876ab33d63cab7e195f6c4b";a:4:{s:10:"expiration";i:1622987571;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622814771;}s:64:"9c23782724e4804000215602029f168a6636b2d4d0894c1cfbf1b2a653a96b67";a:4:{s:10:"expiration";i:1623039690;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622866890;}s:64:"99c27edeb358f7899d464ba40fe90b484c7a5d56a2d16a59f21dd54904c25659";a:4:{s:10:"expiration";i:1623043268;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622870468;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(17, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:17:"dashboard_php_nag";i:1;s:21:"dashboard_site_health";}'),
(18, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:79:"dashboard_quick_press,dashboard_primary,dashboard_php_nag,dashboard_site_health";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(20, 1, 'wp_media_library_mode', 'list'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vidhi', '$P$BTlfl.1HoyU79I3fjn3dUCWTEklnsw1', 'vidhi', 'trivediv2530@gmail.com', 'http://localhost:7882/wp', '2021-06-04 09:00:02', '', 0, 'vidhi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
