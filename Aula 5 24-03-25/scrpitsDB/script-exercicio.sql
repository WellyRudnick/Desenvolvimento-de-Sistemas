CREATE DATABASE Wellyson_Rudnick;

use Wellyson_Rudnick;

CREATE TABLE tb_titulacao (
    cd_Titulacao INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ds_titulacao VARCHAR(40) NOT NULL
);

CREATE TABLE tb_professor (
    nr_matricula INT(5) ZEROFILL PRIMARY KEY NOT NULL,
    nm_professor VARCHAR(40) NOT NULL,
    ds_endereco VARCHAR(40),
    nr_telefone BIGINT UNIQUE,
    ds_email VARCHAR(100) UNIQUE,
    cd_titulacao INT NOT NULL,
    
    CONSTRAINT id_cd_titulacao FOREIGN KEY (cd_titulacao) REFERENCES tb_titulacao(Cd_Titulacao)
);

CREATE TABLE tb_aluno (
    nr_matricula INT PRIMARY KEY NOT NULL,
    nm_aluno VARCHAR(40) NOT NULL,
    ds_endereco VARCHAR(40),
    nr_telefone BIGINT UNIQUE,
    ds_email VARCHAR(100) UNIQUE,
    nr_matriculaProf INT(5) ZEROFILL NOT NULL,
    
    CONSTRAINT id_nr_matriculaProf FOREIGN KEY (nr_matriculaProf) REFERENCES tb_professor(nr_matricula)
);

ALTER TABLE tb_professor
ADD COLUMN ds_cidade VARCHAR(30) AFTER ds_email,
ADD COLUMN ds_uf CHAR(2) AFTER ds_cidade,
ADD COLUMN ds_bairro VARCHAR(30) AFTER ds_uf;

ALTER TABLE tb_aluno
ADD COLUMN ds_cidade VARCHAR(30) AFTER ds_email,
ADD COLUMN ds_uf CHAR(2) AFTER ds_cidade,
ADD COLUMN ds_bairro VARCHAR(30) AFTER ds_email;

INSERT INTO tb_titulacao (ds_titulacao) VALUES
('Graduado'),
('Especialista'),
('Mestre'),
('Doutor'),
('PHD');

INSERT INTO tb_professor (nr_matricula, nm_professor, nr_telefone, ds_email, ds_endereco, ds_cidade, ds_uf, ds_bairro, Cd_titulacao) VALUES
(1, 'Wellyson Rudnick', 999999999, 'welly@gmail.com', 'Rua 9 de março, 50', 'Joinville', 'SC', 'Centro', 1),
(2, 'Lucas Calixto', 888888888, 'lucas@gmail.com', 'Rua do Pricipe, 30', 'Joinville', 'SC', 'Centro', 2),
(3, 'João Paulo', 777777777, 'joao@gmail.com', 'Rua Princesa Isabel,40', 'Joinville', 'SC', 'Centro', 3),
(4, 'Maria Eduarda', 666666666, 'maria@gmail.com', 'Rua Itajaí, 67', 'Joinville', 'SC', 'Centro', 4),
(5, 'Ana Clara', 555555555, 'ana@gmail.com', 'Rua XV de Novembro, 214', 'Joinville', 'SC', 'Centro', 5),
(6, 'Ricardo Alves', 4799991111, 'ricardo.alves@email.com', 'Rua das Palmeiras, 150', 'Joinville', 'SC', 'Centro', 3),
(7, 'Mariana Souza', 4798882222, 'mariana.souza@email.com', 'Rua Orestes Guimarães, 200', 'Joinville', 'SC', 'Saguaçu', 2),
(8, 'Fernando Lima', 4797773333, 'fernando.lima@email.com', 'Rua Blumenau, 300', 'Joinville', 'SC', 'Atiradores', 4),
(9, 'Patrícia Nogueira', 4796664444, 'patricia.nogueira@email.com', 'Rua XV de Novembro, 400', 'Joinville', 'SC', 'Glória', 1);

INSERT INTO tb_aluno (nr_matricula, nm_aluno, ds_endereco, nr_telefone, ds_email, ds_cidade, ds_uf, ds_bairro, nr_matriculaProf) VALUES
(1, 'Gabriel Santos', 'Rua das Palmeiras, 100', 999111222, 'gabriel@email.com', 'Joinville', 'SC', 'Centro', 1),
(2, 'Larissa Oliveira', 'Rua João Pessoa, 45', 988222333, 'larissa@email.com', 'Joinville', 'SC', 'América', 2),
(3, 'Pedro Henrique', 'Av. Getúlio Vargas, 320', 977333444, 'pedro@email.com', 'Joinville', 'SC', 'Bom Retiro', 3),
(4, 'Isabela Martins', 'Rua São Paulo, 90', 966444555, 'isabela@email.com', 'Joinville', 'SC', 'Glória', 4),
(5, 'Felipe Almeida', 'Rua Blumenau, 210', 955555666, 'felipe@email.com', 'Joinville', 'SC', 'Atiradores', 5),
(6, 'Natália Castro', 'Rua XV de Novembro, 123', 944666777, 'natalia@email.com', 'Joinville', 'SC', 'Saguaçu', 6),
(7, 'Vinícius Costa', 'Rua Dr. João Colin, 567', 933777888, 'vinicius@email.com', 'Joinville', 'SC', 'Boa Vista', 7),
(8, 'Beatriz Souza', 'Rua Timbó, 890', 922888999, 'beatriz@email.com', 'Joinville', 'SC', 'Paranaguamirim', 8),
(9, 'Eduardo Lima', 'Rua dos Expedicionários, 101', 911999000, 'eduardo@email.com', 'Joinville', 'SC', 'Itaum', 9),
(10, 'Camila Rocha', 'Rua das Acácias, 234', 900111222, 'camila@email.com', 'Joinville', 'SC', 'Iririú', 1),
(11, 'Lucas Mendes', 'Rua Jaraguá, 345', 899222333, 'lucas@email.com', 'Joinville', 'SC', 'Floresta', 2),
(12, 'Sofia Ribeiro', 'Rua Porto União, 456', 888333444, 'sofia@email.com', 'Joinville', 'SC', 'Costa e Silva', 3),
(13, 'Matheus Oliveira', 'Rua Guanabara, 567', 877444555, 'matheus@email.com', 'Joinville', 'SC', 'Fátima', 4),
(14, 'Fernanda Nogueira', 'Rua Blumenau, 678', 866555666, 'fernanda@email.com', 'Joinville', 'SC', 'Nova Brasília', 5),
(15, 'Daniel Ferreira', 'Rua Florianópolis, 789', 855666777, 'daniel@email.com', 'Joinville', 'SC', 'Jardim Paraíso', 6);