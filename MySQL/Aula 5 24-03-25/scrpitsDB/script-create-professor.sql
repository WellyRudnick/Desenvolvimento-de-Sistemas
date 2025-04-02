USE Wellyson_Rudnick;

CREATE TABLE tb_professor (
    nr_matricula INT(5) ZEROFILL PRIMARY KEY NOT NULL,
    nm_professor VARCHAR(40) NOT NULL,
    ds_endereco VARCHAR(40),
    nr_telefone BIGINT UNIQUE,
    ds_email VARCHAR(100) UNIQUE,
    cd_titulacao INT NOT NULL,
    
    CONSTRAINT id_cd_titulacao FOREIGN KEY (cd_titulacao) REFERENCES tb_titulacao(Cd_Titulacao)
);
