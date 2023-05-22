/*Crie uma consulta que mostre todos os locais que já tiveram ao menos um evento*/

select * from locais as lc
inner join eventos as ev on ev.id_local = lc.id;

/*Crie uma consulta que mostre todos os locais que não tiveram associação a nenhum evento;*/

select * from locais as lc
left join eventos as ev on ev.id_local = lc.id
where ev.id_local is null;

/*Crie uma consulta que mostre todos eventos filtrando por uma data inicial e data final 
(esse tipo de consulta será usada quando o usuário buscar os eventos por data);*/

select us.nome, us.id, ev.nome_evento from check_in as ci
join usuarios as us on  ci.id_usuarios = us.id 
join eventos as ev on ci.id_evento = ev.id
order by us.id asc;

/*Crie uma consulta que mostre todos os eventos ainda não iniciados
 com a relação de seus usuários que já fizeram check-in*/
 
select ev.nome_evento, ev.inicio_evento , us.nome from check_in as ci
join usuarios as us on  ci.id_usuarios = us.id 
join eventos as ev on ci.id_evento = ev.id
where date(ev.inicio_evento) > '2023-05-21 20:00:00' 
order by us.id asc;

/*Crie uma consulta que mostre todos os usuários e a quantidade de vezes que o mesmo já se registrou em algum evento*/

select us.nome as nome, count(*) as vezes_evento from check_in as ci
join usuarios as us on  ci.id_usuarios = us.id 
join eventos as ev on ci.id_evento = ev.id
where us.id_status = 1
group by us.nome;

/* Crie uma consulta que mostre o evento com maior número de check-in e o com o menor */

select ev.nome_evento, count(ci.id_evento) as total from check_in as ci
join usuarios as us on  ci.id_usuarios = us.id 
join eventos as ev on ci.id_evento = ev.id
group by ev.nome_evento; 





