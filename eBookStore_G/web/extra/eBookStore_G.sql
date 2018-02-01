Create table EBOOKS(
 ISBN varchar(50) primary key,
 TITLE varchar(50),
 BOOK_TYPE_ID  integer NOT NULL,
 PAGES integer,
 GENRE_ID integer NOT NULL,
 PRICE integer NOT NULL,
 STOCK integer,
 LAST_SUPPLY_DATE date
);

Create table BOOK_TYPES(
 TYPE_ID integer primary key GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1),
 BOOK_TYPE varchar(25) 
);

Create table BOOK_GENRES(
 GENRE_ID integer primary key GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1),
 GENRE varchar(25) 
);

Create table EBOOKS_AUTHORS(
 ID INTEGER primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
 ISBN varchar(50) NOT NULL,
 CNP  varchar(13) NOT NULL
);

 Create table BOOK_AUTHORS(
 CNP varchar(13) primary key ,
 FIRST_NAME varchar(50),
 LAST_NAME  varchar(50)
);

Create table EBOOKS_RATINGS_USERS(
 ID INTEGER primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
 RATING_ID integer NOT NULL,
 ISBN  varchar(50) NOT NULL,
 CNP varchar(13) NOT NULL
);

Create table RATING(
 RATING_ID integer primary key ,
 RATING varchar(5)
);

Create table USERS(
 CNP varchar(13) primary key ,
 NAME varchar(50),
 PASSWORD  varchar(50),
 ROLE  varchar(20)
);

Create table ORDERS(
ID_ORDER INTEGER primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
CNP varchar(13) NOT NULL,
ADRESS varchar(100),
STATUS varchar(50),
ORDER_DATE_DAY date
);


Create table ORDERS_PRODUCTS(
ID integer primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
ID_ORDER integer NOT NULL,
ISBN varchar(50) NOT NULL
);

Create table DELIVERY_PRODUCTS(
ID integer primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
ID_DELIVERY integer NOT NULL,
ISBN varchar(50) NOT NULL
);

Create table DELIVERY(
ID_DELIVERY integer primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
ID_ORDER integer NOT NULL,
DELIVERY_DATE_DAY date,
PAY_STATUS varchar(50),
INVOICE_NR integer
);

Insert into BOOK_GENRES (GENRE) 
	values ('Comedy');
Insert into BOOK_GENRES (GENRE) 
	values ('Drama');
Insert into BOOK_GENRES (GENRE) 
	values ('Horror fiction');
Insert into BOOK_GENRES (GENRE) 
	values ('Literary realism');
Insert into BOOK_GENRES (GENRE) 
	values ('Romance');
Insert into BOOK_GENRES (GENRE) 
	values ('Satire');
Insert into BOOK_GENRES (GENRE) 
	values ('Tragedy');
Insert into BOOK_GENRES (GENRE) 
	values ('Tragicomedy');	
Insert into BOOK_GENRES (GENRE) 
	values ('Fantasy');
Insert into BOOK_GENRES (GENRE) 
	values ('Mythology');
Insert into BOOK_GENRES (GENRE) 
	values ('Adventure');

Insert into BOOK_TYPES (BOOK_TYPE) 
	values ('i-Book');
Insert into BOOK_TYPES (BOOK_TYPE) 
	values ('e-Book');
Insert into BOOK_TYPES (BOOK_TYPE) 
	values ('Pdf');
Insert into BOOK_TYPES (BOOK_TYPE) 
	values ('Book');

Insert into RATING (RATING_ID,RATING) 
	values (1,'*');
Insert into RATING (RATING_ID,RATING) 
	values (2,'**');
Insert into RATING (RATING_ID,RATING) 
	values (3,'***');
Insert into RATING (RATING_ID,RATING) 
	values (4,'****');
Insert into RATING (RATING_ID,RATING) 
	values (5,'*****');

Insert into USERS (CNP,NAME,PASSWORD,ROLE) 
	values ('1800606144256','Dragos','3122','admin');
Insert into USERS (CNP,NAME,PASSWORD,ROLE) 
	values ('1700505394471','Gheorghe','1234','user');





	
