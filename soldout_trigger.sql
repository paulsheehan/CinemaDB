CREATE or REPLACE trigger sold_out
BEFORE insert ON Ticket for each row
DECLARE
	no_of_tickets integer;
	film_cap integer;
	sold_out_alert exception;
BEGIN
	SELECT Count INTO no_of_tickets
	FROM Ticket where ticket_id = :new.ticket_id;
	SELECT screen_capacity FROM cinema_screen
	JOIN Film USING (screen_id)
	JOIN Ticket using (film_id)
	GROUP BY film_name;
IF no_of_tickets > film_cap THEN
	raise sold_out_alert;
END IF;
EXCEPTION
	WHEN sold_out_alert THEN
	raise_application_error(-20002, 'This film screening is sold out');
END;