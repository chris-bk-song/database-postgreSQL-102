CREATE TABLE restaurant (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  address VARCHAR,
  category VARCHAR
);

CREATE TABLE reviewer (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  email VARCHAR,
  karma NUMERIC DEFAULT 0 CHECK (karma >= 0 AND karma <= 7)
);

CREATE TABLE review (
  id SERIAL PRIMARY KEY,
  reviewer_id INTEGER REFERENCES reviewer (id),
  stars INTEGER NOT NULL CHECK(stars >= 1 AND stars <= 5),
  title VARCHAR,
  review VARCHAR,
  restaurant_id INTEGER REFERENCES restaurant (id)
);