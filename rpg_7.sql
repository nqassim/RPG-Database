-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 02:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpg`
--
CREATE DATABASE IF NOT EXISTS `rpg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rpg`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeArmorDef` (IN `ArmorDef` INT, IN `ArmorID` INT)  UPDATE `Armor` SET `Armor Defense` = ArmorDef WHERE `Armor ID` = ArmorID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeClassBaseDmg` (IN `BaseDmg` INT, IN `ClassID` INT)  UPDATE `Class` SET `Base Damage` = BaseDmg WHERE `Class ID` = ClassID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeClassHealth` (IN `ClassHP` INT, IN `ClassID` INT)  UPDATE `Class` SET `Class Health` = ClassHP WHERE `Class ID` = ClassID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeItemQuest` (IN `ItemId` INT, IN `QuestId` INT)  UPDATE `Items` SET `Quest ID` = QuestId WHERE `Item ID` = ItemId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeLocationName` (IN `LocationID` INT, IN `LocationName` VARCHAR(50))  UPDATE `Location` SET `Location Name` = LocationName WHERE `Location ID` = LocationID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeNPCName` (IN `NPCID` INT, IN `NPCName` VARCHAR(50))  UPDATE `NPC` SET `NPC Name` = NPCName WHERE `NPC ID` = NPCID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangePlayerClass` (IN `ClassId` INT, IN `PlayerId` INT)  UPDATE `Players` SET `Class ID` = ClassId WHERE `Player ID` = PlayerId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeWeaponsDmg` (IN `WeaponID` INT, IN `WeaponDMG` INT)  UPDATE `Weapons` SET `Weapon Damage` = WeaponDMG WHERE `Weapon ID` = WeaponID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateArmor` (IN `armorname` VARCHAR(50), IN `defense` INT, IN `classid` INT)  INSERT INTO `armor` VALUES (NULL, armorname, defense, classid)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateClass` (IN `classname` VARCHAR(50), IN `damage` INT, IN `health` INT)  INSERT INTO `weapons` VALUES(NULL, classname, damage, health)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateItem` (IN `itemname` VARCHAR(50), IN `questid` INT)  INSERT INTO `items` VALUES(NULL, itemname,  questid)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateLocation` (IN `locationid` INT, IN `locationname` VARCHAR(50))  INSERT INTO `location` VALUES(NULL, locationid,  locationname)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateNPC` (IN `npcname` VARCHAR(50), IN `locationid` INT, IN `npctype` VARCHAR(50))  INSERT INTO `npc` VALUES(NULL,  npcname, locationid, npctype)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreatePlayer` (IN `name` VARCHAR(50))  INSERT INTO `players` VALUES(NULL, name, 1, 1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateQuest` (IN `questname` VARCHAR(50), IN `locationid` INT)  INSERT INTO `Quest` VALUES(NULL,  questname, locationid)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateWeapon` (IN `weaponname` VARCHAR(50), IN `damage` INT, IN `classid` INT)  INSERT INTO `weapons` VALUES(NULL, weaponname, damage, classid)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteArmorbyID` (IN `ID` INT)  DELETE FROM `armor` WHERE `Armor ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteArmorbyName` (IN `Name` VARCHAR(50))  DELETE FROM `armor` WHERE `Armor Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteClassbyID` (IN `ID` INT)  DELETE FROM `class` WHERE `Class ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteClassbyName` (IN `Name` VARCHAR(50))  DELETE FROM `class` WHERE `Class Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteItemsbyID` (IN `ID` INT)  DELETE FROM `items` WHERE `Item ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteItemsbyName` (IN `Name` VARCHAR(50))  DELETE FROM `items` WHERE `Item Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteLocationbyID` (IN `ID` INT)  DELETE FROM `location` WHERE `Location ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteLocationbyName` (IN `Name` VARCHAR(50))  DELETE FROM `location` WHERE `Location Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNPCbyID` (IN `ID` INT)  DELETE FROM `npc` WHERE `npc ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNPCbyName` (IN `Name` VARCHAR(50))  DELETE FROM `npc` WHERE `npc Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletePlayerbyID` (IN `ID` INT)  DELETE FROM `players` WHERE `Player ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletePlayerbyName` (IN `Name` VARCHAR(50))  DELETE FROM `players` WHERE `Player Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteQuestbyID` (IN `ID` INT)  DELETE FROM `quest` WHERE `quest ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteQuestbyName` (IN `Name` VARCHAR(50))  DELETE FROM `quest` WHERE `quest Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteWeaponbyID` (IN `ID` INT)  DELETE FROM `weapons` WHERE `weapon ID` = ID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteWeaponbyName` (IN `Name` VARCHAR(50))  DELETE FROM `weapons` WHERE `weapon Name` = Name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectArmor` ()  SELECT * FROM `armor`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectArmorbyID` (IN `armorID` INT)  SELECT * FROM `armor` WHERE `Armor ID` = armorID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectclass` ()  SELECT * FROM `class`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectClassbyID` (IN `classID` INT)  SELECT * FROM `class` WHERE `class ID` = classID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectItembyID` (IN `itemsID` INT)  SELECT * FROM `items` WHERE `item ID` = itemsID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectitems` ()  SELECT * FROM `items`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectlocation` ()  SELECT * FROM `location`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectLocationbyID` (IN `locationID` INT)  SELECT * FROM `location` WHERE `location ID` = locationID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectnpc` ()  SELECT * FROM `npc`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectNPCbyID` (IN `PlayerID` INT)  SELECT * FROM `npc` WHERE `npc ID` = npcID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectPlayerbyID` (IN `PlayerID` INT)  SELECT * FROM `Players` WHERE `Player ID` = PlayerID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectplayers` ()  SELECT * FROM `players`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectquest` ()  SELECT * FROM `quest`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectQuestbyID` (IN `questID` INT)  SELECT * FROM `quest` WHERE `quest ID` = questID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectWeaponbyID` (IN `weaponID` INT)  SELECT * FROM `weapons` WHERE `weapon ID` = weaponID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Selectweapons` ()  SELECT * FROM `weapons`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowAllEquippedJoin1` ()  SELECT *
FROM `Players`
INNER JOIN Equipped ON `Players`.`Player ID` = `Equipped`.`Player ID`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowArmorForClassJoin` ()  SELECT `Armor Name`, `Class Name` FROM `armor`
INNER JOIN Class ON `Class`.`Class ID` = `armor`.`Class ID`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowItemForQuestJoin3` ()  SELECT `Quest Name`, `Item Name` FROM `Items`
INNER JOIN quest ON `Items`.`Quest ID` = `quest`.`Quest ID`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowWeaponsForClassJoin2` ()  SELECT `Weapon Name`, `Class Name` FROM `weapons`
INNER JOIN Class ON `Class`.`Class ID` = `weapons`.`Class ID`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateEquipped` (IN `PlayerID` INT, IN `WeaponID` INT, IN `ArmorID` INT, IN `ItemID` INT)  UPDATE `equipped`
SET `Weapon ID` = WeaponID, `Armor ID` = ArmorID, `Item ID` = ItemID WHERE `Player ID` = PlayerID$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `armor`
--

