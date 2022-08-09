create table Marca (codMarca integer not null,
        NomeMarca varchar (25),
        primary Key (codMarca));

create table Produto (codProduto integer not null,
        codMarca integer not null, 
        Nome varchar (45),
        QNT decimal (8,2),
        ValorCusto decimal (8,2),
        ValorVenda decimal (8,2),
        primary key (codProduto),
        foreign key (codMarca) references Marca);
