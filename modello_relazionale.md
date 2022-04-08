<ul>
    <li><h1>actor</h1>(actor_id, first_name, last_name)
    <li><h1>country</h1>(country_id, country)  
    <li><h1>category</h1>(category_id, name) 
    <li><h1>special_features</h1>(feature_id, name)  
    <li><h1>language</h1>(language_id, name) 
    <li><h1>staff</h1>(staff_id, first_name, last_name, address_id*, picture, email, store_id*, active, username, password)
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store 
    <li><h1>city</h1>(city_id, city, country_id*)
        <p>con vincolo di integrità referenziale tra l’attributo country_id e la relazione country 
    <li><h1>address</h1>(address_id, address, address2, district, city_id*, postal_code, phone, location)
        <p>con vincolo di integrità referenziale tra l’attributo city_id e la relazione city  
    <li><h1>store</h1>(store_id, manager_staff_id*, address_id*)
        <p>con vincolo di integrità referenziale tra l’attributo manager_staff_id e la relazione staff e tra l’attributo address_id e la relazione address 
    <li><h1>customer</h1>(customer_id, store_id*, first_name, last_name, email, address_id*, active, create_date)
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo address_id e la relazione address 
    <li><h1>film</h1>(film_id, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating)
        <p>con vincolo di integrità referenziale tra gli attributi language _id e original_language_id la relazione language  
    <li><h1>cd_film</h1>(cd_film_id, film_id*, store_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo film_id e la relazione film  
    <li><h1>rental</h1>(rental_id, rental_date, cd_film_id*, customer_id*, return_date, staff_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo cd_film_id e la relazione cd_film e tra l’attributo staff_id e la relazione staff 
    <li><h1>payment</h1>(payment_id, customer_id*, staff_id*, rental_id*, amount, payment_date) 
        <p>con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo staff_id e la relazione staff e tra l’attributo rental_id e la relazione rental 
    <li><h1>film_actor</h1>(actor_id*,film_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo actor_id e la relazione actor e tra l’attributo film_id e la relazione film 
    <li><h1>film_category</h1>(film_id*,category_id*) 
        <p>con vincolo di integrità referenziale tra l’attributo category_id e la relazione category e tra l’attributo film_id e la relazione film
</ul>