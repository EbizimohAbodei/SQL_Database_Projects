drop database if exists recipedb;
create database recipedb;

use recipedb;

create table recipe(
    recipeId integer not null primary key,
    recipeName varchar(100) not null,
    countryCode varchar(3),
    recipeInstructions varchar(1000)
);

create table ingredient(
    ingredientId integer not null primary key,
    ingredientName varchar(50) not null,
    pictureName varchar(30)
);

create table recipe_has_ingredient(
    recipeNumber integer not null,
    ingredientNumber integer not null,
    amount decimal(5,2) not null,
    unit varchar(30) not null,
    primary key(recipeNumber, ingredientNumber),
    foreign key(recipeNumber) references recipe(recipeId),
    foreign key(ingredientNumber) references ingredient(ingredientId)

);

drop user if exists 'baker'@'localhost'; 
create user 'baker'@'localhost' identified by 'cake1234';
grant all privileges on recipedb.* to 'baker'@'localhost'; 

insert into recipe values(1, 'cake', 'FIN', 'Bake a finnish cake');
insert into recipe values(2, 'pizza', 'HUN', 'Making a pizza 101');
insert into recipe values(3, 'pancake', 'SWE', 'Best swedish pancake');
insert into recipe values(4, 'friedrice', 'NOR', 'spicy rice');
insert into recipe values(5, 'pancakes', 'FIN', 'making pancakes');

insert into ingredient values(1, 'flour', 'flour.jpg');
insert into ingredient values(2, 'sugar', 'sugar.jpg');
insert into ingredient values(3, 'eggs', 'egg.jpeg');
insert into ingredient values(4, 'butter', null);
insert into ingredient values(5, 'baking powder', 'bakpow.png');
insert into ingredient values(6, 'milk', 'cow.png');
insert into ingredient values(7, 'oil', 'veg.jpg');
insert into ingredient values(8, 'nutmeg', null);
insert into ingredient values(9, 'salt', null);

insert into recipe_has_ingredient values(1, 2, 234.4, 'decilitres');
insert into recipe_has_ingredient values(1, 1, 4, 'teaspooon');
insert into recipe_has_ingredient values(1, 3, 4, 'LG');
insert into recipe_has_ingredient values(2, 7, 4.2, 'decilitres');
insert into recipe_has_ingredient values(2, 4, 4.2, 'ounce');
insert into recipe_has_ingredient values(3, 8, 2, 'teaspoon');
insert into recipe_has_ingredient values(3, 5, 2, 'tablespoon');
insert into recipe_has_ingredient values(4, 6, 0.5, 'litres');

select * from recipe;
select * from ingredient;
select * from recipe_has_ingredient;

select * from recipe inner join recipe_has_ingredient on recipeNumber=recipeId inner join ingredient on ingredientNumber=ingredientId where recipeName='cake';

select ingredientName, amount, unit from recipe inner join recipe_has_ingredient on recipeNumber=recipeId inner join ingredient on ingredientNumber=ingredientId where recipeName='cake';

select ingredientName, amount, unit from recipe inner join recipe_has_ingredient on recipeNumber=recipeId inner join ingredient on ingredientNumber=ingredientId where recipeName='pancake';

-- Names of recipes with ingredient - flour
select recipeName from recipe inner join recipe_has_ingredient on recipeNumber=recipeId inner join ingredient on ingredientNumber=ingredientId where ingredientName='flour';

select ingredientName, recipeName from ingredient left join recipe_has_ingredient on ingredientNumber=ingredientId left join recipe on recipeNumber=recipeId;


-- All ingredients that are in use or not in use 
select ingredientName, recipeName from ingredient left join recipe_has_ingredient on ingredientNumber=ingredientId left join recipe on recipeNumber=recipeId;

-- All ingredients that are not in use
select ingredientName from ingredient left join recipe_has_ingredient on ingredientNumber=ingredientId where ingredientNumber is null;

-- All ingredients in use. The name is only once in the resultset
select distinct ingredientName from ingredient left join recipe_has_ingredient on ingredientNumber=ingredientId where ingredientNumber is not null;

--- Get number of recipes by country
select countryCode, count(*) as numberOfRecipes from recipe group by countrycode
order by countrycode;

-- Number of ingredients in recipe
select ingredientNumber, count(*) as ingredientNumber from recipe join recipe_has_ingredient on recipeNumber=recipeId group by recipeName, ingredientNumber
order by ingredientNumber;