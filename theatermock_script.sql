create table films (
	film_id SERIAL primary key,
	film_title VARCHAR(255),
	film_director VARCHAR(250),
	film_rating VARCHAR(10),
	film_releaseDate DATE,
	duration_in_min INT
);

create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	e_mail VARCHAR(100)
);

create table concessions (
	item_id SERIAL primary key,
	customer_id INT references customers(customer_id),
	item_name VARCHAR(50),
	item_price INT,
	item_stockFlag BOOL not null,
	item_category VARCHAR(50)
);

create table transactions (
	purchase_id SERIAL primary key,
	customer_id INT references customers(customer_id),
	film_id INT references films(film_id),
	item_id INT references concessions(item_id),
	total_amount DECIMAL
);

create table tickets (
	ticket_stub SERIAL primary key,
	customer_id INT references customers(customer_id),
	film_id INT references films(film_id),
	purchase_id INT references transactions(purchase_id),
	showtime_id INT,
	tickets_available BOOL
);
