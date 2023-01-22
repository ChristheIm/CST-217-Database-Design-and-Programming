
### Assignment 1: Model Relational Database
----
Constructing a model in a relational database using ERD allows students to understand and practice modeling concepts in relational databases.

Create an entity relation diagram (ERD) model (using correct connection symbols for relations) for a relational database based on the Crow's Foot notation using the following requirements:

1) An INVOICE is written by a SALESREP. <br>
2) A sales representative can write many invoices, but an invoice is written by a single sales representative.<br>
3) The INVOICE is written for a single CUSTOMER. However, each customer can have many invoices.<br>
4) An INVOICE can include many detail lines (LINE); each Line describes one product and the number of products, as well as total cost bought by the customer.<br>
5) The product information is stored in a PRODUCT entity.<br>
6) The product’s vendor information is found in a VENDOR entity. (You may assume each vendor can have many products and a product can be obtained from many vendors.)
----
1) An INVOICE is written by a SALESREP. <br>
2) A sales representative can write many invoices, but an invoice is written by a single sales representative.<br>
<p align="center">
  <img width="693" alt="Screenshot 2023-01-21 at 9 27 26 PM" src="https://user-images.githubusercontent.com/44085574/213900635-a95ab589-3df0-457c-8c87-8467700d7c38.png">
</p>

INVOICE entity and SALESREP entity have one to many with week relationship. Since second statement says "can write many invoices", I made the Invoice table as not mandatory for SALESREP. Meaning, Sales representative can have no invoice written as well. The arrow is pointing from SALESREP entity to INVOICE and this represents SALESREP is an entity for "One" and INVOICE entity is for "Many". This satisfies "A sales representative can write many invoices, but an invoice is written by a single sales representative"

<br>
3) The INVOICE is written for a single CUSTOMER. However, each customer can have many invoices.<br>
<p align="center">
  <img width="320" alt="Screenshot 2023-01-21 at 9 36 17 PM" src="https://user-images.githubusercontent.com/44085574/213900857-93ef4271-bf64-41ea-8dc8-26a23ed3915a.png">
</p>

Almost same logic with the first and second statement, it is a one to many with weak relationship. Since the third statement says "INVOICE is written for a single customer, however, each customer can have many invoices", I constructed with open circle on the invoice that represents "customer can write no invoice or many invoice". The arrow is pointing from CUSTOMER entity to INVOICE entity, this represents CUSTOMER to INVOICE is one to many and INVOICE to CUSTOMER is many to one (each invoice is written by customer).

<br>
4) An INVOICE can include many detail lines (LINE); each Line describes one product and the number of products, as well as total cost bought by the customer.<br>
<p align="center">
  <img width="295" alt="Screenshot 2023-01-21 at 9 41 06 PM" src="https://user-images.githubusercontent.com/44085574/213900978-a4bec32f-39f8-46a7-8f99-7bf778ebed03.png">
</p>

INVOICE and LINE entities are having one-to-many with strong relationship. If there is no INVOICE_ID, then LINE cannot be exist. The primary key inside the LINE entity includes INVOICE_ID as a primary key as well. The red arrow represents this relationship is strong. 

<br>
5) The product information is stored in a PRODUCT entity.<br>
6) The product’s vendor information is found in a VENDOR entity. (You may assume each vendor can have many products and a product can be obtained from many vendors.)

<p align="center">
  <img width="248" alt="Screenshot 2023-01-21 at 9 44 51 PM" src="https://user-images.githubusercontent.com/44085574/213901073-01dbbaeb-da6b-441f-921f-11d89c27c95e.png">
</p>

PRODUCT and VENDOR entities are many-to-many with strong relationship. Since it is a many-to-many relationship, I added composite entity to have fluent flow for database. PRODUCT_ORDER composite entity represents the connection between VENDOR and PRODUCTS, if vendor sends the products order, then PRODUCT_ORDER records the order and PRODUCT entity can order a products from vendors. 
  
  
----
## Final Model
<p align="center">
  <img width="771" alt="Screenshot 2023-01-21 at 9 21 45 PM" src="https://user-images.githubusercontent.com/44085574/213900481-d58fd121-1f1b-437e-a67b-0e769b43cac9.png">
</p>

* solid blue shape represents those columns (attributes) cannot be null.
* red solid exclamation point represents the key is being used as primary.
* red-filled diamond shape represents foreign key
* empty diamond shape represents those columns can be null
* yellow exclamation mark represents the primary key for the table
