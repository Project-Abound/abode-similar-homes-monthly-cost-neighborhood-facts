CREATE DATABASE neighborhood_component;

CREATE TABLE neighborhoods(
  hood_id SERIAL PRIMARY KEY,
  hood_name VARCHAR (20) NOT NULL UNIQUE,
  transit_score INTEGER NOT NULL,
  walk_score INTEGER NOT NULL,
  value_inc_dec_past INTEGER NOT NULL,
  value_inc_dec_future INTEGER NOT NULL,
  median_value INTEGER NOT NULL
);
 
CREATE TABLE houses(
  house_id SERIAL PRIMARY KEY,
  hood_id INTEGER REFERENCES neighborhoods(hood_id) ON UPDATE CASCADE ON DELETE CASCADE,
  home_cost INTEGER NOT NULL,
  bedrooms INTEGER NOT NULL,
  bathrooms INTEGER NOT NULL,
  street_address VARCHAR (30) NOT NULL,
  city VARCHAR(25),
  us_state VARCHAR(13),
  zipcode INTEGER,
  squarefeet INTEGER,
  home_image VARCHAR (8)
);

CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(15)
);

CREATE TABLE user_houses(
  user_id INTEGER REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
  house_id INTEGER REFERENCES houses(house_id) ON UPDATE CASCADE ON DELETE CASCADE
);