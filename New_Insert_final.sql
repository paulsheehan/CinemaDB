/*this is the insert sql for the Cinema System Case Study
Paul Sheehan and James Prendergast */

/*(1). the cinema insert table */
INSERT INTO cinema (cinema_id,branch_name,address,phone_number) values
(1,'Dublin', '71 Parnell Street', '0876991234');

INSERT INTO cinema (cinema_id,branch_name,address,phone_number) values
(2,'London', '21 Oxford Street', '0789981237');

INSERT INTO cinema (cinema_id,branch_name,address,phone_number) values
(3,'Glasgow', '32 Nayhaven Lane', '0743561231');

INSERT INTO cinema (cinema_id,branch_name,address,phone_number) values
(4,'Manchester', 'Salford Quays', '0742702697');

INSERT INTO cinema (cinema_id,branch_name,address,phone_number) values
(5,'Cork', '18 Bishopstown', '0872781144');

/*(2). the cinema_manager insert table */
INSERT INTO cinema_manager (manager_id,manager_name) values
(1001010,'Michael Johnson');

INSERT INTO cinema_manager (manager_id,manager_name) values
(1001011,'Leslie Marsh');

INSERT INTO cinema_manager (manager_id,manager_name) values
(1001012,'Jessica Fox');

INSERT INTO cinema_manager (manager_id,manager_name) values
(1001013,'Marin Leary');

INSERT INTO cinema_manager (manager_id,manager_name) values
(1001014,'Karren McNulty');


/*(3). the staff insert table */
INSERT INTO staff (staff_id,staff_name,manager_id) values
(10010,'John Doyle',1001014);

INSERT INTO staff (staff_id,staff_name,manager_id) values
(10011,'Mary Lopex',1001010);

INSERT INTO staff (staff_id,staff_name,manager_id) values
(10012,'Kevin Kiernan',1001011);

INSERT INTO staff (staff_id,staff_name,manager_id) values
(10013,'Graham Phillips',1001010);

INSERT INTO staff (staff_id,staff_name,manager_id) values
(10014,'Kevin Fitzerald',1001012);


/*(4). the customer insert table */
INSERT INTO customer (customer_id,customer_name,customer_no,customer_address,customer_city,customer_age) values
(235114,'Elizabeth Kyle',0879812341, '23 johnson Lane','London', 24);

INSERT INTO customer (customer_id,customer_name,customer_no,customer_address,customer_city,customer_age) values
(235115,'James Doyle',0879811234, '42 Coolock Street','Dublin', 16);

INSERT INTO customer (customer_id,customer_name,customer_no,customer_address,customer_city,customer_age) values
(235116,'Susan Murphy',0846591002, '32 Collins Avenue','Liverpool', 18);

INSERT INTO customer (customer_id,customer_name,customer_no,customer_address,customer_city,customer_age) values
(235117,'Michael Hartl',0833379892, '42 Boxcross Area','Cork', 19);

INSERT INTO customer (customer_id,customer_name,customer_no,customer_address,customer_city,customer_age) values
(235118,'Cillian Reed',0852279898, '12 Penny Lane', 'Glasgow', 48);

/*(5). the payment insert table */
INSERT INTO payment (customer_id,payment_id,payment_type,payment_online,staff_id) values
(235114,9001,'credit card','No',10014);

INSERT INTO payment (customer_id,payment_id,payment_type,payment_online,staff_id) values
(235115,9002,'cash','Yes',10011);

INSERT INTO payment (customer_id,payment_id,payment_type,payment_online,staff_id) values
(235116,9003,'credit card','No',10014);

INSERT INTO payment (customer_id,payment_id,payment_type,payment_online,staff_id) values
(235117,9004,'cash','No',10010);

INSERT INTO payment (customer_id,payment_id,payment_type,payment_online,staff_id) values
(235118,9005,'credit card','Yes',10012);

/*(6). the reviewer insert table */
INSERT INTO reviewer (reviewer_id,reviewer_priority_rating,reviewer_film_availibility,reviewer_film_period) values
(150030,'Important', 'one week', '12/oct/15');

