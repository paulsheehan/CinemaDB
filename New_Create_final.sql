/*this is the create sql for the Cinema System Case Study
Paul Sheehan and James Prendergast */

/*this drops any table already created*/
DROP TABLE Film CASCADE CONSTRAINTS PURGE;

DROP TABLE Reviewer CASCADE CONSTRAINTS PURGE;

DROP TABLE Cinema_Screen CASCADE CONSTRAINTS PURGE;

DROP TABLE Cinema CASCADE CONSTRAINTS PURGE;

DROP TABLE Ticket CASCADE CONSTRAINTS PURGE;

DROP TABLE Payment CASCADE CONSTRAINTS PURGE;

DROP TABLE Cinema_Manager CASCADE CONSTRAINTS PURGE;

DROP TABLE Staff CASCADE CONSTRAINTS PURGE;

DROP TABLE Customer CASCADE CONSTRAINTS PURGE;

/*this creates the table customer which has one primary key*/


CREATE TABLE Customer
( 
	customer_id          integer  NOT NULL ,
	customer_name        varchar(20)  NULL ,
	customer_no          varchar(20)  NULL ,
	customer_address     varchar(20)  NULL ,
	customer_city        varchar(20)  NULL ,
	customer_age         integer  NULL ,
	CONSTRAINT XPKCustomer PRIMARY KEY  (customer_id)
);

CREATE TABLE Cinema_Manager
( 
	manager_id           integer  NOT NULL ,
	manager_name         varchar(20)  NULL ,
	CONSTRAINT XPKManager PRIMARY KEY (manager_id)
);

CREATE TABLE Staff
( 
	staff_id             integer  NOT NULL ,
	staff_name           varchar(20)  NULL ,
	manager_id           integer  NULL ,
	CONSTRAINT XPKStaff PRIMARY KEY   (staff_id),
	CONSTRAINT R_46 FOREIGN KEY (manager_id) REFERENCES Cinema_Manager(manager_id)
);


CREATE TABLE Payment
( 
	customer_id          integer  NOT NULL ,
	payment_type         varchar(20)  NULL ,
	payment_online       varchar(20)  NULL ,
	payment_id           integer  NOT NULL ,
	staff_id             integer  NULL ,
	CONSTRAINT XPKPayment PRIMARY KEY (customer_id,payment_id),
	CONSTRAINT R_32 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
CONSTRAINT R_33 FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
CONSTRAINT R_39 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Reviewer
( 
	reviewer_id          integer  NOT NULL ,
	reviewer_priority_rating varchar(20)  NULL ,
	reviewer_film_availibility varchar(20)  NULL ,
	reviewer_film_period   date  NULL ,
	CONSTRAINT XPKReviewer PRIMARY KEY (reviewer_id)
);

CREATE TABLE Cinema
( 
	cinema_id            integer  NOT NULL ,
	branch_name          varchar(20)  NULL ,
	address              varchar(20)  NULL ,
	phone_number         varchar(20)  NULL ,
	CONSTRAINT XPKCinema PRIMARY KEY (cinema_id)
);

CREATE TABLE Cinema_Screen
( 
	screen_id            integer  NOT NULL ,
	screen_capacity      integer  NULL ,
	standard_seats       integer  NULL ,
	premium_seats        integer  NULL ,
	cinema_id            integer  NULL ,
	CONSTRAINT XPKCinema2 PRIMARY KEY (screen_id),
	CONSTRAINT R_41 FOREIGN KEY (cinema_id) REFERENCES Cinema(cinema_id)
);

CREATE TABLE Film
( 
	film_id              integer  NOT NULL ,
	film_name            varchar(20)  NULL ,
	film_rating          varchar(20)  NULL ,
	film_duration         varchar(20)  NULL ,
	start_time            varchar(20)  NULL ,
	film_date             varchar(20)  NULL ,
	reviewer_id          integer  NULL ,
	screen_id            integer  NULL ,
	CONSTRAINT XPKFilm PRIMARY KEY (film_id),
	CONSTRAINT R_37 FOREIGN KEY (reviewer_id) REFERENCES Reviewer(reviewer_id),
CONSTRAINT R_42 FOREIGN KEY (screen_id) REFERENCES Cinema_Screen(screen_id)
);

CREATE TABLE Ticket
( 
	ticket_id            integer  NOT NULL ,
	ticket_type          varchar(20)  NULL ,
	price                varchar(20)  NULL ,
	customer_id          integer  NOT NULL ,
	seat_number          varchar(20)  NULL ,
	payment_id           integer  NOT NULL ,
	film_id              integer  NOT NULL ,
	CONSTRAINT XPKTickets PRIMARY KEY (customer_id,ticket_id,payment_id,film_id),
	CONSTRAINT R_23 FOREIGN KEY (customer_id,payment_id) REFERENCES Payment(customer_id,payment_id),
CONSTRAINT R_44 FOREIGN KEY (film_id) REFERENCES Film(film_id),
CONSTRAINT R_45 FOREIGN KEY (customer_id,payment_id) REFERENCES Payment(customer_id,payment_id)
);