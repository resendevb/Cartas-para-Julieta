create database cartas_para_julieta;
use cartas_para_julieta;
create table usuarios (idUsuario int auto_increment primary key,
 nome varchar (40),
 email varchar(150),
 senha char (11),
 lugar_do_filme varchar(45),
 lugar2_do_filme varchar(45));	
 
select * from usuarios;



create table lugares_viajados (idLugar int primary key auto_increment,
nome_cidade varchar(45),
fk_usuario int, foreign key (fk_usuario) references usuarios (idUsuario));

	
select * from lugares_viajados;






