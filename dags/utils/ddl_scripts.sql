--Syntax: PostgreSql
-- Execute against Data Warehouse
-- {{params.schema}} would be passed at runtime
-- Drop Statements can be commented out if not needed.(but subsequent runs would fail on pkey constraints)

CREATE SCHEMA IF NOT EXISTS {{params.schema}};
DROP TABLE IF EXISTS {{params.schema}}.products CASCADE;
CREATE TABLE IF NOT EXISTS {{params.schema}}.products(
    id numeric, 
    title varchar, 
    price numeric, 
    description varchar,
    category varchar, 
    image varchar, 
    rating_rate decimal, 
    rating_count numeric,
    updated_at timestamp,
    _datafest_meetup_user varchar,
    uuid varchar primary key

);

DROP TABLE IF EXISTS {{params.schema}}.users CASCADE;
CREATE TABLE IF NOT EXISTS {{params.schema}}.users(
    id numeric, 
    email varchar, 
    username varchar,
    phone varchar,
    address_geolocation_lat numeric,
    address_geolocation_long numeric, 
    address_city varchar, 
    address_street varchar, 
    address_number numeric, 
    address_zipcode varchar, 
    firstname varchar, 
    lastname varchar,
    updated_at timestamp,
    _datafest_meetup_user varchar,
    uuid varchar primary key

);

DROP TABLE IF EXISTS {{params.schema}}.carts CASCADE;
CREATE TABLE IF NOT EXISTS {{params.schema}}.carts(
    cart_id numeric,
	id varchar,
    date date,
    user_id numeric,
    product_id numeric,
    quantity numeric,
    _datafest_meetup_user varchar,
    uuid varchar primary key

);