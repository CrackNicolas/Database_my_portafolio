-- MySQL Workbench Synchronization
-- Generated: 2023-01-08 17:39
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: MI PC

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `my_portafolio` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Persona` (
  `id_persona` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(15) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `correo` VARCHAR(40) NOT NULL,
  `link_perfil` VARCHAR(150) NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `presentacion` VARCHAR(500) NOT NULL,
  `regla` VARCHAR(300) NOT NULL,
  `profesion` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Red_social` (
  `id_red_social` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NOT NULL,
  `nombre_logo` VARCHAR(20) NOT NULL,
  `link` VARCHAR(50) NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_red_social`),
  INDEX `fk_Red_social_Persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Red_social_Persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Educacion` (
  `id_educacion` INT(11) NOT NULL AUTO_INCREMENT,
  `institucion` VARCHAR(100) NOT NULL,
  `carrera` VARCHAR(45) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  `fecha_fin` DATE NOT NULL,
  `url_imagen` VARCHAR(150) NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_educacion`),
  INDEX `fk_Educacion_Persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Educacion_Persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Usuario` (
  `id_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(15) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_Usuario_Persona_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Usuario_Persona`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Habilidad` (
  `id_habilidad` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NOT NULL,
  `porcentaje` INT(11) NOT NULL,
  `nombre_icono` VARCHAR(20) NOT NULL,
  `tipo` ENUM("blanda", "tecnica", "gestion_de_proyecto", "controlador_de_versiones") NOT NULL,
  `estado` ENUM("uso_actual", "uso_antiguo") NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_habilidad`),
  INDEX `fk_Habilidad_Persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Habilidad_Persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Proyecto` (
  `id_proyecto` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `url_imagen` VARCHAR(150) NOT NULL,
  `descripcion` VARCHAR(200) NOT NULL,
  `tecnologias_usadas` VARCHAR(70) NOT NULL,
  `link_git` VARCHAR(100) NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_proyecto`),
  INDEX `fk_Proyecto_Persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Proyecto_Persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`detalles_educacion` (
  `id_detalle` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(200) NOT NULL,
  `id_educacion` INT(11) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  INDEX `fk_detalles_educacion_Educacion1_idx` (`id_educacion` ASC),
  CONSTRAINT `fk_detalles_educacion_Educacion1`
    FOREIGN KEY (`id_educacion`)
    REFERENCES `my_portafolio`.`Educacion` (`id_educacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Experiencia_laboral` (
  `id_experiencia` INT(11) NOT NULL AUTO_INCREMENT,
  `empresa` VARCHAR(50) NOT NULL,
  `puesto` VARCHAR(20) NOT NULL,
  `descripcion` VARCHAR(150) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  `fecha_fin` DATE NOT NULL,
  `url_imagen` VARCHAR(150) NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_experiencia`),
  INDEX `fk_Experiencia_laboral_Persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Experiencia_laboral_Persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `my_portafolio`.`Pasatiempo` (
  `id_pasatiempo` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(200) NOT NULL,
  `nombre_logo` VARCHAR(20) NOT NULL,
  `categoria` ENUM("Deportes", "Instrumento", "Otros") NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_pasatiempo`),
  INDEX `fk_Pasatiempo_Persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_Pasatiempo_Persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `my_portafolio`.`Persona` (`id_persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
