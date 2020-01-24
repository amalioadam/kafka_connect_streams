CREATE DATABASE inventory;
GRANT ALL PRIVILEGES ON inventory.* TO 'mysqluser'@'%';

-- Switch to this database
USE inventory;

CREATE TABLE `keywords` (
  `project_id` int(10) unsigned NOT NULL,
  `keyword_id` int(11) unsigned NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ts_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_delete` tinyint(4) NOT NULL DEFAULT '0',
  `source` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Insert source of a keyword: 1 - SEO, 2 - Content, 3 - Seo & Content',
  PRIMARY KEY (`project_id`,`keyword_id`)
);
INSERT INTO `keywords` (`project_id`, `keyword_id`, `keyword`, `ts_created`, `to_delete`) VALUES (1739, 1, 'have', '2019-03-06 15:50:47', 0);
INSERT INTO `keywords` (`project_id`, `keyword_id`, `keyword`, `ts_created`, `to_delete`) VALUES (1739, 2, 'fun', '2019-03-06 15:50:47', 0);