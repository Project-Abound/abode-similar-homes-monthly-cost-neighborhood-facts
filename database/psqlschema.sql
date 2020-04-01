DROP DATABASE IF EXISTS abode;

CREATE DATABASE abode;

\c abode;

CREATE TABLE neighborhoods (
    id SERIAL PRIMARY KEY,
    neighborhood VARCHAR (20) NOT NULL UNIQUE KEY,
    transit_score INT NOT NULL,
    walk_score INT NOT NULL,
    value_inc_dec_past INT NOT NULL,
    value_inc_dec_future INT NOT NULL,
    median_value INT NOT NULL
);

CREATE TABLE houses (
    id SERIAL PRIMARY KEY,
    neighborhood VARCHAR (20) NOT NULL,
    home_cost INT NOT NULL,
    bedrooms INT NOT NULL,
    bathrooms INT NOT NULL,
    home_address VARCHAR (30) NOT NULL,
    sf INT NOT NULL,
    home_image VARCHAR (7) NOT NULL,
    heart_filled BOOLEAN DEFAULT false
);