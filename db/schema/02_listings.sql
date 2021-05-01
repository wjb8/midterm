-- Drop and recreate Users table (Example)

DROP TABLE IF EXISTS listings CASCADE;
CREATE TABLE listings (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  price MONEY,
  created_at TIMESTAMP,
  sold_at TIMESTAMP
);
