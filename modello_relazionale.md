>**actor** *(<ins>actor_id</ins>, first_name, last_name)* 

>**country** *(<ins>country_id</ins>, country)*  

>**category** *(<ins>category_id</ins>, name)* 

>**special_features** *(<ins>feature_id</ins>, name)*  

>**language** *(<ins>language_id</ins>, name)* 

>**staff** *(<ins>staff_id</ins>, first_name, last_name, address_id*, picture, email, store_id*, active, username, password)* 
>>*con vincolo di integrità referenziale tra l’attributo store_id e la relazione store*

>**city** *(<ins>city_id</ins>, city, country_id*)*
>>*con vincolo di integrità referenziale tra l’attributo country_id e la relazione country*

>**address** *(<ins>address_id</ins>, address, address2, district, city_id*, postal_code, phone, location)*
>>*con vincolo di integrità referenziale tra l’attributo city_id e la relazione city*

>**store** *(<ins>store_id</ins>, manager_staff_id*, address_id*)*
>>*con vincolo di integrità referenziale tra l’attributo manager_staff_id e la relazione staff e tra l’attributo address_id e la relazione address* 

>**customer** *(<ins>customer_id</ins>, store_id*, first_name, last_name, email, address_id*, active, create_date)*
>>*con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo address_id e la relazione address* 

>**film** *(<ins>film_id</ins>, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating)*
>>*con vincolo di integrità referenziale tra gli attributi language _id e original_language_id la relazione language*  

>**cd_film** *(<ins>cd_film_id</ins>, film_id*, store_id*)*
>>*con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo film_id e la relazione film*  

>**rental** *(<ins>rental_id</ins>, rental_date, cd_film_id*, customer_id*, return_date, staff_id*)*
>>*con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo cd_film_id e la relazione cd_film e tra l’attributo staff_id e la relazione staff* 

>**payment** *(<ins>payment_id</ins>, customer_id*, staff_id*, rental_id*, amount, payment_date)*
>>*con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo staff_id e la relazione staff e tra l’attributo rental_id e la relazione rental* 

>**film_actor** *(<ins>actor_id*</ins>,film_id*)* 
>>*con vincolo di integrità referenziale tra l’attributo actor_id e la relazione actor e tra l’attributo film_id e la relazione film* 

>**film_category** *(<ins>film_id*</ins>,category_id*)*
>>*con vincolo di integrità referenziale tra l’attributo category_id e la relazione category e tra l’attributo film_id e la relazione film*