-- Migration script to ensure all id columns are unsigned for GLPI linesmanager plugin
ALTER TABLE `glpi_plugin_linesmanager_configs` MODIFY COLUMN `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `glpi_plugin_linesmanager_ranges` MODIFY COLUMN `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `glpi_plugin_linesmanager_numplans` MODIFY COLUMN `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `glpi_plugin_linesmanager_lines` MODIFY COLUMN `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
