-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 02:46 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_on_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `random_qs`
--

CREATE TABLE IF NOT EXISTS `random_qs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) NOT NULL,
  `random_questions` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `random_qs`
--

INSERT INTO `random_qs` (`id`, `sub_id`, `random_questions`) VALUES
(1, 1, 20),
(2, 2, 22),
(3, 3, 0),
(4, 4, 4),
(5, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'juyel', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=287 ;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(91, 1, 0, 'Int'),
(92, 1, 1, 'Volatile '),
(93, 1, 0, 'Double'),
(94, 1, 0, '__0__'),
(103, 4, 0, 'stack cannot reuse its memory'),
(104, 4, 0, 'All elements are of different data types'),
(105, 4, 1, 'All operations are at one end'),
(106, 4, 0, 'Any element can be accessed from it directly'),
(107, 5, 0, 'gets()'),
(108, 5, 0, 'fileread()'),
(109, 5, 0, 'readfile()'),
(110, 5, 1, 'fread()'),
(111, 6, 0, 'continue'),
(112, 6, 0, 'exit'),
(113, 6, 0, 'goto'),
(114, 6, 1, 'break'),
(115, 7, 1, '26'),
(116, 7, 0, '33'),
(117, 7, 0, '23'),
(118, 7, 0, '32'),
(119, 8, 1, '()'),
(120, 8, 0, '[]'),
(121, 8, 0, '*'),
(122, 8, 0, '->'),
(123, 9, 0, 'a = getchar( stdin );'),
(124, 9, 1, 'a = getchar();'),
(125, 9, 0, 'a = getc();'),
(126, 9, 0, 'getchar( &a )'),
(127, 10, 0, 'float'),
(128, 10, 0, 'any type'),
(129, 10, 1, 'integer'),
(130, 10, 0, 'both a and c above'),
(131, 11, 0, ' write characters to a file'),
(132, 11, 1, 'takes 2 parameters'),
(133, 11, 0, 'returns a character'),
(134, 11, 0, ' requires a file pointer'),
(135, 12, 1, 'free()'),
(136, 12, 0, 'dealloc()'),
(137, 12, 0, 'release()'),
(138, 12, 0, 'dropmem()'),
(139, 13, 0, 'calloc() takes a single argument while malloc() needs two arguments'),
(140, 13, 1, 'malloc() takes a single argument while calloc() needs two arguments'),
(141, 13, 0, 'malloc() initializes the allocated memory to ZERO'),
(142, 13, 0, 'calloc() initializes the allocated memory to NULL'),
(143, 14, 0, 'strncpy()'),
(144, 14, 0, 'memcpy()'),
(145, 14, 1, 'memmove()'),
(146, 14, 0, 'strcpy()'),
(147, 15, 0, 'standard error'),
(148, 15, 0, 'standard error types'),
(149, 15, 1, ' standard error streams'),
(150, 15, 0, 'standard error definitions'),
(151, 16, 0, 'conio.h'),
(152, 16, 0, 'stdlib.h'),
(153, 16, 1, 'stdio.h'),
(154, 16, 0, 'dos.h'),
(155, 17, 0, 'malloc() and memalloc()'),
(156, 17, 0, ' alloc() and memalloc()'),
(157, 17, 1, 'malloc() and calloc()'),
(158, 17, 0, 'memalloc() and faralloc()'),
(159, 18, 0, 'strnchar()'),
(160, 18, 0, 'strchar()'),
(161, 18, 0, 'strrchar()'),
(162, 18, 1, 'strrchr()'),
(163, 19, 0, 'remove(var-name);'),
(164, 19, 1, 'free(var-name);'),
(165, 19, 0, 'delete(var-name);'),
(166, 19, 0, 'dalloc(var-name);'),
(167, 20, 0, 'ptr is array of pointers to 10 integers'),
(168, 20, 1, 'ptr is a pointer to an array of 10 integers'),
(169, 20, 0, 'ptr is an array of 10 integers'),
(170, 20, 0, 'ptr is an pointer to array'),
(171, 21, 0, ' argv is a pointer to pointer.'),
(172, 21, 1, 'argv is a pointer to a char pointer.'),
(173, 21, 0, 'argv is a function pointer.'),
(174, 21, 0, 'argv is a member of function pointer.'),
(175, 22, 0, 'Int *(fp)()'),
(176, 22, 1, 'Int (*fp)()'),
(177, 22, 0, 'Int * (fp)()'),
(178, 22, 0, 'None'),
(179, 23, 0, 'Stadgs.h'),
(180, 23, 1, 'Stdarg.h '),
(181, 23, 0, 'Stdio.h'),
(182, 23, 0, 'None '),
(183, 24, 1, 'There is no declaration in scope'),
(184, 24, 0, 'There are multiple declarations'),
(185, 24, 0, 'Function is invalid'),
(186, 24, 0, 'None'),
(187, 25, 0, 'Using atoi()'),
(188, 25, 0, 'Using printf()'),
(189, 25, 1, 'Using sprint()'),
(190, 25, 0, 'Using nsprintf()'),
(191, 26, 0, 'Parallel order'),
(192, 26, 0, 'Iterative order '),
(193, 26, 1, 'Last in first out '),
(194, 26, 0, 'Random order	'),
(195, 27, 0, 'Template class'),
(196, 27, 1, 'Function template'),
(197, 27, 0, 'Class template'),
(198, 27, 0, 'Both a and c above'),
(199, 28, 0, 'X~() {} '),
(200, 28, 0, 'X() {}~'),
(201, 28, 0, ' X() ~{} '),
(202, 28, 1, ' ~X() {}'),
(203, 29, 0, 'Run time'),
(204, 29, 1, 'Compile time'),
(205, 29, 0, 'Depends on how it is invoked'),
(206, 29, 0, 'Both b and c above'),
(207, 30, 0, 'It can abort the program'),
(208, 30, 0, 'It can cause a failure'),
(209, 30, 0, 'It can cause an error'),
(210, 30, 1, 'It can cause a trap'),
(211, 31, 0, 'Error'),
(212, 31, 0, 'Abort'),
(213, 31, 1, 'Trap'),
(214, 31, 0, 'Null'),
(215, 32, 0, 'float '),
(216, 32, 0, 'int'),
(217, 32, 1, 'real'),
(218, 32, 0, 'double'),
(219, 33, 1, 'A Semicolon (;)'),
(220, 33, 0, ' A Fullstop(.)'),
(221, 33, 0, 'A Comma (,)'),
(222, 33, 0, 'A Slash (/)'),
(223, 34, 0, 'malloc()'),
(224, 34, 0, ' realloc()'),
(225, 34, 0, 'alloc()'),
(226, 34, 1, 'calloc()'),
(227, 35, 1, 'No argument'),
(228, 35, 0, 'One Argument'),
(229, 35, 0, 'Two Argument'),
(230, 35, 0, ' None of these'),
(231, 36, 0, 'Absurd Class'),
(232, 36, 0, 'Dead Class'),
(233, 36, 0, 'Super Class'),
(234, 36, 1, 'Abstract Class'),
(235, 37, 0, 'Nuclear Family Class'),
(236, 37, 0, 'Abstruct Class'),
(237, 37, 1, 'Sigleton Class'),
(238, 37, 0, 'Numero Uno Class'),
(239, 38, 0, 'Polymorphism'),
(240, 38, 1, 'Inheritance'),
(241, 38, 0, 'Encapsulation'),
(242, 38, 0, 'Both A and B'),
(243, 39, 0, 'Public]'),
(244, 39, 1, 'Private'),
(245, 39, 0, 'Protected'),
(246, 39, 0, 'Static'),
(247, 40, 1, 'Run time'),
(248, 40, 0, 'Compile time'),
(249, 40, 0, 'Debug Time'),
(250, 40, 0, 'Coding Time'),
(251, 41, 0, '<fiostream>'),
(252, 41, 0, '<ifstream>'),
(253, 41, 0, '<ofstream>'),
(254, 41, 1, '<fstream>'),
(255, 42, 0, 'thrown'),
(256, 42, 0, 'threw'),
(257, 42, 1, 'throw'),
(258, 42, 0, 'throws'),
(259, 43, 0, 'Copy constructor'),
(260, 43, 1, 'Friend constructor'),
(261, 43, 0, 'Default constructor '),
(262, 43, 0, 'Parameterized constructor'),
(263, 44, 0, 'Static function'),
(264, 44, 1, 'Friend function'),
(265, 44, 0, 'Const function'),
(266, 44, 0, 'Virtual function'),
(267, 45, 0, 'Data hiding'),
(268, 45, 0, 'Dynamic Typing'),
(269, 45, 1, 'Dynamic binding'),
(270, 45, 0, 'Dynamic loading'),
(271, 46, 0, 'Call by value'),
(272, 46, 0, 'Call by reference'),
(273, 46, 1, 'Default arguments'),
(274, 46, 0, 'Call by pointer'),
(275, 47, 1, '0'),
(276, 47, 0, '4'),
(277, 47, 0, '6'),
(278, 47, 0, '3'),
(279, 48, 0, 'Encapsulation'),
(280, 48, 0, 'Abstraction'),
(281, 48, 1, 'Data hiding'),
(282, 48, 0, 'Data binding'),
(283, 49, 0, 'operator'),
(284, 49, 0, 'function'),
(285, 49, 1, 'object'),
(286, 49, 0, 'macro');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL,
  `sub_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`, `sub_id`) VALUES
(23, 1, 'Choose the invalid identifier from the below-', 1),
(26, 4, ' Explain the feature of stack.-', 1),
(27, 5, '________ function to read a specified number of elements from a file.', 1),
(28, 6, '________ will immediately jump to the end of the current block of code', 1),
(29, 7, 'int i = 2 * 3 + 4 * 5;  Value of i:', 1),
(30, 8, 'Which of the following operators below have the highest priority when evaulating?', 1),
(31, 9, 'How to read a character from the keyboard and will store it in the variable a.', 1),
(32, 10, 'rand() function returns a _value:-', 1),
(33, 11, 'fputs function is used to:-', 1),
(34, 12, 'What function should be used to release allocated memory which is no longer needed?', 1),
(35, 13, 'What is the main difference between calloc() and malloc()?', 1),
(36, 14, 'Which one is used for moving blocks of binary data that are of arbitrary size and position in memory?', 1),
(37, 15, 'What is stderr? ', 1),
(38, 16, 'Input/output function prototypes and macros are defined in which header file? ', 1),
(39, 17, 'Specify the 2 library functions to dynamically allocate memory?', 1),
(40, 18, 'Which standard library function will you use to find the last occurance of a character in a string in C? ', 1),
(41, 19, 'How will you free the allocated memory? ', 1),
(42, 20, '  What does the following declaration mean?  int (*ptr)[10];', 1),
(43, 21, 'What do the following declaration signify?   char **argv; ', 1),
(44, 22, 'How to declare a pointer to a function?', 1),
(45, 23, 'Function vprintf() uses the functionality of which header file?', 1),
(46, 24, 'What does the error, invalid redeclaration of a function mean?', 1),
(47, 25, 'How can one convert numbers to strings?', 1),
(48, 26, 'Recursive functions are executed in which order?', 1),
(49, 27, 'What defines a general set of operations that will be applied to various types of data?', 2),
(50, 28, ' How do we define a destructor?', 2),
(51, 29, ' Inline functions are invoked at the time of:-', 2),
(52, 30, 'What happens when a pointer is deleted twice?', 2),
(53, 31, 'Delaration a pointer more than once may cause ____ ', 2),
(54, 32, 'Which one is not a correct variable type in C++?', 2),
(55, 33, 'Which one is not a correct variable type in C++?', 2),
(56, 34, '_____function is used to allocate space for array in memory. ', 2),
(57, 35, 'Default constructor has ____ arguments. ', 2),
(58, 36, 'A class whose objects can not be created is known as _____ ', 2),
(59, 37, 'Which class allows only one object to be created:-', 2),
(60, 38, 'Reusability of code in C++ is achieved through ____ ', 2),
(61, 39, 'In CPP, members of a class are ______ by default. ', 2),
(62, 40, 'In C++ Program, inline fuctions are expanded during ____ ', 2),
(63, 41, 'To perfor file input / output operation in C++, we must include which header file ? ', 2),
(64, 42, 'An exceptio in C++ can be generated using which keywords. ', 2),
(65, 43, 'Which of the following is not a type of constructor?', 2),
(66, 44, 'Which of the following is not the member of class?', 2),
(67, 45, 'Which of the following concepts means determining at runtime what method to invoke?', 2),
(68, 46, 'Which of the following concept of oops allows compiler to insert arguments in a function call if it is not specified?', 2),
(69, 47, 'How many instances of an abstract class can be created?', 2),
(70, 48, 'Which of the following concepts of OOPS means exposing only necessary information to client?', 2),
(71, 49, 'cout is a/an __________ .', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(1, 'Nur nobi jewel', 'jewel', '827ccb0eea8a706c4c34a16891f84e7b', 'nurnobi319@gmail.com', 0),
(3, 'Rakib hasan', 'rakib', 'e10adc3949ba59abbe56e057f20f883e', 'rakib@gmail.com', 0),
(4, 'kamrul hassan', 'kamrul', '202cb962ac59075b964b07152d234b70', 'kamrul@gmail.com', 0),
(5, 'Nur nobi jewel', 'jewel', '3295c76acbf4caaed33c36b1b5fc2cb1', 'jewel@gmail.com', 1),
(6, 'Badhon Khan', 'Badhon', '202cb962ac59075b964b07152d234b70', 'badhon@gmail.com', 0),
(7, 'Mahid Ahmed Moshi', 'Moshi', '827ccb0eea8a706c4c34a16891f84e7b', 'mahid@gmail.com', 0),
(8, 'Atik', 'Atik_22', 'e10adc3949ba59abbe56e057f20f883e', 'atik55@gmail.com', 1),
(10, 'Rumman', 'rumman', '9f2e61f2a1e14f9053ecb6e8c5639e07', 'rumman142228@gmail.com', 0),
(11, 'jeet saha', 'jeet69', 'd4ce8f92e6db1280216fa04a84c2c200', 'perijgpeagpa@gmail.com', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
