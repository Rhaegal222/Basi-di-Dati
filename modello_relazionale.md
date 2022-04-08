>**actor** *(__actor_id__, first_name, last_name)* 

>**country** *(<u>country_id</u>, country)*  

>**category** *(<u>category_id</u>, name)* 

>**special_features** *(<u>feature_id</u>, name)*  

>**language** *(<u>language_id</u>, name)* 

>**staff** *(<u>staff_id</u>, first_name, last_name, address_id*, picture, email, store_id*, active, username, password)* 
>>*con vincolo di integrità referenziale tra l’attributo store_id e la relazione store*

>**city** *(<u>city_id</u>, city, country_id*)*
>>*con vincolo di integrità referenziale tra l’attributo country_id e la relazione country*

>**address** *(<u>address_id</u>, address, address2, district, city_id*, postal_code, phone, location)*
>>*con vincolo di integrità referenziale tra l’attributo city_id e la relazione city*

>**store** *(<u>store_id</u>, manager_staff_id*, address_id*)*
>>*con vincolo di integrità referenziale tra l’attributo manager_staff_id e la relazione staff e tra l’attributo address_id e la relazione address* 

>**customer** *(<u>customer_id</u>, store_id*, first_name, last_name, email, address_id*, active, create_date)*
>>*con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo address_id e la relazione address* 

>**film** *(<u>film_id</u>, title, description, release_year, language_id*, original_language_id*, rental_duration, rental_rate, lenght, replacement_cost, rating)*
>>*con vincolo di integrità referenziale tra gli attributi language _id e original_language_id la relazione language*  

>**cd_film** *(<u>cd_film_id</u>, film_id*, store_id*)*
>>*con vincolo di integrità referenziale tra l’attributo store_id e la relazione store e tra l’attributo film_id e la relazione film*  

>**rental** *(<u>rental_id</u>, rental_date, cd_film_id*, customer_id*, return_date, staff_id*)*
>>*con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo cd_film_id e la relazione cd_film e tra l’attributo staff_id e la relazione staff* 

>**payment** *(<u>payment_id</u>, customer_id*, staff_id*, rental_id*, amount, payment_date)*
>>*con vincolo di integrità referenziale tra l’attributo customer_id e la relazione customer e tra l’attributo staff_id e la relazione staff e tra l’attributo rental_id e la relazione rental* 

>**film_actor** *(<u>actor_id*</u>,film_id*)* 
>>*con vincolo di integrità referenziale tra l’attributo actor_id e la relazione actor e tra l’attributo film_id e la relazione film* 

>**film_category** *(<u>film_id*</u>,category_id*)*
>>*con vincolo di integrità referenziale tra l’attributo category_id e la relazione category e tra l’attributo film_id e la relazione film*