CREATE DATABASE livraria;
USE livraria;

CREATE TABLE IF NOT EXISTS Endereco ( codEndereco INT NOT NULL AUTO_INCREMENT PRIMARY KEY, bairro VARCHAR(200) NOT NULL, logradouro VARCHAR(200) NOT NULL, numero VARCHAR(9), CEP VARCHAR(8), Cidade VARCHAR(100), UF CHAR(2) );


CREATE TABLE IF NOT EXISTS Telefone (codTelefone INT NOT NULL AUTO_INCREMENT PRIMARY KEY, numTelefone VARCHAR(11) );

CREATE TABLE IF NOT EXISTS Acesso(codPermissao INT NOT NULL AUTO_INCREMENT PRIMARY KEY, categoria VARCHAR(50) );


CREATE TABLE IF NOT EXISTS Livros ( codLivro INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeLivro VARCHAR(200) NOT NULL, quantidade SMALLINT NOT NULL, preco FLOAT NOT NULL, isbn VARCHAR (15) not null, exemplar integer not null, genero VARCHAR(30), edicao VARCHAR(3), ano VARCHAR(4), autor VARCHAR(80), UNIQUE KEY (isbn, exemplar) );

CREATE TABLE IF NOT EXISTS Conta(codConta INT NOT NULL AUTO_INCREMENT PRIMARY KEY, login VARCHAR(80), senha CHAR(32), codPermissao INT NOT NULL, FOREIGN KEY (codPermissao) REFERENCES Acesso(codPermissao));

CREATE TABLE IF NOT EXISTS Cliente ( codCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeCliente VARCHAR(200), CPF VARCHAR(11), codTelefone INT NOT NULL, codEndereco INT NOT NULL, codConta INT NOT NULL, FOREIGN KEY (codTelefone) REFERENCES Telefone(codTelefone), FOREIGN KEY (codEndereco) REFERENCES Endereco(codEndereco), FOREIGN KEY (codConta) REFERENCES Conta(codConta) );

CREATE TABLE IF NOT EXISTS Conta(codConta INT NOT NULL AUTO_INCREMENT PRIMARY KEY, login VARCHAR(80), senha CHAR(32), codPermissao INT NOT NULL, FOREIGN KEY (codPermissao) REFERENCES Acesso(codPermissao));

CREATE TABLE IF NOT EXISTS Fornecedor ( codFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeFornecedor VARCHAR(200), CNPJ VARCHAR(14), codTelefone INT NOT NULL, codEndereco INT NOT NULL, codConta INT NOT NULL, FOREIGN KEY (codTelefone) REFERENCES Telefone(codTelefone), FOREIGN KEY (codEndereco) REFERENCES Endereco(codEndereco), FOREIGN KEY (codConta) REFERENCES Conta(codConta));

CREATE TABLE IF NOT EXISTS Venda ( codVenda INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
valorTotal FLOAT, 
codLivro INT NOT NULL, 
codCliente INT NOT NULL,
FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente),   
FOREIGN KEY (codLivro) REFERENCES Livros(codLivro));


INSERT INTO Acesso VALUES (1, "Administrador");

INSERT INTO Conta VALUES (1, "root", "root", 1);

INSERT INTO Acesso VALUES (2, "Fornecedor");

INSERT INTO Acesso VALUES (3, "Cliente");

INSERT INTO Conta VALUES (2, "Livrostop", "topperson", 2);

INSERT INTO Conta VALUES (3, "Jonasvildo", "Vildojonas942", 3);