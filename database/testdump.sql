CREATE TABLE User(
       id INT PRIMARY KEY AUTO_INCREMENT, 
       first_name VARCHAR(255), 
       last_name VARCHAR(255), 
       id_no VARCHAR(13),
       phone_number VARCHAR(10),
       dose_no INT,
       appoint_date DATETIME
);
INSERT INTO User(
       first_name, 
       last_name,
       id_no,
       phone_number,
       dose_no,
       appoint_date) 
VALUES(
       "APISORN",
       "TEEHOR", 
        "1598745632017",
        "0874563249",
        2,
        "2022-02-08 09:30:28"
);
INSERT INTO User(
       first_name, 
       last_name,
       id_no,
       phone_number,
       dose_no,
       appoint_date) 
VALUES(
       "Monkey D.",
       "LUFFY", 
        "1236547896545",
        "0217896547",
        1,
        "2022-02-09 09:40:50"
);
INSERT INTO User(
       first_name, 
       last_name,
       id_no,
       phone_number,
       dose_no,
       appoint_date) 
VALUES(
       "Protogus D.",
       "ACE", 
        "1925879895235",
        "0869874563",
        3,
        "2022-02-10 10:50:30"
);
ALTER USER 'root' IDENTIFIED WITH mysql_native_password BY 'password'; 
flush privileges;