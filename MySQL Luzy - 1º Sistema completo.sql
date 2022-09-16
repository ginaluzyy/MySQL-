--	Comentários
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados a ser utilizado
use dbinfox;
-- criaremos uma tabela 
create table tbusuarios(
iduser int primary key, /*chave primaria*/
usuario varchar(50) not null, /*var char solicita qualquer caracteres e not null impede o campo ser null*/
fone varchar(15),
login varchar(15) not null unique, /*unique faz o campo ser unico sem repetição de login igual*/
senha varchar(15) not null
);

-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo insere dados na tabela(CRUD) create ride updadte delete 4 operaçoes basicas para manipulação de dados
-- Create do CRUD -> insert
insert into tbusuarios(iduser, usuario, fone, login, senha)
values (1, 'José de Assis', '(11)99999-9999', 'joseassis','123456');
-- a linha abaixo exibe os dados da tabela mais uma vez utilizando (CRUD)
-- read -> select
select * from tbusuarios;

insert into tbusuarios(iduser, usuario, fone, login, senha)
values (2, 'Administrador', '(11)99999-9999', 'admin','admin');
insert into tbusuarios(iduser, usuario, fone, login, senha)
values (3, 'Bill Gates', '(11)99999-9999', 'bill','admin');

-- a linha abaixo modifica dados na tabela(com sistema CRUD)
-- update -> update
update tbusuarios set fone= '(11)98888-8888' where iduser=2;


-- a linha abaixo apaga um registro da tabela (com CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment, /*este comando auto_increment gera automaticamente um id*/
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values('Linus Torvalds', 'Rua Tux, 2015', '(11)98888-8888', 'linus@linux.com');
-- a linha abaixo exibe os dados da tabela utilizando (CRUD)
-- read -> select
select * from tbclientes;