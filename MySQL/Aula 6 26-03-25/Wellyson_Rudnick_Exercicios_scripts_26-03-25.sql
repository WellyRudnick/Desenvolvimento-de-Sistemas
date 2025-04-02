use wellyson_rudnick;

/*
Exercício 1:
Fazer um select para selecionar os professores em ordem alfabética de nome.
*/

select * from tb_professor order by nm_professor;

/*
Exercício 2:
Fazer um select para selecionar os alunos em ordem descrescente por  
nome.
*/

select * from tb_aluno order by nm_aluno desc;

/*
Exercício 3:
Fazer um select para selecionar somente os professores que são mestres.
*/

select * from tb_professor where cd_titulacao = 3;

/*
Exercício 4:
Fazer um select para selecionar somente os professores que são  
graduados.
*/

select * from tb_professor where cd_titulacao = 1;

/*
Exercício 5:
Fazer um select para selecionar somente os professores que são 
especialistas.
*/

select * from tb_professor where cd_titulacao = 2;

/*
Exercício 6:
Fazer alteração do professor com título de graduação para título de 
especialista.
*/

update tb_professor set cd_titulacao = 2 where nr_matricula = 1;

/*
Exercício 7:
Fazer alteração do professor com título de especialista para o título de 
mestre.
*/

update tb_professor set cd_titulacao = 3 where nr_matricula = 2;

/*
Exercício 8:
Fazer alteração do professor com título de mestre para o título de doutor.
*/

update tb_professor set cd_titulacao = 4 where nr_matricula = 3;

/*
Exercício 9:
Fazer alteração do aluno para um outro professor.
*/

update tb_aluno set nr_matriculaProf = 2 where nr_matriculaProf = 1;

/*
Exercício 10:
Fazer alteração de endereço do professor. 
*/

update tb_professor set ds_endereco = 'Rua do Principe, 123' where nr_matricula = 1;

/*
Exercício 11:
Fazer alteração de endereço do aluno. 
*/

update tb_aluno set ds_endereco = 'Rua do Principe, 489' where nr_matricula = 1;

/*
Exercício 12:
Fazer exclusão de alguns alunos.
*/

delete from tb_aluno where nr_matricula in (2, 5, 11, 15);

/*
Exercício 13:
Fazer exclusão de alguns professores.
*/

update tb_aluno set nr_matriculaProf = 2 where nr_matriculaProf in (1, 4, 8, 9);
delete from tb_professor where nr_matricula in (1, 4, 8, 9);


/*
Exercício 14:

Qual a importancia de fazer uma chave estrangeira?
R: A chave estrangeira é importante para garantir a integridade referencial entre as tabelas, evitando que sejam inseridos registros inválidos e evitar duplicidade de dados.
*/

/*
Exercício 15:

Em duas tabelas que tem relacionamento, exemplo, tabela de curso e 
tabela de aluno, sendo um relacionamento (1 para n – Um curso para vários 
alunos) sendo que na tabela de aluno, contem informações de cursos, é 
possível fazer a exclusão do curso, estando o id do curso na tabela de aluno?
R: Não, não é possível excluir o curso se houver alunos matriculados nele, pois a chave estrangeira impede a exclusão do curso enquanto houver alunos matriculados nele.
*/

/*
Exercício 16:

Em uma tabela que tem o id como incremento, na inserção de registros, 
eles assumem o incremento de  1 em 1. Ao excluir todos os registros e fazer a 
inclusão novamente, o id tem a continuação do incremento. Como podemos 
fazer para excluir todos os registros e novamente fazer a inserção, sendo que 
o id assume o valor inicial de 1 novamente?
R: Para que o id assuma o valor inicial de 1 novamente, é necessário reiniciar a sequência de incremento do id. Isso pode ser feito através do comando ALTER TABLE. Exemplo:

ALTER TABLE tb_tabela AUTO_INCREMENT = 1;
*/
