--SQL NO.2
--Andi Dhiya Rachmy Ariffia
create table email_list(
	id int not null unique,
	email varchar not null
);

insert into email_list values (1,'abc@gmail.com');
insert into email_list values (2,'def@gmail.com');
insert into email_list values (3,'abc@gmail.com');
insert into email_list values (4,'abc@gmail.com');
insert into email_list values (5,'def@gmail.com');
insert into email_list values (6,'def@gmail.com');
insert into email_list values (7,'xyz@gmail.com');


select * from email_list;

select email from email_list
group by email
having count(id)>2; --yang muncul lebih dari 2 kali (punya duplikat)