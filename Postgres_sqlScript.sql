/* Get all rows */
SELECT * FROM python_project_2019


-- Insert rows to the table
INSERT INTO python_project_2019 (id, last_name, first_name, 
								 course1_id, course1_title, 
								 course2_id, course2_title, 
								 course3_id, course3_title, 
								 is_undergrad)
VALUES 
('0103', 'Casey', 'Harriet', '101', 'DataBase Management Systems', '201', 'Computer Network Security', '301', 'Python Programming', 'true'),
('0122', 'Logan', 'Janet', '102', 'Introduction to Data Analytics', '202', 'Microcomputer Applications', '302', 'R Programming', 'false'),
('0123', 'Hagen', 'Greg', '103', 'Data Mining', '203', 'Introduction to Decision Support Systems', '303', 'AWS and Cloud Computing', 'true'),
('0139', 'Carroll', 'Pat', '103', 'Data Mining', '202', 'Microcomputer Applications', '302', 'R Programming', 'true'),
('0148', 'Wolf', 'Bee', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '301', 'Python Programming', 'true'),
('0167', 'Krumple', 'Scott', '102', 'Introduction to Data Analytics', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'false'),
('0171', 'Harvey', 'Elliot', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '302', 'R Programming', 'true'),
('0181', 'Zygote', 'Carrie', '102', 'Introduction to Data Analytics', '201', 'Computer Network Security', '303', 'AWS and Cloud Computing', 'true'),
('0194', 'Loftus', 'Abner', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '301', 'Python Programming', 'true'),
('0251', 'Grainger', 'John', '102', 'Introduction to Data Analytics', '201', 'Computer Network Security', '302', 'R Programming', 'true'),
('0321', 'Jones', 'Garrett', '103', 'Data Mining', '201', 'Computer Network Security', '302', 'R Programming', 'false'),
('0156', 'Davis', 'John', '102', 'Introduction to Data Analytics', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'false'),
('1020', 'Carney', 'Logan', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '302', 'R Programming', 'true'),
('0149', 'Krepps', 'Owen', '103', 'Data Mining', '201', 'Computer Network Security', '301', 'Python Programming', 'false'),
('1183', 'Collins', 'Nathan', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '302', 'R Programming', 'true'),
('0601', 'Devlin', 'Sharron', '101', 'DataBase Management Systems', '201', 'Computer Network Security', '301', 'Python Programming', 'true'),
('0218', 'Scott', 'Travis', '102', 'Introduction to Data Analytics', '201', 'Computer Network Security', '302', 'R Programming', 'false'),
('0324', 'David', 'Ashley', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '301', 'Python Programming', 'true'),
('0113', 'Roberts', 'Juliet', '102', 'Introduction to Data Analytics', '201', 'Computer Network Security', '303', 'AWS and Cloud Computing', 'false'),
('0199', 'Cameron', 'Austin', '103', 'Data Mining', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'true'),
('1203', 'Stone', 'Racheal', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '302', 'R Programming', 'true'),
('0176', 'Pollard', 'Jessica', '103', 'Data Mining', '202', 'Microcomputer Applications', '301', 'Python Programming', 'false'),
('1021', 'Carney', 'Ashley', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '302', 'R Programming', 'true'),
('2861', 'Bates', 'Katherine', '103', 'Data Mining', '201', 'Computer Network Security', '301', 'Python Programming', 'true'),
('0391', 'Blinn', 'Ciara', '102', 'Introduction to Data Analytics', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'false'),
('0351', 'Evans', 'Laraun', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '301', 'Python Programming', 'false'),
('1107', 'Witt', 'Jonah', '103', 'Data Mining', '203', 'Introduction to Decision Support Systems', '302', 'R Programming', 'true'),
('1012', 'Tate', 'Josh', '101', 'DataBase Management Systems', '201', 'Computer Network Security', '303', 'AWS and Cloud Computing', 'true'),
('0234', 'Galderisi', 'Matt', '102', 'Introduction to Data Analytics', '202', 'Microcomputer Applications', '302', 'R Programming', 'false'),
('1421', 'Miley', 'Lydia', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '303', 'AWS and Cloud Computing', 'false'),
('0105', 'Collins', 'Hannah', '103', 'Data Mining', '203', 'Introduction to Decision Support Systems', '303', 'AWS and Cloud Computing', 'false'),
('0174', 'Kimberly', 'Nick', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '301', 'Python Programming', 'true'),
('1528', 'Nolan', 'Sean', '101', 'DataBase Management Systems', '202', 'Microcomputer Applications', '302', 'R Programming', 'true'),
('2317', 'Barone', 'Mai', '103', 'Data Mining', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'false'),
('0219', 'Wiggin', 'Micheal', '102', 'Introduction to Data Analytics', '201', 'Computer Network Security', '302', 'R Programming', 'false'),
('1453', 'Barone', 'Steven', '103', 'Data Mining', '203', 'Introduction to Decision Support Systems', '303', 'AWS and Cloud Computing', 'false'),
('0705', 'Devlin', 'Shannon', '103', 'Data Mining', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'false'),
('0874', 'Tea', 'Dalton', '101', 'DataBase Management Systems', '203', 'Introduction to Decision Support Systems', '301', 'Python Programming', 'true'),
('1322', 'Gramz', 'Luke', '101', 'DataBase Management Systems', '202', 'Microcomputer Applications', '302', 'R Programming', 'true'),
('0652', 'Auth', 'Dylan', '103', 'Data Mining', '202', 'Microcomputer Applications', '303', 'AWS and Cloud Computing', 'false')


/* Deleting row with an ID */
DELETE FROM python_project_2019 WHERE id = 0;


/* Deleting all rows */
TRUNCATE python_project_2019


/* Update a row with an ID */
UPDATE python_project_2019
SET last_name = 'Casey', 
	first_name = 'Harriet', 
    course1_id = '110', 
	course1_title = 'Introduction to DOS', 
	course2_id = '118', 
	course2_title = 'Microcomputer Applications', 
	course3_id = '138', 
	course3_title = 'Introduction to Windows', 
	is_undergrad = 'true'
WHERE
   id = '0103' 




/* Auto generated by postgre */

CREATE TABLE public.python_project_2019
(
	id integer NOT NULL,
    last_name character varying(15) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
	course1_id integer NOT NULL,
    course1_title character varying(50) COLLATE pg_catalog."default" NOT NULL,
	course2_id integer NOT NULL,
    course2_title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    course3_id integer NOT NULL,
    course3_title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    is_undergrad boolean NOT NULL,
    CONSTRAINT python_project_2019_pkey PRIMARY KEY (id),
    CONSTRAINT python_project_2019_id_key UNIQUE (id)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.python_project_2019
    OWNER to postgres;



