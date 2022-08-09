CREATE TABLE estado (
  idestado INTEGER  NOT NULL  ,
  Nome VARCHAR(45)  NOT NULL  ,
  Sigla CHAR(2)  NOT NULL    ,
PRIMARY KEY(idestado));


CREATE TABLE cidade (
  idcidade INTEGER  NOT NULL  ,
  idestado INTEGER  NOT NULL  ,
  NomeCidade VARCHAR(45)  NOT NULL    ,
PRIMARY KEY(idcidade),
  FOREIGN KEY(idestado)
    REFERENCES estado(idestado)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE cliente (
  idcliente INTEGER  NOT NULL  ,
  idcidade INTEGER  NOT NULL  ,
  NomeCliente VARCHAR(45)  NOT NULL  ,
  DataNascimento DATE  NOT NULL  ,
  CPF CHAR(14)  NOT NULL  ,
  GR VARCHAR(20)  NOT NULL  ,
  Sexo CHAR(1)  NOT NULL  ,
  Email VARCHAR(45)      ,
PRIMARY KEY(idcliente),
  FOREIGN KEY(idcidade)
    REFERENCES cidade(idcidade)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



