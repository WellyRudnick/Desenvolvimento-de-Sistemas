USE Wellyson_Rudnick;

ALTER TABLE tb_professor
ADD COLUMN ds_cidade VARCHAR(30) AFTER ds_email,
ADD COLUMN ds_uf CHAR(2) AFTER ds_cidade,
ADD COLUMN ds_bairro VARCHAR(30) AFTER ds_uf;