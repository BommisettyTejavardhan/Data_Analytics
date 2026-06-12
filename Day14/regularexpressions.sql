use datemapulaction;

select* from orders;

select * from orders where username like 'A%';

select * from orders where username like 'R%';

select * from orders where username like 'S%';

select *from orders where username regexp '^a';

select *from orders where username regexp '[ARS]';

select *from orders where username regexp '[A%]';

select *from orders where username regexp '^A.*t$' ;

select * from orders where username like 'R%' or username like 'A%' or username like's%' ;

select *from orders where username regexp '[A-b]' ;

select username, count(*) from orders where username regexp '[A-b]' group by username ;