INSERT INTO reviewer (reviewer_id,reviewer_priority_rating,reviewer_film_availibility,reviewer_film_period) values
(150031,'Not Important', 'three weeks', '22/oct/15');

INSERT INTO reviewer (reviewer_id,reviewer_priority_rating,reviewer_film_availibility,reviewer_film_period) values
(150032,'Not Important', 'two weeks', '17/sep/15');

INSERT INTO reviewer (reviewer_id,reviewer_priority_rating,reviewer_film_availibility,reviewer_film_period) values
(150033,'Important', 'two weeks', '12/sep/15');

INSERT INTO reviewer (reviewer_id,reviewer_priority_rating,reviewer_film_availibility,reviewer_film_period) values
(150034,'Not Important', 'one weeks', '18/dec/15');

/*(7). the cinema_screen insert table */
INSERT INTO cinema_screen (cinema_id,screen_id,screen_capacity,standard_seats,premium_seats) values
(1,4001,400,300,100);

INSERT INTO cinema_screen (cinema_id,screen_id,screen_capacity,standard_seats,premium_seats) values
(2,4002,300,150,150);

INSERT INTO cinema_screen (cinema_id,screen_id,screen_capacity,standard_seats,premium_seats) values
(4,4003,500,250,250);

INSERT INTO cinema_screen (cinema_id,screen_id,screen_capacity,standard_seats,premium_seats) values
(4,4004,300,300,100);

INSERT INTO cinema_screen (cinema_id,screen_id,screen_capacity,standard_seats,premium_seats) values
(5,4005,200,300,100);


/*(8). the film insert table */
INSERT INTO film (film_id,screen_id,film_name,film_rating,film_duration,start_time,film_date,reviewer_id) values
(100345,4001,'Spectre', '15', '132', '18:30','12/11/15',150030);

INSERT INTO film (film_id,screen_id,film_name,film_rating,film_duration,start_time,film_date,reviewer_id) values
(100355,4002,'Star War 7', '12A', '150', '12:30','21/12/15',150033);

INSERT INTO film (film_id,screen_id,film_name,film_rating,film_duration,start_time,film_date,reviewer_id) values
(100420,4003, 'Social Network', '15', '180', '2:30', '7/8/15',150032);

INSERT INTO film (film_id,screen_id,film_name,film_rating,film_duration,start_time,film_date,reviewer_id) values
(100423,4004, 'Mad Max', '18', '180', '3:30', '4/10/15',150030);

INSERT INTO film (film_id,screen_id,film_name,film_rating,film_duration,start_time,film_date,reviewer_id) values
(100427,4005, 'Spirited Away', '12', '160', '5:20', '30/10/15',150033);

/*(9). the ticket insert table*/
INSERT INTO ticket(customer_id,ticket_id,payment_id,film_id,ticket_type,price,seat_number) values
(235114,120,9001,100345,'standard','12','14f');

INSERT INTO ticket(customer_id,ticket_id,payment_id,film_id,ticket_type,price,seat_number) values
(235115,160,9002,100355,'standard','12','7d');

INSERT INTO ticket(customer_id,ticket_id,payment_id,film_id,ticket_type,price,seat_number) values
(235116,230,9003,100420,'premium','22','54h');

INSERT INTO ticket(customer_id,ticket_id,payment_id,film_id,ticket_type,price,seat_number) values
(235117,240,9004,100420,'premium','22','53h');

INSERT INTO ticket(customer_id,ticket_id,payment_id,film_id,ticket_type,price,seat_number) values
(235117,242,9004,100427,'standard','12','30e');

/*this commits all the insert tables*/
commit;

/*this grant select,update,insert access to both of us*/
GRANT SELECT, UPDATE,INSERT ON cinema TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON film TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON reviewer TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON customer TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON payment TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON ticket TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON staff TO jprendergast,psheehan;
GRANT SELECT, UPDATE,INSERT  ON cinema_manager TO jprendergast,psheehan;