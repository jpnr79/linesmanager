ALTER TABLE `glpi_plugin_linesmanager_lines` ADD `states_id` INT(11) NOT NULL DEFAULT '0' AFTER `locations_id`;

UPDATE `glpi_plugin_linesmanager_lines` l INNER JOIN `glpi_computers` c         SET l.`states_id` = c.states_id WHERE l.itemtype = 'Computer' and l.items_id = c.id;
UPDATE `glpi_plugin_linesmanager_lines` l INNER JOIN `glpi_phones` c            SET l.`states_id` = c.states_id WHERE l.itemtype = 'Phone' and l.items_id = c.id;
UPDATE `glpi_plugin_linesmanager_lines` l INNER JOIN `glpi_peripherals` c       SET l.`states_id` = c.states_id WHERE l.itemtype = 'Peripheral' and l.items_id = c.id;
UPDATE `glpi_plugin_linesmanager_lines` l INNER JOIN `glpi_networkequipments` c SET l.`states_id` = c.states_id WHERE l.itemtype = 'NetworkEquipment' and l.items_id = c.id;

