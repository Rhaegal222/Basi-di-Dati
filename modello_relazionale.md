<ul>
    <li><b>actor</b>(actor_id, first_name, last_name)
    <li><b>country</b>(country_id, country)  
    <li><b>category</b>(category_id, name) 
    <li><b>special_features</b>(feature_id, name)  
    <li><b>language</b>(language_id, name) 
    <li><b>staff</b>(staff_id, first_name, last_name, address_id*, picture, email, store_id*, active, username, password)
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store 
    <li><b>city</b>(city_id, city, country_id*)
        <p>con vincolo di integrità referenziale tra l’attributo country_id e la relazione country 
    <li><b>address</b>(address_id, address, address2, district, city_id*, postal_code, phone, location)
        <p>con vincolo di integrità referenziale tra l’attributo city_id e la relazione city  
    <li><b>store</b>(store_id, manager_staff_id*, address_id*)
        <p>con vincolo di integrità referenziale tra l’attributo manager_staff_id e la relazione staff e tra l’attributo address_id e la relazione address 
    <li><b>customer</b>(customer_id, store_id*, first_name, last_name, email, address_id*, active, create_date)
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo address_id e la relazione address 
    <li><b>film</b>(film_id, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating)
        <p>con vincolo di integrità referenziale tra gli attributi language _id e original_language_id la relazione language  
    <li><b>cd_film</b>(cd_film_id, film_id*, store_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo film_id e la relazione film  
    <li><b>rental</b>(rental_id, rental_date, cd_film_id*, customer_id*, return_date, staff_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo cd_film_id e la relazione cd_film e tra l’attributo staff_id e la relazione staff 
    <li><b>payment</b>(payment_id, customer_id*, staff_id*, rental_id*, amount, payment_date) 
        <p>con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo staff_id e la relazione staff e tra l’attributo rental_id e la relazione rental 
    <li><b>film_actor</b>(actor_id*,film_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo actor_id e la relazione actor e tra l’attributo film_id e la relazione film 
    <li><b>film_category</b>(film_id*,category_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo category_id e la relazione category e tra l’attributo film_id e la relazione film
</ul>