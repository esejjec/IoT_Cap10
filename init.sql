CREATE DATABASE IF NOT EXISTS tSeriesDB;
USE tSeriesDB;

DROP TABLE ruleEngine;
CREATE TABLE `ruleEngine` (
  `id` int(11) NOT NULL,
  `ruleName` varchar(255) NOT NULL,
  `active` binary(1) NOT NULL DEFAULT '\0',
  `topicPattern` varchar(1024) NOT NULL,
  `payloadPattern` varchar(2048) NOT NULL,
  `method` varchar(7) NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



describe ruleEngine;

INSERT INTO `ruleEngine` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'timestamp rule', 0, 'timestamp%', '%', 'POST', 'https://localhost:1880/pub/modifiedTime/rule-engine-working'),
(2, 'timestamp rule 2', 0, 'timestamp%', '%', 'POST', 'https://localhost:1880/pub/modifiedTime/rule-engine-working-again'),
(3, 'again rule', 0, '%', '%again', 'POST', 'https://localhost:1880/pub/modifiedTime/again found');

select * from ruleEngine;

