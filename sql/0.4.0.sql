ALTER TABLE `glpi_plugin_linesmanager_lines` ADD `call_waiting` tinyint(1) NOT NULL DEFAULT '0' AFTER `lockcallout`;
ALTER TABLE `glpi_plugin_linesmanager_numplans` ADD `vip` tinyint(1) NOT NULL DEFAULT '0' AFTER `range`;
