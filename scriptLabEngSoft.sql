DROP DATABASE IF EXISTS labengsoft;
CREATE DATABASE labengsoft;
USE labengsoft;

CREATE TABLE IF NOT EXISTS Livros ( codLivro INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeLivro VARCHAR(200) NOT NULL, preco FLOAT NOT NULL, isbn VARCHAR (13) not null, exemplar integer not null, genero VARCHAR(80), edicao VARCHAR(80), ano VARCHAR(4), autor VARCHAR(80), proprietario VARCHAR(200) NOT NULL, UNIQUE KEY (isbn, exemplar) );

CREATE TABLE IF NOT EXISTS Cliente ( codCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeCliente VARCHAR(200), CPF VARCHAR(11), bairro VARCHAR(200) NOT NULL, logradouro VARCHAR(200) NOT NULL, numero VARCHAR(9), CEP VARCHAR(8), Cidade VARCHAR(100), UF CHAR(2), numTelefone VARCHAR(11),  login VARCHAR(80), senha CHAR(32));

CREATE TABLE IF NOT EXISTS Fornecedor ( codFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeFornecedor VARCHAR(200), CNPJ VARCHAR(14), bairro VARCHAR(200) NOT NULL, logradouro VARCHAR(200) NOT NULL, numero VARCHAR(9), CEP VARCHAR(8), Cidade VARCHAR(100), UF CHAR(2), numTelefone VARCHAR(11), login VARCHAR(80), senha CHAR(32));

CREATE TABLE IF NOT EXISTS Administrador (codAdministrador INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeAdministrador VARCHAR(200), login VARCHAR(80), senha CHAR(32));

CREATE TABLE IF NOT EXISTS Venda ( codVenda INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
valorTotal FLOAT, 
codLivro INT NOT NULL, 
codCliente INT NOT NULL,
FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente),   
FOREIGN KEY (codLivro) REFERENCES Livros(codLivro));

INSERT INTO Administrador VALUES (1, "Osvaldo", "root", "7ef2e7fde7d4333230b4f8a226fdfe1c");  -- senha rOt123!@#$%    

INSERT INTO Cliente VALUES (1, "Jasson", "54424304043", "CDHU I", "Avenida da França", "55", "40010901", "Salvador", "BA", "7429273460", "Jasson", "9e421e1dcebedab8c2350a6c574606cd"); -- senha TOpkM112##$$!

INSERT into Fornecedor VALUES (1, "Livrostop", "06670537000145", "CDHU II", "Rua Oscar Freire", "33", "05409010", "São Paulo", "SP", "1232469152", "Livrostop", "06643cef639b9895237d0377ca3f5090"); -- senha Kmf123#@!49f24R

INSERT INTO Livros VALUES (1, "A homeostase dos organismos", 68.3, "7777777777777", 1, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (2, "A homeostase dos organismos", 68.3, "7777777777777", 2, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (3, "A homeostase dos organismos", 68.3, "7777777777777", 3, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (4, "A homeostase dos organismos", 68.3, "7777777777777", 4, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (5, "A homeostase dos organismos", 68.3, "7777777777777", 5, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (6, "A arte dos testes", 50.52, "1111111111111", 1, "Ciências Exatas", "2", "2009", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (7, "A arte dos testes", 50.52, "1111111111111", 2, "Ciências Exatas", "2", "2009", "João Ramaglio", "Fornecedor44");

INSERT INTO Livros VALUES (8, "A arte dos testes", 50.52, "1111111111111", 3, "Ciências Exatas", "2", "2009", "João Ramaglio", "Fornecedor44");
