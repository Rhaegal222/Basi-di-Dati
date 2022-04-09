create database lab02;
use lab02;
create table    actor(actor_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50));
create table    country(country_id INT PRIMARY KEY, country VARCHAR(50));
create table    special_features(feature_id INT PRIMARY KEY, name VARCHAR(50)); 
create table    city(city_id INT PRIMARY KEY, city VARCHAR(50), country_id INT UNIQUE,
                FOREIGN KEY(country_id) REFERENCES country(country_id));
create table    address(address_id INT PRIMARY KEY, address VARCHAR(50), address2 VARCHAR(50), district VARCHAR(50), city_id INT UNIQUE, postal_code VARCHAR(50), phone VARCHAR(50), location VARCHAR(50),
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    category(category_id INT PRIMARY KEY, name VARCHAR(50));
create table    store(store_id INT PRIMARY KEY, manager_staff_id INT, address_id INT,
                FOREIGN KEY(address_id) REFERENCES address(address_id));
create table    language(language_id INT PRIMARY KEY, name VARCHAR(50));
create table    film(film_id INT PRIMARY KEY, title VARCHAR(50), description VARCHAR(150), release_year DATETIME, language_id INT UNIQUE, original_language_id INT UNIQUE, rental_duration VARCHAR(50), rental_rate VARCHAR(50), lenght VARCHAR(50), replacement_cost VARCHAR(50), rating VARCHAR(50),
                FOREIGN KEY(language_id) REFERENCES language(language_id),
                FOREIGN KEY(original_language_id) REFERENCES language(language_id));
create table    cd_film(cd_film_id INT PRIMARY KEY, film_id INT UNIQUE, store_id INT UNIQUE,
                FOREIGN KEY(store_id) REFERENCES store(store_id),
                FOREIGN KEY(film_id) REFERENCES film(film_id));
create table    customer(customer_id INT PRIMARY KEY, store_id INT UNIQUE, first_name VARCHAR(50), last_name VARCHAR(50), email VARCHAR(50), address_id INT UNIQUE, active VARCHAR(50), create_date DATETIME,
                FOREIGN KEY(store_id) REFERENCES store(store_id),
                FOREIGN KEY(address_id) REFERENCES address(address_id));
create table    film_actor(actor_id INT PRIMARY KEY, film_id INT UNIQUE,
                FOREIGN KEY(actor_id) REFERENCES actor(actor_id),
                FOREIGN KEY(film_id) REFERENCES film(film_id));
create table    film_category(film_id INT UNIQUE, category_id INT PRIMARY KEY,
                FOREIGN KEY(category_id) REFERENCES category(category_id),
                FOREIGN KEY(film_id) REFERENCES film(film_id));
create table    staff(staff_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), address_id INT UNIQUE, picture BLOB not NULL , email VARCHAR(50), store_id INT, active VARCHAR(50), username VARCHAR(50), password VARCHAR(50), 
                FOREIGN KEY(store_id) REFERENCES store(store_id));     
create table    rental(rental_id INT PRIMARY KEY, rental_date DATETIME, cd_film_id INT UNIQUE, customer_id INT UNIQUE, return_date DATETIME, staff_id INT UNIQUE,
                FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
                FOREIGN KEY(cd_film_id) REFERENCES cd_film(cd_film_id),
                FOREIGN KEY(staff_id) REFERENCES staff(staff_id));
create table    payment(payment_id INT PRIMARY KEY, customer_id INT UNIQUE, staff_id INT UNIQUE, rental_id INT UNIQUE, amount INT, payment_date DATETIME,
                FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
                FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
                FOREIGN KEY(rental_id) REFERENCES rental(rental_id));