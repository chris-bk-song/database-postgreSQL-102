CREATE TABLE restaurant (
  id SERIAL PRIMARY KEY,
  restaurant_name VARCHAR NOT NULL,
  distance NUMERIC,
  stars NUMERIC,
  category VARCHAR,
  fav_dish VARCHAR,
  takeout_avail BOOLEAN,
  visit_date TIMESTAMP
);

INSERT INTO restaurant VALUES (
  DEFAULT,
  'Duck Donuts',
  6.0,
  4.7,
  'Donuts',
  'Maple Bacon Donut',
  TRUE,
  '2020-05-21 09:45:00'
);
INSERT INTO restaurant VALUES (
  DEFAULT,
  'Waffle House',
  0.4,
  3.0,
  'Soul Food',
  'Allstar combo',
  TRUE,
  '2020-05-01 20:05:00'
);
INSERT INTO restaurant VALUES (
  DEFAULT,
  'J Buffalo Wings',
  2.1,
  4.2,
  'wings',
  'garlic parmesan wings',
  TRUE,
  '2020-05-11 10:10:00'
),
(
  DEFAULT,
  'Chick-fil-a',
  0.7,
  4.5,
  'Sandwich',
  'Spicy Chicken Sandwich Deluxe',
  TRUE,
  '2020-02-09 04:10:00'
),
(
  DEFAULT,
  'McDonald',
  0.8,
  1.7,
  'Burgers',
  'Big Mac',
  TRUE,
  '2020-05-19 12:10:00'
);

INSERT INTO restaurant VALUES (
  DEFAULT,
  'Texas Road House',
  10,
  4.9,
  'BBQ',
  'T-bone steak',
  TRUE,
  '2019-10-12 07:31:00'
);

-- names of the restaurants that I gave 4.5 or above stars.
select restaurant_name
  from restaurant
    where stars >= 4.5;

-- favorite dishes of all restaurant with 4.5 or above stars.
select fav_dish
  from restaurant
    where stars >= 4.5;

-- id of a restaurant by specific restaurant name
select id 
  from restaurant
    where restaurant_name like '%McDonald%';

select id 
  from restaurant
    where restaurant_name like '%Texas%';

-- restaurants in the category of 'BBQ'
select restaurant_name
  from restaurant
    where category like '%BBQ%';

-- restaurants within 2 miles
select restaurant_name
  from restaurant 
    where distance <= 2;

-- restaurants you haven't eaten at in the last week
-- not working..
select restaurant_name
  from restaurant
    where (visit_date - 7) > 0;

-- restaurant you haven't eaten at in the last week and has 4.5 or above stars
-- not working..
select restaurant_name
  from restaurant
    where (visit_date - 7) > 0 AND  stars >= 4.5;

-- list restaurants by the closest distance
select restaurant_name
  from restaurant
    order by distance ASC;

-- list top 2 restaurants by distance

-- list top 2 restaurants by stars

-- list top 2 restaurants by stars where the distance is less than 2 miles

-- count the number of restaurants in the db

-- count the number of restaurants by category

-- get the average stars per restaurant by category

-- get the max stars of a restaurant by category