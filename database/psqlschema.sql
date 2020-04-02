DROP DATABASE IF EXISTS abode;

CREATE DATABASE abode;

\c abode;

CREATE TABLE neighborhoods (
    hood_id SERIAL PRIMARY KEY,
    hood_name VARCHAR (20) NOT NULL UNIQUE KEY,
    transit_score INT NOT NULL,
    walk_score INT NOT NULL,
    value_inc_dec_past INT NOT NULL,
    value_inc_dec_future INT NOT NULL,
    median_value INT NOT NULL
);

CREATE TABLE houses (
    house_id SERIAL PRIMARY KEY,
    hood_id VARCHAR (20) NOT NULL,
    home_cost INT NOT NULL,
    bedrooms INT NOT NULL,
    bathrooms INT NOT NULL,
    home_address VARCHAR (30) NOT NULL,
    sf INT NOT NULL,
    home_image VARCHAR (8) NOT NULL,
    heart_filled BOOLEAN DEFAULT false
    CONSTRAINT houses_neighborhood_fkey FOREIGN KEY (hood_id)
      REFERENCES neighborhoods (hood_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);