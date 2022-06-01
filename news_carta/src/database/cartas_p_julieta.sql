create database cartas_para_julieta;
use cartas_para_julieta;
create table usuarios (idUsuario int auto_increment primary key,
 nome varchar (40),
 email varchar(150),
 senha char (11));	
 INSERT INTO USUARIOS(nome, email, senha) VALUES('abc', 'sbc@abc.com', 12345678);
 
  INSERT INTO USUARIOS(nome, email, senha) VALUES('oi', 'oi@abc.com', 12345678);
 select * from usuarios;
select idUsuario from usuarios order by idUsuario desc limit 1;
create table lugares_viajados (idLugar int primary key auto_increment,
nome_cidade varchar(45));
insert into lugares_viajados 
values(null, 'verona'),
		(null, 'toscana');
select * from lugares_viajados;
select * from usuario_lugar;
INSERT INTO usuario_lugar(fk_usuario, fk_lugar)
values (6,2);
SELECT idUsuario, 1 from usuarios order by idUsuario desc limit 1;

select*from usuario_lugar;

create table usuario_lugar (idUsuarioLugar int primary key auto_increment, 
fk_usuario int, foreign key (fk_usuario) references usuarios (idUsuario),
fk_lugar int, foreign key (fk_lugar) references lugares_viajados (idLugar));


select * from usuarios;

select * from usuario_lugar; 

select 
                        count(fk_lugar)
                        as verona
                    from usuario_lugar
                    group by fk_lugar;

select count(fk_lugar) as 'Pessoas que escolheram Verona' from usuario_lugar where fk_lugar=1;

select count(fk_lugar) as 'Pessoas que escolheram Toscana' from usuario_lugar where fk_lugar=2;

select count(fk_lugar) as 'quantidade', nome_cidade as 'lugar' from usuario_lugar as u join lugares_viajados as l on l.idLugar = u.fk_lugar
group by fk_lugar;


