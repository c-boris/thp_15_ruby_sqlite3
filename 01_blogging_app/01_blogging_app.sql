-- Table User
CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Table Article
CREATE TABLE Article (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- Table Category
CREATE TABLE Category (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

-- Table Tag
CREATE TABLE Tag (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL
);

-- Table Article_Category (liaison entre Article et Category)
CREATE TABLE Article_Category (
    article_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (article_id, category_id),
    FOREIGN KEY (article_id) REFERENCES Article(id),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Table Category_Tag (liaison entre Category et Tag)
CREATE TABLE Category_Tag (
    category_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (category_id, tag_id),
    FOREIGN KEY (category_id) REFERENCES Category(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
);