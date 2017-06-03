USE `webDevelopment`;
ALTER TABLE `languages`
     ADD COLUMN `versions` VARCHAR(10);
ALTER TABLE `frameworks`
     ADD COLUMN `version` INT;
ALTER TABLE `languages`
     CHANGE `versions` `version` VARCHAR(10);
ALTER TABLE `frameworks`
     CHANGE `name` `framework` VARCHAR(50);
ALTER TABLE `frameworks`
     MODIFY `version` VARCHAR(10);
USE `codex`;
ALTER TABLE `clients`
     DROP COLUMN `secondPhoneNumber`;
ALTER TABLE `clients`
     CHANGE `firstPhoneNumber` `phoneNumber` INT;
ALTER TABLE `clients`
     MODIFY `phoneNumber` VARCHAR(20);
ALTER TABLE `clients`
     ADD COLUMN `zipCode` VARCHAR(50);
ALTER TABLE `clients`
     ADD COLUMN `city` VARCHAR(50);
