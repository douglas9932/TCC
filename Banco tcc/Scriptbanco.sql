CREATE TABLE Estado (
  idEstado INTEGER  NOT NULL  ,
  NomeEstado VARCHAR(45)    ,
  Siglas CHAR(2)    ,
  StatusEstados VARCHAR(10)      ,
PRIMARY KEY(idEstado));


CREATE TABLE Cargo (
  idCargo INTEGER  NOT NULL  ,
  NomeCargo VARCHAR(45)    ,
  StatusCargo VARCHAR(10)      ,
PRIMARY KEY(idCargo));


CREATE TABLE Marca (
  idMarca INTEGER  NOT NULL  ,
  NomeMarca VARCHAR(45)    ,
  StatusMarca VARCHAR(10)      ,
PRIMARY KEY(idMarca));


CREATE TABLE Cidade (
  idCidade INTEGER  NOT NULL  ,
  idEstado INTEGER  NOT NULL  ,
  NomeCidades CHAR(45)    ,
  StatusCidade VARCHAR(10)      ,
PRIMARY KEY(idCidade),
  FOREIGN KEY(idEstado)
    REFERENCES Estado(idEstado)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Produto (
  idProduto INTEGER  NOT NULL  ,
  idMarca INTEGER  NOT NULL  ,
  NomeProduto VARCHAR(45)    ,
  PrecoCusto DECIMAL    ,
  PrecoVenda DECIMAL    ,
  Quantidade INTEGER    ,
  StatusProduto VARCHAR(10)      ,
PRIMARY KEY(idProduto),
  FOREIGN KEY(idMarca)
    REFERENCES Marca(idMarca)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Funcionario (
  idFuncionario INTEGER  NOT NULL  ,
  idCargo INTEGER  NOT NULL  ,
  idCidade INTEGER  NOT NULL  ,
  NomeFuncionario VARCHAR(45)    ,
  CPF CHAR(14)    ,
  RG VARCHAR(25)    ,
  Sexo VARCHAR(15)    ,
  DataNascimento DATE    ,
  Endereco VARCHAR(45)    ,
  Telefone CHAR(15)    ,
  Email VARCHAR(45)    ,
  Cargo VARCHAR(25)    ,
  Salario DECIMAL    ,
  CarteiraDeTrabalho VARCHAR(45)    ,
  StatusFuncionario VARCHAR(10)      ,
PRIMARY KEY(idFuncionario),
  FOREIGN KEY(idCidade)
    REFERENCES Cidade(idCidade)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idCargo)
    REFERENCES Cargo(idCargo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Fornecedor (
  idFornecedor INTEGER  NOT NULL  ,
  idCidade INTEGER  NOT NULL  ,
  NomeFantasia VARCHAR(45)    ,
  CNPJ CHAR(18)    ,
  Telefone CHAR(14)    ,
  RazaoSocial VARCHAR(45)    ,
  StatusFornecedor VARCHAR(10)      ,
PRIMARY KEY(idFornecedor),
  FOREIGN KEY(idCidade)
    REFERENCES Cidade(idCidade)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Cliente (
  idCliente INTEGER  NOT NULL  ,
  idCidade INTEGER  NOT NULL  ,
  NomeCliente VARCHAR(45)    ,
  CPF CHAR(14)    ,
  Sexo VARCHAR(10)    ,
  DataNascimento DATE    ,
  Endereco VARCHAR(45)    ,
  Telefone CHAR(15)    ,
  Email VARCHAR(45)    ,
  RG VARCHAR(25)    ,
  StatusCliente VARCHAR(10)      ,
PRIMARY KEY(idCliente),
  FOREIGN KEY(idCidade)
    REFERENCES Cidade(idCidade)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Compra (
  idCompra INTEGER  NOT NULL  ,
  idFornecedor INTEGER  NOT NULL  ,
  DataCompra DATE    ,
  ValorCompra DECIMAL    ,
  Tipo VARCHAR(45)    ,
  Hora TIME    ,
  StatusCompra VARCHAR(10)      ,
PRIMARY KEY(idCompra),
  FOREIGN KEY(idFornecedor)
    REFERENCES Fornecedor(idFornecedor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Venda (
  idVenda INTEGER  NOT NULL  ,
  idFuncionario INTEGER  NOT NULL  ,
  idCliente INTEGER  NOT NULL  ,
  DataVenda DATE    ,
  ValorVenda DECIMAL    ,
  Tipo VARCHAR(45)    ,
  Hora TIME    ,
  StatusVenda VARCHAR(10)      ,
PRIMARY KEY(idVenda),
  FOREIGN KEY(idCliente)
    REFERENCES Cliente(idCliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idFuncionario)
    REFERENCES Funcionario(idFuncionario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE ContasAResceber (
  idContasAResceber INTEGER  NOT NULL  ,
  idVenda INTEGER  NOT NULL  ,
  idCliente INTEGER  NOT NULL  ,
  Descricao VARCHAR(45)    ,
  DataVenda DATE    ,
  DataVencimento DATE    ,
  Hora TIME    ,
  Valor DECIMAL    ,
  StatusContasAReceber VARCHAR(10)      ,
PRIMARY KEY(idContasAResceber),
  FOREIGN KEY(idCliente)
    REFERENCES Cliente(idCliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idVenda)
    REFERENCES Venda(idVenda)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE ContasAPagar (
  idContasAPagar INTEGER  NOT NULL  ,
  idFornecedor INTEGER  NOT NULL  ,
  idCompra INTEGER  NOT NULL  ,
  Descricao VARCHAR(45)    ,
  DataCompra DATE    ,
  DataVencimento DATE    ,
  Hora TIME    ,
  ValorContasAPagar DECIMAL    ,
  StatusComprasAPagar VARCHAR(10)      ,
PRIMARY KEY(idContasAPagar),
  FOREIGN KEY(idCompra)
    REFERENCES Compra(idCompra)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idFornecedor)
    REFERENCES Fornecedor(idFornecedor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE ItemVenda (
  idItemVenda INTEGER  NOT NULL  ,
  idProduto INTEGER  NOT NULL  ,
  idVenda INTEGER  NOT NULL  ,
  Quantidade INTEGER    ,
  Valor DECIMAL    ,
  Total DECIMAL      ,
PRIMARY KEY(idItemVenda),
  FOREIGN KEY(idVenda)
    REFERENCES Venda(idVenda)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idProduto)
    REFERENCES Produto(idProduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE ItemCompra (
  idItemCompra INTEGER  NOT NULL  ,
  idCompra INTEGER  NOT NULL  ,
  idProduto INTEGER  NOT NULL  ,
  Quantidade INTEGER    ,
  ValorItemCompra DECIMAL    ,
  Total DECIMAL      ,
PRIMARY KEY(idItemCompra),
  FOREIGN KEY(idProduto)
    REFERENCES Produto(idProduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idCompra)
    REFERENCES Compra(idCompra)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE ParcelasContasAReceber (
  idParcelasContasAReceber INTEGER  NOT NULL  ,
  idContasAResceber INTEGER  NOT NULL  ,
  Descricao VARCHAR(45)    ,
  DataParcelaContaAReceber DATE    ,
  ValorParcelas DECIMAL    ,
  StatusParcelasContasAReceber VARCHAR(10)      ,
PRIMARY KEY(idParcelasContasAReceber),
  FOREIGN KEY(idContasAResceber)
    REFERENCES ContasAResceber(idContasAResceber)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE ParcelasContasAPagar (
  idParcelasContasAPagar INTEGER  NOT NULL  ,
  idContasAPagar INTEGER  NOT NULL  ,
  Descricao VARCHAR(45)    ,
  DataParcelasContasAPagar DATE    ,
  Valor DECIMAL    ,
  StatusParcelasContasAPagar VARCHAR(10)      ,
PRIMARY KEY(idParcelasContasAPagar),
  FOREIGN KEY(idContasAPagar)
    REFERENCES ContasAPagar(idContasAPagar)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Rescebimento (
  idRescebimento INTEGER  NOT NULL  ,
  idParcelasContasAReceber INTEGER  NOT NULL  ,
  ValorDaConta DECIMAL    ,
  DataRecebimento DATE    ,
  Hora TIME    ,
  ValorRecebimento DECIMAL      ,
PRIMARY KEY(idRescebimento),
  FOREIGN KEY(idParcelasContasAReceber)
    REFERENCES ParcelasContasAReceber(idParcelasContasAReceber)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Pagamento (
  idPagamento INTEGER  NOT NULL  ,
  idParcelasContasAPagar INTEGER  NOT NULL  ,
  ValorDoPagamento DECIMAL    ,
  DataPagamento DATE    ,
  Hora TIME      ,
PRIMARY KEY(idPagamento),
  FOREIGN KEY(idParcelasContasAPagar)
    REFERENCES ParcelasContasAPagar(idParcelasContasAPagar)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE Caixa (
  idCaixa INTEGER  NOT NULL  ,
  idRescebimento INTEGER  NOT NULL  ,
  idPagamento INTEGER    ,
  idFuncionario INTEGER  NOT NULL  ,
  ValorEntrada DECIMAL    ,
  ValorSaida DECIMAL    ,
  Descricao VARCHAR(45)    ,
  Saldo DECIMAL    ,
  DataAbertuda DATE    ,
  DataFechamento DATE    ,
  StatusCaixa VARCHAR(10)      ,
PRIMARY KEY(idCaixa),
  FOREIGN KEY(idFuncionario)
    REFERENCES Funcionario(idFuncionario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idPagamento)
    REFERENCES Pagamento(idPagamento)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idRescebimento)
    REFERENCES Rescebimento(idRescebimento)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



