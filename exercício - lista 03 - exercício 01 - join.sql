CREATE DATABASE db_generation_game_online;
USE db_generation_game_online; 

create table tb_classes(
id int auto_increment, 
forca int,
magia varchar (255),
primary key (id)
);

create table tb_personagens(
id int auto_increment,
nome varchar (250) not null,
idade varchar (250) not null,
poder varchar (250) not null,
fraqueza varchar (250) not null,
primary key (id)
);

insert into tb_classes(magia, forca) values ('lemental', 10.5);
insert into tb_classes(magia, forca) values ('arcana', 8.2);
insert into tb_classes(magia, forca) values ('guerreiro', 12);
insert into tb_classes(magia, forca) values ('curandeiro', 5.7);
insert into tb_classes(magia, forca) values ('ladino', 6.9);

SELECT * FROM tb_classes;

alter table tb_personagens ADD categoria_id int;
alter table tb_personagens ADD constraint fk_personagens_classes foreign key(categoria_id) references tb_classes(id);

INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('titikinha', '21', 2000, 9000, 1);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('jony', '37', 3000, 7000, 2);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('paulosson', '58', 5000, 1500, 3);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('bjork', '77', 6000, 7000, 4);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('bjorn', '86', 1500, 1000, 4);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('marcusus', '14', 2800, 2500, 3);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('jarvison', '15', 3000, 6000, 2);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('juelva', '44', 6111, 1500, 1);

SELECT nome,poder,categoria_id from tb_personagens WHERE poder>2000;

SELECT nome,poder,categoria_id from tb_personagens WHERE poder BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

USE db_generation_game_online;

SELECT nome,idade,poder,fraqueza from tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id WHERE tb_personagens.poder = 2000;

