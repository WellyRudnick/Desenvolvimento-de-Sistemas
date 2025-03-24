USE Wellyson_Rudnick;

CREATE TABLE tb_aluno (
    nr_matricula INT PRIMARY KEY NOT NULL,
    nm_aluno VARCHAR(40) NOT NULL,
    ds_endereco VARCHAR(40),
    nr_telefone BIGINT UNIQUE,
    ds_email VARCHAR(100) UNIQUE,
    nr_matriculaProf INT(5) ZEROFILL NOT NULL,
    
    CONSTRAINT id_nr_matriculaProf FOREIGN KEY (nr_matriculaProf) REFERENCES tb_professor(nr_matricula)
);

