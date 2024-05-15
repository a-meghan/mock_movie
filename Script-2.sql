insert into films(
	film_id,
	film_title,
	film_director,
	film_rating,
	film_releasedate
) values (
	1,
	'AVATAR',
	'James Cameron',
	'PG-13',
	'2009-12-18'
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	phone_number,
	e_mail
) values (
	1,
	'Ariel',
	'Whitmore',
	'770-990-0000',
	'arielowen@email.com'
);

insert into concessions(
	item_id,
	customer_id,
	item_name,
	item_price,
	item_stockflag,
	item_category 
) values (
	1,
	1,
	'Popcorn',
	699,
	true,
	'Snacks'
);

insert into transactions(
	purchase_id,
	customer_id,
	film_id,
	item_id,
	total_amount
) values (
	1,
	1,
	1,
	1,
	5.99
);

insert into tickets(
	ticket_stub,
	customer_id,
	film_id,
	purchase_id,
	showtime_id,
	tickets_available
) values (
	1,
	1,
	1,
	1,
	113,
	true
);