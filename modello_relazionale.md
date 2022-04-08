<ul>
    <li>actor(actor_id, first_name, last_name) 
    <li>country(country_id, country)  
    <li>category(category_id, name) 
    <li>special_features(feature_id, name)  
    <li>language(language_id, name) 
    <li>staff(staff_id, first_name, last_name, address_id*, picture, email, store_id*, active, username, password) con vincolo di integrità referenziale tra l’attributo store_id e la relazione store 
    <li>city(city_id, city, country_id*) con vincolo di integrità referenziale tra l’attributo country_id e la relazione country 
    <li>address(address_id, address, address2, district, city_id*, postal_code, phone, location) con vincolo di integrità referenziale tra l’attributo city_id e la relazione city  
    <li>store(store_id, manager_staff_id*, address_id*) con vincolo di integrità referenziale tra l’attributo manager_staff_id e la relazione staff e tra l’attributo address_id e la relazione address 
    <li>customer(customer_id, store_id*, first_name, last_name, email, address_id*, active, create_date) con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo address_id e la relazione address 
    <li>film(film_id, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating) con vincolo di integrità referenziale tra gli attributi language _id e original_language_id la relazione language  
    <li>cd_film(cd_film_id, film_id*, store_id*) con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo film_id e la relazione film  
    <li>rental(rental_id, rental_date, cd_film_id*, customer_id*, return_date, staff_id*) con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo cd_film_id e la relazione cd_film e tra l’attributo staff_id e la relazione staff 
    <li>payment(payment_id, customer_id*, staff_id*, rental_id*, amount, payment_date) con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo staff_id e la relazione staff e tra l’attributo rental_id e la relazione rental 
    <li>film_actor (actor_id*,film_id*) con vincolo di integrità referenziale tra l’attributo actor_id e la relazione actor e tra l’attributo film_id e la relazione film 
    <li>film_category (film_id*,category_id*) con vincolo di integrità referenziale tra l’attributo category_id e la relazione category e tra l’attributo film_id e la relazione film
</ul>