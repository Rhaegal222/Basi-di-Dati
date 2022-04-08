create table    actor(actor_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50));
create table    country(country_id INT PRIMARY KEY, country VARCHAR(50));  
create table    category(category_id INT PRIMARY KEY, name VARCHAR(50)); 
create table    special_features(feature_id INT PRIMARY KEY, name VARCHAR(50)); 
create table    language(language_id INT PRIMARY KEY, name VARCHAR(50)); 
create table    staff(staff_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), address_id VARCHAR(50), picture BLOB not NULL , email VARCHAR(50), store_id INT, active VARCHAR(50), username VARCHAR(50), password VARCHAR(50), 
                FOREIGN KEY(store_id) REFERENCES store(store_id));
create table    city(city_id INT PRIMARY KEY, city VARCHAR(50), country_id INT,
                FOREIGN KEY(country_id) REFERENCES country(country_id));
create table    address(address_id INT PRIMARY KEY, address VARCHAR(50), address2 VARCHAR(50), district VARCHAR(50), city_id INT, postal_code VARCHAR(50), phone VARCHAR(50), location VARCHAR(50),
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    store(store_id INT PRIMARY KEY, manager_staff_id INT, address_id INT,
                FOREIGN KEY(maneger_staff_id) REFERENCES staff(maneger_staff_id)
                FOREIGN KEY(address_id) REFERENCES address(address_id));
create table    customer(customer_id INT PRIMARY KEY, store_id*, first_name, last_name, email, address_id*, active, create_date,
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    film(film_id INT PRIMARY KEY, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating,
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    cd_film(cd_film_id INT PRIMARY KEY, film_id*, store_id*,
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    rental(rental_id INT PRIMARY KEY, rental_date, cd_film_id*, customer_id*, return_date, staff_id*,
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    payment(payment_id INT PRIMARY KEY, customer_id*, staff_id*, rental_id*, amount, payment_date,
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table    film_actor (actor_id*,film_id*),
                FOREIGN KEY(city_id) REFERENCES city(city_id));
create table film_category (film_id*,category_id*),
                FOREIGN KEY(city_id) REFERENCES city(city_id));