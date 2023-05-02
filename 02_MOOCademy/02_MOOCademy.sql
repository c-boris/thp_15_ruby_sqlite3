CREATE TABLE Course (
    courseId INT PRIMARY KEY,
    title VARCHAR(255),
    description VARCHAR(255)
);

CREATE TABLE Lesson (
    lessonId INT PRIMARY KEY,
    title VARCHAR(255),
    body TEXT,
    courseId INT,
    FOREIGN KEY (courseId) REFERENCES Course(courseId)
);