CREATE TABLE `armor` (
  `Armor ID` int(11) NOT NULL,
  `Armor Name` varchar(50) NOT NULL,
  `Armor Defense` int(11) NOT NULL,
  `Class ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armor`
--

INSERT INTO `armor` (`Armor ID`, `Armor Name`, `Armor Defense`, `Class ID`) VALUES
(1, 'Cloak', 11, 6),
(2, 'Iron Armor', 7, 5),
(3, 'Shield Of Power', 13, 5),
(4, 'Veil Of Tunes', 4, 3),
(5, 'Dao Of Pao', 21, 9),
(6, 'YinYang', 20, 13),
(7, 'Lux Shield', 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class ID` int(11) NOT NULL,
  `Class Name` varchar(50) NOT NULL,
  `Base Damage` int(11) NOT NULL,
  `Base Health` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class ID`, `Class Name`, `Base Damage`, `Base Health`) VALUES
(1, 'Warrior', 15, 100),
(2, 'Mage', 20, 80),
(3, 'Bard', 2, 80),
(4, 'Assassin', 35, 75),
(5, 'Paladin', 15, 120),
(6, 'Thief', 10, 70),
(7, 'Cleric', 15, 110),
(8, 'Samurai', 25, 90),
(9, 'Warden', 15, 130),
(10, 'Necromancer', 15, 115),
(11, 'Templar', 30, 75),
(12, 'Dancer', 2, 70),
(13, 'Knight', 30, 110),
(14, 'Gunner', 40, 60),
(15, 'Archer', 20, 80),
(16, 'Rogue', 2, 112);

-- --------------------------------------------------------

--
-- Table structure for table `equipped`
--

CREATE TABLE `equipped` (
  `Player ID` int(11) NOT NULL,
  `Weapon ID` int(11) NOT NULL,
  `Armor ID` int(11) NOT NULL,
  `Item ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipped`
--

INSERT INTO `equipped` (`Player ID`, `Weapon ID`, `Armor ID`, `Item ID`) VALUES
(4, 5, 3, 2),
(5, 2, 2, 2),
(6, 5, 2, 7),
(9, 5, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item ID` int(11) NOT NULL,
  `Item Name` varchar(50) NOT NULL,
  `Quest ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item ID`, `Item Name`, `Quest ID`) VALUES
(2, 'Health Potion', NULL),
(3, 'Town Portal Scroll', NULL),
(4, 'Mana Potion', NULL),
(5, 'Key', 4),
(6, 'Basement Key', 3),
(7, 'Fire Bomb', 7),
(8, 'Sword Of Revealing Light', 4);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location ID` int(11) NOT NULL,
  `Location Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location ID`, `Location Name`) VALUES
(1, 'Sewers'),
(2, 'Mage\'s Tower'),
(3, 'Garden'),
(4, 'Farm'),
(5, 'Market'),
(6, 'Plains'),
(7, 'Castle'),
(8, 'Village'),
(9, 'Cave'),
(10, 'Catacombs'),
(11, 'Citadel'),
(12, 'Woods'),
(13, 'Swamp'),
(14, 'Dream'),
(15, 'Valhalla');

-- --------------------------------------------------------

--
-- Table structure for table `npc`
--

CREATE TABLE `npc` (
  `NPC ID` int(11) NOT NULL,
  `NPC Name` varchar(50) NOT NULL,
  `Location ID` int(11) NOT NULL,
  `NPC Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `npc`
--

INSERT INTO `npc` (`NPC ID`, `NPC Name`, `Location ID`, `NPC Type`) VALUES
(1, 'Frog', 1, 'Friendly'),
(2, 'Wizard', 2, 'Passive'),
(3, 'Rat', 1, 'Hostile'),
(4, 'Undead', 10, 'Hostile'),
(5, 'Skeleton', 10, 'Hostile'),
(6, 'Ent', 12, 'Friendly'),
(7, 'Phantom', 14, 'Hostile'),
(8, 'Ghost', 7, 'Hostile');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Player ID` int(11) NOT NULL,
  `Player Name` varchar(50) NOT NULL,
  `lvl` int(11) NOT NULL,
  `Class ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`Player ID`, `Player Name`, `lvl`, `Class ID`) VALUES
(2, 'Abdullah', 4, 1),
(3, 'Mohammad', 7, 12),
(4, 'Steve', 8, 4),
(5, 'Tanya ', 7, 3),
(6, 'Toby ', 5, 14),
(7, 'Jim', 6, 11),
(8, 'Sara', 6, 15),
(9, 'Pam', 1, 10),
(10, 'Firas', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `Quest ID` int(11) NOT NULL,
  `Quest Name` varchar(50) NOT NULL,
  `Location ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`Quest ID`, `Quest Name`, `Location ID`) VALUES
(2, 'The Beginning Of The End', 6),
(3, 'An Unlikely Encounter', 2),
(4, 'The Problem', 5),
(5, 'Trouble In Paradise', 15),
(6, 'The Chase', 13),
(7, 'HOT WHEELS', 4),
(8, 'The Grand Betrayal', 11),
(9, 'Oasis', 15),
(10, 'Stretch Your Legs', 3),
(11, 'Knights Of Long Knives', 7),
(12, 'An Accord', 6),
(13, 'Cardinal Sin', 10),
(14, 'Lion\'s den', 7);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `Weapon ID` int(11) NOT NULL,
  `Weapon Name` varchar(50) NOT NULL,
  `Damage` int(11) NOT NULL,
  `Class ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`Weapon ID`, `Weapon Name`, `Damage`, `Class ID`) VALUES
(1, 'Great Sword', 23, 1),
(2, 'Water Wand', 10, 2),
(3, 'Harp', 5, 3),
(4, 'Knife', 12, 4),
(5, 'Hammer', 21, 5),
(6, 'Scimitar', 12, 6),
(7, 'Healing Staff', 6, 7),
(8, 'Katana', 25, 8),
(9, 'Branding Iron', 30, 9),
(10, 'Scythe', 14, 10),
(11, 'Sword', 18, 11),
(12, 'Ankle Bells', 5, 12),
(13, 'Shield And Sword', 16, 13),
(14, 'Revolver', 22, 14),
(15, 'Short Bow', 14, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armor`
--
ALTER TABLE `armor`
  ADD PRIMARY KEY (`Armor ID`),
  ADD KEY `Armor_Class` (`Class ID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class ID`);

--
-- Indexes for table `equipped`
--
ALTER TABLE `equipped`
  ADD PRIMARY KEY (`Player ID`),
  ADD KEY `Equipped_Armor` (`Armor ID`),
  ADD KEY `Equipped_Item` (`Item ID`),
  ADD KEY `Equipped_Weapon` (`Weapon ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item ID`),
  ADD KEY `Item_Quest` (`Quest ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location ID`);

--
-- Indexes for table `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`NPC ID`),
  ADD KEY `NPC_Location` (`Location ID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Player ID`),
  ADD KEY `Player_Class` (`Class ID`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`Quest ID`),
  ADD KEY `Quest_Location` (`Location ID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`Weapon ID`),
  ADD KEY `Weapon_Class` (`Class ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armor`
--
ALTER TABLE `armor`
  MODIFY `Armor ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `Class ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Location ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `npc`
--
ALTER TABLE `npc`
  MODIFY `NPC ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `Player ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quest`
--
ALTER TABLE `quest`
  MODIFY `Quest ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `Weapon ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `armor`
--
ALTER TABLE `armor`
  ADD CONSTRAINT `Armor_Class` FOREIGN KEY (`Class ID`) REFERENCES `class` (`Class ID`);

--
-- Constraints for table `equipped`
--
ALTER TABLE `equipped`
  ADD CONSTRAINT `Equipped_Armor` FOREIGN KEY (`Armor ID`) REFERENCES `armor` (`Armor ID`),
  ADD CONSTRAINT `Equipped_Item` FOREIGN KEY (`Item ID`) REFERENCES `items` (`Item ID`),
  ADD CONSTRAINT `Equipped_Player` FOREIGN KEY (`Player ID`) REFERENCES `players` (`Player ID`),
  ADD CONSTRAINT `Equipped_Weapon` FOREIGN KEY (`Weapon ID`) REFERENCES `weapons` (`Weapon ID`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `Item_Quest` FOREIGN KEY (`Quest ID`) REFERENCES `quest` (`Quest ID`);

--
-- Constraints for table `npc`
--
ALTER TABLE `npc`
  ADD CONSTRAINT `NPC_Location` FOREIGN KEY (`Location ID`) REFERENCES `location` (`Location ID`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `Player_Class` FOREIGN KEY (`Class ID`) REFERENCES `class` (`Class ID`);

--
-- Constraints for table `quest`
--
ALTER TABLE `quest`
  ADD CONSTRAINT `Quest_Location` FOREIGN KEY (`Location ID`) REFERENCES `location` (`Location ID`);

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `Weapon_Class` FOREIGN KEY (`Class ID`) REFERENCES `class` (`Class ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
