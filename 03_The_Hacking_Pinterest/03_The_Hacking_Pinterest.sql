CREATE TABLE User (
  user_id INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE Pin (
  pin_id INT PRIMARY KEY,
  user_id INT,
  image_url VARCHAR(255) NOT NULL,
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Comment (
  comment_id INT PRIMARY KEY,
  user_id INT,
  pin_id INT,
  comment_text TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES User(user_id),
  FOREIGN KEY (pin_id) REFERENCES Pin(pin_id)
);