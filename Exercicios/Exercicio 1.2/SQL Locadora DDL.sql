CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Empresas
(
	idEmpresa	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Marcas
(
	idMarca		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Modelos
(
	idModelo	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
	,idMarca		INT FOREIGN KEY REFERENCES Marcas (idMarca)
);

CREATE TABLE Veiculos
(
	idVeiculo	INT PRIMARY KEY IDENTITY
	,Placa		CHAR NOT NULL
	,idEmpresa	INT FOREIGN KEY REFERENCES Empresas (IdEmpresa)
	,idModelo	INT FOREIGN KEY REFERENCES Modelos (IdModelo)
);

CREATE TABLE Clientes
(
	idCliente	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(150) NOT NULL
	,CPF		CHAR NOT NULL
);

CREATE TABLE Alugueis
(
	idAluguel		INT PRIMARY KEY IDENTITY
	,Valor			MONEY NOT NULL
	,idVeiculo		INT FOREIGN KEY REFERENCES Veiculos (idVeiculo)
	,idCliente		INT FOREIGN KEY REFERENCES Clientes (idCliente)
	,DataDeRetirada	DATE NOT NULL
	,DataDeEntrega	DATE NOT NULL
);