CREATE DATABASE livraria;
USE livraria;

CREATE TABLE IF NOT EXISTS Cliente ( codCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nomeCliente VARCHAR(200), 
codTelefone INT NOT NULL, 
codEndereco INT NOT NULL, 
codConta INT NOT NULL);

CREATE TABLE IF NOT EXISTS Endereco ( codEndereco INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
logradouro VARCHAR(200) NULL, 
numero INT, 
CEP INT, 
Cidade VARCHAR(100), 
UF CHAR(2) 
);

CREATE TABLE IF NOT EXISTS Fornecedor ( codFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nomeFornecedor VARCHAR(200), 
CNPJ INT, 
codTelefone INT NOT NULL, 
codEndereco INT NOT NULL, 
codConta INT NOT NULL);

CREATE TABLE IF NOT EXISTS Livros ( codLivro INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nomeLivro VARCHAR(200), 
quantidade SMALLINT, 
preco FLOAT );

CREATE TABLE IF NOT EXISTS Telefone (codTelefone INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
numTelefone INT );

CREATE TABLE IF NOT EXISTS Venda ( codVenda INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
valorTotal FLOAT, 
codLivro INT NOT NULL, 
codCliente INT NOT NULL );

CREATE TABLE IF NOT EXISTS Acesso(codPermissao INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
categoria VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Conta(codConta INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
login VARCHAR(80), 
senha CHAR(15), 
codPermissao INT NOT NULL);

ALTER TABLE Cliente ADD FOREIGN KEY (codTelefone) REFERENCES Telefone(codTelefone);

ALTER TABLE Cliente ADD FOREIGN KEY (codEndereco) REFERENCES Endereco(codEndereco);

ALTER TABLE Cliente ADD FOREIGN KEY (codConta) REFERENCES Conta(codConta);

ALTER TABLE Fornecedor ADD FOREIGN KEY (codTelefone) REFERENCES Telefone(codTelefone);

ALTER TABLE Fornecedor ADD FOREIGN KEY (codEndereco) REFERENCES Endereco(codEndereco);

ALTER TABLE Fornecedor ADD FOREIGN KEY (codConta) REFERENCES Conta(codConta);

ALTER TABLE Venda ADD FOREIGN KEY (codLivro) REFERENCES Livros(codLivro);

ALTER TABLE Venda ADD FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente);

ALTER TABLE Conta ADD FOREIGN KEY (codPermissao) REFERENCES Acesso(codPermissao); 

INSERT INTO Acesso VALUES (1, "Administrador");

INSERT INTO Conta VALUES (1, "root", "root", 1);