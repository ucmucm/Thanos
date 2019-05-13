采菊东篱下 悠然见南山

Run the project:
```$xslt
gradle bootRun
```

Database Command:
```$xslt
CREATE DATABASE Avengers;

CREATE TABLE Avengers.user_info (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    email_address varchar(30) NOT NULL,
    password varchar(20) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Unknown')
);


CREATE TABLE Avengers.article_info (
    article_id INT PRIMARY KEY AUTO_INCREMENT,
    article_title VARCHAR(20),
    article_details TEXT,
    article_created_date DATE,
    article_updated_date DATE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id)
)
```