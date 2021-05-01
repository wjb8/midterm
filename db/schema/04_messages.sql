DROP TABLE IF EXISTS messages CASCADE;
CREATE TABLE messages (
  id SERIAL PRIMARY KEY NOT NULL,
  from_user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  to_user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  listing_id INTEGER REFERENCES listings(id) ON DELETE CASCADE,
  message TEXT,
  sent_at TIMESTAMP
);
