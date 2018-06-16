-- ----------------------------
-- Apothecary Venustus (Entry: 16464)
-- ---------------------
UPDATE creature_template SET GossipMenuId=7251 WHERE entry=16464;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16464);

DELETE FROM `gossip_menu` WHERE `entry`=7251;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7251, 8565, 0, 0),
(7251, 8623, 0, 1506), -- q.9275 NOT rewarded AND Player is a troll
(7251, 8566, 0, 1504);  -- q.9275 rewarded

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1504 AND 1506;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(1504, 8, 9275, 0), -- q.9275 rewarded
(1505, -3, 1504, 0), -- q.9275 NOT rewarded
(1506, -1, 1505, 300); -- q.9275 NOT rewarded AND Player is a troll

-- Missing troll text
DELETE FROM npc_text WHERE ID=8623;
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_0`) VALUES 
(8623,'We really must perfect a way to deal with those smelly Shadowpine trolls.$B$BOh, no offense, $c.$B$B<The apothecary grins innocently and shrugs.>',1,1);
