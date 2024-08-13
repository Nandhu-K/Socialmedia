Create database Social_media;
use Social_media;
CREATE TABLE users (
  id INT PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255)
);
CREATE TABLE posts (
  id INT PRIMARY KEY,
  user_id INT,
  image_url VARCHAR(255),
  caption VARCHAR(255),
  likes INT,
  comments INT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE comments (
  id INT PRIMARY KEY,
  post_id INT,
  user_id INT,
  text VARCHAR(255),
  FOREIGN KEY (post_id) REFERENCES posts(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE likes (
  id INT PRIMARY KEY,
  post_id INT,
  user_id INT,
  FOREIGN KEY (post_id) REFERENCES posts(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
INSERT INTO users (id, username, email)
VALUES
  (1, 'Arun', 'arun30@gmail.com'),
  (2, 'john', 'john@gmail.com'),
  (3, 'balu', 'balu80@gmail.com');
INSERT INTO posts (id, user_id, image_url, caption, likes, comments)
VALUES
  (4, 1, 'image11.jpg', 'Bestiee!!!!!!', 100, 12),
  (5, 2, 'image12.jpg', 'Butterfly!', 120, 5),
  (6, 3, 'image34.jpg', 'Good morning!', 95, 1);
INSERT INTO comments (id, post_id, user_id, text)
VALUES
  (1, 1, 2, 'Nice post'),
  (2, 1, 3, 'Love it!'),
  (3, 2, 1, 'Beautiful!'),
  (4, 2, 3, 'Awesome!'),
  (5, 2, 1, 'Great!'),
  (6, 3, 2, 'Good morning!');
INSERT INTO likes (id, post_id, user_id)
VALUES
  (1, 1, 2),
  (2, 1, 3),
  (3, 1, 1),
  (4, 2, 1),
  (5, 2, 3),
  (6, 2, 3),
  (7, 2, 2),
  (8, 3, 2),
  (9, 3, 1);