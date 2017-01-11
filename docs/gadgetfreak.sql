-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2017 at 09:36 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgetfreak`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Prijavljen uporabnik'),
(2, 'Urednik'),
(3, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 8),
(2, 1, 7),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 3, 1),
(13, 3, 2),
(14, 3, 3),
(15, 3, 4),
(16, 3, 5),
(17, 3, 6),
(18, 3, 7),
(19, 3, 8),
(20, 3, 9),
(21, 3, 16),
(22, 3, 17),
(23, 3, 18),
(24, 3, 19),
(25, 3, 20),
(26, 3, 21),
(27, 3, 22),
(28, 3, 23),
(29, 3, 24),
(30, 3, 31),
(31, 3, 32),
(32, 3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add testiranje', 1, 'add_testiranje'),
(2, 'Can change testiranje', 1, 'change_testiranje'),
(3, 'Can delete testiranje', 1, 'delete_testiranje'),
(4, 'Can add novica', 2, 'add_novica'),
(5, 'Can change novica', 2, 'change_novica'),
(6, 'Can delete novica', 2, 'delete_novica'),
(7, 'Can add komentar', 3, 'add_komentar'),
(8, 'Can change komentar', 3, 'change_komentar'),
(9, 'Can delete komentar', 3, 'delete_komentar'),
(10, 'Can add log entry', 4, 'add_logentry'),
(11, 'Can change log entry', 4, 'change_logentry'),
(12, 'Can delete log entry', 4, 'delete_logentry'),
(13, 'Can add permission', 5, 'add_permission'),
(14, 'Can change permission', 5, 'change_permission'),
(15, 'Can delete permission', 5, 'delete_permission'),
(16, 'Can add user', 6, 'add_user'),
(17, 'Can change user', 6, 'change_user'),
(18, 'Can delete user', 6, 'delete_user'),
(19, 'Can add group', 7, 'add_group'),
(20, 'Can change group', 7, 'change_group'),
(21, 'Can delete group', 7, 'delete_group'),
(22, 'Can add content type', 8, 'add_contenttype'),
(23, 'Can change content type', 8, 'change_contenttype'),
(24, 'Can delete content type', 8, 'delete_contenttype'),
(25, 'Can add session', 9, 'add_session'),
(26, 'Can change session', 9, 'change_session'),
(27, 'Can delete session', 9, 'delete_session'),
(28, 'Can add site', 10, 'add_site'),
(29, 'Can change site', 10, 'change_site'),
(30, 'Can delete site', 10, 'delete_site'),
(31, 'Can add uporabnik', 11, 'add_uporabnik'),
(32, 'Can change uporabnik', 11, 'change_uporabnik'),
(33, 'Can delete uporabnik', 11, 'delete_uporabnik');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$DnumPZowtqJY$BTI2WRe+xXK/+3fKaFRVD3n7fdOyKMsZ3ueMJg+XnMk=', '2017-01-11 21:13:52.093749', 1, 'admin', 'Administrator', 'Administrator', 'admin@admin.com', 1, 1, '2017-01-02 14:37:35.000000'),
(2, 'pbkdf2_sha256$30000$lMiqNSB7esHp$5irz3SShD4oAljTtYXhXxe3yZ5nN1fQJCWrsP+Zge5w=', '2017-01-11 20:07:03.723847', 0, 'DomenBa', 'Domen', 'Balantic', 'domen.balantic1@gmail.com', 0, 1, '2017-01-02 14:37:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 3),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djangogf_komentar`
--

