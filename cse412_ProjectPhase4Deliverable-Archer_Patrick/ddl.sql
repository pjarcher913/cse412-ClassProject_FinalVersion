/*
** ----------------------------------------------------------------------------
** ddl.sql
** CREATED BY:  Patrick Archer - 1208960164 - Patrick.Archer@asu.edu or pjarcher@asu.edu - CSE412 F18 - 11/13/18
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to create the person table w/ necessary constraints
** --------------------------------------------------------------------------*/

CREATE TABLE person (
	personPK	INTEGER			PRIMARY KEY,
	name		VARCHAR(32)		NOT NULL,
	password		VARCHAR(32)		NOT NULL,
	email		VARCHAR(32)		NOT NULL,
	role			VARCHAR(32)		NOT NULL CHECK (	role = 'APPLICANT' OR
														role = 'JOB POSTER' OR
														role = 'REVIEWER' OR
														role = 'REFERENCE'	)
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the application table w/ necessary constraints
** --------------------------------------------------------------------------*/

CREATE TABLE application (
	applicationPK		INTEGER			PRIMARY KEY,
	resume			VARBINARY,
	ref1				VARCHAR(32)		NOT NULL,
	ref2				VARCHAR(32),
	ref3				VARCHAR(32),
	timestamp		Date					NOT NULL,
	personFK		INTEGER			FOREIGN KEY REFERENCES person(personPK), job(posterFK), reviews(reviewerFK) ON DELETE CASCADE,
	jobFK			INTEGER			FOREIGN KEY REFERENCES job(jobID), job(jobID), requirementsTable(jobID) ON DELETE CASCADE
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the job table  w/ necessary constraints
** --------------------------------------------------------------------------*/

CREATE TABLE job (
	jobID			INTEGER			FOREIGN KEY REFERENCES requirementsTable(jobID) ON DELETE CASCADE,
	title				VARCHAR(128)		NOT NULL,
	description		VARCHAR(384)		NOT NULL,
	pay				INTEGER			NOT NULL,
	deadline			Date					NOT NULL,
	posterFK			INTEGER			FOREIGN KEY 
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the requirementsTable table  w/ necessary constraints
** --------------------------------------------------------------------------*/

CREATE TABLE requirementsTable (
	jobID			INTEGER			FOREIGN KEY REFERENCES job(jobID) ON DELETE CASCADE,
	requirements		VARCHAR(256)		NOT NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the reviews table  w/ necessary constraints
** --------------------------------------------------------------------------*/

CREATE TABLE reviews (
	reviewerFK		INTEGER			FOREIGN KEY REFERENCES job(posterFK), application(personFK), person(personPK) ON DELETE CASCADE,
	applicationFK		INTEGER			FOREIGN KEY REFERENCES application(applicationPK) ON DELETE CASCADE,
	comments		VARCHAR(256)		NOT NULL,
	rating			INTEGER			NOT NULL CHECK (	rating >= 1 AND rating <= 5	)
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** ALTER TABLE: add applicationFK (foreign key) for the person table
** --------------------------------------------------------------------------*/
ALTER TABLE person
	ADD (FOREIGN KEY (applicationFK) REFERENCES (application(applicationPK)) ON DELETE SET NULL);

SHOW ERRORS;













