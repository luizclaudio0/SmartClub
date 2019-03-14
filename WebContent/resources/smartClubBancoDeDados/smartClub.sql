

-- MySQL Script generated by MySQL Workbench
-- Sex 22 Fev 2019 13:15:49 -05
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema smartClub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema smartClub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `smartClub` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema smartClub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema smartClub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `smartClub` DEFAULT CHARACTER SET utf8 ;
USE `smartClub` ;

-- -----------------------------------------------------
-- Table `smartClub`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`reserva` (
  `idreserva` INT NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` INT NOT NULL,
  `quartos_idquartos` INT NOT NULL,
  `quantidade_quartos` INT NOT NULL,
  `data_Inicio_reserva` DATE NOT NULL,
  `data_termino_reserva` DATE NOT NULL,
  `valor` FLOAT NULL,
  PRIMARY KEY (`idreserva`),
  INDEX `fk_usuario_has_quartos_quartos1_idx` (`quartos_idquartos` ASC),
  INDEX `fk_usuario_has_quartos_usuario1_idx` (`usuario_idusuario` ASC),
  CONSTRAINT `fk_usuario_has_quartos_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `smartClub`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_has_quartos_quartos1`
    FOREIGN KEY (`quartos_idquartos`)
    REFERENCES `smartClub`.`quartos` (`idquartos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `smartClub` ;

-- -----------------------------------------------------
-- Table `smartClub`.`plano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`plano` (
  `idPlano` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(90) NULL DEFAULT NULL,
  PRIMARY KEY (`idPlano`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(32) NOT NULL,
  `email` VARCHAR(32) NOT NULL,
  `senha` VARCHAR(32) NOT NULL,
  `telefone` VARCHAR(9) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `plano_idPlano` INT NOT NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `fk_usuario_plano1_idx1` (`plano_idPlano` ASC),
  CONSTRAINT `fk_usuario_plano1`
    FOREIGN KEY (`plano_idPlano`)
    REFERENCES `smartClub`.`plano` (`idPlano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`usuario_plano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`usuario_plano` (
  `idusuario_plano` INT NOT NULL AUTO_INCREMENT,
  `id_usuario_usuario_plano` INT NOT NULL,
  `id_plano_usuario_plano` INT NOT NULL,
  PRIMARY KEY (`idusuario_plano`),
  INDEX `fk_idusuario_idx` (`id_usuario_usuario_plano` ASC),
  INDEX `fk_idplano_idx` (`id_plano_usuario_plano` ASC),
  CONSTRAINT `fk_idusuario`
    FOREIGN KEY (`id_usuario_usuario_plano`)
    REFERENCES `smartClub`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idplano`
    FOREIGN KEY (`id_plano_usuario_plano`)
    REFERENCES `smartClub`.`plano` (`idPlano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`beneficio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`beneficio` (
  `idbeneficio` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idbeneficio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`hotel` (
  `idhotel` INT NOT NULL AUTO_INCREMENT,
  `nome_hotel` VARCHAR(32) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(200) NOT NULL,
  `cnpj` VARCHAR(14) NOT NULL,
  `endereco` VARCHAR(60) NOT NULL,
  `bairro` VARCHAR(32) NOT NULL,
  `cidade` VARCHAR(32) NOT NULL,
  `nome_usuario` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idhotel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`quartos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`quartos` (
  `idquartos` INT NOT NULL AUTO_INCREMENT,
  `id_hotel_quartos` INT NOT NULL,
  `nome_quarto` VARCHAR(32) NOT NULL,
  `descricao` VARCHAR(100) NOT NULL,
  `disponivel` DATE NOT NULL,
  `acomoda` INT NOT NULL,
  `quantidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idquartos`),
  INDEX `fk_idhotel_idx` (`id_hotel_quartos` ASC),
  CONSTRAINT `fk_idhotel`
    FOREIGN KEY (`id_hotel_quartos`)
    REFERENCES `smartClub`.`hotel` (`idhotel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`usuario_beneficio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`usuario_beneficio` (
  `idusuario_beneficio` INT NOT NULL AUTO_INCREMENT,
  `id_usuario_usuario_beneficio` INT NOT NULL,
  `id_beneficio_usuario_beneficio` INT NOT NULL,
  `utilizado` INT(1) NOT NULL,
  PRIMARY KEY (`idusuario_beneficio`),
  INDEX `fk_id_usuario_usuario_beneficio_idx` (`id_usuario_usuario_beneficio` ASC),
  INDEX `fk_id_beneficio_usuario_beneficio_idx` (`id_beneficio_usuario_beneficio` ASC),
  CONSTRAINT `fk_id_usuario_usuario_beneficio`
    FOREIGN KEY (`id_usuario_usuario_beneficio`)
    REFERENCES `smartClub`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_beneficio_usuario_beneficio`
    FOREIGN KEY (`id_beneficio_usuario_beneficio`)
    REFERENCES `smartClub`.`beneficio` (`idbeneficio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `id_usuario_compra` INT NOT NULL,
  `data` DATE NOT NULL,
  `id_plano_compra` INT NOT NULL,
  PRIMARY KEY (`idcompra`),
  INDEX `fk_usuario_compra_idx` (`id_usuario_compra` ASC),
  INDEX `fk_id_plano_compra_idx` (`id_plano_compra` ASC),
  CONSTRAINT `fk_usuario_compra`
    FOREIGN KEY (`id_usuario_compra`)
    REFERENCES `smartClub`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_plano_compra`
    FOREIGN KEY (`id_plano_compra`)
    REFERENCES `smartClub`.`plano` (`idPlano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`imagem_quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`imagem_quarto` (
  `imagem_quarto` INT NOT NULL AUTO_INCREMENT,
  `id_quartos_imagem_quarto` INT NOT NULL,
  `url_imagem` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`imagem_quarto`),
  INDEX `fk_quartos_imagem_quarto_idx` (`id_quartos_imagem_quarto` ASC),
  CONSTRAINT `fk_quartos_imagem_quarto`
    FOREIGN KEY (`id_quartos_imagem_quarto`)
    REFERENCES `smartClub`.`quartos` (`idquartos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`imagem_hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`imagem_hotel` (
  `idimagem_hotel` INT NOT NULL AUTO_INCREMENT,
  `id_hotel_imagem_hotel` INT NOT NULL,
  `url_imagem` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`idimagem_hotel`),
  INDEX `fk_id_hotel_imagem_hotel_idx` (`id_hotel_imagem_hotel` ASC),
  CONSTRAINT `fk_id_hotel_imagem_hotel`
    FOREIGN KEY (`id_hotel_imagem_hotel`)
    REFERENCES `smartClub`.`hotel` (`idhotel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `smartClub`.`plano_beneficio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `smartClub`.`plano_beneficio` (
  `idplano` INT NOT NULL AUTO_INCREMENT AUTO_INCREMENT,
  `beneficio_idbeneficio` INT NOT NULL,
  `plano_idPlano` INT NOT NULL,
  `quantidadeUso` INT NOT NULL,
  PRIMARY KEY (`idplano`),
  INDEX `fk_plano_beneficio_beneficio1_idx` (`beneficio_idbeneficio` ASC),
  INDEX `fk_plano_beneficio_plano1_idx` (`plano_idPlano` ASC),
  CONSTRAINT `fk_plano_beneficio_beneficio1`
    FOREIGN KEY (`beneficio_idbeneficio`)
    REFERENCES `smartClub`.`beneficio` (`idbeneficio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_plano_beneficio_plano1`
    FOREIGN KEY (`plano_idPlano`)
    REFERENCES `smartClub`.`plano` (`idPlano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


insert into hotel (nome_hotel, email, senha, descricao, cnpj, endereco, bairro, cidade, nome_usuario, cpf)
values('Hotel Atl�ntico', 'hotelatlantico@gmail.com', '123456', 'Hotel 5 estrelas', 'av. 13 de maio', 'ne12356', 'Jardim Brasil', 'Olinda', 'Luiz', '45678095677');

insert into beneficio (descricao) values ('Diaria+1');
insert into beneficio (descricao) values ('Diaria+1');
insert into beneficio (descricao) values ('Quarto Triplo');
insert into beneficio (descricao) values ('Estacionamento');
insert into beneficio (descricao) values ('Open Bar');
insert into beneficio (descricao) values ('Translado');
insert into beneficio (descricao) values ('Refeicoes');

