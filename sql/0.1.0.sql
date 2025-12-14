CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_categories` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_linegroups` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_algorithms` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_pickupgroups` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_extensionmobilities` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `loginduration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_forwards` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `numplan` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_timeslots` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_timeperiods` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `description` varchar(255) NOT NULL,
    `time_start` time NOT NULL,
    `time_end` time NOT NULL,
    `dayofweek_start` tinyint(1) NOT NULL,
    `dayofweek_end` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_ddis` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `ddi_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_configs` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `type` varchar(32) NOT NULL default '' UNIQUE,
    `value` varchar(32) NOT NULL default ''
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `glpi_plugin_linesmanager_configs` (type, value) VALUES ('automate_description', '0') ON DUPLICATE KEY UPDATE value = value;
INSERT INTO `glpi_plugin_linesmanager_configs` (type, value) VALUES ('automate_user_id', '0') ON DUPLICATE KEY UPDATE value = value;
INSERT INTO `glpi_plugin_linesmanager_configs` (type, value) VALUES ('fill_contact_information', '0') ON DUPLICATE KEY UPDATE value = value;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_ranges` ( 
    `id` INT(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    `entities_id` int(11) NOT NULL default 0, 
    `is_recursive` tinyint(1) NOT NULL default 0,
    `name` varchar(100) NOT NULL default '',
    `min_number` int(11) NOT NULL,
    `max_number` int(11) NOT NULL,
    `only_pickup` tinyint(1) default '0'
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `glpi_plugin_linesmanager_ranges` ADD UNIQUE(`min_number`, `max_number`);
ALTER TABLE `glpi_plugin_linesmanager_ranges` ADD UNIQUE(`min_number`);
ALTER TABLE `glpi_plugin_linesmanager_ranges` ADD UNIQUE(`max_number`);

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_numplans` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `number` int(11) NOT NULL UNIQUE default 0,
    `range` integer default NULL
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `glpi_plugin_linesmanager_lines` (
    `id` int(11) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `items_id` int(11) default NULL,
    `itemtype` varchar(100) default NULL,
    `entities_id` int(11) NOT NULL default 0,
    `locations_id` int(11) unsigned NOT NULL default 0,
    `states_id` int(11) unsigned NOT NULL default 0,
    `name` varchar(200) NOT NULL default '',
    `surname` varchar(200) NOT NULL default '',
    `numplan` integer NOT NULL,
    `description` varchar(200) default '',
    `user_id` varchar(50) NOT NULL default '',
    `linegroup` integer default NULL,
    `pickupgroup` integer default NULL,
    `category` integer default NULL,
    `extensionmobility` integer default NULL,
    `loginout` tinyint(1) default '0',
    `autoanswer` tinyint(1) default '0',
    `autoanswerpass` varchar(20) default '0',
    `lockcallin` tinyint(1) default '0',
    `lockcallout` tinyint(1) default '0',
    `forward` integer default NULL,
    `forwardtimeout` time default null,
    `timeslot` integer default null,
    `ddiin` integer default NULL,
    `ddiout` integer default NULL
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;