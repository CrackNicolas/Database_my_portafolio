-- MySQL Workbench Synchronization
-- Generated: 2023-01-14 19:26
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: MI PC

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `my_portafolio`.`Educacion` 
ADD COLUMN `descripcion` VARCHAR(400) NOT NULL AFTER `url_imagen`;

ALTER TABLE `my_portafolio`.`Usuario` 
CHANGE COLUMN `nombre` `nombre` VARCHAR(20) NOT NULL ,
CHANGE COLUMN `password` `password` VARCHAR(45) NOT NULL ;

ALTER TABLE `my_portafolio`.`Habilidad` 
CHANGE COLUMN `nombre_icono` `nombre_icono` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `tipo` `tipo` ENUM("blanda", "tecnica", "gestion_de_proyecto", "controlador_de_versiones") NOT NULL ,
CHANGE COLUMN `estado` `estado` ENUM("uso_actual", "uso_antiguo") NOT NULL ;

ALTER TABLE `my_portafolio`.`Proyecto` 
CHANGE COLUMN `descripcion` `descripcion` VARCHAR(450) NOT NULL ,
CHANGE COLUMN `tecnologias_usadas` `tecnologias_usadas` VARCHAR(150) NOT NULL ;

ALTER TABLE `my_portafolio`.`Experiencia_laboral` 
CHANGE COLUMN `puesto` `puesto` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `descripcion` `descripcion` VARCHAR(250) NOT NULL ;

ALTER TABLE `my_portafolio`.`Pasatiempo` 
CHANGE COLUMN `categoria` `categoria` ENUM("Deportes", "Instrumento", "Otros") NOT NULL ;

DROP TABLE IF EXISTS `my_portafolio`.`detalles_educacion` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
