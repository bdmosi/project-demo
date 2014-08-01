CREATE TABLE tbl_personinfo
(
	ref_no INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	surname VARCHAR(255) NOT NULL,
	fname VARCHAR(255) NOT NULL,
	sname VARCHAR(255) NOT NULL,
	dob DATE NOT NULL,
	place_birth VARCHAR(255) NOT NULL,
	nationality VARCHAR(255) NOT NULL,
	photo VARCHAR(255) NOT NULL,
	house_tel VARCHAR(255) NOT NULL,
	office_tel VARCHAR(255) NOT NULL,
	mobile VARCHAR(255) NOT NULL,
	mstatus_id INTEGER NOT NULL,
	sex_id INTEGER NOT NULL,
	erb_id INTEGER NOT NULL,
	FOREIGN KEY (sex_id) REFERENCES tbl_sex (id) ON DELETE CASCADE ON UPDATE CASCADE,
     	FOREIGN KEY (mstatus_id) REFERENCES tbl_marital_status (id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (erb_id) REFERENCES tbl_erb (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_erb(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(255) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_sex(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(6) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_marital_status(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(255) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_user
(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_experience
(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	expertize VARCHAR(255) NOT NULL,
	experience_years INTEGER NOT NULL,
	experience_country VARCHAR(255) NOT NULL,
	ref_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (ref_no) REFERENCES tbl_personinfo(ref_no) ON DELETE CASCADE ON UPDATE CASCADE 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_academic
(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	academictype_id INTEGER NOT NULL,
	university_name VARCHAR(255) NOT NULL,
	ref_no INTEGER NOT NULL,
	FOREIGN KEY (ref_no) REFERENCES tbl_personinfo (ref_no) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (academictype_id) REFERENCES tbl_academic_type (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE tbl_academic_type
(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE tbl_person_membership
(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ref_no INTEGER NOT NULL,
	membership_id INTEGER NOT NULL,
	FOREIGN KEY (ref_no) REFERENCES tbl_personinfo(ref_no) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (membership_id) REFERENCES tbl_membership(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE tbl_membership
(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE tbl_recomendation(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	referee_name VARCHAR(255) NOT NULL,
	referee_email VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	ref_no INTEGER NOT NULL,
	FOREIGN KEY (erb_id) REFERENCES tbl_erb (id) ON DELETE CASCADE ON UPDATE CASCADE,
	)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE tbl_employment(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	occupation VARCHAR(255) NOT NULL,
	employer VARCHAR(255) NOT NULL,
	location VARCHAR(255) NOT NULL,
	position VARCHAR(255) NOT NULL,
	ref_no INTEGER NOT NULL,
	FOREIGN KEY (ref_no) REFERENCES tbl_personinfo (ref_no) ON DELETE CASCADE ON UPDATE CASCADE
	)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO tbl_employment (occupation,employer,location,position) VALUES ("Civil Engineer","Riz Consulting Services","Dar es Salaam","Managing Director");

INSERT INTO tbl_recomendation(referee_name,referee_email,address) VALUES ("Eng. Jonathan Mbui","jmbui@howardhumphreys.co.ke","Nairobi");
INSERT INTO tbl_recomendation(referee_name,referee_email,address) VALUES ("Eng. Sanguya Mzugu","sanguya.mzugu@esmconsultingengineers.com","Dar es Salaam");

INSERT INTO tbl_user (username, password,email) VALUES ('mosi','mosi','bdmosi93@gmail.com');

INSERT INTO tbl_erb(description) VALUES ("Consultant");

INSERT INTO tbl_sex(description) VALUES ("");

INSERT INTO tbl_marital_status(description) VALUES ("maried");


INSERT INTO tbl_membership(description) VALUES ("ACET Membership");

INSERT INTO tbl_academic(university_name) VALUES("UDSM");

INSERT INTO tbl_academic_type(description) VALUES("");


INSERT INTO tbl_experience(expertize1,expertize2,experience_years,experience_country) VALUES ("Finite Elements in Structures","Seismic Design","","Tanzania, Kenya, Ethiopia and Sudan");

	INSERT INTO tbl_personinfo(surname,fname,sname,dob,place_birth,nationality,photo,house_tel,office_tel,mobile) VALUES ("Qadri","Sayed","Rizwan","22.10.1961","Dar es Salaam","Tanzania","","+255784323218","+255222602573","+255786750051");

