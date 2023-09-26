create table user1
(
u_id int primary key,
u_name varchar(20),
email varchar(40) unique,
)
insert into user1 values(1,'Ali','ali@gmail.com')
insert into user1 values(2,'Rashid','rashid@gmail.com')
insert into user1 values(3,'Suyash','suyash@gmail.com')
insert into user1 values(4,'Amay','amay@gmail.com')
insert into user1 values(5,'Anmol','anmol@gmail.com')
select* from user1

create table product2
(
p_id int unique,
p_name varchar(20),
p_price int not null
)
insert into product2 values(1,'pen',20),
					      (2,'pencil',10),
						  (3,'eraser',5),
						  (4,'sharper',10)
select * from product2

create table orders
(
o_id int unique,
p_id int primary key,
u_id int not null,
qty int not null,
)
insert into orders values(1,001,124,4),
					      (2,002,125,8),
						  (3,003,126,12),
						  (4,004,127,24)
select * from orders
select * from user1 inner join product2 on user1.u_id=product2.p_id


--To show all databases of our system--
select name from sys.databases
select name from sys.tables

--left join --
select * from user1 left join product2 on user1.u_id=product2.p_id
--right join--
select * from user1 right join product2 on user1.u_id=product2.p_id

--cross join --
create table color
(
id int not null,
cname varchar(20),
)
insert into color values(1,'red'),(2,'black'),(3,'blue'),(4,'green')
select * from color

create table sizes
(
id int not null,
sname varchar(20),
)
insert into sizes values(1,'S'),(2,'M'),(3,'L'),(4,'XL')
select * from sizes
select *from color cross join sizes