CREATE TABLE `djangogf_komentar` (
  `id` int(11) NOT NULL,
  `kmtBesedilo` varchar(256) NOT NULL,
  `kmtAvtor_id` int(11) NOT NULL,
  `kmtNovica_id` int(11) NOT NULL,
  `kmtTestiranje_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djangogf_komentar`
--

INSERT INTO `djangogf_komentar` (`id`, `kmtBesedilo`, `kmtAvtor_id`, `kmtNovica_id`, `kmtTestiranje_id`) VALUES
(1, 'test', 1, 1, 0),
(2, 'asdgfasgf', 1, 1, 0),
(3, 'asdgfasgf', 1, 0, 2),
(4, 'test', 1, 0, 2),
(5, 'domen', 3, 1, NULL),
(6, 'domen', 3, 1, NULL),
(7, 'domen', 3, 1, NULL),
(8, 'domen', 3, 1, NULL),
(9, '13123', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `djangogf_novica`
--

CREATE TABLE `djangogf_novica` (
  `id` int(11) NOT NULL,
  `nvcNaslov` varchar(256) NOT NULL,
  `nvcDatum` datetime(6) NOT NULL,
  `nvcSlika` varchar(256) NOT NULL,
  `nvcOpis` varchar(256) NOT NULL,
  `nvcBesedilo` longtext NOT NULL,
  `nvcPrikaz` varchar(1) NOT NULL,
  `nvcAvtor_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djangogf_novica`
--

INSERT INTO `djangogf_novica` (`id`, `nvcNaslov`, `nvcDatum`, `nvcSlika`, `nvcOpis`, `nvcBesedilo`, `nvcPrikaz`, `nvcAvtor_id`) VALUES
(1, 'Glavna novica', '2017-01-02 00:00:00.000000', 'test.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '0', 1),
(2, 'Glavna novica', '2017-01-02 00:00:00.000000', 'test.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '0', 1),
(3, 'Glavna novica mala', '2017-01-02 00:00:00.000000', 'test_mala.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '1', 1),
(4, 'Glavna novica mala', '2017-01-02 00:00:00.000000', 'test_mala.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '1', 1),
(5, 'Glavna novica mala', '2017-01-02 00:00:00.000000', 'test_mala.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '1', 1),
(6, '3 novice', '2017-01-02 00:00:00.000000', 'newsTesting.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '3', 1),
(7, '3 novice', '2017-01-02 00:00:00.000000', 'newsTesting.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '3', 1),
(8, '3 novice', '2017-01-02 00:00:00.000000', 'newsTesting.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '3', 1),
(9, 'Ocena naprave 1', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(10, 'Ocena naprave 2', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(11, 'Ocena naprave 3', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(12, 'Ocena naprave 4', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(13, 'Ocena naprave 5', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(14, 'Ocena naprave 6', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(15, 'Ocena naprave 7', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(16, 'Ocena naprave 8', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1);
INSERT INTO `djangogf_novica` (`id`, `nvcNaslov`, `nvcDatum`, `nvcSlika`, `nvcOpis`, `nvcBesedilo`, `nvcPrikaz`, `nvcAvtor_id`) VALUES
(17, 'Ocena naprave 9', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(18, 'Ocena naprave', '2017-01-02 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '4', 1),
(19, 'Zadnje novice', '2017-01-02 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '5', 1),
(20, 'Zadnje novice', '2017-01-02 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '5', 1),
(21, 'Zadnje novice', '2017-01-02 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '5', 1),
(22, 'Zadnje novice', '2017-01-02 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '5', 1),
(23, 'Zadnje novice', '2017-01-02 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo massa elit, sit amet facilisis odio porttitor sed. Ut commodo mi in pulvinar facilisis. Phasellus lacus mauris, scelerisque vitae lacus quis, tempus pellentesque ipsum. Sed aliquet pretium scelerisque. Suspendisse potenti. Aliquam rhoncus consequat scelerisque. Nam id enim eu quam auctor semper sed ut sem.\r\n\r\nNullam ut turpis luctus, dapibus orci ut, finibus est. Nulla facilisi. Sed pellentesque augue in pellentesque ultrices. Ut aliquet et felis at vulputate. Proin et ligula venenatis, placerat mauris sit amet, interdum odio. Ut non fermentum arcu, ac cursus odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus, est eget tempus fringilla, odio massa pharetra dolor, sit amet tristique mauris dui vitae dui.\r\n\r\nPhasellus ullamcorper nec mauris a efficitur. Quisque at faucibus dolor. Praesent dictum justo sed tincidunt eleifend. In hac habitasse platea dictumst. Maecenas in tortor ligula. Duis nibh libero, viverra non venenatis nec, sagittis nec leo. In laoreet, ligula quis iaculis mollis, arcu enim laoreet dolor, vitae commodo libero urna et justo. Pellentesque eu nisi ultricies, tempor augue et, lobortis eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at lorem et massa gravida vestibulum. Nulla rutrum ornare nisi vitae placerat. Duis auctor et mauris in sollicitudin. Maecenas vel purus enim. Donec gravida dictum arcu, id laoreet tortor gravida in. In hac habitasse platea dictumst.\r\n\r\nProin eros velit, facilisis non orci at, rutrum consectetur risus. Nullam consectetur, diam in feugiat sodales, ante purus imperdiet lorem, at hendrerit quam dui et nisl. Ut sed lobortis orci. Nullam quam orci, accumsan sed arcu rhoncus, dictum tempus risus. Nam pulvinar in elit nec imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin gravida ligula nunc, non elementum magna lacinia a. Vestibulum in felis vehicula, aliquet ante ac, eleifend orci.\r\n\r\nVestibulum viverra, arcu non accumsan laoreet, quam massa hendrerit dui, ut pulvinar ex diam luctus risus. Nulla maximus urna et mi congue, at posuere massa sollicitudin. Fusce lacinia erat in ipsum dignissim, non pulvinar purus dignissim. Nam vehicula turpis rutrum libero porttitor, quis tempus diam sagittis. Sed eu porttitor dolor. Donec ut felis nisi. Mauris eu cursus justo, at sagittis erat. In pharetra nunc lectus, at accumsan dolor hendrerit eget. Duis viverra metus a eros blandit, non finibus dui sagittis. In hac habitasse platea dictumst. Aliquam in ultricies dolor.', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `djangogf_testiranje`
--

CREATE TABLE `djangogf_testiranje` (
  `id` int(11) NOT NULL,
  `tstNaslov` varchar(80) NOT NULL,
  `tstDatum` datetime(6) NOT NULL,
  `tstSlika` varchar(256) NOT NULL,
  `tstOpis` varchar(256) NOT NULL,
  `tstBesedilo` longtext NOT NULL,
  `tstZaslon` int(11) NOT NULL,
  `tstFotoaparat` decimal(4,2) NOT NULL,
  `tstBaterija` int(11) NOT NULL,
  `tstProstor` varchar(30) NOT NULL,
  `tstRam` int(11) NOT NULL,
  `tstOs` varchar(30) NOT NULL,
  `tstIzdano` varchar(30) NOT NULL,
  `tstPrikaz` varchar(1) NOT NULL,
  `tstAvtor_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djangogf_testiranje`
--

INSERT INTO `djangogf_testiranje` (`id`, `tstNaslov`, `tstDatum`, `tstSlika`, `tstOpis`, `tstBesedilo`, `tstZaslon`, `tstFotoaparat`, `tstBaterija`, `tstProstor`, `tstRam`, `tstOs`, `tstIzdano`, `tstPrikaz`, `tstAvtor_id`) VALUES
(1, 'Zadnje testiranje', '2017-01-16 00:00:00.000000', 'iphone7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat bibendum purus mollis ullamcorper. Ut ac sapien scelerisque, posuere ipsum et, viverra quam. Etiam efficitur nisi ligula, vel ultrices felis lacinia id. Ut commodo, lectus ut euismod vulputate, leo justo faucibus justo, non porttitor risus ligula eu dolor. Maecenas et mi dui. In id iaculis nisl. Suspendisse vitae porttitor lacus. Vivamus ac justo sit amet tellus vestibulum commodo. Vivamus ac faucibus elit. Duis tristique a quam non iaculis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer fermentum bibendum justo ut volutpat. Praesent sodales dui eget ligula tempus, sit amet maximus purus fermentum. Integer lobortis leo nec sem porta, et egestas justo sollicitudin. Quisque nisi orci, auctor eget fringilla non, consectetur quis diam. Nunc iaculis est nunc, et pulvinar lectus lobortis a.\r\n\r\nCras non sem sem. Maecenas sit amet neque vel ligula pulvinar aliquam vitae ac diam. Etiam sit amet augue libero. Morbi et lacus et neque convallis vestibulum in eu nisl. Curabitur nec ipsum eros. Vivamus aliquet malesuada felis at efficitur. Nulla sapien massa, auctor non tellus quis, pulvinar laoreet augue. Praesent id arcu sit amet nibh euismod consequat. Aenean eget pulvinar felis. Vestibulum ullamcorper metus mi, nec auctor leo sodales et. Aliquam erat volutpat.\r\n\r\nMorbi orci magna, egestas nec mollis elementum, aliquam in enim. Nulla bibendum lacus sed lacus cursus varius. Curabitur non ipsum in eros porta malesuada. Ut ultricies dui eu diam ornare, sed bibendum magna ultrices. Sed tempor ut odio non mollis. Sed odio purus, faucibus eu gravida id, ultricies at odio. Maecenas ipsum nibh, placerat id faucibus ultrices, malesuada a nulla. Fusce euismod sapien nec arcu sodales malesuada. Phasellus nisi mi, sollicitudin eu mauris vel, tristique mattis dui. Curabitur sagittis facilisis pulvinar. Aenean mattis dui ornare tortor auctor, imperdiet imperdiet neque accumsan. Maecenas vitae auctor odio. Aenean auctor nibh non vulputate sollicitudin. Fusce vestibulum vehicula sem sit amet malesuada.\r\n\r\nNulla facilisi. Nullam nec venenatis risus. Quisque posuere placerat semper. Vestibulum efficitur mattis commodo. Suspendisse nunc dui, gravida eget nunc ut, laoreet sagittis tellus. Integer luctus eros sit amet scelerisque euismod. Mauris vitae lectus lacus. Nullam blandit nisi quis justo tincidunt, vitae viverra tortor vehicula. Donec dictum turpis eget mi dictum ullamcorper. Ut fermentum neque erat, et commodo orci vulputate quis. Sed lacus neque, euismod non aliquet eu, facilisis vitae quam. Nullam et lacus mi. Pellentesque sed neque dui. Proin aliquam diam a sem tincidunt finibus. Duis non cursus sapien. In tempor dictum nulla, in facilisis ipsum placerat vulputate.\r\n\r\nPhasellus nec consequat elit. Nullam faucibus egestas nisi, in suscipit felis ullamcorper a. Aenean vitae ex viverra quam condimentum tempor in a felis. Nulla non dolor dui. Sed massa mi, dictum et vehicula non, tincidunt sed eros. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper feugiat metus vitae scelerisque. Nulla ac tellus pellentesque ante varius aliquet. Aliquam at ipsum diam. Vestibulum gravida eros at est semper, at porta turpis tristique.', 5, '12.00', 2500, '16', 2, 'iOs', 'Sep 2016', '2', 1),
(2, 'Zadnja testiranja', '2017-01-17 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat bibendum purus mollis ullamcorper. Ut ac sapien scelerisque, posuere ipsum et, viverra quam. Etiam efficitur nisi ligula, vel ultrices felis lacinia id. Ut commodo, lectus ut euismod vulputate, leo justo faucibus justo, non porttitor risus ligula eu dolor. Maecenas et mi dui. In id iaculis nisl. Suspendisse vitae porttitor lacus. Vivamus ac justo sit amet tellus vestibulum commodo. Vivamus ac faucibus elit. Duis tristique a quam non iaculis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer fermentum bibendum justo ut volutpat. Praesent sodales dui eget ligula tempus, sit amet maximus purus fermentum. Integer lobortis leo nec sem porta, et egestas justo sollicitudin. Quisque nisi orci, auctor eget fringilla non, consectetur quis diam. Nunc iaculis est nunc, et pulvinar lectus lobortis a.\r\n\r\nCras non sem sem. Maecenas sit amet neque vel ligula pulvinar aliquam vitae ac diam. Etiam sit amet augue libero. Morbi et lacus et neque convallis vestibulum in eu nisl. Curabitur nec ipsum eros. Vivamus aliquet malesuada felis at efficitur. Nulla sapien massa, auctor non tellus quis, pulvinar laoreet augue. Praesent id arcu sit amet nibh euismod consequat. Aenean eget pulvinar felis. Vestibulum ullamcorper metus mi, nec auctor leo sodales et. Aliquam erat volutpat.\r\n\r\nMorbi orci magna, egestas nec mollis elementum, aliquam in enim. Nulla bibendum lacus sed lacus cursus varius. Curabitur non ipsum in eros porta malesuada. Ut ultricies dui eu diam ornare, sed bibendum magna ultrices. Sed tempor ut odio non mollis. Sed odio purus, faucibus eu gravida id, ultricies at odio. Maecenas ipsum nibh, placerat id faucibus ultrices, malesuada a nulla. Fusce euismod sapien nec arcu sodales malesuada. Phasellus nisi mi, sollicitudin eu mauris vel, tristique mattis dui. Curabitur sagittis facilisis pulvinar. Aenean mattis dui ornare tortor auctor, imperdiet imperdiet neque accumsan. Maecenas vitae auctor odio. Aenean auctor nibh non vulputate sollicitudin. Fusce vestibulum vehicula sem sit amet malesuada.\r\n\r\nNulla facilisi. Nullam nec venenatis risus. Quisque posuere placerat semper. Vestibulum efficitur mattis commodo. Suspendisse nunc dui, gravida eget nunc ut, laoreet sagittis tellus. Integer luctus eros sit amet scelerisque euismod. Mauris vitae lectus lacus. Nullam blandit nisi quis justo tincidunt, vitae viverra tortor vehicula. Donec dictum turpis eget mi dictum ullamcorper. Ut fermentum neque erat, et commodo orci vulputate quis. Sed lacus neque, euismod non aliquet eu, facilisis vitae quam. Nullam et lacus mi. Pellentesque sed neque dui. Proin aliquam diam a sem tincidunt finibus. Duis non cursus sapien. In tempor dictum nulla, in facilisis ipsum placerat vulputate.\r\n\r\nPhasellus nec consequat elit. Nullam faucibus egestas nisi, in suscipit felis ullamcorper a. Aenean vitae ex viverra quam condimentum tempor in a felis. Nulla non dolor dui. Sed massa mi, dictum et vehicula non, tincidunt sed eros. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper feugiat metus vitae scelerisque. Nulla ac tellus pellentesque ante varius aliquet. Aliquam at ipsum diam. Vestibulum gravida eros at est semper, at porta turpis tristique.', 5, '12.00', 2500, '16gb', 2, 'iOs', 'Sep 2016', '6', 1),
(3, 'Zadnja testiranja', '2017-01-17 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat bibendum purus mollis ullamcorper. Ut ac sapien scelerisque, posuere ipsum et, viverra quam. Etiam efficitur nisi ligula, vel ultrices felis lacinia id. Ut commodo, lectus ut euismod vulputate, leo justo faucibus justo, non porttitor risus ligula eu dolor. Maecenas et mi dui. In id iaculis nisl. Suspendisse vitae porttitor lacus. Vivamus ac justo sit amet tellus vestibulum commodo. Vivamus ac faucibus elit. Duis tristique a quam non iaculis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer fermentum bibendum justo ut volutpat. Praesent sodales dui eget ligula tempus, sit amet maximus purus fermentum. Integer lobortis leo nec sem porta, et egestas justo sollicitudin. Quisque nisi orci, auctor eget fringilla non, consectetur quis diam. Nunc iaculis est nunc, et pulvinar lectus lobortis a.\r\n\r\nCras non sem sem. Maecenas sit amet neque vel ligula pulvinar aliquam vitae ac diam. Etiam sit amet augue libero. Morbi et lacus et neque convallis vestibulum in eu nisl. Curabitur nec ipsum eros. Vivamus aliquet malesuada felis at efficitur. Nulla sapien massa, auctor non tellus quis, pulvinar laoreet augue. Praesent id arcu sit amet nibh euismod consequat. Aenean eget pulvinar felis. Vestibulum ullamcorper metus mi, nec auctor leo sodales et. Aliquam erat volutpat.\r\n\r\nMorbi orci magna, egestas nec mollis elementum, aliquam in enim. Nulla bibendum lacus sed lacus cursus varius. Curabitur non ipsum in eros porta malesuada. Ut ultricies dui eu diam ornare, sed bibendum magna ultrices. Sed tempor ut odio non mollis. Sed odio purus, faucibus eu gravida id, ultricies at odio. Maecenas ipsum nibh, placerat id faucibus ultrices, malesuada a nulla. Fusce euismod sapien nec arcu sodales malesuada. Phasellus nisi mi, sollicitudin eu mauris vel, tristique mattis dui. Curabitur sagittis facilisis pulvinar. Aenean mattis dui ornare tortor auctor, imperdiet imperdiet neque accumsan. Maecenas vitae auctor odio. Aenean auctor nibh non vulputate sollicitudin. Fusce vestibulum vehicula sem sit amet malesuada.\r\n\r\nNulla facilisi. Nullam nec venenatis risus. Quisque posuere placerat semper. Vestibulum efficitur mattis commodo. Suspendisse nunc dui, gravida eget nunc ut, laoreet sagittis tellus. Integer luctus eros sit amet scelerisque euismod. Mauris vitae lectus lacus. Nullam blandit nisi quis justo tincidunt, vitae viverra tortor vehicula. Donec dictum turpis eget mi dictum ullamcorper. Ut fermentum neque erat, et commodo orci vulputate quis. Sed lacus neque, euismod non aliquet eu, facilisis vitae quam. Nullam et lacus mi. Pellentesque sed neque dui. Proin aliquam diam a sem tincidunt finibus. Duis non cursus sapien. In tempor dictum nulla, in facilisis ipsum placerat vulputate.\r\n\r\nPhasellus nec consequat elit. Nullam faucibus egestas nisi, in suscipit felis ullamcorper a. Aenean vitae ex viverra quam condimentum tempor in a felis. Nulla non dolor dui. Sed massa mi, dictum et vehicula non, tincidunt sed eros. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper feugiat metus vitae scelerisque. Nulla ac tellus pellentesque ante varius aliquet. Aliquam at ipsum diam. Vestibulum gravida eros at est semper, at porta turpis tristique.', 5, '12.00', 2500, '16gb', 2, 'iOs', 'Sep 2016', '6', 1),
(4, 'Zadnja testiranja', '2017-01-17 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat bibendum purus mollis ullamcorper. Ut ac sapien scelerisque, posuere ipsum et, viverra quam. Etiam efficitur nisi ligula, vel ultrices felis lacinia id. Ut commodo, lectus ut euismod vulputate, leo justo faucibus justo, non porttitor risus ligula eu dolor. Maecenas et mi dui. In id iaculis nisl. Suspendisse vitae porttitor lacus. Vivamus ac justo sit amet tellus vestibulum commodo. Vivamus ac faucibus elit. Duis tristique a quam non iaculis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer fermentum bibendum justo ut volutpat. Praesent sodales dui eget ligula tempus, sit amet maximus purus fermentum. Integer lobortis leo nec sem porta, et egestas justo sollicitudin. Quisque nisi orci, auctor eget fringilla non, consectetur quis diam. Nunc iaculis est nunc, et pulvinar lectus lobortis a.\r\n\r\nCras non sem sem. Maecenas sit amet neque vel ligula pulvinar aliquam vitae ac diam. Etiam sit amet augue libero. Morbi et lacus et neque convallis vestibulum in eu nisl. Curabitur nec ipsum eros. Vivamus aliquet malesuada felis at efficitur. Nulla sapien massa, auctor non tellus quis, pulvinar laoreet augue. Praesent id arcu sit amet nibh euismod consequat. Aenean eget pulvinar felis. Vestibulum ullamcorper metus mi, nec auctor leo sodales et. Aliquam erat volutpat.\r\n\r\nMorbi orci magna, egestas nec mollis elementum, aliquam in enim. Nulla bibendum lacus sed lacus cursus varius. Curabitur non ipsum in eros porta malesuada. Ut ultricies dui eu diam ornare, sed bibendum magna ultrices. Sed tempor ut odio non mollis. Sed odio purus, faucibus eu gravida id, ultricies at odio. Maecenas ipsum nibh, placerat id faucibus ultrices, malesuada a nulla. Fusce euismod sapien nec arcu sodales malesuada. Phasellus nisi mi, sollicitudin eu mauris vel, tristique mattis dui. Curabitur sagittis facilisis pulvinar. Aenean mattis dui ornare tortor auctor, imperdiet imperdiet neque accumsan. Maecenas vitae auctor odio. Aenean auctor nibh non vulputate sollicitudin. Fusce vestibulum vehicula sem sit amet malesuada.\r\n\r\nNulla facilisi. Nullam nec venenatis risus. Quisque posuere placerat semper. Vestibulum efficitur mattis commodo. Suspendisse nunc dui, gravida eget nunc ut, laoreet sagittis tellus. Integer luctus eros sit amet scelerisque euismod. Mauris vitae lectus lacus. Nullam blandit nisi quis justo tincidunt, vitae viverra tortor vehicula. Donec dictum turpis eget mi dictum ullamcorper. Ut fermentum neque erat, et commodo orci vulputate quis. Sed lacus neque, euismod non aliquet eu, facilisis vitae quam. Nullam et lacus mi. Pellentesque sed neque dui. Proin aliquam diam a sem tincidunt finibus. Duis non cursus sapien. In tempor dictum nulla, in facilisis ipsum placerat vulputate.\r\n\r\nPhasellus nec consequat elit. Nullam faucibus egestas nisi, in suscipit felis ullamcorper a. Aenean vitae ex viverra quam condimentum tempor in a felis. Nulla non dolor dui. Sed massa mi, dictum et vehicula non, tincidunt sed eros. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper feugiat metus vitae scelerisque. Nulla ac tellus pellentesque ante varius aliquet. Aliquam at ipsum diam. Vestibulum gravida eros at est semper, at porta turpis tristique.', 5, '12.00', 2500, '16gb', 2, 'iOs', 'Sep 2016', '6', 1),
(5, 'Zadnja testiranja', '2017-01-17 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat bibendum purus mollis ullamcorper. Ut ac sapien scelerisque, posuere ipsum et, viverra quam. Etiam efficitur nisi ligula, vel ultrices felis lacinia id. Ut commodo, lectus ut euismod vulputate, leo justo faucibus justo, non porttitor risus ligula eu dolor. Maecenas et mi dui. In id iaculis nisl. Suspendisse vitae porttitor lacus. Vivamus ac justo sit amet tellus vestibulum commodo. Vivamus ac faucibus elit. Duis tristique a quam non iaculis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer fermentum bibendum justo ut volutpat. Praesent sodales dui eget ligula tempus, sit amet maximus purus fermentum. Integer lobortis leo nec sem porta, et egestas justo sollicitudin. Quisque nisi orci, auctor eget fringilla non, consectetur quis diam. Nunc iaculis est nunc, et pulvinar lectus lobortis a.\r\n\r\nCras non sem sem. Maecenas sit amet neque vel ligula pulvinar aliquam vitae ac diam. Etiam sit amet augue libero. Morbi et lacus et neque convallis vestibulum in eu nisl. Curabitur nec ipsum eros. Vivamus aliquet malesuada felis at efficitur. Nulla sapien massa, auctor non tellus quis, pulvinar laoreet augue. Praesent id arcu sit amet nibh euismod consequat. Aenean eget pulvinar felis. Vestibulum ullamcorper metus mi, nec auctor leo sodales et. Aliquam erat volutpat.\r\n\r\nMorbi orci magna, egestas nec mollis elementum, aliquam in enim. Nulla bibendum lacus sed lacus cursus varius. Curabitur non ipsum in eros porta malesuada. Ut ultricies dui eu diam ornare, sed bibendum magna ultrices. Sed tempor ut odio non mollis. Sed odio purus, faucibus eu gravida id, ultricies at odio. Maecenas ipsum nibh, placerat id faucibus ultrices, malesuada a nulla. Fusce euismod sapien nec arcu sodales malesuada. Phasellus nisi mi, sollicitudin eu mauris vel, tristique mattis dui. Curabitur sagittis facilisis pulvinar. Aenean mattis dui ornare tortor auctor, imperdiet imperdiet neque accumsan. Maecenas vitae auctor odio. Aenean auctor nibh non vulputate sollicitudin. Fusce vestibulum vehicula sem sit amet malesuada.\r\n\r\nNulla facilisi. Nullam nec venenatis risus. Quisque posuere placerat semper. Vestibulum efficitur mattis commodo. Suspendisse nunc dui, gravida eget nunc ut, laoreet sagittis tellus. Integer luctus eros sit amet scelerisque euismod. Mauris vitae lectus lacus. Nullam blandit nisi quis justo tincidunt, vitae viverra tortor vehicula. Donec dictum turpis eget mi dictum ullamcorper. Ut fermentum neque erat, et commodo orci vulputate quis. Sed lacus neque, euismod non aliquet eu, facilisis vitae quam. Nullam et lacus mi. Pellentesque sed neque dui. Proin aliquam diam a sem tincidunt finibus. Duis non cursus sapien. In tempor dictum nulla, in facilisis ipsum placerat vulputate.\r\n\r\nPhasellus nec consequat elit. Nullam faucibus egestas nisi, in suscipit felis ullamcorper a. Aenean vitae ex viverra quam condimentum tempor in a felis. Nulla non dolor dui. Sed massa mi, dictum et vehicula non, tincidunt sed eros. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper feugiat metus vitae scelerisque. Nulla ac tellus pellentesque ante varius aliquet. Aliquam at ipsum diam. Vestibulum gravida eros at est semper, at porta turpis tristique.', 5, '12.00', 2500, '16gb', 2, 'iOs', 'Sep 2016', '6', 1),
(6, 'Zadnja testiranja', '2017-01-17 00:00:00.000000', 'the_news.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at nisi leo. Sed non tortor pretium, ullamcorper leo non, pulvinar quam. Aliquam neque massa, ultrices et turpis nec, vulputate dictum felis. Suspendisse finibus leo in blandit molestie nullam.', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat bibendum purus mollis ullamcorper. Ut ac sapien scelerisque, posuere ipsum et, viverra quam. Etiam efficitur nisi ligula, vel ultrices felis lacinia id. Ut commodo, lectus ut euismod vulputate, leo justo faucibus justo, non porttitor risus ligula eu dolor. Maecenas et mi dui. In id iaculis nisl. Suspendisse vitae porttitor lacus. Vivamus ac justo sit amet tellus vestibulum commodo. Vivamus ac faucibus elit. Duis tristique a quam non iaculis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer fermentum bibendum justo ut volutpat. Praesent sodales dui eget ligula tempus, sit amet maximus purus fermentum. Integer lobortis leo nec sem porta, et egestas justo sollicitudin. Quisque nisi orci, auctor eget fringilla non, consectetur quis diam. Nunc iaculis est nunc, et pulvinar lectus lobortis a.\r\n\r\nCras non sem sem. Maecenas sit amet neque vel ligula pulvinar aliquam vitae ac diam. Etiam sit amet augue libero. Morbi et lacus et neque convallis vestibulum in eu nisl. Curabitur nec ipsum eros. Vivamus aliquet malesuada felis at efficitur. Nulla sapien massa, auctor non tellus quis, pulvinar laoreet augue. Praesent id arcu sit amet nibh euismod consequat. Aenean eget pulvinar felis. Vestibulum ullamcorper metus mi, nec auctor leo sodales et. Aliquam erat volutpat.\r\n\r\nMorbi orci magna, egestas nec mollis elementum, aliquam in enim. Nulla bibendum lacus sed lacus cursus varius. Curabitur non ipsum in eros porta malesuada. Ut ultricies dui eu diam ornare, sed bibendum magna ultrices. Sed tempor ut odio non mollis. Sed odio purus, faucibus eu gravida id, ultricies at odio. Maecenas ipsum nibh, placerat id faucibus ultrices, malesuada a nulla. Fusce euismod sapien nec arcu sodales malesuada. Phasellus nisi mi, sollicitudin eu mauris vel, tristique mattis dui. Curabitur sagittis facilisis pulvinar. Aenean mattis dui ornare tortor auctor, imperdiet imperdiet neque accumsan. Maecenas vitae auctor odio. Aenean auctor nibh non vulputate sollicitudin. Fusce vestibulum vehicula sem sit amet malesuada.\r\n\r\nNulla facilisi. Nullam nec venenatis risus. Quisque posuere placerat semper. Vestibulum efficitur mattis commodo. Suspendisse nunc dui, gravida eget nunc ut, laoreet sagittis tellus. Integer luctus eros sit amet scelerisque euismod. Mauris vitae lectus lacus. Nullam blandit nisi quis justo tincidunt, vitae viverra tortor vehicula. Donec dictum turpis eget mi dictum ullamcorper. Ut fermentum neque erat, et commodo orci vulputate quis. Sed lacus neque, euismod non aliquet eu, facilisis vitae quam. Nullam et lacus mi. Pellentesque sed neque dui. Proin aliquam diam a sem tincidunt finibus. Duis non cursus sapien. In tempor dictum nulla, in facilisis ipsum placerat vulputate.\r\n\r\nPhasellus nec consequat elit. Nullam faucibus egestas nisi, in suscipit felis ullamcorper a. Aenean vitae ex viverra quam condimentum tempor in a felis. Nulla non dolor dui. Sed massa mi, dictum et vehicula non, tincidunt sed eros. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed semper feugiat metus vitae scelerisque. Nulla ac tellus pellentesque ante varius aliquet. Aliquam at ipsum diam. Vestibulum gravida eros at est semper, at porta turpis tristique.', 5, '12.00', 2500, '16gb', 2, 'iOs', 'Sep 2016', '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `djangogf_uporabnik`
--

CREATE TABLE `djangogf_uporabnik` (
  `id` int(11) NOT NULL,
  `uprOpis` varchar(256) NOT NULL,
  `upr_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djangogf_uporabnik`
--

INSERT INTO `djangogf_uporabnik` (`id`, `uprOpis`, `upr_id`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus erat et nulla sodales semper. Praesent egestas elit felis, a blandit neque maximus eget. Vestibulum et ornare eros, eu cursus enim. Phasellus mattis varius est sit amet rutrum nullam.', 2),
(3, 'ADMIN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-01-02 14:37:55.971256', '2', 'domenba', 1, '[{"added": {}}]', 6, 1),
(2, '2017-01-02 14:38:15.309153', '2', 'domenba', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 6, 1),
(3, '2017-01-02 14:54:42.147604', '2', 'DomenBa', 2, '[{"changed": {"fields": ["username"]}}]', 6, 1),
(4, '2017-01-02 16:42:29.719973', '1', 'Prijavljen uporabnik', 1, '[{"added": {}}]', 7, 1),
(5, '2017-01-02 16:43:04.574761', '2', 'Urednik', 1, '[{"added": {}}]', 7, 1),
(6, '2017-01-02 16:43:37.044493', '3', 'Administrator', 1, '[{"added": {}}]', 7, 1),
(7, '2017-01-02 16:43:56.962955', '1', 'admin', 2, '[{"changed": {"fields": ["first_name", "last_name"]}}]', 6, 1),
(8, '2017-01-02 16:43:59.760775', '1', 'admin', 2, '[]', 6, 1),
(9, '2017-01-02 16:44:07.899771', '2', 'DomenBa', 2, '[]', 6, 1),
(10, '2017-01-02 16:44:26.616682', '3', 'prijavljen', 1, '[{"added": {}}]', 6, 1),
(11, '2017-01-02 16:44:39.732901', '3', 'prijavljen', 2, '[]', 6, 1),
(12, '2017-01-02 16:44:48.275923', '3', 'prijavljen', 2, '[]', 6, 1),
(13, '2017-01-02 17:33:27.463858', '2', 'DomenBa', 2, '[]', 6, 1),
(14, '2017-01-02 17:33:54.522128', '2', 'DomenBa', 2, '[]', 6, 1),
(15, '2017-01-11 19:33:06.080886', '4', 'admin1', 3, '', 6, 1),
(16, '2017-01-11 19:33:06.082388', '5', 'admin12', 3, '', 6, 1),
(17, '2017-01-11 19:58:19.204892', '8', 'a', 3, '', 6, 1),
(18, '2017-01-11 19:58:19.205890', '3', 'prijavljen', 3, '', 6, 1),
(19, '2017-01-11 19:58:19.206392', '6', 'test', 3, '', 6, 1),
(20, '2017-01-11 20:06:48.589503', '2', 'DomenBa', 2, '[{"changed": {"fields": ["password"]}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'djangoGF', 'testiranje'),
(2, 'djangoGF', 'novica'),
(3, 'djangoGF', 'komentar'),
(4, 'admin', 'logentry'),
(5, 'auth', 'permission'),
(6, 'auth', 'user'),
(7, 'auth', 'group'),
(8, 'contenttypes', 'contenttype'),
(9, 'sessions', 'session'),
(10, 'sites', 'site'),
(11, 'djangoGF', 'uporabnik');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-01-02 14:36:32.292895'),
(2, 'auth', '0001_initial', '2017-01-02 14:36:32.688495'),
(3, 'admin', '0001_initial', '2017-01-02 14:36:32.786388'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-01-02 14:36:32.799440'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-01-02 14:36:32.868127'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-01-02 14:36:32.899377'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-01-02 14:36:32.932701'),
(8, 'auth', '0004_alter_user_username_opts', '2017-01-02 14:36:32.946703'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-01-02 14:36:32.993237'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-01-02 14:36:32.997235'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-01-02 14:36:33.011289'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-01-02 14:36:33.039238'),
(13, 'djangoGF', '0001_initial', '2017-01-02 14:36:33.293872'),
(14, 'sessions', '0001_initial', '2017-01-02 14:36:33.334670'),
(15, 'sites', '0001_initial', '2017-01-02 14:36:33.350619'),
(16, 'sites', '0002_alter_domain_unique', '2017-01-02 14:36:33.368325'),
(17, 'djangoGF', '0002_auto_20170102_1544', '2017-01-02 14:44:42.003514');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mm23uuy4xxfro13sg3joeegi9rswp5jz', 'NTVjMzczYjVhMGI2NGFhM2VkN2ExYjc1ZjE1MDU3ZmJlZWZkY2ZlMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWM2NzY4M2IzNmYzOWRlNzE3NDZjOTcxNTljYzFjMjlmMWZjZTFiNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-16 15:29:10.575720'),
('tyw08srng7ryfhm3oi1dq4omadtipob7', 'MDgxYWU0OGFkMWRmZGFlYjhlMmJmZTQyYzM3MTQwYTY0NTZlMjdiMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzY3NjgzYjM2ZjM5ZGU3MTc0NmM5NzE1OWNjMWMyOWYxZmNlMWI1In0=', '2017-01-16 16:05:57.221731'),
('t7dhm3l46sybung2lhwc1n70a1malqdt', 'MDgxYWU0OGFkMWRmZGFlYjhlMmJmZTQyYzM3MTQwYTY0NTZlMjdiMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzY3NjgzYjM2ZjM5ZGU3MTc0NmM5NzE1OWNjMWMyOWYxZmNlMWI1In0=', '2017-01-16 16:33:20.786288'),
('d8eys46qg9k0ff0ij3tyslh7abwewlul', 'ODBmN2Q5MzY5ZTM3Mjg0YzJiODhjNGIwNzU1ZWQzY2UwMTdmMzAwMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjNjc2ODNiMzZmMzlkZTcxNzQ2Yzk3MTU5Y2MxYzI5ZjFmY2UxYjUiLCJuZXdzRGV0YWlsIjp7ImlkIjoxfSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9', '2017-01-25 21:35:26.308255');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_0e939a4f` (`group_id`),
  ADD KEY `auth_group_permissions_8373b171` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_417f1b1c` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_e8701ad4` (`user_id`),
  ADD KEY `auth_user_groups_0e939a4f` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  ADD KEY `auth_user_user_permissions_8373b171` (`permission_id`);

--
-- Indexes for table `djangogf_komentar`
--
ALTER TABLE `djangogf_komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `djangoGF_komentar_1f1d2142` (`kmtNovica_id`),
  ADD KEY `djangoGF_komentar_9a96e1f1` (`kmtTestiranje_id`);

--
-- Indexes for table `djangogf_novica`
--
ALTER TABLE `djangogf_novica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `djangogf_testiranje`
--
ALTER TABLE `djangogf_testiranje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `djangogf_uporabnik`
--
ALTER TABLE `djangogf_uporabnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upr_id` (`upr_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_417f1b1c` (`content_type_id`),
  ADD KEY `django_admin_log_e8701ad4` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `djangogf_komentar`
--
ALTER TABLE `djangogf_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `djangogf_novica`
--
ALTER TABLE `djangogf_novica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `djangogf_testiranje`
--
ALTER TABLE `djangogf_testiranje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `djangogf_uporabnik`
--
ALTER TABLE `djangogf_uporabnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
