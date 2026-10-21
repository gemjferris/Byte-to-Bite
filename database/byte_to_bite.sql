USE byte_to_bite;
/* 
USER TABLE CODE:
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
*/

-- (test) DESCRIBE user;
/*
RECIPE CODE:
CREATE TABLE recipes(
	recipe_id INT AUTO_Increment Primary KEY,
	recipe_name VARCHAR(100) NOT NULL,
    ingredients TEXT NOT NULL,
    instructions TEXT NOT NULL,
    cooking_time INT,
    USER_id INT,
    foreign key(user_id) REFERENCES user(user_id)
    );
    */
 /*
 MEAL_TYPE TABLE CODE:
 Create TABLE meal_type(
    meal_type_id INT auto_increment PRIMARY KEY,
    meal_type_name varchar(50) NOT NULL UNIQUE
    );
*/

  /*  
MEAL_TYPE VALUES CODE:
   INSERT INTO meal_type (meal_type_name)
	VALUES
    ('Breakfast'),
    ('Lunch'),
    ('Dinner'),
    ('Desserts');
 */   
 /*
CUISINE_TYPE TABLE CODE:
 Create table cuisine_type(
		cuisine_id INT auto_increment primary key,
        cuisine_name VARCHAR(50) not null unique
        );
*/

/*
CUISINE_TYPE VALUE CODE:
Insert into cuisine_type(cuisine_name)
values
	('Italian'),
    ('Greek'),
    ('American'),
    ('Mexican'),
    ('Chinese'),
    ('Indian'),
    ('French'),
    ('Mediterranean'),
    ('British'),
    ('Soul Food')
    ;
*/
/*
connect recipes to meal cat and cuisine code:
alter table recipes
add column meal_type_id Int,
add column cuisine_id int;
*/
/*
COnnect recipes table with foreign keys
alter table recipes
add foreign key(meal_type_id)
references meal_type(meal_type_id);

alter table recipes
add foreign key (cuisine_id)
references cuisine_type(cuisine_id);
*/
/*
checking connections
alter table recipes 
add foreign key(meal_type_id)
references meal_type(meal_type_id); 
*/ 
/*
CHECK
SHOW CREATE TABLE recipes;
select * from meal_type;
select * from cuisine_type; 

select meal_type_id, meal_type_name
from meal_type;

select cuisine_id, cuisine_name
from cuisine_type;
*/

/*
INSERT INTO recipes
(recipe_name, ingredients, instructions, cooking_time, user_id, meal_type_id, cuisine_id)
VALUES
('Pancakes', 'Flour, milk, eggs, baking powder', 'Mix ingredients together and cook in a pan until golden.', 15, NULL, 1, 1),
('Greek Salad', 'Cucumber, tomatoes, feta cheese, olives', 'Chop ingredients and mix together.', 10, NULL, 2, 2),
('Spaghetti', 'Spaghetti, tomato sauce, garlic', 'Cook pasta and mix with heated sauce.', 25, NULL, 3, 1);
*/

select 
recipe_id,
recipe_name,
cooking_time,
meal_type_id,
cuisine_id
from recipes;
