/*create tables*/
CREATE TABLE user_details (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25),
    password VARCHAR(25),
    jobType CHAR(1)
);

CREATE TABLE patient_details (
    id INT PRIMARY KEY NOT NULL,
    fname VARCHAR(50),
    Lname VARCHAR(50),
    dateOfRegisteration VARCHAR(10)
);

/*Insert into user_details*/
INSERT INTO patient_details (id, fname, lname, dateOfRegisteration)
VALUES (1000000,'Patient', 'Zero' ,'2024-08-03');

INSERT INTO user_details (username, password, jobType)
VALUES ('adminr', 'adminr' ,'R');

INSERT INTO user_details (username, password, jobType)
VALUES ('admind', 'admind' ,'D');