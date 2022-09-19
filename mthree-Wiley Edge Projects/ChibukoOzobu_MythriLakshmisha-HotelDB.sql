-- Schema HotelReservation
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `HotelReservation`;

-- -----------------------------------------------------
-- Schema HotelReservation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `HotelReservation`;
USE `HotelReservation` ;

-- -----------------------------------------------------
-- Table `HotelReservation`.`Guests`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelReservation`.`Guests` (
  `GuestID` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `addr` VARCHAR(100) NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `zip` INT NOT NULL,
  `phone` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`GuestID`)
);
-- -----------------------------------------------------
-- Table `HotelReservation`.`RoomType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelReservation`.`RoomType` (
  `RoomTypeID` INT NOT NULL,
  `Type` VARCHAR(10) NOT NULL,
  `extra_person_fee` INT NULL,
  `standard_occupancy` INT NOT NULL,
  `max_occupancy` INT NOT NULL,
  `base_price` FLOAT NOT NULL,
  PRIMARY KEY (`RoomTypeID`)
);
-- -----------------------------------------------------
-- Table `HotelReservation`.`Room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelReservation`.`Room` (
  `RoomID` INT NOT NULL,
  `Amenities` VARCHAR(50) NULL,
  `ada_access` VARCHAR(3) NOT NULL,
  `RoomTypeID` INT NOT NULL,
  PRIMARY KEY (`RoomID`),
  INDEX `fk_Room_RoomType1_idx` (`RoomTypeID` ASC) VISIBLE,
  UNIQUE INDEX `RoomID_UNIQUE` (`RoomID` ASC) VISIBLE,
  CONSTRAINT `fk_Room_RoomType1`
    FOREIGN KEY (`RoomTypeID`)
    REFERENCES `HotelReservation`.`RoomType` (`RoomTypeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
-- -----------------------------------------------------
-- Table `HotelReservation`.`Reservations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelReservation`.`Reservations` (
  `ReservationID` INT NOT NULL AUTO_INCREMENT,
  `Adults` INT NOT NULL,
  `Children` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `total_room_cost` FLOAT NOT NULL,
  `GuestID` INT NOT NULL,
  `RoomID` INT NOT NULL,
  INDEX `fk_Reservations_Guests1_idx` (`GuestID` ASC) VISIBLE,
  INDEX `fk_Reservations_Room1_idx` (`RoomID` ASC) VISIBLE,
  PRIMARY KEY (`ReservationID`, `GuestID`, `RoomID`),
  CONSTRAINT `fk_Reservations_Guests1`
    FOREIGN KEY (`GuestID`)
    REFERENCES `HotelReservation`.`Guests` (`GuestID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservations_Room1`
    FOREIGN KEY (`RoomID`)
    REFERENCES `HotelReservation`.`Room` (`RoomID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
