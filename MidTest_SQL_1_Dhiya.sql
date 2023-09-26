--SQL NO.1
--Andi Dhiya Rachmy Ariffia

create table input_table(
	id SERIAL primary key,
	num int not null
);

insert into input_table (num) values (1);
insert into input_table (num) values (1);
insert into input_table (num) values (1);
insert into input_table (num) values (2);
insert into input_table (num) values (1);
insert into input_table (num) values (2);
insert into input_table (num) values (2);
insert into input_table (num) values (1);

select * from input_table;

select num
from( 
	select *,
        row_number() over (
            partition by num 
            order by id asc) as counting_num
	from input_table
) input_table
where counting_num=3
order by id asc;