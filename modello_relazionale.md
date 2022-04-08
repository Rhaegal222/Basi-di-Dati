<ul>
    <li><h3>actor</h3>(actor_id, first_name, last_name)
    <li><h3>country</h3>(country_id, country)  
    <li><h3>category</h3>(category_id, name) 
    <li><h3>special_features</h3>(feature_id, name)  
    <li><h3>language</h3>(language_id, name) 
    <li><h3>staff</h3>(staff_id, first_name, last_name, address_id*, picture, email, store_id*, active, username, password)
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store 
    <li><h3>city</h3>(city_id, city, country_id*)
        <p>con vincolo di integrità referenziale tra l’attributo country_id e la relazione country 
    <li><h3>address</h3>(address_id, address, address2, district, city_id*, postal_code, phone, location)
        <p>con vincolo di integrità referenziale tra l’attributo city_id e la relazione city  
    <li><h3>store</h3>(store_id, manager_staff_id*, address_id*)
        <p>con vincolo di integrità referenziale tra l’attributo manager_staff_id e la relazione staff e tra l’attributo address_id e la relazione address 
    <li><h3>customer</h3>(customer_id, store_id*, first_name, last_name, email, address_id*, active, create_date)
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo address_id e la relazione address 
    <li><h3>film</h3>(film_id, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating)
        <p>con vincolo di integrità referenziale tra gli attributi language _id e original_language_id la relazione language  
    <li><h3>cd_film</h3>(cd_film_id, film_id*, store_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo film_id e la relazione film  
    <li><h3>rental</h3>(rental_id, rental_date, cd_film_id*, customer_id*, return_date, staff_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo cd_film_id e la relazione cd_film e tra l’attributo staff_id e la relazione staff 
    <li><h3>payment</h3>(payment_id, customer_id*, staff_id*, rental_id*, amount, payment_date) 
        <p>con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo staff_id e la relazione staff e tra l’attributo rental_id e la relazione rental 
    <li><h3>film_actor</h3>(actor_id*,film_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo actor_id e la relazione actor e tra l’attributo film_id e la relazione film 
    <li><h3>film_category</h3>(film_id*,category_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo category_id e la relazione category e tra l’attributo film_id e la relazione film
</ul>