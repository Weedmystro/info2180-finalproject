DROP DATABASE IF EXISTS `schema1`;
CREATE DATABASE IF NOT EXISTS `schema1` DEFAULT CHARACTER SET utf32;
USE `schema1`;

DROP TABLE IF EXISTS `Users`;

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_joined` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;



INSERT INTO `users` (`id`, `firstname`, `lastname`, `password`, `email`, `date_joined`) VALUES
(1, 'ADMIN', 'ADMIN', MD5('password123'), 'admin@project2.com', '2020-12-13');


GRANT ALL PRIVILEGES ON schema1.* TO 'admin@project2.com'@'localhost'IDENTIFIED BY 'password123';


DROP TABLE IF EXISTS `issues`;

CREATE TABLE IF NOT EXISTS `issues` (
    `id` int NOT NULL AUTO_INCREMENT,
	`title` varchar(300),
	`description` TEXT(300),
	`type` varchar(300),
	`priority` varchar(300),
	`status` varchar(300),
	`assigned_to` int NOT NULL,
	`created_by` int NOT NULL,
	`created` DATETIME NOT NULL,
	`updated` DATETIME NOT NULL,
  KEY `assigned_to` (`assigned_to`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
