CREATE TABLE User (
  user_id INT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE Link (
  link_id INT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  url VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Comment (
  comment_id INT PRIMARY KEY,
  content VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  link_id INT,
  parent_id INT,
  FOREIGN KEY (user_id) REFERENCES User(user_id),
  FOREIGN KEY (link_id) REFERENCES Link(link_id),
  FOREIGN KEY (parent_id) REFERENCES Comment(comment_id)
);