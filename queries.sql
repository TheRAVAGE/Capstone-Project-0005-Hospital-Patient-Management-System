/*create tables*/
CREATE TABLE user_details (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) UNIQUE,
    password VARCHAR(25),
    jobType CHAR(1)
);

CREATE TABLE patient_details (
    id INT PRIMARY KEY UNIQUE NOT NULL,
    fname VARCHAR(50),
    Lname VARCHAR(50),
    dateOfRegisteration VARCHAR(10)
);

CREATE TABLE patient_more_details (
	hospital_id INTEGER REFERENCES patient_details(id),
	blood_group VARCHAR(15),
	age INTEGER,
	occupation TEXT,
	height INTEGER,
	weight INTEGER,
	allergies TEXT,
	symptoms TEXT,
	diabetis TEXT,
	hypertension TEXT,
	asthma TEXT,
	wheezing TEXT,
	previous_surgeries TEXT,
	previous_diseases TEXT,
	on_medications TEXT,
	alcohol_taken TEXT,
	smoking TEXT,
	immunosupressents TEXT,
	blood_transfusion TEXT,
	virology TEXT,
	blood_investigations TEXT,
	visible_symptoms TEXT
);

/*Insert into user_details*/
INSERT INTO patient_details (id, fname, lname, dateOfRegisteration)
VALUES (1000000,'Patient', 'Zero' ,'2024-08-03');

INSERT INTO user_details (username, password, jobType)
VALUES ('adminr', 'adminr' ,'R');

INSERT INTO user_details (username, password, jobType)
VALUES ('admind', 'admind' ,'D');