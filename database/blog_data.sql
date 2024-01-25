-- Adminer 4.8.1 MySQL 10.6.12-MariaDB-0ubuntu0.22.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

INSERT INTO `categories` (`idcat`, `name`) VALUES
(1,	'Sport'),
(2,	'Culture'),
(3,	'Politique'),
(4,	'Science'),
(5,	'Santé'),
(6,	'Voyage'),
(7,	'Loisir'),
(8,	'Économie'),
(9,	'Éducation'),
(10,	'Environnement')
ON DUPLICATE KEY UPDATE `idcat` = VALUES(`idcat`), `name` = VALUES(`name`);

INSERT INTO `comments` (`id`, `content`, `addTime`, `posts_id`, `users_id`) VALUES
(1,	'Ceci est un commentaire de Mia sur l\'article Article 830 de Olivia.',	'2024-01-17 07:27:24',	150,	13)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `content` = VALUES(`content`), `addTime` = VALUES(`addTime`), `posts_id` = VALUES(`posts_id`), `users_id` = VALUES(`users_id`);

INSERT INTO `posts` (`id`, `title`, `content`, `dateFrom`, `dateUntil`, `priority`, `users_id`) VALUES
(11,	'Article 568 de Bob',	'Ceci est le contenu de l\'article 062 de Bob.',	'2023-06-16',	'2024-11-28',	4,	2),
(12,	'Article 599 de Bob',	'Ceci est le contenu de l\'article 704 de Bob.',	'2023-05-04',	'2024-07-28',	3,	2),
(13,	'Article 418 de Bob',	'Ceci est le contenu de l\'article 918 de Bob.',	'2023-09-23',	'2024-12-23',	5,	2),
(14,	'Article 200 de Bob',	'Ceci est le contenu de l\'article 227 de Bob.',	'2023-07-12',	'2025-01-19',	3,	2),
(15,	'Article 801 de Bob',	'Ceci est le contenu de l\'article 942 de Bob.',	'2023-10-04',	'2024-10-04',	5,	2),
(16,	'Article 824 de Bob',	'Ceci est le contenu de l\'article 365 de Bob.',	'2023-09-16',	'2024-09-28',	3,	2),
(17,	'Article 690 de Bob',	'Ceci est le contenu de l\'article 409 de Bob.',	'2023-02-02',	'2024-09-15',	3,	2),
(18,	'Article 628 de Bob',	'Ceci est le contenu de l\'article 198 de Bob.',	'2023-12-16',	'2024-12-28',	3,	2),
(19,	'Article 926 de Bob',	'Ceci est le contenu de l\'article 597 de Bob.',	'2023-11-09',	'2024-04-21',	6,	2),
(20,	'Article 281 de Bob',	'Ceci est le contenu de l\'article 596 de Bob.',	'2023-12-03',	'2024-12-20',	1,	2),
(21,	'Article 943 de Charlie',	'Ceci est le contenu de l\'article 310 de Charlie.',	'2023-05-04',	'2024-09-29',	2,	3),
(22,	'Article 226 de Charlie',	'Ceci est le contenu de l\'article 363 de Charlie.',	'2023-12-04',	'2024-08-30',	6,	3),
(23,	'Article 206 de Charlie',	'Ceci est le contenu de l\'article 221 de Charlie.',	'2023-07-29',	'2024-11-01',	4,	3),
(24,	'Article 741 de Charlie',	'Ceci est le contenu de l\'article 465 de Charlie.',	'2023-12-17',	'2024-03-06',	2,	3),
(25,	'Article 092 de Charlie',	'Ceci est le contenu de l\'article 589 de Charlie.',	'2023-05-23',	'2024-08-24',	9,	3),
(26,	'Article 859 de Charlie',	'Ceci est le contenu de l\'article 523 de Charlie.',	'2024-01-10',	'2024-09-05',	9,	3),
(27,	'Article 070 de Charlie',	'Ceci est le contenu de l\'article 394 de Charlie.',	'2023-04-21',	'2024-09-03',	7,	3),
(28,	'Article 143 de Charlie',	'Ceci est le contenu de l\'article 325 de Charlie.',	'2023-11-13',	'2025-01-21',	4,	3),
(29,	'Article 056 de Charlie',	'Ceci est le contenu de l\'article 050 de Charlie.',	'2023-12-24',	'2024-04-27',	0,	3),
(30,	'Article 538 de Charlie',	'Ceci est le contenu de l\'article 496 de Charlie.',	'2023-03-13',	'2024-11-28',	6,	3),
(31,	'Article 669 de David',	'Ceci est le contenu de l\'article 416 de David.',	'2023-12-27',	'2024-03-08',	3,	4),
(32,	'Article 600 de David',	'Ceci est le contenu de l\'article 818 de David.',	'2023-10-09',	'2024-01-23',	1,	4),
(33,	'Article 670 de David',	'Ceci est le contenu de l\'article 946 de David.',	'2023-05-06',	'2024-10-25',	6,	4),
(34,	'Article 876 de David',	'Ceci est le contenu de l\'article 491 de David.',	'2023-03-26',	'2024-09-25',	8,	4),
(35,	'Article 428 de David',	'Ceci est le contenu de l\'article 469 de David.',	'2024-01-02',	'2024-12-13',	2,	4),
(36,	'Article 714 de David',	'Ceci est le contenu de l\'article 738 de David.',	'2023-07-07',	'2024-08-04',	0,	4),
(37,	'Article 456 de David',	'Ceci est le contenu de l\'article 252 de David.',	'2023-03-03',	'2024-10-09',	8,	4),
(38,	'Article 268 de David',	'Ceci est le contenu de l\'article 698 de David.',	'2023-05-17',	'2024-05-28',	6,	4),
(39,	'Article 278 de David',	'Ceci est le contenu de l\'article 404 de David.',	'2023-11-17',	'2024-10-07',	9,	4),
(40,	'Article 812 de David',	'Ceci est le contenu de l\'article 100 de David.',	'2023-12-30',	'2024-02-02',	9,	4),
(41,	'Article 632 de Eve',	'Ceci est le contenu de l\'article 331 de Eve.',	'2023-04-21',	'2024-11-10',	7,	5),
(42,	'Article 244 de Eve',	'Ceci est le contenu de l\'article 032 de Eve.',	'2023-08-20',	'2024-02-08',	9,	5),
(43,	'Article 551 de Eve',	'Ceci est le contenu de l\'article 947 de Eve.',	'2023-12-25',	'2024-08-15',	5,	5),
(44,	'Article 169 de Eve',	'Ceci est le contenu de l\'article 132 de Eve.',	'2023-11-28',	'2024-06-07',	4,	5),
(45,	'Article 930 de Eve',	'Ceci est le contenu de l\'article 421 de Eve.',	'2023-10-01',	'2024-05-11',	5,	5),
(46,	'Article 909 de Eve',	'Ceci est le contenu de l\'article 861 de Eve.',	'2023-06-26',	'2024-05-17',	8,	5),
(47,	'Article 264 de Eve',	'Ceci est le contenu de l\'article 794 de Eve.',	'2023-11-19',	'2024-07-27',	0,	5),
(48,	'Article 556 de Eve',	'Ceci est le contenu de l\'article 728 de Eve.',	'2023-02-03',	'2024-09-25',	4,	5),
(49,	'Article 255 de Eve',	'Ceci est le contenu de l\'article 911 de Eve.',	'2023-04-10',	'2024-04-12',	7,	5),
(50,	'Article 005 de Eve',	'Ceci est le contenu de l\'article 823 de Eve.',	'2023-12-18',	'2024-02-04',	8,	5),
(51,	'Article 265 de Frank',	'Ceci est le contenu de l\'article 704 de Frank.',	'2023-05-03',	'2024-08-01',	4,	6),
(52,	'Article 616 de Frank',	'Ceci est le contenu de l\'article 769 de Frank.',	'2023-01-24',	'2024-09-29',	4,	6),
(53,	'Article 104 de Frank',	'Ceci est le contenu de l\'article 223 de Frank.',	'2023-04-04',	'2024-06-01',	3,	6),
(54,	'Article 786 de Frank',	'Ceci est le contenu de l\'article 814 de Frank.',	'2023-05-08',	'2024-03-08',	4,	6),
(55,	'Article 047 de Frank',	'Ceci est le contenu de l\'article 782 de Frank.',	'2023-04-18',	'2024-07-24',	2,	6),
(56,	'Article 506 de Frank',	'Ceci est le contenu de l\'article 926 de Frank.',	'2023-12-14',	'2024-10-30',	5,	6),
(57,	'Article 332 de Frank',	'Ceci est le contenu de l\'article 074 de Frank.',	'2023-09-09',	'2024-09-13',	0,	6),
(58,	'Article 537 de Frank',	'Ceci est le contenu de l\'article 408 de Frank.',	'2023-08-19',	'2024-12-25',	3,	6),
(59,	'Article 910 de Frank',	'Ceci est le contenu de l\'article 539 de Frank.',	'2023-02-05',	'2024-04-07',	1,	6),
(60,	'Article 077 de Frank',	'Ceci est le contenu de l\'article 969 de Frank.',	'2023-06-13',	'2024-03-22',	9,	6),
(61,	'Article 375 de Grace',	'Ceci est le contenu de l\'article 958 de Grace.',	'2023-05-26',	'2024-07-04',	2,	7),
(62,	'Article 862 de Grace',	'Ceci est le contenu de l\'article 590 de Grace.',	'2023-09-12',	'2024-02-12',	1,	7),
(63,	'Article 732 de Grace',	'Ceci est le contenu de l\'article 123 de Grace.',	'2023-08-23',	'2024-10-14',	3,	7),
(64,	'Article 690 de Grace',	'Ceci est le contenu de l\'article 332 de Grace.',	'2023-06-22',	'2025-01-06',	0,	7),
(65,	'Article 211 de Grace',	'Ceci est le contenu de l\'article 004 de Grace.',	'2023-09-04',	'2024-12-25',	4,	7),
(66,	'Article 515 de Grace',	'Ceci est le contenu de l\'article 206 de Grace.',	'2023-07-31',	'2024-11-09',	5,	7),
(67,	'Article 320 de Grace',	'Ceci est le contenu de l\'article 974 de Grace.',	'2023-02-26',	'2024-09-05',	3,	7),
(68,	'Article 997 de Grace',	'Ceci est le contenu de l\'article 875 de Grace.',	'2023-09-06',	'2024-05-07',	2,	7),
(69,	'Article 611 de Grace',	'Ceci est le contenu de l\'article 169 de Grace.',	'2024-01-19',	'2024-08-11',	7,	7),
(70,	'Article 960 de Grace',	'Ceci est le contenu de l\'article 634 de Grace.',	'2023-10-10',	'2024-08-08',	8,	7),
(71,	'Article 630 de Harry',	'Ceci est le contenu de l\'article 595 de Harry.',	'2023-12-24',	'2024-09-11',	9,	8),
(72,	'Article 741 de Harry',	'Ceci est le contenu de l\'article 918 de Harry.',	'2023-09-12',	'2024-02-19',	2,	8),
(73,	'Article 187 de Harry',	'Ceci est le contenu de l\'article 086 de Harry.',	'2023-03-12',	'2024-02-25',	8,	8),
(74,	'Article 967 de Harry',	'Ceci est le contenu de l\'article 289 de Harry.',	'2023-07-08',	'2024-12-05',	7,	8),
(75,	'Article 895 de Harry',	'Ceci est le contenu de l\'article 377 de Harry.',	'2023-11-11',	'2024-12-07',	7,	8),
(76,	'Article 254 de Harry',	'Ceci est le contenu de l\'article 940 de Harry.',	'2023-02-14',	'2024-12-11',	6,	8),
(77,	'Article 362 de Harry',	'Ceci est le contenu de l\'article 002 de Harry.',	'2023-02-20',	'2024-09-01',	2,	8),
(78,	'Article 567 de Harry',	'Ceci est le contenu de l\'article 998 de Harry.',	'2023-10-10',	'2024-07-05',	3,	8),
(79,	'Article 554 de Harry',	'Ceci est le contenu de l\'article 631 de Harry.',	'2023-07-28',	'2024-08-17',	3,	8),
(80,	'Article 102 de Harry',	'Ceci est le contenu de l\'article 428 de Harry.',	'2023-03-24',	'2024-12-14',	9,	8),
(81,	'Article 145 de Isabel',	'Ceci est le contenu de l\'article 829 de Isabel.',	'2023-05-08',	'2024-02-18',	2,	9),
(82,	'Article 920 de Isabel',	'Ceci est le contenu de l\'article 919 de Isabel.',	'2023-03-25',	'2024-06-23',	5,	9),
(83,	'Article 666 de Isabel',	'Ceci est le contenu de l\'article 579 de Isabel.',	'2023-03-01',	'2024-10-26',	0,	9),
(84,	'Article 203 de Isabel',	'Ceci est le contenu de l\'article 728 de Isabel.',	'2024-01-11',	'2025-01-15',	8,	9),
(85,	'Article 085 de Isabel',	'Ceci est le contenu de l\'article 008 de Isabel.',	'2023-04-12',	'2024-12-17',	1,	9),
(86,	'Article 077 de Isabel',	'Ceci est le contenu de l\'article 914 de Isabel.',	'2023-09-21',	'2025-01-08',	7,	9),
(87,	'Article 058 de Isabel',	'Ceci est le contenu de l\'article 923 de Isabel.',	'2023-08-15',	'2024-07-03',	8,	9),
(88,	'Article 161 de Isabel',	'Ceci est le contenu de l\'article 108 de Isabel.',	'2024-01-02',	'2025-01-09',	6,	9),
(89,	'Article 365 de Isabel',	'Ceci est le contenu de l\'article 868 de Isabel.',	'2023-10-25',	'2024-09-10',	4,	9),
(90,	'Article 249 de Isabel',	'Ceci est le contenu de l\'article 952 de Isabel.',	'2024-01-17',	'2024-04-14',	0,	9),
(91,	'Article 708 de Jack',	'Ceci est le contenu de l\'article 311 de Jack.',	'2023-08-19',	'2024-04-12',	8,	10),
(92,	'Article 382 de Jack',	'Ceci est le contenu de l\'article 484 de Jack.',	'2023-10-14',	'2024-12-29',	8,	10),
(93,	'Article 419 de Jack',	'Ceci est le contenu de l\'article 559 de Jack.',	'2023-07-10',	'2024-01-30',	4,	10),
(94,	'Article 377 de Jack',	'Ceci est le contenu de l\'article 423 de Jack.',	'2023-01-29',	'2024-09-18',	3,	10),
(95,	'Article 641 de Jack',	'Ceci est le contenu de l\'article 241 de Jack.',	'2023-10-12',	'2024-10-01',	6,	10),
(96,	'Article 959 de Jack',	'Ceci est le contenu de l\'article 977 de Jack.',	'2024-01-21',	'2024-03-02',	5,	10),
(97,	'Article 271 de Jack',	'Ceci est le contenu de l\'article 799 de Jack.',	'2023-11-19',	'2024-07-25',	9,	10),
(98,	'Article 421 de Jack',	'Ceci est le contenu de l\'article 141 de Jack.',	'2023-08-14',	'2024-11-12',	6,	10),
(99,	'Article 053 de Jack',	'Ceci est le contenu de l\'article 181 de Jack.',	'2023-04-26',	'2024-04-03',	7,	10),
(100,	'Article 064 de Jack',	'Ceci est le contenu de l\'article 132 de Jack.',	'2023-08-05',	'2025-01-05',	3,	10),
(101,	'Article 948 de Kate',	'Ceci est le contenu de l\'article 653 de Kate.',	'2023-08-23',	'2024-03-15',	4,	11),
(102,	'Article 870 de Kate',	'Ceci est le contenu de l\'article 967 de Kate.',	'2023-11-01',	'2024-04-20',	5,	11),
(103,	'Article 879 de Kate',	'Ceci est le contenu de l\'article 833 de Kate.',	'2023-07-14',	'2024-03-16',	1,	11),
(104,	'Article 261 de Kate',	'Ceci est le contenu de l\'article 886 de Kate.',	'2023-05-31',	'2024-08-28',	0,	11),
(105,	'Article 380 de Kate',	'Ceci est le contenu de l\'article 797 de Kate.',	'2023-03-20',	'2024-11-25',	6,	11),
(106,	'Article 825 de Kate',	'Ceci est le contenu de l\'article 115 de Kate.',	'2023-12-17',	'2024-03-23',	5,	11),
(107,	'Article 124 de Kate',	'Ceci est le contenu de l\'article 046 de Kate.',	'2023-03-16',	'2024-03-21',	2,	11),
(108,	'Article 629 de Kate',	'Ceci est le contenu de l\'article 482 de Kate.',	'2023-07-16',	'2024-03-26',	2,	11),
(109,	'Article 951 de Kate',	'Ceci est le contenu de l\'article 873 de Kate.',	'2023-07-21',	'2024-12-31',	1,	11),
(110,	'Article 031 de Kate',	'Ceci est le contenu de l\'article 642 de Kate.',	'2023-12-11',	'2024-09-22',	9,	11),
(111,	'Article 869 de Leo',	'Ceci est le contenu de l\'article 426 de Leo.',	'2023-07-16',	'2024-05-26',	1,	12),
(112,	'Article 635 de Leo',	'Ceci est le contenu de l\'article 785 de Leo.',	'2024-01-17',	'2024-10-16',	6,	12),
(113,	'Article 847 de Leo',	'Ceci est le contenu de l\'article 412 de Leo.',	'2023-07-18',	'2024-06-02',	2,	12),
(114,	'Article 148 de Leo',	'Ceci est le contenu de l\'article 005 de Leo.',	'2023-06-26',	'2024-12-09',	6,	12),
(115,	'Article 704 de Leo',	'Ceci est le contenu de l\'article 512 de Leo.',	'2023-08-12',	'2024-10-10',	2,	12),
(116,	'Article 000 de Leo',	'Ceci est le contenu de l\'article 310 de Leo.',	'2023-07-06',	'2024-11-21',	5,	12),
(117,	'Article 016 de Leo',	'Ceci est le contenu de l\'article 576 de Leo.',	'2023-03-27',	'2024-06-24',	6,	12),
(118,	'Article 818 de Leo',	'Ceci est le contenu de l\'article 245 de Leo.',	'2023-04-18',	'2024-03-02',	2,	12),
(119,	'Article 839 de Leo',	'Ceci est le contenu de l\'article 498 de Leo.',	'2023-02-02',	'2024-06-07',	9,	12),
(120,	'Article 621 de Leo',	'Ceci est le contenu de l\'article 263 de Leo.',	'2023-08-12',	'2024-07-12',	9,	12),
(121,	'Article 545 de Mia',	'Ceci est le contenu de l\'article 753 de Mia.',	'2023-12-06',	'2024-06-17',	6,	13),
(122,	'Article 830 de Mia',	'Ceci est le contenu de l\'article 334 de Mia.',	'2023-11-19',	'2024-12-15',	9,	13),
(123,	'Article 035 de Mia',	'Ceci est le contenu de l\'article 342 de Mia.',	'2023-06-16',	'2024-01-25',	2,	13),
(124,	'Article 052 de Mia',	'Ceci est le contenu de l\'article 619 de Mia.',	'2023-02-15',	'2024-11-24',	3,	13),
(125,	'Article 362 de Mia',	'Ceci est le contenu de l\'article 686 de Mia.',	'2023-09-20',	'2024-09-19',	2,	13),
(126,	'Article 360 de Mia',	'Ceci est le contenu de l\'article 998 de Mia.',	'2023-02-25',	'2024-08-14',	0,	13),
(127,	'Article 672 de Mia',	'Ceci est le contenu de l\'article 148 de Mia.',	'2023-05-04',	'2024-03-29',	7,	13),
(128,	'Article 109 de Mia',	'Ceci est le contenu de l\'article 353 de Mia.',	'2023-08-15',	'2024-03-17',	4,	13),
(129,	'Article 646 de Mia',	'Ceci est le contenu de l\'article 977 de Mia.',	'2023-02-11',	'2024-11-12',	1,	13),
(130,	'Article 534 de Mia',	'Ceci est le contenu de l\'article 098 de Mia.',	'2023-03-04',	'2024-03-20',	1,	13),
(131,	'Article 086 de Noah',	'Ceci est le contenu de l\'article 098 de Noah.',	'2023-10-31',	'2024-12-03',	6,	14),
(132,	'Article 554 de Noah',	'Ceci est le contenu de l\'article 882 de Noah.',	'2023-04-24',	'2024-03-01',	2,	14),
(133,	'Article 059 de Noah',	'Ceci est le contenu de l\'article 471 de Noah.',	'2023-11-19',	'2024-07-17',	8,	14),
(134,	'Article 921 de Noah',	'Ceci est le contenu de l\'article 985 de Noah.',	'2023-11-25',	'2024-11-29',	7,	14),
(135,	'Article 345 de Noah',	'Ceci est le contenu de l\'article 385 de Noah.',	'2023-03-04',	'2024-05-11',	8,	14),
(136,	'Article 218 de Noah',	'Ceci est le contenu de l\'article 623 de Noah.',	'2023-08-08',	'2024-06-30',	8,	14),
(137,	'Article 709 de Noah',	'Ceci est le contenu de l\'article 131 de Noah.',	'2023-07-14',	'2024-04-25',	6,	14),
(138,	'Article 694 de Noah',	'Ceci est le contenu de l\'article 391 de Noah.',	'2023-03-10',	'2024-04-06',	3,	14),
(139,	'Article 368 de Noah',	'Ceci est le contenu de l\'article 652 de Noah.',	'2023-11-27',	'2024-11-19',	6,	14),
(140,	'Article 835 de Noah',	'Ceci est le contenu de l\'article 189 de Noah.',	'2023-08-15',	'2024-09-11',	8,	14),
(141,	'Article 385 de Olivia',	'Ceci est le contenu de l\'article 349 de Olivia.',	'2023-06-21',	'2024-12-23',	8,	15),
(142,	'Article 309 de Olivia',	'Ceci est le contenu de l\'article 106 de Olivia.',	'2023-06-16',	'2024-10-07',	7,	15),
(143,	'Article 516 de Olivia',	'Ceci est le contenu de l\'article 396 de Olivia.',	'2023-08-19',	'2025-01-08',	5,	15),
(144,	'Article 754 de Olivia',	'Ceci est le contenu de l\'article 182 de Olivia.',	'2023-05-31',	'2024-10-07',	5,	15),
(145,	'Article 799 de Olivia',	'Ceci est le contenu de l\'article 242 de Olivia.',	'2023-03-31',	'2024-06-01',	3,	15),
(146,	'Article 584 de Olivia',	'Ceci est le contenu de l\'article 928 de Olivia.',	'2023-03-05',	'2024-09-20',	6,	15),
(147,	'Article 199 de Olivia',	'Ceci est le contenu de l\'article 087 de Olivia.',	'2023-03-23',	'2024-12-31',	1,	15),
(148,	'Article 101 de Olivia',	'Ceci est le contenu de l\'article 952 de Olivia.',	'2023-08-09',	'2024-06-28',	7,	15),
(149,	'Article 614 de Olivia',	'Ceci est le contenu de l\'article 728 de Olivia.',	'2023-04-07',	'2024-11-13',	6,	15),
(150,	'Article 830 de Olivia',	'Ceci est le contenu de l\'article 195 de Olivia.',	'2023-07-30',	'2024-11-25',	7,	15)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `title` = VALUES(`title`), `content` = VALUES(`content`), `dateFrom` = VALUES(`dateFrom`), `dateUntil` = VALUES(`dateUntil`), `priority` = VALUES(`priority`), `users_id` = VALUES(`users_id`);


INSERT INTO `users` (`u_id`, `nickname`, `last_name`, `first_name`) VALUES
(2,	'Bob',	'Martin',	'Bob'),
(3,	'Charlie',	'Leroy',	'Charlie'),
(4,	'David',	'Roux',	'David'),
(5,	'Eve',	'Moreau',	'Eve'),
(6,	'Frank',	'Petit',	'Frank'),
(7,	'Grace',	'Garcia',	'Grace'),
(8,	'Harry',	'Bernard',	'Harry'),
(9,	'Isabel',	'Lopez',	'Isabel'),
(10,	'Jack',	'Durand',	'Jack'),
(11,	'Kate',	'Muller',	'Kate'),
(12,	'Leo',	'Dubois',	'Leo'),
(13,	'Mia',	'Schmidt',	'Mia'),
(14,	'Noah',	'Leroux',	'Noah'),
(15,	'Olivia',	'Wagner',	'Olivia')
ON DUPLICATE KEY UPDATE `u_id` = VALUES(`u_id`), `nickname` = VALUES(`nickname`), `last_name` = VALUES(`last_name`), `first_name` = VALUES(`first_name`);

-- 2024-01-24 14:13:29
