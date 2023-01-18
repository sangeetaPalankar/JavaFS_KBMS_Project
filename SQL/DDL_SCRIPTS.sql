/*  
	Author Sangeeta Palankar
    date 28/12/2022
    Database Creation
*/
DROP DATABASE KBMS_PROJECT;

CREATE DATABASE KBMS_PROJECT;
USE KBMS_PROJECT;

CREATE TABLE Customer(
Customer_name varchar(50), 
email VARCHAR(50), 
phone VARCHAR(20),
address TEXT, 
date_of_birth varchar(30), 
age INT,
password varchar(15),
identity_proof varchar(25),
preferred_login_id varchar(50),
constraint primary key (preferred_login_id)
);

CREATE TABLE PRODUCT
(
	PRODUCT_ID INT auto_increment PRIMARY KEY ,
   PRODUCT_NAME TEXT NOT NULL,
   PRODUCT_COUNT INT,
   TOTAL_STOCK INT NOT NULL,
   BEST_BEFORE DATE,
   PRICE_PER_UNIT DOUBLE NOT NULL, 
	TYPE_OF_PRODUCT TEXT NOT NULL
) auto_increment=10001;
DROP TABLE ORDER_DETAILS;
CREATE TABLE ORDER_DETAILS
(
   ORDER_ID INT PRIMARY KEY DEFAULT(0),
   preferred_login_id VARCHAR(50) ,
   PRODUCT_ID INT ,
   QUANTITY TINYINT NOT NULL,
   TOTAL_PRICE DOUBLE NOT NULL,
   ORDER_DATE DATE,
   STATUS VARCHAR(10),
   CANCELLATION_ID VARCHAR(10) DEFAULT(0),
   CANCELLATION_DATE DATE,
   CANCELLATION_REASON TEXT,
   FOREIGN KEY(preferred_login_id) REFERENCES Customer(preferred_login_id),
   FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
)auto_increment=10001;

    
    