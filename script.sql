DROP DATABASE IF EXISTS livraria;
DROP DATABASE IF EXISTS livraria; 
CREATE DATABASE livraria;
USE livraria;

CREATE TABLE IF NOT EXISTS Endereco ( codEndereco INT NOT NULL AUTO_INCREMENT PRIMARY KEY, bairro VARCHAR(200) NOT NULL, logradouro VARCHAR(200) NOT NULL, numero VARCHAR(9), CEP VARCHAR(8), Cidade VARCHAR(100), UF CHAR(2) );


CREATE TABLE IF NOT EXISTS Telefone (codTelefone INT NOT NULL AUTO_INCREMENT PRIMARY KEY, numTelefone VARCHAR(11) );

CREATE TABLE IF NOT EXISTS Acesso(codPermissao INT NOT NULL AUTO_INCREMENT PRIMARY KEY, categoria VARCHAR(50) );

CREATE TABLE IF NOT EXISTS imgsLivros(codImg INT NOT NULL AUTO_INCREMENT PRIMARY KEY, imgNomTxt VARCHAR(200), imgPathTxt VARCHAR(200), imgFile LONGBLOB);

CREATE TABLE IF NOT EXISTS Livros ( codLivro INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nomeLivro VARCHAR(200) NOT NULL, preco FLOAT NOT NULL, isbn VARCHAR (13) not null, exemplar integer not null, genero VARCHAR(80), edicao VARCHAR(80), ano VARCHAR(4), autor VARCHAR(80), proprietario VARCHAR(200) NOT NULL, imgLivro INT NULL, FOREIGN KEY (imgLivro) REFERENCES imgsLivros (codImg), UNIQUE KEY (isbn, exemplar) );

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

INSERT INTO Acesso VALUES (2, "Fornecedor");

INSERT INTO Acesso VALUES (3, "Cliente");

INSERT INTO Conta VALUES (1, "root", "63a9f0ea7bb98050796b649e85481845", 1); -- senha root

INSERT INTO Conta VALUES (2, "Livrostop", "63776d3025a03bfbd84ffa5cb95b2ef1", 2); -- senha topperson 

INSERT INTO Conta VALUES (3, "Jonasvildo", "b4d30f584bac853f3a4de309d346d16a", 3); -- senha Vildojonas942

INSERT INTO Conta VALUES (4, "Forn44", "d790478fdedbb23b6d34d7c46d0103f0", 2);  

INSERT INTO Telefone VALUES (1, "44444444444");

INSERT INTO Endereco VALUES (1, "CDHU 4", "Rua Torso", "44", "44444444", "Quatroquatro", "AC");

INSERT INTO Fornecedor VALUES (1, "Fornecedor44", "44444444444444", 1, 1, 4); -- senha 734fZ8K3A%qAe4%d

INSERT INTO Livros VALUES (1, "A homeostase dos organismos", 68.3, "7777777777777", 1, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (2, "A homeostase dos organismos", 68.3, "7777777777777", 2, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (3, "A homeostase dos organismos", 68.3, "7777777777777", 3, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (4, "A homeostase dos organismos", 68.3, "7777777777777", 4, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (5, "A homeostase dos organismos", 68.3, "7777777777777", 5, "Ciências Biológicas", "3", "1998", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (6, "A arte dos testes", 50.52, "1111111111111", 1, "Ciências Exatas", "2", "2009", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (7, "A arte dos testes", 50.52, "1111111111111", 2, "Ciências Exatas", "2", "2009", "João Ramaglio", "Fornecedor44", null);

INSERT INTO Livros VALUES (8, "A arte dos testes", 50.52, "1111111111111", 3, "Ciências Exatas", "2", "2009", "João Ramaglio", "Fornecedor44", null);