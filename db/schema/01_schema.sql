DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS parks CASCADE;
DROP TABLE IF EXISTS maps CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE maps (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  creator_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE parks (
  id SERIAL PRIMARY KEY NOT NULL,
  park_name VARCHAR(255) NOT NULL,
  street_address VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  park_image VARCHAR(255) NOT NULL,
  coordinates_long DECIMAL(9, 6),
  coordinates_lat DECIMAL(8, 6),
  description TEXT,
  basketball_nets BOOLEAN,
  tennis_courts BOOLEAN,
  soccer_nets BOOLEAN,
  skatepark BOOLEAN,
  workout_equipment BOOLEAN,
  bathrooms BOOLEAN,
  water_fountain BOOLEAN,
  dog_park BOOLEAN,
  creator_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  map_id INTEGER REFERENCES maps(id) ON DELETE CASCADE
);
