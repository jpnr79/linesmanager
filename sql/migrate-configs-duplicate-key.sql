-- Migration script to update config inserts for linesmanager plugin
-- This script replaces INSERT IGNORE with ON DUPLICATE KEY UPDATE to avoid duplicate warnings

INSERT INTO `glpi_plugin_linesmanager_configs` (type, value) VALUES ('automate_description', '0') ON DUPLICATE KEY UPDATE value = value;
INSERT INTO `glpi_plugin_linesmanager_configs` (type, value) VALUES ('automate_user_id', '0') ON DUPLICATE KEY UPDATE value = value;
INSERT INTO `glpi_plugin_linesmanager_configs` (type, value) VALUES ('fill_contact_information', '0') ON DUPLICATE KEY UPDATE value = value;
