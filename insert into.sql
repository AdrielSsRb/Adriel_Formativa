/* insert into */

insert into checklist_itens(item) 
values ('computador'),('projetor'),('cadeiras'),('lousa'),('janelas'),('arcondicionado');

insert into checklist_itens(item) 
values ('motores'),('impressora 3D');


insert into locais(nome_local, max_capacidade, bloco_ocupado) 
values ('Laboratorio de informatica', 16, 'A'),('Laboratorio de elétrica', 12, 'B'),('Auditorio', 64, 'C'),
	('Officina de materiais', 16, 'D'),('Officina de maquinas', 12, 'D');

/*select * from checklist as c inner join checklist_itens as ci on ci.id=c.id_item inner join locais as l on l.id=c.id_locais order by id_locais;
select* from locais;*/

insert into checklist(id_item, id_locais, itens_list) 
values	(1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,1,1),(7,1,0),(8,1,0),
		(1,2,1),(2,2,1),(3,2,1),(4,2,1),(5,2,1),(6,2,0),(7,2,1),(8,2,0),
        (1,3,1),(2,3,1),(3,3,1),(4,3,0),(5,3,0),(6,3,1),(7,3,0),(8,3,0),
        (1,4,1),(2,4,1),(3,4,1),(4,4,1),(5,4,1),(6,4,0),(7,4,0),(8,4,1),
        (1,5,0),(2,5,0),(3,5,0),(4,5,0),(5,5,0),(6,5,0),(7,5,1),(8,5,0);
        
        
insert into ocupações(ocupação) 
values  ('Aluno'),('Competidores'),('Professor'),('Secretaria'),('Diretor'),('Cordenador');

insert into acesso(acesso) 
values  ('Visitante'),('Usuário'),('Gestor'), ('Admin');

insert into usuarios(nome, email, data_aniversario, senha, data_cadastro, id_status, id_ocupação, id_acesso) 
values ('Adriel', 'adriel.ribeiro@gamail.com', '2004-06-11', '381911', '2023-01-18 20:23:10', 1, 5,4),
	('Jõao', 'jalves.ribeiro2@gamail.com', '2003-05-15', '010401', '2023-02-18 12:31:15', 1, 1,2),
	('Aluno', 'emaildealuno11@gamail.com', '2002-08-16', '022023', '2023-02-01 15:43:19', 1, 3,3),
	('Claudio', 'umcompetidordosenai@gamail.com', '2001-07-21', '012665', '2023-02-23 18:26:40', 0, 2,2),
	('Michel', 'michaeljordan@gamail.com', '2001-02-19', '648532', '2023-02-23 13:29:17', 1, 2,2),
	('André', 'andre.savreda@gamail.com', '2000-04-15', 'senai', '2023-01-18 07:32:06', 1, 4,4),
	('Hugo', 'hugoidagawa@gamail.com', '2001-09-13', 'sen@i', '2023-01-18 11:12:32', 1, 6, 4);
    
insert into eventos(nome_evento, inicio_evento, duracao_evento, id_local) 
values ('reuniao', '2023-18-05 12:00:00', '02:00:00', 3)
('reuniao', '2023-18-05 12:00:00', '02:00:00', 3)
('reuniao', '2023-18-05 12:00:00', '02:00:00', 3); 
