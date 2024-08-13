1.SELECT 
    posts.id AS post_id,
    posts.caption,
    COUNT(likes.id) AS total_likes
FROM posts
LEFT JOIN likes ON posts.id = likes.post_id
GROUP BY posts.id, posts.caption;
![Screenshot 2024-08-13 152333](https://github.com/user-attachments/assets/365df00c-fba7-441b-ad44-9a0fe7ae45ea)

2.SELECT 
    posts.id AS post_id,users.username,users.email,posts.image_url,posts.caption,posts.likes,posts.comments
FROM posts
JOIN users ON posts.user_id = users.id;
![Uploading Screenshot 2024-08-13 152814.png…]()
