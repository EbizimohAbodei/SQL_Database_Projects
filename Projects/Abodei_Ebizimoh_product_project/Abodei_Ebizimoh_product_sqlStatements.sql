use productdb;

insert into product values(4, 'Mercury', 2000, 7, 100);
insert into product values(7, 'NextGen 2', 2010, 1, 1500);
insert into product values(3, 'Cosmos', 1995, 25, 200);
insert into product values(1, 'Tako delux', 2012, 10, 499);
insert into product values(6, 'MaxEffect 2000', 1990, 30, 2000);
insert into product values(2, 'Future 2025', 2017, 5, 300);
insert into product values(5, 'Beast II', 2011, 20, 700);

select * from product;
select productId, price, amount from product;
select * from product where amount=15;
select * from product where name='Cosmos';
select * from product where name='Cosmos';

update product set name='Tako delux', model=2011 where productId=2;
update product set model=2005, name='Mercury' where productId=3;
update product set price=200, name='Tako delux', model=1995 where productId=2;
update product set name='Beast II', amount=100, price=300 where productId=5;

delete from product where productId=2;
delete from product where productId=7;
delete from product where amount=25;
delete from product where price=200 or name='NexGen 2';
delete from product where name='MaxEffect 2000' or name='Tako' or model=1995;



