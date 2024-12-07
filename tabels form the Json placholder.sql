CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    username VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(50),
    website VARCHAR(100)
    -- Additional columns for address or company could be added if desired
);

CREATE TABLE posts (
    post_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255),
    body TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments (
    comment_id INT PRIMARY KEY,
    post_id INT NOT NULL,
    name VARCHAR(100),
    email VARCHAR(100),
    body TEXT,
    FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

/*
In a real scenario, you might use SERIAL or AUTO_INCREMENT for primary keys if the source data doesn’t provide guaranteed unique IDs. JSONPlaceholder provides IDs, but in production, you may generate them yourself.
*/
