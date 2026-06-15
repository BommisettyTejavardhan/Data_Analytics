create database fun;
use fun;

create table players
(
player_id int,
player_name varchar(25),
countery varchar(20),
goals int
);

insert into players values (1,'Ronaldo','Portugal',100);
insert into players values (2,'Messi','Argentina',90);
insert into players values (3,'Neymar','Portugal',80);
insert into players values (4,'Sunil','India',110);
insert into players values (5,'Jagdish','USA',10);
insert into players values (6,'Peddi','Global star',150);

select *from players;

select *from players where goals >100;

delimiter //
create procedure top_player()
begin
select * from players where goals >100;
end //
delimiter ;
call top_player(); 

set SQL_SAFE_UPDATES=0;
SELECT * FROM players;

DELIMITER //
CREATE PROCEDURE top_player_sort_by_goal(
    IN num INT,
    IN p_name VARCHAR(25)
)
BEGIN
    UPDATE players
    SET goals = num
    WHERE player_name = p_name;
END //
DELIMITER ;
CALL top_player_sort_by_goal(300,'Ronaldo');

DROP PROCEDURE IF EXISTS count_india_players;
DELIMITER //
CREATE PROCEDURE count_india_players()
BEGIN
    SELECT COUNT(*) AS total_indian_players
    FROM players
    WHERE countery = 'India';
END //
DELIMITER ;
CALL count_india_players();















