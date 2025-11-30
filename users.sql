SHOW DATABASES;

USE testdb;





CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    birth_date DATE,
    profile_img VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 데이터 조회
SELECT * FROM users;

INSERT INTO users (email, password, name, phone, birth_date, profile_img)
VALUES
('user1@example.com', 'hashed_password1', '홍길동', '010-1234-5678', '1990-01-01', 'https://example.com/img1.jpg'),
('user2@example.com', 'hashed_password2', '김철수', '010-2345-6789', '1985-05-15', 'https://example.com/img2.jpg'),
('user3@example.com', 'hashed_password3', '이영희', NULL, '2000-12-31', NULL),
('user4@example.com', 'hashed_password4', '박민수', '010-3456-7890', NULL, 'https://example.com/img4.jpg'),
('user5@example.com', 'hashed_password5', '최지은', NULL, NULL, NULL);
INSERT INTO users (email, password, name, phone, birth_date, profile_img)
VALUES
('user6@example.com', 'hashed_password6', '정하늘', '010-4567-8901', '1992-03-22', 'https://example.com/img6.jpg'),
('user7@example.com', 'hashed_password7', '윤서진', '010-5678-9012', '1988-07-10', 'https://example.com/img7.jpg'),
('user8@example.com', 'hashed_password8', '한지민', NULL, '1995-11-05', NULL),
('user9@example.com', 'hashed_password9', '서준호', '010-6789-0123', NULL, 'https://example.com/img9.jpg'),
('user10@example.com', 'hashed_password10', '강민아', NULL, NULL, NULL);

-- 데이터 조회
SELECT * FROM users;



