CREATE TABLE IF NOT EXISTS posts (
  id bigserial PRIMARY KEY,
  title text NOT NULL,
  user_id bigint NOT NULL,
  content text NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);