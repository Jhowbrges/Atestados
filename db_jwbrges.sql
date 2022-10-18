CREATE DATABASE  IF NOT EXISTS `db_jwbrges` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_jwbrges`;


/*//TABELA DE USUARIOS//*/
DROP TABLE IF EXISTS `db_jwbrges`.`tb_usuario`;

CREATE TABLE `db_jwbrges`.`tb_usuario` (
  `id_usuario` 		int(11) NOT NULL AUTO_INCREMENT,
  `vc_nome` 		varchar(64) NOT NULL,
  `vc_usuario`		varchar(30) NOT NULL,
  `vc_password`		varchar(256) NOT NULL,
  `vc_email`		varchar(128) DEFAULT NULL,
  `int_telefone`	bigint(20) DEFAULT NULL,
  `dt_registro`		timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `db_jwbrges`.`tb_usuario` VALUES (1,'Jhonatan Borges','Jhow','4l4K4z4n@', 'jhow@jwbrges.com.br',2147483647,'20222-03-01 03:00:00');


/*//TABELA DE FILIAIS//*/
DROP TABLE IF EXISTS `db_jwbrges`.`tb_filial`;

CREATE TABLE `db_jwbrges`.`tb_filial`(
`id_filial`	int(11) NOT NULL AUTO_INCREMENT,
`vc_filial`	varchar(30) NOT NULL,
`vc_cidade`	varchar(30) NOT NULL,
`vc_uf` 	varchar(2) NOT NULL,
`vc_pais`	varchar(30) NOT NULL,
PRIMARY KEY (`id_filial`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `db_jwbrges`.`tb_filial` VALUES (1,'Matriz', 'São Paulo', 'SP', 'Brasil'),(2,'Rio', 'Rio de Janeiro', 'RJ', 'Brasil');

/*//TABELA DE AFASTAMENTO//*/
DROP TABLE IF EXISTS `db_jwbres`.`tb_afastamento`;
CREATE TABLE `db_jwbrges`.`tb_afastamento`(
`id_afastamento`	int(11) NOT NULL AUTO_INCREMENT,
`vc_afastamento`	varchar(60) NOT NULL,
`boo_cat`		bool NOT NULL,
PRIMARY KEY (`id_afastamento`)
)ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `db_jwbrges`.`tb_afastamento` VALUES (1, 'Consulta médica', 0),(2, 'Afastamento doença', 0),(3, 'Afastamento por acidente de trabalho', 1),(4,'Afastamento por acidente de trajeto',1),(5,'Afastamento por doença ocupacional',1) ,(6,'Licença Maternidade', 0);

/*//TABELA DE ATESTADO//*/
DROP TABLE IF EXISTS `db_jwbrges`.`tb_atestado`;
CREATE TABLE `db_jwbrges`.`tb_atestado`(
`id_atestado`		int(11) NOT NULL AUTO_INCREMENT,
`id_usuario`		int(11),
`vc_nome`		varchar(30),
`id_afastamento`	int(11),
`mn_afastamento`	int(11),
`boo_afastamanto` 	bool,
`dt_afastamento`	date,
`archive_atestado`	varchar(100),
`vc_extensao`		varchar(10),
PRIMARY KEY(`id_atestado`)
)ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



