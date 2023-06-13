CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,
    image_id INTEGER NOT NULL DEFAULT 1
);

CREATE TABLE chats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    type INTEGER NOT NULL,
    date INTEGER NOT NULL,
    image_id INTEGER NOT NULL DEFAULT 1
);

CREATE TABLE members (
    chat_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    privilege INTEGER NOT NULL
);

CREATE TABLE messages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    chat_id INTEGER NOT NULL,
    message TEXT,
    date INTEGER NOT NULL
);

CREATE TABLE files (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  filename VARCHAR(255) NOT NULL,
  file_size INT NOT NULL,
  file_path VARCHAR(255) NOT NULL
);