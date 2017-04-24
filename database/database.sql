/*
MySQL Backup
Source Server Version: 5.5.5
Source Database: nomina
Date: 23/04/2017 21:17:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `aptitud`
-- ----------------------------
DROP TABLE IF EXISTS `aptitud`;
CREATE TABLE `aptitud` (
  `IdAptitud` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`IdAptitud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `departamento`
-- ----------------------------
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE `departamento` (
  `Descripcion` varchar(100) NOT NULL,
  `HorasExtra` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `enfermedades`
-- ----------------------------
DROP TABLE IF EXISTS `enfermedades`;
CREATE TABLE `enfermedades` (
  `IdEnfermedad` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`IdEnfermedad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `falta`
-- ----------------------------
DROP TABLE IF EXISTS `falta`;
CREATE TABLE `falta` (
  `IdFalta` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`IdFalta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `idioma`
-- ----------------------------
DROP TABLE IF EXISTS `idioma`;
CREATE TABLE `idioma` (
  `IdIdioma` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  `Porciento` float NOT NULL,
  PRIMARY KEY (`IdIdioma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `nomina`
-- ----------------------------
DROP TABLE IF EXISTS `nomina`;
CREATE TABLE `nomina` (
  `IdPersona` int(11) NOT NULL,
  `Percepcion` float(11,0) NOT NULL,
  `IdRetencion` int(11) NOT NULL,
  `FormaPago` int(11) NOT NULL,
  `Tarjeta` varchar(100) NOT NULL,
  `HorasExtras` int(11) NOT NULL,
  `IdFalta` int(11) NOT NULL,
  `IdProductividad` int(11) NOT NULL,
  KEY `Nomina-Person` (`IdPersona`),
  KEY `Nomina-Retencion` (`IdRetencion`),
  KEY `Nomina-Falta` (`IdFalta`),
  KEY `Nomina-Productividad` (`IdProductividad`),
  CONSTRAINT `Nomina-Falta` FOREIGN KEY (`IdFalta`) REFERENCES `falta` (`IdFalta`),
  CONSTRAINT `Nomina-Person` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`),
  CONSTRAINT `Nomina-Productividad` FOREIGN KEY (`IdProductividad`) REFERENCES `productividad` (`IdProductividad`),
  CONSTRAINT `Nomina-Retencion` FOREIGN KEY (`IdRetencion`) REFERENCES `retencion` (`IdRetencion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `persona`
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `IdPersona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Genero` int(11) NOT NULL,
  `Edad` int(11) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `RFC` varchar(100) NOT NULL,
  `Curp` varchar(100) NOT NULL,
  PRIMARY KEY (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `productividad`
-- ----------------------------
DROP TABLE IF EXISTS `productividad`;
CREATE TABLE `productividad` (
  `IdProductividad` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  `Bono` float NOT NULL,
  PRIMARY KEY (`IdProductividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `retencion`
-- ----------------------------
DROP TABLE IF EXISTS `retencion`;
CREATE TABLE `retencion` (
  `IdRetencion` int(11) NOT NULL AUTO_INCREMENT,
  `RetencionCosto` float NOT NULL,
  PRIMARY KEY (`IdRetencion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `rrhh`
-- ----------------------------
DROP TABLE IF EXISTS `rrhh`;
CREATE TABLE `rrhh` (
  `IdPersona` int(11) NOT NULL,
  `Domicilio` varchar(100) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `IdEnfermedad` int(11) NOT NULL,
  `IdIdioma` int(11) NOT NULL,
  `IdAptitud` int(11) NOT NULL,
  `Departamento` varchar(100) NOT NULL,
  `FechaInicio` date NOT NULL,
  KEY `Rrhh-Enfermedades` (`IdEnfermedad`),
  KEY `Rrhh-Aptitud` (`IdAptitud`),
  KEY `Rrhh-Idioma` (`IdIdioma`),
  KEY `Rrhh-Persona` (`IdPersona`),
  CONSTRAINT `Rrhh-Aptitud` FOREIGN KEY (`IdAptitud`) REFERENCES `aptitud` (`IdAptitud`),
  CONSTRAINT `Rrhh-Enfermedades` FOREIGN KEY (`IdEnfermedad`) REFERENCES `enfermedades` (`IdEnfermedad`),
  CONSTRAINT `Rrhh-Idioma` FOREIGN KEY (`IdIdioma`) REFERENCES `idioma` (`IdIdioma`),
  CONSTRAINT `Rrhh-Persona` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tiponomina`
-- ----------------------------
DROP TABLE IF EXISTS `tiponomina`;
CREATE TABLE `tiponomina` (
  `TipoNomina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `usuarionomina`
-- ----------------------------
DROP TABLE IF EXISTS `usuarionomina`;
CREATE TABLE `usuarionomina` (
  `Usuario` varchar(100) NOT NULL,
  `Contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `usuariorrhh`
-- ----------------------------
DROP TABLE IF EXISTS `usuariorrhh`;
CREATE TABLE `usuariorrhh` (
  `Usuario` varchar(100) NOT NULL,
  `Contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records 
-- ----------------------------
