CREATE TABLE category(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE product(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	price_in_cents INTEGER NOT NULL,
	image_url TEXT,
	total_stock INTEGER NOT NULL DEFAULT 0,
	category_id INTEGER NULL REFERENCES category(id),
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE "user"(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(255) NOT NULL,
	address TEXT NOT NULL,
	email TEXT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE review(
	id SERIAL PRIMARY KEY NOT NULL,
	rating INT NOT NULL,
	comment TEXT,
	user_id INT NOT NULL REFERENCES "user"(id),
	product_id INT NOT NULL REFERENCES product(id),
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
);



CREATE TABLE "order"(
	id SERIAL PRIMARY KEY NOT NULL,
	payment_method TEXT,
	user_id INT NOT NULL REFERENCES "user"(id),
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE order_product(
	id SERIAL PRIMARY KEY NOT NULL,
	quantity INT NOT NULL DEFAULT 1,
	order_id INT NOT NULL REFERENCES "order"(id),
	product_id INT NOT NULL REFERENCES product(id),
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
);
