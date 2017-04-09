-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2017 at 07:02 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bandc`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 1, 'admin', 'odalmys@nauta.cu', '', '127.0.0.1', '2017-04-05 18:13:18', '2017-04-05 18:13:18', 'hola somos B&C y debes optar por nosotros.', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cpmp_player`
--

CREATE TABLE IF NOT EXISTS `wp_cpmp_player` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(250) NOT NULL DEFAULT '',
  `config` longtext,
  `playlist` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_cpmp_player`
--

INSERT INTO `wp_cpmp_player` (`id`, `player_name`, `config`, `playlist`) VALUES
(1, 'demostración de sitios web con drupal', 'O:8:"stdClass":8:{s:5:"width";s:3:"510";s:6:"height";s:3:"300";s:4:"type";s:5:"video";s:4:"skin";s:12:"classic-skin";s:8:"autoplay";s:8:"autoplay";s:8:"playlist";b:1;s:4:"loop";s:4:"loop";s:7:"preload";s:4:"auto";}', 'a:1:{i:0;O:8:"stdClass":6:{s:2:"id";d:1491414253148;s:10:"annotation";s:6:"drupal";s:4:"link";s:0:"";s:6:"poster";s:56:"http://localhost/B&C/wp-content/uploads/2017/04/6246.jpg";s:5:"files";a:1:{i:0;s:81:"http://localhost/B&C/wp-content/uploads/2017/04/sitios-responsive-en-drupalok.mov";}s:9:"subtitles";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=335 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/B&C', 'yes'),
(2, 'home', 'http://localhost/B&C', 'yes'),
(3, 'blogname', 'B&amp;C', 'yes'),
(4, 'blogdescription', 'Desarrollo de Sitios Web', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'odalmys@nauta.cu', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:50:"audio-and-video-player/codepeople-media-player.php";i:1;s:49:"floating-social-media-icon/acurax-social-icon.php";i:2;s:29:"getty-images/getty-images.php";i:3;s:19:"wptouch/wptouch.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentyfourteen', 'yes'),
(42, 'stylesheet', 'twentyfourteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(85, 'page_on_front', '4', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:10:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"bbp_keymaster";a:2:{s:4:"name";s:9:"Keymaster";s:12:"capabilities";a:0:{}}s:13:"bbp_spectator";a:2:{s:4:"name";s:9:"Spectator";s:12:"capabilities";a:0:{}}s:11:"bbp_blocked";a:2:{s:4:"name";s:7:"Blocked";s:12:"capabilities";a:0:{}}s:13:"bbp_moderator";a:2:{s:4:"name";s:9:"Moderator";s:12:"capabilities";a:0:{}}s:15:"bbp_participant";a:2:{s:4:"name";s:11:"Participant";s:12:"capabilities";a:0:{}}}', 'yes'),
(90, 'WPLANG', 'es_ES', 'yes'),
(91, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"meta-3";i:1;s:25:"acx-social-icons-widget-3";}s:9:"sidebar-1";a:2:{i:0;s:17:"recent-comments-2";i:1;s:32:"widget_twentyfourteen_ephemera-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:4:{i:0;s:14:"recent-posts-2";i:1;s:10:"nav_menu-2";i:2;s:6:"meta-2";i:3;s:25:"acx-social-icons-widget-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:8:{i:1491420420;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491421139;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"8d0b3ce3dc4b5b7343b250e206e5d2cd";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:85;}}}}i:1491421588;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"77bfea138af154ec45b266ee439b4c6c";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:86;}}}}i:1491448431;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491454061;a:1:{s:28:"wptouch_cron_backup_settings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491491641;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491491988;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.2.2";s:12:"last_checked";i:1491414389;}', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1491417446;}', 'yes'),
(107, '_transient_random_seed', '52539f2bb935d33bd94b0c4ecc54c6cd', 'yes'),
(110, '_transient_timeout_plugin_slugs', '1491504897', 'no'),
(111, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:19:"bbpress/bbpress.php";i:2;s:50:"audio-and-video-player/codepeople-media-player.php";i:3;s:33:"cpo-shortcodes/cpo-shortcodes.php";i:4;s:29:"getty-images/getty-images.php";i:5;s:9:"hello.php";i:6;s:49:"floating-social-media-icon/acurax-social-icon.php";i:7;s:19:"wptouch/wptouch.php";}', 'no'),
(112, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1491448443', 'no'),
(113, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: Host desconocido. </p></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: No hay medios de transporte HTTP disponibles que puedan completar la solicitud requerida.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(114, 'can_compress_scripts', '1', 'yes'),
(116, '_transient_twentyfifteen_categories', '1', 'yes'),
(117, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:3:{i:1;a:0:{}i:2;a:2:{s:5:"title";s:16:"Enlaces Externos";s:8:"nav_menu";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(123, 'widget_widget_twentyfourteen_ephemera', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:2;s:6:"format";s:7:"gallery";}s:12:"_multiwidget";i:1;}', 'yes'),
(127, 'current_theme', 'Twenty Fourteen', 'yes'),
(128, 'theme_mods_twentyfourteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:20:"wptouch_primary_menu";i:2;s:7:"primary";i:2;}s:12:"header_image";s:72:"http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV1.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:112;s:3:"url";s:72:"http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV1.png";s:13:"thumbnail_url";s:72:"http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV1.png";s:6:"height";i:204;s:5:"width";i:1260;}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(130, 'theme_switched_via_customizer', '', 'yes'),
(132, 'category_children', 'a:0:{}', 'yes'),
(149, 'recently_activated', 'a:3:{s:33:"cpo-shortcodes/cpo-shortcodes.php";i:1491414414;s:19:"bbpress/bbpress.php";i:1491409821;s:56:"ultimate-gallery-master/ultimate-gallery-master-lite.php";i:1491408140;}', 'yes'),
(151, 'acx_fsmi_si_current_version', '4.2.3', 'yes'),
(152, 'acx_fsmi_next_date', '1493998349', 'yes'),
(153, 'acx_si_td', 'show', 'yes'),
(155, 'wpts_wptouch_pro', 'O:24:"WPtouchDefaultSettings30":52:{s:11:"show_wizard";b:1;s:16:"show_free_wizard";b:0;s:19:"show_network_wizard";b:1;s:10:"site_title";s:3:"B&C";s:22:"show_wptouch_in_footer";i:0;s:16:"show_switch_link";i:1;s:18:"switch_link_method";s:9:"automatic";s:20:"force_network_locale";s:4:"auto";s:12:"force_locale";s:5:"es_ES";s:15:"translate_admin";i:1;s:22:"analytics_embed_method";s:8:"disabled";s:19:"analytics_google_id";s:0:"";s:17:"custom_stats_code";s:0:"";s:16:"homepage_landing";s:4:"none";s:27:"homepage_redirect_wp_target";s:2:"87";s:31:"homepage_redirect_custom_target";s:0:"";s:16:"new_display_mode";i:1;s:26:"process_desktop_shortcodes";i:0;s:17:"remove_shortcodes";s:0:"";s:20:"url_filter_behaviour";s:8:"disabled";s:13:"filtered_urls";s:0:"";s:19:"filtered_urls_exact";i:0;s:16:"enable_ios_phone";i:1;s:20:"enable_android_phone";i:1;s:23:"enable_blackberry_phone";i:1;s:20:"enable_firefox_phone";i:1;s:18:"enable_opera_phone";i:1;s:20:"enable_windows_phone";i:1;s:17:"enable_ios_tablet";b:1;s:21:"enable_android_tablet";b:1;s:21:"enable_windows_tablet";b:1;s:20:"enable_kindle_tablet";b:1;s:24:"enable_blackberry_tablet";b:1;s:19:"enable_webos_tablet";b:1;s:18:"custom_user_agents";s:0:"";s:27:"current_theme_friendly_name";s:7:"Bauhaus";s:22:"current_theme_location";s:23:"/plugins/wptouch/themes";s:18:"current_theme_name";s:7:"bauhaus";s:16:"custom_menu_name";s:2:"wp";s:18:"appended_menu_name";s:4:"none";s:19:"prepended_menu_name";s:4:"none";s:19:"enable_parent_items";i:1;s:17:"enable_menu_icons";i:0;s:14:"show_login_box";i:0;s:17:"default_menu_icon";s:61:"/wp-content/plugins/wptouch/resources/icons/elegant/Paper.png";s:19:"disabled_menu_items";a:0:{}s:24:"temp_disabled_menu_items";a:0:{}s:9:"debug_log";b:0;s:15:"debug_log_level";i:6;s:14:"debug_log_salt";s:10:"8248c17ab6";s:13:"active_addons";a:0:{}s:23:"show_wpml_lang_switcher";b:1;}', 'yes'),
(156, 'wpts_bncid', 'O:29:"WPtouchDefaultSettingsBNCID30":12:{s:5:"bncid";s:0:"";s:19:"wptouch_license_key";s:0:"";s:16:"license_accepted";b:0;s:21:"license_accepted_time";i:0;s:22:"next_update_check_time";i:1491449588;s:15:"license_expired";b:0;s:19:"license_expiry_date";i:0;s:16:"referral_user_id";b:0;s:15:"allow_multisite";b:1;s:17:"multisite_control";b:1;s:24:"license_support_packages";a:0:{}s:15:"current_version";s:6:"4.3.14";}', 'yes'),
(157, '_site_transient_timeout__wptouch_language_info', '1491492788', 'yes'),
(158, '_site_transient__wptouch_language_info', '', 'yes'),
(159, 'wptouch_customizer_options_foundation', 'a:24:{s:21:"custom_footer_message";s:3:"B&C";s:23:"custom_css_declarations";s:0:"";s:10:"logo_image";s:58:"http://localhost/B&C/wp-content/uploads/2017/04/logo22.png";s:14:"posts_per_page";s:1:"5";s:19:"excluded_categories";s:0:"";s:13:"excluded_tags";s:0:"";s:15:"typography_sets";s:15:"oswald_opensans";s:18:"iphone_icon_retina";s:59:"http://localhost/B&C/wp-content/uploads/2017/04/conejo2.png";s:10:"show_share";b:1;s:14:"share_on_pages";b:1;s:14:"share_location";s:3:"top";s:19:"share_colour_scheme";s:7:"default";s:19:"social_facebook_url";s:11:"faceboo.com";s:18:"social_twitter_url";s:11:"twitter.com";s:17:"social_google_url";s:10:"google.com";s:20:"social_instagram_url";s:13:"instagram.com";s:17:"social_tumblr_url";s:0:"";s:20:"social_pinterest_url";s:0:"";s:16:"social_vimeo_url";s:0:"";s:18:"social_youtube_url";s:11:"youtube.com";s:19:"social_linkedin_url";s:0:"";s:15:"social_yelp_url";s:0:"";s:16:"social_email_url";s:17:"odalmys@gmail.com";s:14:"social_rss_url";s:0:"";}', 'yes'),
(160, 'theme_mods_bauhaus', 'a:33:{s:26:"wptouch_bauhaus_menu_style";s:10:"off-canvas";s:29:"wptouch_bauhaus_menu_position";s:9:"left-side";s:32:"wptouch_bauhaus_background_color";s:7:"#edede7";s:28:"wptouch_bauhaus_header_color";s:7:"#eaeaea";s:26:"wptouch_bauhaus_link_color";s:7:"#000000";s:38:"wptouch_bauhaus_post_page_header_color";s:7:"#dd1118";s:29:"wptouch_bauhaus_show_taxonomy";b:0;s:25:"wptouch_bauhaus_show_date";b:1;s:27:"wptouch_bauhaus_show_author";b:0;s:27:"wptouch_bauhaus_show_search";b:1;s:36:"wptouch_bauhaus_show_comment_bubbles";b:1;s:35:"wptouch_bauhaus_use_infinite_scroll";b:0;s:30:"wptouch_bauhaus_use_thumbnails";s:17:"index_single_page";s:30:"wptouch_bauhaus_thumbnail_type";s:8:"featured";s:38:"wptouch_bauhaus_thumbnail_custom_field";s:0:"";s:33:"wptouch_bauhaus_featured_comments";b:0;s:29:"wptouch_bauhaus_featured_type";s:6:"latest";s:28:"wptouch_bauhaus_featured_tag";s:0:"";s:33:"wptouch_bauhaus_featured_category";s:0:"";s:34:"wptouch_bauhaus_featured_post_type";s:0:"";s:33:"wptouch_bauhaus_featured_post_ids";s:0:"";s:44:"wptouch_bauhaus_featured_max_number_of_posts";s:1:"5";s:37:"wptouch_bauhaus_featured_filter_posts";b:1;s:28:"wptouch_featured_slider_page";b:0;s:33:"wptouch_bauhaus_post_listing_view";s:7:"default";s:32:"wptouch_bauhaus_featured_enabled";b:1;s:37:"wptouch_bauhaus_post_listing_autoplay";b:0;s:33:"wptouch_bauhaus_post_listing_dots";b:1;s:41:"wptouch_bauhaus_featured_carousel_enabled";b:1;s:31:"wptouch_bauhaus_popular_enabled";b:1;s:43:"wptouch_bauhaus_popular_max_number_of_posts";s:1:"5";s:14:"wptouch_domain";s:7:"bauhaus";s:18:"nav_menu_locations";a:2:{s:20:"wptouch_primary_menu";i:2;s:7:"primary";i:2;}}', 'yes'),
(161, 'wptouch_customizer_initialized_bauhaus', '1', 'yes'),
(162, 'wptouch_menus_initialized', '1', 'yes'),
(168, 'wpts_bauhaus', 'O:15:"WPtouchSettings":32:{s:18:"bauhaus_menu_style";s:10:"off-canvas";s:21:"bauhaus_menu_position";s:9:"left-side";s:24:"bauhaus_background_color";s:7:"#edede7";s:20:"bauhaus_header_color";s:7:"#eaeaea";s:18:"bauhaus_link_color";s:7:"#000000";s:30:"bauhaus_post_page_header_color";s:7:"#dd1118";s:21:"bauhaus_show_taxonomy";b:0;s:17:"bauhaus_show_date";b:1;s:19:"bauhaus_show_author";b:0;s:19:"bauhaus_show_search";b:1;s:28:"bauhaus_show_comment_bubbles";b:1;s:27:"bauhaus_use_infinite_scroll";b:0;s:22:"bauhaus_use_thumbnails";s:17:"index_single_page";s:22:"bauhaus_thumbnail_type";s:8:"featured";s:30:"bauhaus_thumbnail_custom_field";s:0:"";s:25:"bauhaus_featured_comments";b:0;s:21:"bauhaus_featured_type";s:6:"latest";s:20:"bauhaus_featured_tag";s:0:"";s:25:"bauhaus_featured_category";s:0:"";s:26:"bauhaus_featured_post_type";s:0:"";s:25:"bauhaus_featured_post_ids";s:0:"";s:36:"bauhaus_featured_max_number_of_posts";s:1:"5";s:29:"bauhaus_featured_filter_posts";b:1;s:20:"featured_slider_page";b:0;s:25:"bauhaus_post_listing_view";s:7:"default";s:24:"bauhaus_featured_enabled";b:1;s:29:"bauhaus_post_listing_autoplay";b:0;s:25:"bauhaus_post_listing_dots";b:1;s:33:"bauhaus_featured_carousel_enabled";b:1;s:23:"bauhaus_popular_enabled";b:1;s:35:"bauhaus_popular_max_number_of_posts";s:1:"5";s:12:"primary_menu";i:2;}', 'yes'),
(169, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(172, 'wpts_foundation', 'O:15:"WPtouchSettings":78:{s:28:"allow_nested_comment_replies";b:0;s:15:"twitter_account";b:0;s:17:"latest_posts_page";s:4:"none";s:18:"new_video_handling";i:0;s:10:"allow_zoom";i:0;s:16:"smart_app_banner";s:0:"";s:21:"custom_footer_message";s:3:"B&C";s:23:"custom_css_declarations";s:0:"";s:10:"logo_image";s:58:"http://localhost/B&C/wp-content/uploads/2017/04/logo22.png";s:14:"posts_per_page";s:1:"5";s:19:"excluded_categories";s:0:"";s:13:"excluded_tags";s:0:"";s:15:"typography_sets";s:15:"oswald_opensans";s:18:"iphone_icon_retina";s:59:"http://localhost/B&C/wp-content/uploads/2017/04/conejo2.png";s:19:"android_others_icon";b:0;s:16:"ipad_icon_retina";b:0;s:25:"webapp_enable_persistence";b:0;s:18:"webapp_show_notice";b:1;s:18:"webapp_ignore_urls";s:0:"";s:25:"webapp_notice_expiry_days";i:30;s:27:"startup_screen_iphone_2g_3g";b:0;s:26:"startup_screen_iphone_4_4s";b:0;s:23:"startup_screen_iphone_5";b:0;s:23:"startup_screen_iphone_6";b:0;s:27:"startup_screen_iphone_6plus";b:0;s:30:"startup_screen_ipad_1_portrait";b:0;s:31:"startup_screen_ipad_1_landscape";b:0;s:30:"startup_screen_ipad_3_portrait";b:0;s:31:"startup_screen_ipad_3_landscape";b:0;s:23:"startup_screen_full_res";b:0;s:33:"startup_screen_ipad_full_portrait";b:0;s:34:"startup_screen_ipad_full_landscape";b:0;s:16:"advertising_type";s:4:"none";s:20:"advertising_location";s:6:"header";s:25:"advertising_blog_listings";b:1;s:18:"advertising_single";b:1;s:17:"advertising_pages";b:0;s:20:"advertising_taxonomy";b:1;s:18:"advertising_search";b:1;s:17:"google_adsense_id";s:0:"";s:14:"google_slot_id";s:0:"";s:16:"google_code_type";s:4:"sync";s:25:"custom_advertising_mobile";s:0:"";s:10:"show_share";b:1;s:14:"share_on_pages";b:1;s:14:"share_location";s:3:"top";s:19:"share_colour_scheme";s:7:"default";s:19:"social_facebook_url";s:11:"faceboo.com";s:18:"social_twitter_url";s:11:"twitter.com";s:17:"social_google_url";s:10:"google.com";s:20:"social_instagram_url";s:13:"instagram.com";s:17:"social_tumblr_url";s:0:"";s:20:"social_pinterest_url";s:0:"";s:16:"social_vimeo_url";s:0:"";s:18:"social_youtube_url";s:11:"youtube.com";s:19:"social_linkedin_url";s:0:"";s:15:"social_yelp_url";s:0:"";s:16:"social_email_url";s:17:"odalmys@gmail.com";s:14:"social_rss_url";s:0:"";s:16:"featured_enabled";b:1;s:13:"featured_blog";b:1;s:17:"featured_homepage";b:1;s:14:"featured_style";s:8:"enhanced";s:18:"featured_autoslide";b:0;s:19:"featured_continuous";b:0;s:18:"featured_grayscale";b:0;s:17:"featured_comments";b:0;s:13:"featured_type";s:6:"latest";s:12:"featured_tag";s:0:"";s:17:"featured_category";s:0:"";s:18:"featured_post_type";s:0:"";s:17:"featured_post_ids";s:0:"";s:14:"featured_speed";s:6:"normal";s:28:"featured_max_number_of_posts";s:1:"5";s:21:"featured_filter_posts";b:1;s:24:"enable_custom_post_types";b:0;s:31:"custom_post_types_in_post_index";b:1;s:25:"enabled_custom_post_types";s:0:"";}', 'yes'),
(173, 'acx_si_installed_date', '1491407074', 'yes'),
(174, 'social_icon_array_order', 's:70:"a:8:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;}";', 'yes'),
(175, 'acx_si_credit', '', 'yes'),
(176, 'acx_si_theme', '1', 'yes'),
(177, 'acx_si_icon_size', '32', 'yes'),
(178, 'acx_si_twitter', 'odalmys@gmail.com', 'yes'),
(179, 'acx_si_facebook', 'http://www.facebook.com/b&c', 'yes'),
(180, 'acx_si_gplus', 'http://google.com', 'yes'),
(181, 'acx_si_pinterest', '', 'yes'),
(182, 'acx_si_youtube', 'http://www.youtube.com/b&c', 'yes'),
(183, 'acx_si_linkedin', '', 'yes'),
(184, 'acx_si_feed', '', 'yes'),
(185, 'acx_si_instagram', 'http://www.instagram.com/b&c', 'yes'),
(186, 'acx_si_display', 'both', 'yes'),
(204, '_bbp_private_forums', 'a:0:{}', 'yes'),
(205, '_bbp_hidden_forums', 'a:0:{}', 'yes'),
(206, '_bbp_db_version', '250', 'yes'),
(207, '_bbp_edit_lock', '5', 'yes'),
(208, '_bbp_throttle_time', '10', 'yes'),
(209, '_bbp_allow_anonymous', '0', 'yes'),
(210, '_bbp_allow_global_access', '1', 'yes'),
(211, '_bbp_default_role', 'bbp_participant', 'yes'),
(212, '_bbp_allow_revisions', '1', 'yes'),
(213, '_bbp_enable_favorites', '1', 'yes'),
(214, '_bbp_enable_subscriptions', '1', 'yes'),
(215, '_bbp_allow_topic_tags', '1', 'yes'),
(216, '_bbp_allow_search', '1', 'yes'),
(217, '_bbp_use_wp_editor', '1', 'yes'),
(218, '_bbp_use_autoembed', '1', 'yes'),
(219, '_bbp_thread_replies_depth', '2', 'yes'),
(220, '_bbp_allow_threaded_replies', '0', 'yes'),
(221, '_bbp_topics_per_page', '15', 'yes'),
(222, '_bbp_replies_per_page', '15', 'yes'),
(223, '_bbp_topics_per_rss_page', '25', 'yes'),
(224, '_bbp_replies_per_rss_page', '25', 'yes'),
(225, '_bbp_root_slug', 'forums', 'yes'),
(226, '_bbp_include_root', '1', 'yes'),
(227, '_bbp_show_on_root', 'forums', 'yes'),
(228, '_bbp_forum_slug', 'forum', 'yes'),
(229, '_bbp_topic_slug', 'temas', 'yes'),
(230, '_bbp_topic_tag_slug', 'temas-tag', 'yes'),
(231, '_bbp_view_slug', 'vertemas', 'yes'),
(232, '_bbp_reply_slug', 'responder', 'yes'),
(233, '_bbp_search_slug', 'buscar', 'yes'),
(234, '_bbp_user_slug', 'usuario', 'yes'),
(235, '_bbp_topic_archive_slug', 'temas', 'yes'),
(236, '_bbp_reply_archive_slug', 'respuestas', 'yes'),
(237, '_bbp_user_favs_slug', 'temasfavoritos', 'yes'),
(238, '_bbp_user_subs_slug', 'subcripciones', 'yes'),
(248, 'widget_bbp_forums_widget', 'a:2:{i:2;a:2:{s:5:"title";s:6:"Forums";s:12:"parent_forum";s:1:"0";}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_bbp_replies_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_bbp_search_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_bbp_login_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_bbp_topics_widget', 'a:2:{i:2;a:6:{s:5:"title";s:15:"Temas Recientes";s:8:"order_by";s:7:"popular";s:12:"parent_forum";s:3:"any";s:9:"show_date";b:0;s:9:"show_user";b:0;s:9:"max_shown";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_bbp_stats_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_bbp_views_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(266, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(274, 'widget_acx-social-icons-widget', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:9:"icon_size";s:2:"32";s:10:"icon_theme";s:1:"6";s:10:"icon_align";s:4:"left";}i:3;a:4:{s:5:"title";s:14:"Redes Sociales";s:9:"icon_size";s:2:"32";s:10:"icon_theme";s:1:"6";s:10:"icon_align";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(285, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1491418497;}', 'yes'),
(286, 'ctsc_settings', 'a:1:{s:16:"shortcode_prefix";s:2:"ct";}', 'yes'),
(287, 'ctsc_install', '2017-04-05', 'yes'),
(293, 'theme_mods_twentythirteen', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:20:"wptouch_primary_menu";i:0;s:7:"primary";i:2;}s:12:"header_image";s:79:"http://localhost/B&C/wp-content/themes/twentythirteen/images/headers/circle.png";s:17:"header_image_data";a:3:{s:3:"url";s:79:"http://localhost/B&C/wp-content/themes/twentythirteen/images/headers/circle.png";s:13:"thumbnail_url";s:89:"http://localhost/B&C/wp-content/themes/twentythirteen/images/headers/circle-thumbnail.png";s:11:"description";s:8:"Círculo";}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491415871;s:4:"data";a:4:{s:9:"sidebar-3";a:3:{i:0;s:14:"recent-posts-2";i:1;s:6:"meta-2";i:2;s:25:"acx-social-icons-widget-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:17:"recent-comments-2";i:1;s:10:"nav_menu-2";i:2;s:6:"meta-3";i:3;s:25:"acx-social-icons-widget-3";}s:9:"sidebar-2";a:0:{}}}}', 'yes'),
(295, 'page_for_posts', '87', 'yes'),
(307, '_site_transient_timeout_theme_roots', '1491417592', 'yes'),
(308, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(309, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491415892;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"meta-3";i:1;s:10:"nav_menu-2";i:2;s:25:"acx-social-icons-widget-2";i:3;s:25:"acx-social-icons-widget-3";}s:9:"sidebar-1";a:3:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(310, '_site_transient_timeout__wptouch_available_cloud_themes', '1491417128', 'yes'),
(311, '_site_transient__wptouch_available_cloud_themes', '', 'yes'),
(312, '_site_transient_timeout__wptouch_available_cloud_addons', '1491417130', 'yes'),
(313, '_site_transient__wptouch_available_cloud_addons', '', 'yes'),
(314, 'wptouch-disable-free-newsletter-notice', '1', 'no'),
(332, '_transient_is_multi_author', '0', 'yes'),
(333, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(334, '_transient_twentyfourteen_category_count', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=348 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1491413773:1'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1491405659'),
(6, 6, '_wp_attached_file', '2017/04/conejo2.png'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:255;s:4:"file";s:19:"2017/04/conejo2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"conejo2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(8, 4, '_wp_page_template', 'default'),
(9, 8, '_edit_last', '1'),
(10, 8, '_wp_page_template', 'default'),
(11, 8, '_edit_lock', '1491406126:1'),
(16, 12, '_menu_item_type', 'post_type'),
(17, 12, '_menu_item_menu_item_parent', '0'),
(18, 12, '_menu_item_object_id', '8'),
(19, 12, '_menu_item_object', 'page'),
(20, 12, '_menu_item_target', ''),
(21, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 12, '_menu_item_xfn', ''),
(23, 12, '_menu_item_url', ''),
(25, 13, '_menu_item_type', 'post_type'),
(26, 13, '_menu_item_menu_item_parent', '0'),
(27, 13, '_menu_item_object_id', '4'),
(28, 13, '_menu_item_object', 'page'),
(29, 13, '_menu_item_target', ''),
(30, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 13, '_menu_item_xfn', ''),
(32, 13, '_menu_item_url', ''),
(40, 17, '_wp_attached_file', '2017/04/logo223.png'),
(41, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:471;s:6:"height";i:213;s:4:"file";s:19:"2017/04/logo223.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"logo223-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"logo223-300x136.png";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:19:"logo223-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(42, 1, '_edit_lock', '1491418353:1'),
(43, 1, '_edit_last', '1'),
(48, 21, '_edit_last', '1'),
(49, 21, 'UGML_total_images_count', '1'),
(50, 21, 'UGML_all_photos_details', 's:558:"a:1:{i:0;a:9:{s:16:"UGML_image_label";s:9:"tulipanes";s:14:"UGML_image_url";s:73:"http://localhost/B&C/wp-content/uploads/2017/04/Tulips-e1491407900200.jpg";s:24:"UGML_gallery_admin_thumb";s:66:"http://localhost/B&C/wp-content/uploads/2017/04/Tulips-300x300.jpg";s:25:"UGML_gallery_admin_circle";s:66:"http://localhost/B&C/wp-content/uploads/2017/04/Tulips-400x400.jpg";s:17:"UGML_display_type";s:5:"image";s:18:"UGML_image_tagline";s:0:"";s:16:"UGML_image_descp";s:15:"para la galeria";s:18:"UGML_external_link";s:0:"";s:21:"UGML_extra_button_url";s:0:"";}}";'),
(51, 21, 'UGML_Gallery_Settings_21', 's:860:"a:23:{s:16:"UGML_Grid_Layout";s:7:"classic";s:21:"UGML_Grid_Orientation";s:8:"Vertical";s:16:"UGML_cvThumbnail";s:8:"animtext";s:13:"UGML_maxWidth";s:4:"1600";s:14:"UGML_maxHeight";s:3:"600";s:13:"UGML_openLink";s:6:"_blank";s:15:"UGML_Font_Style";s:5:"Arial";s:22:"UGML_disableThumbnails";s:2:"no";s:15:"UGML_hoverColor";s:7:"#31A3DD";s:18:"UGML_Color_Opacity";s:3:"0.8";s:24:"UGML_imageHoverTextColor";s:7:"#ffffff";s:19:"UGML_useIconButtons";s:3:"yes";s:14:"UGML_IconStyle";s:2:"no";s:24:"UGML_thumbnailBorderSize";s:1:"0";s:22:"UGML_spaceBwThumbnails";s:1:"5";s:13:"UGML_showMenu";s:3:"yes";s:16:"UGML_menuBgColor";s:7:"#31A3DD";s:18:"UGML_showSearchBox";s:3:"yes";s:17:"UGML_menuPosition";s:4:"left";s:19:"UGML_showZoomButton";s:3:"yes";s:26:"UGML_showDescriptionButton";s:3:"yes";s:25:"UGML_descriptionByDefault";s:3:"yes";s:15:"UGML_Custom_CSS";s:0:"";}";'),
(52, 21, '_edit_lock', '1491407900:1'),
(53, 22, '_wp_attached_file', '2017/04/Chrysanthemum.jpg'),
(54, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2017/04/Chrysanthemum.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chrysanthemum-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:25:"Chrysanthemum-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:25:"Chrysanthemum-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(55, 23, '_wp_attached_file', '2017/04/Desert.jpg'),
(56, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:18:"2017/04/Desert.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Desert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Desert-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Desert-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:18:"Desert-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:18:"Desert-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:18:"Desert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:18:"Desert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:18:"Desert-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Desert-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:19:"Desert-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(57, 24, '_wp_attached_file', '2017/04/Hydrangeas.jpg'),
(58, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:22:"2017/04/Hydrangeas.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Hydrangeas-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Hydrangeas-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:22:"Hydrangeas-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:22:"Hydrangeas-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:22:"Hydrangeas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:22:"Hydrangeas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:23:"Hydrangeas-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:11:"Amish Patel";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(59, 25, '_wp_attached_file', '2017/04/Jellyfish.jpg'),
(60, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:21:"2017/04/Jellyfish.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Jellyfish-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"Jellyfish-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:21:"Jellyfish-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:21:"Jellyfish-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:21:"Jellyfish-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:21:"Jellyfish-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:22:"Jellyfish-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:9:"Hang Quan";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(61, 26, '_wp_attached_file', '2017/04/Koala.jpg'),
(62, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:17:"2017/04/Koala.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Koala-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"Koala-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"Koala-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:17:"Koala-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:17:"Koala-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:17:"Koala-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:17:"Koala-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:17:"Koala-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"Koala-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:18:"Koala-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(63, 27, '_wp_attached_file', '2017/04/Lighthouse.jpg'),
(64, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:22:"2017/04/Lighthouse.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Lighthouse-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Lighthouse-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Lighthouse-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:22:"Lighthouse-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:22:"Lighthouse-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:22:"Lighthouse-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:22:"Lighthouse-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:22:"Lighthouse-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"Lighthouse-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:23:"Lighthouse-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:10:"Tom Alphin";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(65, 28, '_wp_attached_file', '2017/04/Penguins.jpg'),
(66, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:20:"2017/04/Penguins.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Penguins-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Penguins-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:20:"Penguins-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:20:"Penguins-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:20:"Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:20:"Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:20:"Penguins-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"Penguins-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:21:"Penguins-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(67, 29, '_wp_attached_file', '2017/04/Tulips-e1491407900200.jpg'),
(68, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:33:"2017/04/Tulips-e1491407900200.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Tulips-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Tulips-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Tulips-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"UGML_gallery_admin_thumb";a:4:{s:4:"file";s:18:"Tulips-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"UGML_gallery_admin_circle";a:4:{s:4:"file";s:18:"Tulips-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:24:"ugml_gallery_admin_thumb";a:4:{s:4:"file";s:18:"Tulips-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"ugml_gallery_thumb";a:4:{s:4:"file";s:18:"Tulips-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:18:"Tulips-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Tulips-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:19:"Tulips-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:13:"David Nadalin";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(79, 29, '_edit_lock', '1491407801:1'),
(80, 29, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:10:"Tulips.jpg";}}'),
(81, 29, '_edit_last', '1'),
(82, 21, '_wp_trash_meta_status', 'publish'),
(83, 21, '_wp_trash_meta_time', '1491408048'),
(84, 34, '_edit_last', '1'),
(85, 34, 'UGML_total_images_count', '1'),
(86, 34, 'UGML_all_photos_details', 's:558:"a:1:{i:0;a:9:{s:16:"UGML_image_label";s:9:"tulipanes";s:14:"UGML_image_url";s:73:"http://localhost/B&C/wp-content/uploads/2017/04/Tulips-e1491407900200.jpg";s:24:"UGML_gallery_admin_thumb";s:66:"http://localhost/B&C/wp-content/uploads/2017/04/Tulips-300x300.jpg";s:25:"UGML_gallery_admin_circle";s:66:"http://localhost/B&C/wp-content/uploads/2017/04/Tulips-400x400.jpg";s:17:"UGML_display_type";s:5:"image";s:18:"UGML_image_tagline";s:0:"";s:16:"UGML_image_descp";s:15:"para la galeria";s:18:"UGML_external_link";s:0:"";s:21:"UGML_extra_button_url";s:0:"";}}";'),
(87, 34, 'UGML_Gallery_Settings_34', 's:860:"a:23:{s:16:"UGML_Grid_Layout";s:7:"classic";s:21:"UGML_Grid_Orientation";s:8:"Vertical";s:16:"UGML_cvThumbnail";s:8:"animtext";s:13:"UGML_maxWidth";s:4:"1600";s:14:"UGML_maxHeight";s:3:"600";s:13:"UGML_openLink";s:6:"_blank";s:15:"UGML_Font_Style";s:5:"Arial";s:22:"UGML_disableThumbnails";s:2:"no";s:15:"UGML_hoverColor";s:7:"#31A3DD";s:18:"UGML_Color_Opacity";s:3:"0.8";s:24:"UGML_imageHoverTextColor";s:7:"#ffffff";s:19:"UGML_useIconButtons";s:3:"yes";s:14:"UGML_IconStyle";s:2:"no";s:24:"UGML_thumbnailBorderSize";s:1:"0";s:22:"UGML_spaceBwThumbnails";s:1:"5";s:13:"UGML_showMenu";s:3:"yes";s:16:"UGML_menuBgColor";s:7:"#31A3DD";s:18:"UGML_showSearchBox";s:3:"yes";s:17:"UGML_menuPosition";s:4:"left";s:19:"UGML_showZoomButton";s:3:"yes";s:26:"UGML_showDescriptionButton";s:3:"yes";s:25:"UGML_descriptionByDefault";s:3:"yes";s:15:"UGML_Custom_CSS";s:0:"";}";'),
(88, 34, '_edit_lock', '1491407977:1'),
(89, 34, '_wp_trash_meta_status', 'publish'),
(90, 34, '_wp_trash_meta_time', '1491408125'),
(93, 36, '_edit_last', '1'),
(94, 36, '_edit_lock', '1491408297:1'),
(95, 36, '_bbp_last_active_time', '2017-04-05 16:24:11'),
(96, 36, '_bbp_forum_subforum_count', '0'),
(97, 36, '_bbp_reply_count', '0'),
(98, 36, '_bbp_total_reply_count', '0'),
(99, 36, '_bbp_topic_count', '1'),
(100, 36, '_bbp_total_topic_count', '1'),
(101, 36, '_bbp_topic_count_hidden', '0'),
(102, 36, '_bbp_last_topic_id', '38'),
(103, 36, '_bbp_last_reply_id', '43'),
(104, 36, '_bbp_last_active_id', '43'),
(105, 38, '_edit_last', '1'),
(106, 38, '_edit_lock', '1491408377:1'),
(107, 38, '_bbp_forum_id', '36'),
(108, 38, '_bbp_topic_id', '38'),
(109, 38, '_bbp_author_ip', '127.0.0.1'),
(110, 38, '_bbp_last_active_time', '2017-04-05 16:08:08'),
(111, 38, '_bbp_reply_count', '0'),
(112, 38, '_bbp_reply_count_hidden', '0'),
(113, 38, '_bbp_last_active_id', '38'),
(114, 38, '_bbp_voice_count', '1'),
(115, 40, '_edit_last', '1'),
(116, 40, '_edit_lock', '1491408476:1'),
(117, 40, '_bbp_forum_id', '0'),
(118, 40, '_bbp_topic_id', '0'),
(119, 40, '_bbp_author_ip', '127.0.0.1'),
(120, 40, '_bbp_revision_log', 'a:1:{i:42;a:2:{s:6:"author";i:1;s:6:"reason";s:0:"";}}'),
(121, 43, '_edit_last', '1'),
(122, 43, '_edit_lock', '1491409321:1'),
(123, 43, '_bbp_forum_id', '36'),
(124, 43, '_bbp_topic_id', '0'),
(125, 43, '_bbp_author_ip', '127.0.0.1'),
(128, 46, '_edit_last', '1'),
(129, 46, '_edit_lock', '1491410027:1'),
(130, 46, '_thumbnail_id', '28'),
(133, 46, '_wp_trash_meta_status', 'publish'),
(134, 46, '_wp_trash_meta_time', '1491410367'),
(135, 48, '_edit_last', '1'),
(136, 48, '_edit_lock', '1491410471:1'),
(137, 48, '_thumbnail_id', '28'),
(138, 48, '_wp_page_template', 'default'),
(139, 51, '_wp_attached_file', '2017/04/headerB1.png'),
(140, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:798;s:6:"height";i:150;s:4:"file";s:20:"2017/04/headerB1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"headerB1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"headerB1-300x56.png";s:5:"width";i:300;s:6:"height";i:56;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:20:"headerB1-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"headerB1-672x150.png";s:5:"width";i:672;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(141, 52, '_wp_attached_file', '2017/04/cropped-headerB1.png'),
(142, 52, '_wp_attachment_context', 'custom-header'),
(143, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:207;s:4:"file";s:28:"2017/04/cropped-headerB1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-headerB1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-headerB1-300x49.png";s:5:"width";i:300;s:6:"height";i:49;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"cropped-headerB1-1024x168.png";s:5:"width";i:1024;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:28:"cropped-headerB1-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"cropped-headerB1-672x207.png";s:5:"width";i:672;s:6:"height";i:207;s:9:"mime-type";s:9:"image/png";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:29:"cropped-headerB1-1038x207.png";s:5:"width";i:1038;s:6:"height";i:207;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(144, 52, '_wp_attachment_custom_header_last_used_twentyfourteen', '1491410697'),
(145, 52, '_wp_attachment_is_custom_header', 'twentyfourteen'),
(146, 53, '_edit_last', '1'),
(147, 53, '_edit_lock', '1491411191:1'),
(148, 53, '_thumbnail_id', '26'),
(151, 48, '_wp_trash_meta_status', 'publish'),
(152, 48, '_wp_trash_meta_time', '1491411201'),
(153, 55, '_edit_last', '1'),
(154, 55, '_edit_lock', '1491411278:1'),
(155, 55, '_thumbnail_id', '28'),
(156, 55, '_wp_page_template', 'default'),
(159, 53, '_wp_trash_meta_status', 'publish'),
(160, 53, '_wp_trash_meta_time', '1491411341'),
(161, 8, '_wp_trash_meta_status', 'publish'),
(162, 8, '_wp_trash_meta_time', '1491411348'),
(163, 57, '_edit_last', '1'),
(164, 57, '_edit_lock', '1491411699:1'),
(168, 60, '_wp_attached_file', '2017/04/3d_338.jpg'),
(169, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:18:"2017/04/3d_338.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"3d_338-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"3d_338-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"3d_338-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:18:"3d_338-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"3d_338-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:19:"3d_338-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(170, 61, '_wp_attached_file', '2017/04/3d_462.jpg'),
(171, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:18:"2017/04/3d_462.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"3d_462-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"3d_462-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"3d_462-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:18:"3d_462-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"3d_462-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:19:"3d_462-1038x576.jpg";s:5:"width";i:1038;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(172, 62, '_wp_attached_file', '2017/04/3frfr.jpg'),
(173, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:17:"2017/04/3frfr.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"3frfr-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"3frfr-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"3frfr-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:17:"3frfr-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"3frfr-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:18:"3frfr-1038x576.jpg";s:5:"width";i:1038;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(174, 63, '_wp_attached_file', '2017/04/00398_toonlandia_1280x960.jpg'),
(175, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:37:"2017/04/00398_toonlandia_1280x960.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"00398_toonlandia_1280x960-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"00398_toonlandia_1280x960-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"00398_toonlandia_1280x960-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:37:"00398_toonlandia_1280x960-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"00398_toonlandia_1280x960-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:38:"00398_toonlandia_1280x960-1038x576.jpg";s:5:"width";i:1038;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(176, 64, '_wp_attached_file', '2017/04/1024X768_VERT.png'),
(177, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2017/04/1024X768_VERT.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"1024X768_VERT-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"1024X768_VERT-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"1024X768_VERT-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:25:"1024X768_VERT-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"1024X768_VERT-672x372.png";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:9:"image/png";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:26:"1024X768_VERT-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(178, 65, '_wp_attached_file', '2017/04/6246.jpg'),
(179, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:560;s:4:"file";s:16:"2017/04/6246.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"6246-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"6246-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:16:"6246-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"6246-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(180, 66, '_wp_attached_file', '2017/04/Apple_iPod_by_fluid_art.jpg'),
(181, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:35:"2017/04/Apple_iPod_by_fluid_art.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Apple_iPod_by_fluid_art-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Apple_iPod_by_fluid_art-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"Apple_iPod_by_fluid_art-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:35:"Apple_iPod_by_fluid_art-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"Apple_iPod_by_fluid_art-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:36:"Apple_iPod_by_fluid_art-1038x576.jpg";s:5:"width";i:1038;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(182, 67, '_wp_attached_file', '2017/04/AquaLoop-Wallpaper.jpg'),
(183, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1024;s:4:"file";s:30:"2017/04/AquaLoop-Wallpaper.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"AquaLoop-Wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"AquaLoop-Wallpaper-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"AquaLoop-Wallpaper-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:30:"AquaLoop-Wallpaper-144x144.jpg";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"AquaLoop-Wallpaper-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:31:"AquaLoop-Wallpaper-1038x576.jpg";s:5:"width";i:1038;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(186, 55, '_wp_trash_meta_status', 'publish'),
(187, 55, '_wp_trash_meta_time', '1491411847'),
(188, 57, '_wp_trash_meta_status', 'publish'),
(189, 57, '_wp_trash_meta_time', '1491411867'),
(190, 69, '_edit_last', '1'),
(191, 69, '_edit_lock', '1491412198:1'),
(192, 69, '_thumbnail_id', '63'),
(197, 69, '_wp_old_slug', '69'),
(198, 72, '_menu_item_type', 'custom'),
(199, 72, '_menu_item_menu_item_parent', '0'),
(200, 72, '_menu_item_object_id', '72'),
(201, 72, '_menu_item_object', 'custom'),
(202, 72, '_menu_item_target', ''),
(203, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(204, 72, '_menu_item_xfn', ''),
(205, 72, '_menu_item_url', 'http://disenno.com'),
(207, 73, '_menu_item_type', 'custom'),
(208, 73, '_menu_item_menu_item_parent', '0'),
(209, 73, '_menu_item_object_id', '73'),
(210, 73, '_menu_item_object', 'custom'),
(211, 73, '_menu_item_target', ''),
(212, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(213, 73, '_menu_item_xfn', ''),
(214, 73, '_menu_item_url', 'http://plantillas.com'),
(216, 74, '_menu_item_type', 'custom'),
(217, 74, '_menu_item_menu_item_parent', '0'),
(218, 74, '_menu_item_object_id', '74'),
(219, 74, '_menu_item_object', 'custom'),
(220, 74, '_menu_item_target', ''),
(221, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(222, 74, '_menu_item_xfn', ''),
(223, 74, '_menu_item_url', 'http://programacion.com'),
(225, 75, '_menu_item_type', 'custom'),
(226, 75, '_menu_item_menu_item_parent', '0'),
(227, 75, '_menu_item_object_id', '75'),
(228, 75, '_menu_item_object', 'custom'),
(229, 75, '_menu_item_target', ''),
(230, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(231, 75, '_menu_item_xfn', ''),
(232, 75, '_menu_item_url', 'http://php.com'),
(242, 83, '_edit_last', '1'),
(243, 83, '_edit_lock', '1491414365:1'),
(248, 83, '_thumbnail_id', '66'),
(251, 83, 'enclosure', 'http://localhost/B&C/wp-content/uploads/2017/04/sitios-responsive-en-drupalok.mov\n8165727\nvideo/quicktime\n'),
(252, 87, '_edit_last', '1'),
(253, 87, '_edit_lock', '1491414842:1'),
(254, 69, '_wp_trash_meta_status', 'publish'),
(255, 69, '_wp_trash_meta_time', '1491415088'),
(256, 89, '_edit_last', '1'),
(257, 89, '_edit_lock', '1491415068:1'),
(258, 89, '_thumbnail_id', '26'),
(259, 91, '_menu_item_type', 'post_type'),
(260, 91, '_menu_item_menu_item_parent', '0'),
(261, 91, '_menu_item_object_id', '89'),
(262, 91, '_menu_item_object', 'page'),
(263, 91, '_menu_item_target', ''),
(264, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(265, 91, '_menu_item_xfn', ''),
(266, 91, '_menu_item_url', ''),
(268, 83, '_wp_trash_meta_status', 'publish'),
(269, 83, '_wp_trash_meta_time', '1491415287'),
(270, 92, '_edit_last', '1'),
(271, 92, '_edit_lock', '1491415289:1'),
(278, 92, '_wp_trash_meta_status', 'publish'),
(279, 92, '_wp_trash_meta_time', '1491415438'),
(280, 96, '_edit_last', '1'),
(281, 96, '_edit_lock', '1491418636:1'),
(282, 98, '_menu_item_type', 'post_type'),
(283, 98, '_menu_item_menu_item_parent', '0'),
(284, 98, '_menu_item_object_id', '96'),
(285, 98, '_menu_item_object', 'page'),
(286, 98, '_menu_item_target', ''),
(287, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(288, 98, '_menu_item_xfn', ''),
(289, 98, '_menu_item_url', ''),
(291, 101, '_wp_attached_file', '2017/04/cropped-headerB11.png'),
(292, 101, '_wp_attachment_context', 'custom-header'),
(293, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:230;s:4:"file";s:29:"2017/04/cropped-headerB11.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"cropped-headerB11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-headerB11-300x43.png";s:5:"width";i:300;s:6:"height";i:43;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:30:"cropped-headerB11-1024x147.png";s:5:"width";i:1024;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:29:"cropped-headerB11-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"cropped-headerB11-604x230.png";s:5:"width";i:604;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(294, 101, '_wp_attachment_custom_header_last_used_twentythirteen', '1491415823'),
(295, 101, '_wp_attachment_is_custom_header', 'twentythirteen'),
(302, 105, '_wp_attached_file', '2017/04/sitios-responsive-en-drupal.mov'),
(303, 105, '_wp_attachment_metadata', 'a:11:{s:8:"lossless";b:0;s:7:"bitrate";i:417380;s:8:"filesize";i:18016980;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:345;s:16:"length_formatted";s:4:"5:45";s:5:"width";i:360;s:6:"height";i:240;s:10:"fileformat";s:9:"quicktime";s:10:"dataformat";s:9:"quicktime";s:5:"codec";s:4:"avc1";}'),
(306, 107, '_wp_attached_file', '2017/04/logobc.png'),
(307, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:330;s:6:"height";i:149;s:4:"file";s:18:"2017/04/logobc.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"logobc-150x149.png";s:5:"width";i:150;s:6:"height";i:149;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"logobc-300x135.png";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:18:"logobc-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(308, 108, '_wp_attached_file', '2017/04/cropped-logobc.png'),
(309, 108, '_wp_attachment_context', 'custom-header'),
(310, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:439;s:4:"file";s:26:"2017/04/cropped-logobc.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-logobc-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-logobc-300x105.png";s:5:"width";i:300;s:6:"height";i:105;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-logobc-1024x357.png";s:5:"width";i:1024;s:6:"height";i:357;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:26:"cropped-logobc-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"cropped-logobc-672x372.png";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:9:"image/png";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:27:"cropped-logobc-1038x439.png";s:5:"width";i:1038;s:6:"height";i:439;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(311, 108, '_wp_attachment_custom_header_last_used_twentyfourteen', '1491416938'),
(312, 108, '_wp_attachment_is_custom_header', 'twentyfourteen'),
(313, 109, '_wp_attached_file', '2017/04/headerV.png'),
(314, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:798;s:6:"height";i:150;s:4:"file";s:19:"2017/04/headerV.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"headerV-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"headerV-300x56.png";s:5:"width";i:300;s:6:"height";i:56;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:19:"headerV-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"headerV-672x150.png";s:5:"width";i:672;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(315, 110, '_wp_attached_file', '2017/04/cropped-headerV.png'),
(316, 110, '_wp_attachment_context', 'custom-header'),
(317, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:207;s:4:"file";s:27:"2017/04/cropped-headerV.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"cropped-headerV-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-headerV-300x49.png";s:5:"width";i:300;s:6:"height";i:49;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:28:"cropped-headerV-1024x168.png";s:5:"width";i:1024;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:27:"cropped-headerV-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"cropped-headerV-672x207.png";s:5:"width";i:672;s:6:"height";i:207;s:9:"mime-type";s:9:"image/png";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:28:"cropped-headerV-1038x207.png";s:5:"width";i:1038;s:6:"height";i:207;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(318, 110, '_wp_attachment_custom_header_last_used_twentyfourteen', '1491417326'),
(319, 110, '_wp_attachment_is_custom_header', 'twentyfourteen'),
(320, 111, '_wp_attached_file', '2017/04/headerV1.png'),
(321, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:798;s:6:"height";i:150;s:4:"file";s:20:"2017/04/headerV1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"headerV1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"headerV1-300x56.png";s:5:"width";i:300;s:6:"height";i:56;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:20:"headerV1-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"headerV1-672x150.png";s:5:"width";i:672;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(322, 112, '_wp_attached_file', '2017/04/cropped-headerV1.png'),
(323, 112, '_wp_attachment_context', 'custom-header'),
(324, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:204;s:4:"file";s:28:"2017/04/cropped-headerV1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-headerV1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-headerV1-300x49.png";s:5:"width";i:300;s:6:"height";i:49;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"cropped-headerV1-1024x166.png";s:5:"width";i:1024;s:6:"height";i:166;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:28:"cropped-headerV1-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"cropped-headerV1-672x204.png";s:5:"width";i:672;s:6:"height";i:204;s:9:"mime-type";s:9:"image/png";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:29:"cropped-headerV1-1038x204.png";s:5:"width";i:1038;s:6:"height";i:204;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(325, 112, '_wp_attachment_custom_header_last_used_twentyfourteen', '1491417405'),
(326, 112, '_wp_attachment_is_custom_header', 'twentyfourteen'),
(327, 113, '_edit_last', '1'),
(328, 113, '_edit_lock', '1491418118:1'),
(329, 114, '_wp_attached_file', '2017/04/www1.png'),
(330, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:193;s:6:"height";i:144;s:4:"file";s:16:"2017/04/www1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"www1-150x144.png";s:5:"width";i:150;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:16:"www1-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(332, 115, '_wp_attached_file', '2017/04/www2.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(333, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:173;s:6:"height";i:141;s:4:"file";s:16:"2017/04/www2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"www2-150x141.png";s:5:"width";i:150;s:6:"height";i:141;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:16:"www2-144x141.png";s:5:"width";i:144;s:6:"height";i:141;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(335, 117, '_wp_attached_file', '2017/04/www.png'),
(336, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:230;s:4:"file";s:15:"2017/04/www.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"www-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:15:"www-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(337, 113, '_thumbnail_id', '117'),
(340, 119, '_wp_attached_file', '2017/04/conejo1.png'),
(341, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:255;s:4:"file";s:19:"2017/04/conejo1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"conejo1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"wptouch-new-thumbnail";a:4:{s:4:"file";s:19:"conejo1-144x144.png";s:5:"width";i:144;s:6:"height";i:144;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(342, 1, '_thumbnail_id', '119'),
(345, 120, '_wp_attached_file', '2017/04/sitios-responsive-en-drupalok.mov'),
(346, 120, '_wp_attachment_metadata', 'a:11:{s:8:"lossless";b:0;s:7:"bitrate";i:287829;s:8:"filesize";i:8165727;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:227;s:16:"length_formatted";s:4:"3:47";s:5:"width";i:344;s:6:"height";i:192;s:10:"fileformat";s:9:"quicktime";s:10:"dataformat";s:9:"quicktime";s:5:"codec";s:4:"avc1";}'),
(347, 96, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-05 15:13:50', '2017-04-05 15:13:50', '<p style="text-align: justify;">Hola a todos los interesados en este sitio, vamos a ir actualizando el sitio poco a poco segun las necesidades que tengamos. Por el momento tenemos el mas sencillo pues el proposito es comprobar que si hay trabajos realizados en Wordpress y que sabemos como usarlo.</p>', '¡Hola mundo!', '', 'publish', 'open', 'closed', '', 'hola-mundo', '', '', '2017-04-05 18:54:27', '2017-04-05 18:54:27', '', 0, 'http://localhost/B&#038;C/?p=1', 0, 'post', '', 1),
(2, 1, '2017-04-05 15:13:50', '2017-04-05 15:13:50', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/B&C/wp-admin/">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'trash', 'open', 'open', '', 'pagina-ejemplo', '', '', '2017-04-05 15:20:59', '2017-04-05 15:20:59', '', 0, 'http://localhost/B&#038;C/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-04-05 15:14:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-05 15:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/B&C/?p=3', 0, 'post', '', 0),
(4, 1, '2017-04-05 15:28:21', '2017-04-05 15:28:21', '<p style="text-align: justify;"><a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png"><img class="  wp-image-6 alignleft" src="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png" alt="conejo2" width="100" height="150" /></a>B&amp;C es una empresa que propone el desarrollo de sitios web y blog mediante el uso de CMS. Garantizamos la seguridad de estas aplicaciones y los requerimientos, asi como el diseño de imagenes, todo es basado primeramente en el analisis que se realiza sobre su visión y a partir de ahí se proyecta la información visual he informativa del sitio que desea  . Tenemos una experiencia de más de 10 años desarrollando sobre estas plataformas siendo asi posible tranformar su imaginacion a las nuevas tendencias tecnologicas.</p>\r\n&nbsp;', '¿Quién Somos?', '', 'publish', 'closed', 'closed', '', 'quien-somos', '', '', '2017-04-05 17:37:24', '2017-04-05 17:37:24', '', 0, 'http://localhost/B&#038;C/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-04-05 15:20:59', '2017-04-05 15:20:59', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/B&C/wp-admin/">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2017-04-05 15:20:59', '2017-04-05 15:20:59', '', 2, 'http://localhost/B&C/2017/04/05/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-04-05 15:27:42', '2017-04-05 15:27:42', '', 'conejo2', '', 'inherit', 'open', 'open', '', 'conejo2', '', '', '2017-04-05 15:27:42', '2017-04-05 15:27:42', '', 4, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2017-04-05 15:28:21', '2017-04-05 15:28:21', '<p style="text-align: justify;"><a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png"><img class="  wp-image-6 alignleft" src="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png" alt="conejo2" width="100" height="150" /></a>B&amp;C es una empresa que propone el desarrollo de sitios web y blog mediante el uso de CMS. Garantizamos la seguridad de estas aplicaciones y los requerimientos, asi como el diseño de imagenes, todo es basado primeramente en el analisis que se realiza sobre su visión y a partir de ahí se proyecta la información visual he informativa del sitio que desea  . Tenemos una experiencia de más de 10 años desarrollando sobre estas plataformas siendo asi posible tranformar su imaginacion a las nuevas tendencias tecnologicas.</p>', '¿Quién Somos?', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2017-04-05 15:28:21', '2017-04-05 15:28:21', '', 4, 'http://localhost/B&C/2017/04/05/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-04-05 15:31:08', '2017-04-05 15:31:08', '', 'Blog', '', 'trash', 'open', 'open', '', 'blog', '', '', '2017-04-05 16:55:48', '2017-04-05 16:55:48', '', 0, 'http://localhost/B&#038;C/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-04-05 15:31:08', '2017-04-05 15:31:08', '', 'Blog', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2017-04-05 15:31:08', '2017-04-05 15:31:08', '', 8, 'http://localhost/B&C/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-04-05 15:34:46', '2017-04-05 15:34:46', ' ', '', '', 'publish', 'open', 'open', '', '12', '', '', '2017-04-05 18:05:55', '2017-04-05 18:05:55', '', 0, 'http://localhost/B&#038;C/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2017-04-05 15:34:46', '2017-04-05 15:34:46', ' ', '', '', 'publish', 'open', 'open', '', '13', '', '', '2017-04-05 18:05:55', '2017-04-05 18:05:55', '', 0, 'http://localhost/B&#038;C/?p=13', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-04-05 15:42:30', '2017-04-05 15:42:30', '', 'logo223', '', 'inherit', 'open', 'open', '', 'logo223', '', '', '2017-04-05 15:42:30', '2017-04-05 15:42:30', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/logo223.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2017-04-05 15:49:43', '2017-04-05 15:49:43', 'Hola a todos los interesados en este sitio, vamos a ir actualizando el sitio poco a poco segun las necesidades que tengamos. Por el momento tenemos el mas sencillo pues el proposito es comprobar que si hay', '¡Hola mundo!', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2017-04-05 15:49:43', '2017-04-05 15:49:43', '', 1, 'http://localhost/B&C/1-autosave-v1/', 0, 'revision', '', 0),
(19, 1, '2017-04-05 15:50:13', '2017-04-05 15:50:13', '<p style="text-align: justify;">Hola a todos los interesados en este sitio, vamos a ir actualizando el sitio poco a poco segun las necesidades que tengamos. Por el momento tenemos el mas sencillo pues el proposito es comprobar que si hay trabajos realizados en Wordpress y que sabemos como usarlo.</p>', '¡Hola mundo!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2017-04-05 15:50:13', '2017-04-05 15:50:13', '', 1, 'http://localhost/B&C/1-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-04-05 15:59:27', '2017-04-05 15:59:27', '', 'Galeria', '', 'trash', 'closed', 'closed', '', 'galeria', '', '', '2017-04-05 16:00:48', '2017-04-05 16:00:48', '', 0, 'http://localhost/B&#038;C/?post_type=ugml_cpt&#038;p=21', 0, 'ugml_cpt', '', 0),
(22, 1, '2017-04-05 15:53:43', '2017-04-05 15:53:43', '', 'Chrysanthemum', '', 'inherit', 'open', 'open', '', 'chrysanthemum', '', '', '2017-04-05 15:53:43', '2017-04-05 15:53:43', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-04-05 15:53:45', '2017-04-05 15:53:45', '', 'Desert', '', 'inherit', 'open', 'open', '', 'desert', '', '', '2017-04-05 15:53:45', '2017-04-05 15:53:45', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Desert.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-04-05 15:53:47', '2017-04-05 15:53:47', '', 'Hydrangeas', '', 'inherit', 'open', 'open', '', 'hydrangeas', '', '', '2017-04-05 15:53:47', '2017-04-05 15:53:47', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Hydrangeas.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-04-05 15:53:48', '2017-04-05 15:53:48', '', 'Jellyfish', '', 'inherit', 'open', 'open', '', 'jellyfish', '', '', '2017-04-05 15:53:48', '2017-04-05 15:53:48', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Jellyfish.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2017-04-05 15:53:50', '2017-04-05 15:53:50', '', 'Koala', '', 'inherit', 'open', 'open', '', 'koala', '', '', '2017-04-05 15:53:50', '2017-04-05 15:53:50', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Koala.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2017-04-05 15:53:52', '2017-04-05 15:53:52', '', 'Lighthouse', '', 'inherit', 'open', 'open', '', 'lighthouse', '', '', '2017-04-05 15:53:52', '2017-04-05 15:53:52', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Lighthouse.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2017-04-05 15:53:54', '2017-04-05 15:53:54', '', 'Penguins', '', 'inherit', 'open', 'open', '', 'penguins', '', '', '2017-04-05 15:53:54', '2017-04-05 15:53:54', '', 21, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Penguins.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-04-05 15:53:55', '2017-04-05 15:53:55', '', 'Tulips1', '', 'inherit', 'open', 'open', '', 'tulips', '', '', '2017-04-05 15:59:01', '2017-04-05 15:59:01', '', 21, 'http://localhost/B&#038;C/wp-content/uploads/2017/04/Tulips.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2017-04-05 16:01:38', '2017-04-05 16:01:38', '', 'Galerias', '', 'trash', 'closed', 'closed', '', 'galerias', '', '', '2017-04-05 16:02:05', '2017-04-05 16:02:05', '', 0, 'http://localhost/B&#038;C/?post_type=ugml_cpt&#038;p=34', 0, 'ugml_cpt', '', 0),
(36, 1, '2017-04-05 16:06:20', '2017-04-05 16:06:20', 'Me interesa mucho trabajar con esta herramienta noto que es muy fasil, factible y capaz de que nuestra informacion se muestre como deseamos.', 'Sobre wordpress', '', 'publish', 'closed', 'open', '', 'sobre-wordpress', '', '', '2017-04-05 16:06:47', '2017-04-05 16:06:47', '', 0, 'http://localhost/B&#038;C/?post_type=forum&#038;p=36', 0, 'forum', '', 0),
(37, 1, '2017-04-05 16:06:20', '2017-04-05 16:06:20', 'Me interesa mucho trabajar con esta herramienta noto que es muy fasil, factible y capaz de que nuestra informacion se muestre como deseamos.', 'Sobre wordpress', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2017-04-05 16:06:20', '2017-04-05 16:06:20', '', 36, 'http://localhost/B&C/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-04-05 16:08:07', '2017-04-05 16:08:07', 'que es mejor crear entradas o crear paginas?', 'entradas al blog', '', 'publish', 'closed', 'open', '', 'entradas-al-blog', '', '', '2017-04-05 16:08:07', '2017-04-05 16:08:07', '', 36, 'http://localhost/B&#038;C/?post_type=topic&#038;p=38', 0, 'topic', '', 0),
(39, 1, '2017-04-05 16:08:07', '2017-04-05 16:08:07', 'que es mejor crear entradas o crear paginas?', 'entradas al blog', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2017-04-05 16:08:07', '2017-04-05 16:08:07', '', 38, 'http://localhost/B&C/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-04-05 16:09:24', '2017-04-05 16:09:24', 'sabemos que en el blog se puede dejar comentarios pero en las paginas tambien. pero los dos cumplen difertentes objetivos.', '', '', 'publish', 'closed', 'open', '', 'contenidos-del-blog', '', '', '2017-04-05 16:18:32', '2017-04-05 16:18:32', '', 0, 'http://localhost/B&#038;C/?post_type=reply&#038;p=40', 0, 'reply', '', 0),
(41, 1, '2017-04-05 16:09:24', '2017-04-05 16:09:24', 'sabemos que en el blog se puede dejar comentarios pero en las paginas tambien', 'contenidos del blog', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2017-04-05 16:09:24', '2017-04-05 16:09:24', '', 40, 'http://localhost/B&C/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-04-05 16:18:32', '2017-04-05 16:18:32', 'sabemos que en el blog se puede dejar comentarios pero en las paginas tambien. pero los dos cumplen difertentes objetivos.', '', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2017-04-05 16:18:32', '2017-04-05 16:18:32', '', 40, 'http://localhost/B&C/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-04-05 16:24:10', '2017-04-05 16:24:10', 'hola esto es una prueba', 'Nueva Respuesta', '', 'publish', 'closed', 'open', '', 'nueva-respuesta', '', '', '2017-04-05 16:24:10', '2017-04-05 16:24:10', '', 0, 'http://localhost/B&#038;C/?post_type=reply&#038;p=43', 0, 'reply', '', 0),
(44, 1, '2017-04-05 16:24:10', '2017-04-05 16:24:10', 'hola esto es una prueba', 'Nueva Respuesta', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2017-04-05 16:24:10', '2017-04-05 16:24:10', '', 43, 'http://localhost/B&C/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-04-05 16:35:32', '2017-04-05 16:35:32', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22"]', 'Galeria', '', 'trash', 'closed', 'closed', '', 'windows7', '', '', '2017-04-05 16:39:27', '2017-04-05 16:39:27', '', 0, 'http://localhost/B&#038;C/?p=46', 0, 'post', '', 0),
(47, 1, '2017-04-05 16:35:32', '2017-04-05 16:35:32', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22"]', 'Galeria', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2017-04-05 16:35:32', '2017-04-05 16:35:32', '', 46, 'http://localhost/B&C/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-04-05 16:41:04', '2017-04-05 16:41:04', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22" orderby="rand"]', 'Galeria', '', 'trash', 'closed', 'closed', '', 'galeria', '', '', '2017-04-05 16:53:21', '2017-04-05 16:53:21', '', 0, 'http://localhost/B&#038;C/?page_id=48', 0, 'page', '', 0),
(49, 1, '2017-04-05 16:41:04', '2017-04-05 16:41:04', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22"]', 'Galeria', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2017-04-05 16:41:04', '2017-04-05 16:41:04', '', 48, 'http://localhost/B&C/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-04-05 16:43:27', '2017-04-05 16:43:27', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22" orderby="rand"]', 'Galeria', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2017-04-05 16:43:27', '2017-04-05 16:43:27', '', 48, 'http://localhost/B&C/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-04-05 16:44:36', '2017-04-05 16:44:36', '', 'headerB1', '', 'inherit', 'open', 'open', '', 'headerb1', '', '', '2017-04-05 16:44:36', '2017-04-05 16:44:36', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/headerB1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2017-04-05 16:44:49', '2017-04-05 16:44:49', 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerB1.png', 'cropped-headerB1.png', '', 'inherit', 'open', 'open', '', 'cropped-headerb1-png', '', '', '2017-04-05 16:44:49', '2017-04-05 16:44:49', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerB1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-04-05 16:50:58', '2017-04-05 16:50:58', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22" orderby="rand"]', 'Galeria', '', 'trash', 'closed', 'closed', '', 'galeria', '', '', '2017-04-05 16:55:41', '2017-04-05 16:55:41', '', 0, 'http://localhost/B&#038;C/?p=53', 0, 'post', '', 0),
(54, 1, '2017-04-05 16:50:58', '2017-04-05 16:50:58', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22" orderby="rand"]', 'Galeria', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2017-04-05 16:50:58', '2017-04-05 16:50:58', '', 53, 'http://localhost/B&C/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-04-05 16:54:22', '2017-04-05 16:54:22', '[gallery columns="4" link="file" ids="26,27,28,29,25,24,23,22" orderby="rand"]', 'Galeria', '', 'trash', 'closed', 'closed', '', 'galeria-2', '', '', '2017-04-05 17:04:07', '2017-04-05 17:04:07', '', 0, 'http://localhost/B&#038;C/?page_id=55', 0, 'page', '', 0),
(56, 1, '2017-04-05 16:54:22', '2017-04-05 16:54:22', '[gallery columns="4" link="file" ids="26,27,28,29,25,24,23,22" orderby="rand"]', 'Galeria', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2017-04-05 16:54:22', '2017-04-05 16:54:22', '', 55, 'http://localhost/B&C/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-04-05 16:58:01', '2017-04-05 16:58:01', '[gallery columns="4" link="file" ids="60,61,62,63,64,65,66,67"]', 'Galeria', '', 'trash', 'closed', 'closed', '', 'galeria-2', '', '', '2017-04-05 17:04:27', '2017-04-05 17:04:27', '', 0, 'http://localhost/B&#038;C/?p=57', 0, 'post', '', 0),
(58, 1, '2017-04-05 16:58:01', '2017-04-05 16:58:01', '[gallery columns="4" link="file" ids="26,27,28,29,25,24,23,22"]', 'Galeria', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2017-04-05 16:58:01', '2017-04-05 16:58:01', '', 57, 'http://localhost/B&C/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-04-05 17:02:20', '2017-04-05 17:02:20', '', 'Galeria', '', 'inherit', 'open', 'open', '', '57-autosave-v1', '', '', '2017-04-05 17:02:20', '2017-04-05 17:02:20', '', 57, 'http://localhost/B&C/57-autosave-v1/', 0, 'revision', '', 0),
(60, 1, '2017-04-05 17:02:43', '2017-04-05 17:02:43', '', '3d_338', '', 'inherit', 'open', 'open', '', '3d_338', '', '', '2017-04-05 17:02:43', '2017-04-05 17:02:43', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/3d_338.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-04-05 17:02:44', '2017-04-05 17:02:44', '', '3d_462', '', 'inherit', 'open', 'open', '', '3d_462', '', '', '2017-04-05 17:02:44', '2017-04-05 17:02:44', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/3d_462.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-04-05 17:02:46', '2017-04-05 17:02:46', '', '3frfr', '', 'inherit', 'open', 'open', '', '3frfr', '', '', '2017-04-05 17:02:46', '2017-04-05 17:02:46', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/3frfr.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2017-04-05 17:02:48', '2017-04-05 17:02:48', '', '00398_toonlandia_1280x960', '', 'inherit', 'open', 'open', '', '00398_toonlandia_1280x960', '', '', '2017-04-05 17:02:48', '2017-04-05 17:02:48', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/00398_toonlandia_1280x960.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2017-04-05 17:02:49', '2017-04-05 17:02:49', '', '1024X768_VERT', '', 'inherit', 'open', 'open', '', '1024x768_vert', '', '', '2017-04-05 17:02:49', '2017-04-05 17:02:49', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/1024X768_VERT.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2017-04-05 17:02:52', '2017-04-05 17:02:52', '', '6246', '', 'inherit', 'open', 'open', '', '6246', '', '', '2017-04-05 17:02:52', '2017-04-05 17:02:52', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/6246.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2017-04-05 17:02:53', '2017-04-05 17:02:53', '', 'Apple_iPod_by_fluid_art', '', 'inherit', 'open', 'open', '', 'apple_ipod_by_fluid_art', '', '', '2017-04-05 17:02:53', '2017-04-05 17:02:53', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/Apple_iPod_by_fluid_art.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-04-05 17:02:55', '2017-04-05 17:02:55', '', 'AquaLoop Wallpaper', '', 'inherit', 'open', 'open', '', 'aqualoop-wallpaper', '', '', '2017-04-05 17:02:55', '2017-04-05 17:02:55', '', 57, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/AquaLoop-Wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2017-04-05 17:03:08', '2017-04-05 17:03:08', '[gallery columns="4" link="file" ids="60,61,62,63,64,65,66,67"]', 'Galeria', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2017-04-05 17:03:08', '2017-04-05 17:03:08', '', 57, 'http://localhost/B&C/57-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-04-05 17:06:39', '2017-04-05 17:06:39', '[gallery columns="4" link="file" ids="67,66,65,64,63,62,61,60,29,24,25,26,27,28,23,22" orderby="rand"]', 'Galeria', '', 'trash', 'closed', 'closed', '', 'galeria-3', '', '', '2017-04-05 17:58:08', '2017-04-05 17:58:08', '', 0, 'http://localhost/B&#038;C/?p=69', 0, 'post', '', 0),
(70, 1, '2017-04-05 17:06:39', '2017-04-05 17:06:39', '[gallery columns="4" link="file" ids="67,66,65,64,63,62,61,60,29,24,25,26,27,28,23,22" orderby="rand"]', '', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2017-04-05 17:06:39', '2017-04-05 17:06:39', '', 69, 'http://localhost/B&C/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-04-05 17:11:29', '2017-04-05 17:11:29', '[gallery columns="4" link="file" ids="67,66,65,64,63,62,61,60,29,24,25,26,27,28,23,22" orderby="rand"]', 'Galeria', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2017-04-05 17:11:29', '2017-04-05 17:11:29', '', 69, 'http://localhost/B&C/69-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 'Diseño', '', 'publish', 'open', 'open', '', 'diseno', '', '', '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 0, 'http://localhost/B&#038;C/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 'Plantillas', '', 'publish', 'open', 'open', '', 'plantillas', '', '', '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 0, 'http://localhost/B&#038;C/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 'Programacion', '', 'publish', 'open', 'open', '', 'programacion', '', '', '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 0, 'http://localhost/B&#038;C/?p=74', 4, 'nav_menu_item', '', 0),
(75, 1, '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 'PHP', '', 'publish', 'open', 'open', '', 'php', '', '', '2017-04-05 17:14:27', '2017-04-05 17:14:27', '', 0, 'http://localhost/B&#038;C/?p=75', 1, 'nav_menu_item', '', 0),
(78, 1, '2017-04-05 17:21:10', '2017-04-05 17:21:10', '<p style="text-align: justify;"><a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png"><img class="  wp-image-6 alignleft" src="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png" alt="conejo2" width="100" height="150" /></a>B&amp;C es una empresa que propone el desarrollo de sitios web y blog mediante el uso de CMS. Garantizamos la seguridad de estas aplicaciones y los requerimientos, asi como el diseño de imagenes, todo es basado primeramente en el analisis que se realiza sobre su visión y a partir de ahí se proyecta la información visual he informativa del sitio que desea  . Tenemos una experiencia de más de 10 años desarrollando sobre estas plataformas siendo asi posible tranformar su imaginacion a las nuevas tendencias tecnologicas.</p>\n&nbsp;', '¿Quién Somos?', '', 'inherit', 'open', 'open', '', '4-autosave-v1', '', '', '2017-04-05 17:21:10', '2017-04-05 17:21:10', '', 4, 'http://localhost/B&#038;C/4-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2017-04-05 17:17:21', '2017-04-05 17:17:21', '<p style="text-align: justify;"><a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png"><img class="  wp-image-6 alignleft" src="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png" alt="conejo2" width="100" height="150" /></a>B&amp;C es una empresa que propone el desarrollo de sitios web y blog mediante el uso de CMS. Garantizamos la seguridad de estas aplicaciones y los requerimientos, asi como el diseño de imagenes, todo es basado primeramente en el analisis que se realiza sobre su visión y a partir de ahí se proyecta la información visual he informativa del sitio que desea  . Tenemos una experiencia de más de 10 años desarrollando sobre estas plataformas siendo asi posible tranformar su imaginacion a las nuevas tendencias tecnologicas.</p>\r\n[audio mp3="http://localhost/B&amp;C/wp-content/uploads/2017/04/Maid-with-the-Flaxen-Hair.mp3"][/audio]', '¿Quién Somos?', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2017-04-05 17:17:21', '2017-04-05 17:17:21', '', 4, 'http://localhost/B&C/4-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-04-05 17:36:15', '2017-04-05 17:36:15', '<p style="text-align: justify;"><a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png"><img class="  wp-image-6 alignleft" src="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png" alt="conejo2" width="100" height="150" /></a>B&amp;C es una empresa que propone el desarrollo de sitios web y blog mediante el uso de CMS. Garantizamos la seguridad de estas aplicaciones y los requerimientos, asi como el diseño de imagenes, todo es basado primeramente en el analisis que se realiza sobre su visión y a partir de ahí se proyecta la información visual he informativa del sitio que desea  . Tenemos una experiencia de más de 10 años desarrollando sobre estas plataformas siendo asi posible tranformar su imaginacion a las nuevas tendencias tecnologicas.</p>\r\n<a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/sitios-responsive-en-drupalok.mov">sitios responsive en drupalok</a>', '¿Quién Somos?', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2017-04-05 17:36:15', '2017-04-05 17:36:15', '', 4, 'http://localhost/B&C/4-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-04-05 17:37:24', '2017-04-05 17:37:24', '<p style="text-align: justify;"><a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png"><img class="  wp-image-6 alignleft" src="http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo2.png" alt="conejo2" width="100" height="150" /></a>B&amp;C es una empresa que propone el desarrollo de sitios web y blog mediante el uso de CMS. Garantizamos la seguridad de estas aplicaciones y los requerimientos, asi como el diseño de imagenes, todo es basado primeramente en el analisis que se realiza sobre su visión y a partir de ahí se proyecta la información visual he informativa del sitio que desea  . Tenemos una experiencia de más de 10 años desarrollando sobre estas plataformas siendo asi posible tranformar su imaginacion a las nuevas tendencias tecnologicas.</p>\r\n&nbsp;', '¿Quién Somos?', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2017-04-05 17:37:24', '2017-04-05 17:37:24', '', 4, 'http://localhost/B&C/4-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-04-05 17:48:23', '2017-04-05 17:48:23', '<a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/sitios-responsive-en-drupalok.mov">sitios responsive en drupalok</a>', 'video', '', 'trash', 'closed', 'closed', '', 'video', '', '', '2017-04-05 18:01:27', '2017-04-05 18:01:27', '', 0, 'http://localhost/B&#038;C/?p=83', 0, 'post', '', 0),
(84, 1, '2017-04-05 17:38:06', '2017-04-05 17:38:06', '<a href="http://localhost/B&amp;C/wp-content/uploads/2017/04/sitios-responsive-en-drupalok.mov">sitios responsive en drupalok</a>', 'video', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2017-04-05 17:38:06', '2017-04-05 17:38:06', '', 83, 'http://localhost/B&C/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-04-05 17:56:20', '2017-04-05 17:56:20', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2017-04-05 17:56:20', '2017-04-05 17:56:20', '', 0, 'http://localhost/B&#038;C/?page_id=87', 0, 'page', '', 0),
(88, 1, '2017-04-05 17:56:20', '2017-04-05 17:56:20', '', 'Blog', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2017-04-05 17:56:20', '2017-04-05 17:56:20', '', 87, 'http://localhost/B&C/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-04-05 17:59:33', '2017-04-05 17:59:33', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22"]', 'Galeria', '', 'publish', 'closed', 'closed', '', 'galeria-3', '', '', '2017-04-05 17:59:33', '2017-04-05 17:59:33', '', 0, 'http://localhost/B&#038;C/?page_id=89', 0, 'page', '', 0),
(90, 1, '2017-04-05 17:59:33', '2017-04-05 17:59:33', '[gallery columns="4" link="file" ids="29,28,27,26,25,24,23,22"]', 'Galeria', '', 'inherit', 'open', 'open', '', '89-revision-v1', '', '', '2017-04-05 17:59:33', '2017-04-05 17:59:33', '', 89, 'http://localhost/B&C/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-04-05 18:00:25', '2017-04-05 18:00:25', ' ', '', '', 'publish', 'open', 'open', '', '91', '', '', '2017-04-05 18:05:55', '2017-04-05 18:05:55', '', 0, 'http://localhost/B&#038;C/?p=91', 3, 'nav_menu_item', '', 0),
(92, 1, '2017-04-05 18:03:44', '2017-04-05 18:03:44', '[playlist type="video" ids="80,93,94"]', 'Tutoriales', '', 'trash', 'closed', 'closed', '', 'tutoriales', '', '', '2017-04-05 18:03:58', '2017-04-05 18:03:58', '', 0, 'http://localhost/B&#038;C/?p=92', 0, 'post', '', 0),
(95, 1, '2017-04-05 18:03:44', '2017-04-05 18:03:44', '[playlist type="video" ids="80,93,94"]', 'Tutoriales', '', 'inherit', 'open', 'open', '', '92-revision-v1', '', '', '2017-04-05 18:03:44', '2017-04-05 18:03:44', '', 92, 'http://localhost/B&C/92-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-04-05 18:05:29', '2017-04-05 18:05:29', '[playlist type="video" ids="120"]\r\n\r\nEl primer Video es creado por el desarrollador de este sitio. Muestra las habiliades de desarrollo con Drupal tambien.', 'Video-Tutoriales', '', 'publish', 'closed', 'closed', '', 'video-tutoriales', '', '', '2017-04-05 18:57:15', '2017-04-05 18:57:15', '', 0, 'http://localhost/B&#038;C/?page_id=96', 0, 'page', '', 0),
(97, 1, '2017-04-05 18:05:29', '2017-04-05 18:05:29', '[playlist type="video" ids="80,93,94"]\r\n\r\nEl primer Video es creado por el desarrollador de este sitio. Muestra las habiliades de desarrollo con Drupal tambien.', 'Video-Tutoriales', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2017-04-05 18:05:29', '2017-04-05 18:05:29', '', 96, 'http://localhost/B&C/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-04-05 18:05:55', '2017-04-05 18:05:55', ' ', '', '', 'publish', 'open', 'open', '', '98', '', '', '2017-04-05 18:05:55', '2017-04-05 18:05:55', '', 0, 'http://localhost/B&#038;C/?p=98', 4, 'nav_menu_item', '', 0),
(99, 1, '2017-04-05 18:57:03', '2017-04-05 18:57:03', '&nbsp;\n\nEl primer Video es creado por el desarrollador de este sitio. Muestra las habiliades de desarrollo con Drupal tambien.', 'Video-Tutoriales', '', 'inherit', 'open', 'open', '', '96-autosave-v1', '', '', '2017-04-05 18:57:03', '2017-04-05 18:57:03', '', 96, 'http://localhost/B&#038;C/96-autosave-v1/', 0, 'revision', '', 0),
(100, 1, '2017-04-05 18:08:37', '2017-04-05 18:08:37', '[playlist type="video" images="false" ids="80"]\r\n\r\nEl primer Video es creado por el desarrollador de este sitio. Muestra las habiliades de desarrollo con Drupal tambien.', 'Video-Tutoriales', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2017-04-05 18:08:37', '2017-04-05 18:08:37', '', 96, 'http://localhost/B&C/96-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-04-05 18:10:22', '2017-04-05 18:10:22', 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerB11.png', 'cropped-headerB11.png', '', 'inherit', 'open', 'open', '', 'cropped-headerb11-png', '', '', '2017-04-05 18:10:22', '2017-04-05 18:10:22', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerB11.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2017-04-05 18:18:51', '2017-04-05 18:18:51', '', 'sitios responsive en drupal', '', 'inherit', 'open', 'open', '', 'sitios-responsive-en-drupal', '', '', '2017-04-05 18:56:21', '2017-04-05 18:56:21', '', 96, 'http://localhost/B&#038;C/wp-content/uploads/2017/04/sitios-responsive-en-drupal.mov', 0, 'attachment', 'video/quicktime', 0),
(107, 1, '2017-04-05 18:28:39', '2017-04-05 18:28:39', '', 'logobc', '', 'inherit', 'open', 'open', '', 'logobc', '', '', '2017-04-05 18:28:39', '2017-04-05 18:28:39', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/logobc.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2017-04-05 18:28:51', '2017-04-05 18:28:51', 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-logobc.png', 'cropped-logobc.png', '', 'inherit', 'open', 'open', '', 'cropped-logobc-png', '', '', '2017-04-05 18:28:51', '2017-04-05 18:28:51', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-logobc.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2017-04-05 18:35:02', '2017-04-05 18:35:02', '', 'headerV', '', 'inherit', 'open', 'open', '', 'headerv', '', '', '2017-04-05 18:35:02', '2017-04-05 18:35:02', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/headerV.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2017-04-05 18:35:11', '2017-04-05 18:35:11', 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV.png', 'cropped-headerV.png', '', 'inherit', 'open', 'open', '', 'cropped-headerv-png', '', '', '2017-04-05 18:35:11', '2017-04-05 18:35:11', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2017-04-05 18:36:35', '2017-04-05 18:36:35', '', 'headerV', '', 'inherit', 'open', 'open', '', 'headerv-2', '', '', '2017-04-05 18:36:35', '2017-04-05 18:36:35', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/headerV1.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2017-04-05 18:36:42', '2017-04-05 18:36:42', 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV1.png', 'cropped-headerV1.png', '', 'inherit', 'open', 'open', '', 'cropped-headerv1-png', '', '', '2017-04-05 18:36:42', '2017-04-05 18:36:42', '', 0, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/cropped-headerV1.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2017-04-05 18:50:28', '2017-04-05 18:50:28', '<h1 id="titleHeading">Sistema de gestión de contenidos</h1>\r\n<p id="mwAg" style="text-align: justify;">Un <b id="mwAw">sistema de gestión de contenidos</b> (en inglés: <i id="mwBA">Content Management System</i>, más conocido por sus siglas <i id="mwBQ"><b id="mwBg">CMS</b></i>) es un <a id="mwBw" title="Aplicación (informática)" href="Aplicaci%C3%B3n_%28inform%C3%A1tica%29.html">programa informático</a> que permite crear una estructura de soporte (<i id="mwCA"><a id="mwCQ" title="Framework" href="Framework.html">framework</a></i>) para la creación y administración de contenidos, principalmente en <a id="mwCg" title="Páginas web" href="P%C3%A1ginas_web.html">páginas web</a>, por parte de los administradores, editores, participantes y demás usuarios.</p>\r\n<p id="mwCw" style="text-align: justify;">Consiste en una interfaz que controla una o varias <a id="mwDA" title="Bases de datos" href="Bases_de_datos.html">bases de datos</a> donde se aloja el contenido del sitio web. El sistema permite manejar de manera independiente el contenido y el diseño. Así, es posible manejar el contenido y darle en cualquier momento un diseño distinto al sitio web sin tener que darle formato al contenido de nuevo, además de permitir la fácil y controlada publicación en el sitio a varios editores. Un ejemplo clásico es el de editores que cargan el contenido al sistema y otro de nivel superior (moderador o administrador) que permite que estos contenidos sean visibles a todo el público (los aprueba).</p>\r\n<p style="text-align: justify;"><!--more--></p>\r\n\r\n<h2 id="mwDQ">Historia</h2>\r\n<p id="mwDg" style="text-align: justify;">Los primeros <b id="mwDw">sistemas de administración de contenidos</b> fueron desarrollados por organizaciones que publicaban una gran cantidad de contenido en <a id="mwEA" title="Internet" href="Internet.html">Internet</a>, y necesitaban de continuas actualizaciones; como revistas en línea, periódicos y publicaciones corporativas.</p>\r\n<p id="mwEQ" style="text-align: justify;">En <a id="mwEg" title="1995" href="1995.html">1995</a>, el sitio de noticias tecnológicas <a id="mwEw" title="CNET" href="CNET.html">CNET</a> sacó su sistema de administración de documentos y publicación y creó una compañía llamada <a id="mwFA" title="Vignette (software)" href="Vignette_%28software%29.html">Vignette</a>, pionero de los sistemas de administración de contenido comerciales.</p>\r\n<p id="mwFQ" style="text-align: justify;">La evolución de Internet hacia portales con más contenido y la alta participación de los usuarios directamente, a través de blogs y redes sociales, ha convertido a los gestores de contenidos en una herramienta esencial en Internet, tanto para empresas e instituciones como para personas.</p>\r\n<p id="mwFg" style="text-align: justify;">Los <a id="mwFw" title="Wikis" href="Wikis.html">wikis</a> y los sistemas <a id="mwGA" title="Software colaborativo" href="Software_colaborativo.html"><i id="mwGQ">groupware</i></a> también son considerados CMS.</p>\r\n<p id="mwGg" style="text-align: justify;">Hoy en día existen sistemas desarrollados en <a id="mwGw" title="Software libre" href="Software_libre.html">software libre</a> y <a id="mwHA" title="Software privativo" href="Software_privativo.html">software privativo</a>. En ambos casos es necesaria una implantación para adaptar el gestor de contenidos al esquema gráfico y funcionalidades deseadas. Para ciertos gestores existen muchas plantillas disponibles que permite una sencilla implantación de la parte estética por parte de un usuario sin conocimientos de diseño. Los paradigmas de este caso son <a id="mwHQ" title="WordPress" href="WordPress.html">WordPress</a> y <a id="mwHg" title="Joomla!" href="Joomla%21.html">Joomla!</a>, gestores sobre los que hay una gran comunidad de desarrolladores de extensiones (módulos, complementos, <i id="mwHw"><a id="mwIA" title="Plugins" href="Plugins.html">plugins</a></i>, etcétera) y plantillas.<sup id="cite_ref-1"><a href="#cite_note-1">[1]</a></sup></p>\r\n\r\n<h2 id="mwIQ">Definición</h2>\r\n<p id="mwIg" style="text-align: justify;">El gestor de contenido es una aplicación informática usada para crear, editar, gestionar y publicar contenido digital multimedia en diversos formatos. El gestor de contenidos genera páginas web dinámicas interactuando con el servidor web para generar la página web bajo petición del usuario, con el formato predefinido y el contenido extraído de la base de datos del servidor.</p>\r\n<p id="mwIw" style="text-align: justify;">Esto permite gestionar, bajo un formato estandarizado, la información del servidor, reduciendo el tamaño de las páginas para descarga y reduciendo el coste de gestión del portal con respecto a un sitio web estático, en el que cada cambio de diseño debe ser realizado en todas las páginas web, de la misma forma que cada vez que se agrega contenido tiene que maquetarse una nueva página HTML y subirla al servidor web.</p>', 'CMS', '', 'publish', 'open', 'closed', '', 'cms', '', '', '2017-04-05 18:50:28', '2017-04-05 18:50:28', '', 0, 'http://localhost/B&#038;C/?p=113', 0, 'post', '', 0),
(114, 1, '2017-04-05 18:46:12', '2017-04-05 18:46:12', '', 'www1', '', 'inherit', 'open', 'open', '', 'www1', '', '', '2017-04-05 18:46:12', '2017-04-05 18:46:12', '', 113, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/www1.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2017-04-05 18:46:34', '2017-04-05 18:46:34', '', 'www2', '', 'inherit', 'open', 'open', '', 'www2', '', '', '2017-04-05 18:46:34', '2017-04-05 18:46:34', '', 113, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/www2.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2017-04-05 18:46:42', '2017-04-05 18:46:42', '', 'CMS', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2017-04-05 18:46:42', '2017-04-05 18:46:42', '', 113, 'http://localhost/B&C/113-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2017-04-05 18:47:14', '2017-04-05 18:47:14', '', 'www', '', 'inherit', 'open', 'open', '', 'www', '', '', '2017-04-05 18:47:14', '2017-04-05 18:47:14', '', 113, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/www.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2017-04-05 18:50:28', '2017-04-05 18:50:28', '<h1 id="titleHeading">Sistema de gestión de contenidos</h1>\r\n<p id="mwAg" style="text-align: justify;">Un <b id="mwAw">sistema de gestión de contenidos</b> (en inglés: <i id="mwBA">Content Management System</i>, más conocido por sus siglas <i id="mwBQ"><b id="mwBg">CMS</b></i>) es un <a id="mwBw" title="Aplicación (informática)" href="Aplicaci%C3%B3n_%28inform%C3%A1tica%29.html">programa informático</a> que permite crear una estructura de soporte (<i id="mwCA"><a id="mwCQ" title="Framework" href="Framework.html">framework</a></i>) para la creación y administración de contenidos, principalmente en <a id="mwCg" title="Páginas web" href="P%C3%A1ginas_web.html">páginas web</a>, por parte de los administradores, editores, participantes y demás usuarios.</p>\r\n<p id="mwCw" style="text-align: justify;">Consiste en una interfaz que controla una o varias <a id="mwDA" title="Bases de datos" href="Bases_de_datos.html">bases de datos</a> donde se aloja el contenido del sitio web. El sistema permite manejar de manera independiente el contenido y el diseño. Así, es posible manejar el contenido y darle en cualquier momento un diseño distinto al sitio web sin tener que darle formato al contenido de nuevo, además de permitir la fácil y controlada publicación en el sitio a varios editores. Un ejemplo clásico es el de editores que cargan el contenido al sistema y otro de nivel superior (moderador o administrador) que permite que estos contenidos sean visibles a todo el público (los aprueba).</p>\r\n<p style="text-align: justify;"><!--more--></p>\r\n\r\n<h2 id="mwDQ">Historia</h2>\r\n<p id="mwDg" style="text-align: justify;">Los primeros <b id="mwDw">sistemas de administración de contenidos</b> fueron desarrollados por organizaciones que publicaban una gran cantidad de contenido en <a id="mwEA" title="Internet" href="Internet.html">Internet</a>, y necesitaban de continuas actualizaciones; como revistas en línea, periódicos y publicaciones corporativas.</p>\r\n<p id="mwEQ" style="text-align: justify;">En <a id="mwEg" title="1995" href="1995.html">1995</a>, el sitio de noticias tecnológicas <a id="mwEw" title="CNET" href="CNET.html">CNET</a> sacó su sistema de administración de documentos y publicación y creó una compañía llamada <a id="mwFA" title="Vignette (software)" href="Vignette_%28software%29.html">Vignette</a>, pionero de los sistemas de administración de contenido comerciales.</p>\r\n<p id="mwFQ" style="text-align: justify;">La evolución de Internet hacia portales con más contenido y la alta participación de los usuarios directamente, a través de blogs y redes sociales, ha convertido a los gestores de contenidos en una herramienta esencial en Internet, tanto para empresas e instituciones como para personas.</p>\r\n<p id="mwFg" style="text-align: justify;">Los <a id="mwFw" title="Wikis" href="Wikis.html">wikis</a> y los sistemas <a id="mwGA" title="Software colaborativo" href="Software_colaborativo.html"><i id="mwGQ">groupware</i></a> también son considerados CMS.</p>\r\n<p id="mwGg" style="text-align: justify;">Hoy en día existen sistemas desarrollados en <a id="mwGw" title="Software libre" href="Software_libre.html">software libre</a> y <a id="mwHA" title="Software privativo" href="Software_privativo.html">software privativo</a>. En ambos casos es necesaria una implantación para adaptar el gestor de contenidos al esquema gráfico y funcionalidades deseadas. Para ciertos gestores existen muchas plantillas disponibles que permite una sencilla implantación de la parte estética por parte de un usuario sin conocimientos de diseño. Los paradigmas de este caso son <a id="mwHQ" title="WordPress" href="WordPress.html">WordPress</a> y <a id="mwHg" title="Joomla!" href="Joomla%21.html">Joomla!</a>, gestores sobre los que hay una gran comunidad de desarrolladores de extensiones (módulos, complementos, <i id="mwHw"><a id="mwIA" title="Plugins" href="Plugins.html">plugins</a></i>, etcétera) y plantillas.<sup id="cite_ref-1"><a href="#cite_note-1">[1]</a></sup></p>\r\n\r\n<h2 id="mwIQ">Definición</h2>\r\n<p id="mwIg" style="text-align: justify;">El gestor de contenido es una aplicación informática usada para crear, editar, gestionar y publicar contenido digital multimedia en diversos formatos. El gestor de contenidos genera páginas web dinámicas interactuando con el servidor web para generar la página web bajo petición del usuario, con el formato predefinido y el contenido extraído de la base de datos del servidor.</p>\r\n<p id="mwIw" style="text-align: justify;">Esto permite gestionar, bajo un formato estandarizado, la información del servidor, reduciendo el tamaño de las páginas para descarga y reduciendo el coste de gestión del portal con respecto a un sitio web estático, en el que cada cambio de diseño debe ser realizado en todas las páginas web, de la misma forma que cada vez que se agrega contenido tiene que maquetarse una nueva página HTML y subirla al servidor web.</p>', 'CMS', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2017-04-05 18:50:28', '2017-04-05 18:50:28', '', 113, 'http://localhost/B&C/113-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2017-04-05 18:53:51', '2017-04-05 18:53:51', '', 'conejo1', '', 'inherit', 'open', 'open', '', 'conejo1', '', '', '2017-04-05 18:53:51', '2017-04-05 18:53:51', '', 1, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/conejo1.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2017-04-05 18:56:57', '2017-04-05 18:56:57', '', 'sitios responsive en drupalok', '', 'inherit', 'open', 'open', '', 'sitios-responsive-en-drupalok', '', '', '2017-04-05 18:56:57', '2017-04-05 18:56:57', '', 96, 'http://localhost/B&amp;C/wp-content/uploads/2017/04/sitios-responsive-en-drupalok.mov', 0, 'attachment', 'video/quicktime', 0),
(121, 1, '2017-04-05 18:57:15', '2017-04-05 18:57:15', '[playlist type="video" ids="120"]\r\n\r\nEl primer Video es creado por el desarrollador de este sitio. Muestra las habiliades de desarrollo con Drupal tambien.', 'Video-Tutoriales', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2017-04-05 18:57:15', '2017-04-05 18:57:15', '', 96, 'http://localhost/B&C/96-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu', 'menu', 0),
(3, 'blog', 'blog', 0),
(4, 'post-format-gallery', 'post-format-gallery', 0),
(5, 'Enlaces', 'enlaces', 0),
(6, 'post-format-video', 'post-format-video', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(13, 2, 0),
(38, 3, 0),
(46, 1, 0),
(46, 4, 0),
(53, 1, 0),
(53, 4, 0),
(57, 1, 0),
(57, 4, 0),
(69, 1, 0),
(69, 4, 0),
(72, 5, 0),
(73, 5, 0),
(74, 5, 0),
(75, 5, 0),
(83, 1, 0),
(83, 6, 0),
(91, 2, 0),
(92, 1, 0),
(92, 6, 0),
(98, 2, 0),
(113, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'topic-tag', '', 0, 1),
(4, 4, 'post_format', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'post_format', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_user-settings', 'mfold=o&hidetb=1&libraryContent=browse&editor=tinymce&widgets_access=off'),
(16, 1, 'wp_user-settings-time', '1491405236'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(22, 1, 'closedpostboxes_forum', 'a:0:{}'),
(23, 1, 'metaboxhidden_forum', 'a:0:{}'),
(25, 1, 'session_tokens', 'a:1:{s:64:"f36b73f542fbfd37763c0866de3d1afe44018e68a6fafad1964de2eae6d6d779";a:4:{s:10:"expiration";i:1491582639;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:77:"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0";s:5:"login";i:1491409839;}}'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:3:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";}'),
(28, 1, 'nav_menu_recently_edited', '2'),
(29, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:21:"dashboard_quick_press";i:1;s:17:"dashboard_primary";}'),
(30, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVeJbJKZRrZKFdpkxcAb8nsFuLcJ3Y.', 'admin', 'odalmys@nauta.cu', '', '2017-04-05 15:13:49', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
