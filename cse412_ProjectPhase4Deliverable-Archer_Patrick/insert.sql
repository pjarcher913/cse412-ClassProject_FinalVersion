/*
** ----------------------------------------------------------------------------
** insert.sql
** CREATED BY:  Patrick Archer - 1208960164 - Patrick.Archer@asu.edu or pjarcher@asu.edu - CSE412 F18 - 11/13/18
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to insert data into the person table 
** --------------------------------------------------------------------------*/
INSERT INTO person VALUES(100, 'John Smith', 'PwD123', 'johnsmith@msn.com', 'JOB POSTER');
INSERT INTO person VALUES(101, 'Jerry Joe', 'PwD456', 'jerryjoe@aol.com', 'APPLICANT');
INSERT INTO person VALUES(102, 'Suzie Queue', 'PwD321', 'suziequeue@gmail.com', 'APPLICANT');
INSERT INTO person VALUES(103, 'Terry Ferry', 'PwD654', 'terryferry@msn.com', 'APPLICANT');
INSERT INTO person VALUES(104, 'Mike Wazowski', 'PwD123', 'mikewaz@minc.com', 'APPLICANT');
INSERT INTO person VALUES(105, 'Arnold Strong', 'PwD951', 'astrong@gmail.com', 'REVIEWER');
INSERT INTO person VALUES(107, 'Jeff Jeff', 'PwD951', 'jeff@msn.com', 'REFERENCE');
INSERT INTO person VALUES(107, 'More Jeff', 'PwD159', 'mjeff@msn.com', 'REFERENCE');
INSERT INTO person VALUES(108, 'Evenmore Jeff', 'PwD159!', 'emjeff@msn.com', 'REFERENCE');

/*
** ----------------------------------------------------------------------------
** update password for someone in the person table 
** --------------------------------------------------------------------------*/
UPDATE person SET password = 'NEWpwd123' WHERE name='John Smith';
UPDATE person SET password = 'NEWpwd321' WHERE name='Terry Ferry';

/*
** ----------------------------------------------------------------------------
** script to insert data into the application table 
** --------------------------------------------------------------------------*/

INSERT INTO application VALUES(200, NULL, 'Jeff Jeff', NULL, NULL, '05-APR-17', 101, 300);
INSERT INTO application VALUES(201, NULL, 'More Jeff', NULL, NULL, '12-APR-17', 102, 301);
INSERT INTO application VALUES(202, NULL, 'Jeff Jeff', 'More Jeff', NULL, '01-APR-17', 103, 302);
INSERT INTO application VALUES(203, NULL, 'Jeff Jeff', 'More Jeff', 'Evenmore Jeff', '15-APR-17', 104, 303);

/*
** ----------------------------------------------------------------------------
** update timestamp for an application in the application table 
** --------------------------------------------------------------------------*/
UPDATE application SET timestamp = '13-APR-17' WHERE applicationPK=201;
UPDATE application SET timestamp = '16-APR-17' WHERE applicationPK=203;

/*
** ----------------------------------------------------------------------------
** script to insert data into the job table 
** --------------------------------------------------------------------------*/

INSERT INTO job (300, 'Janitor', 'Clean stuff', 150000, '06-APR-17', 100);
INSERT INTO job (301, 'Chef', 'Cook food', 100000, '25-APR-17', 100);
INSERT INTO job (302, 'Mechanic', 'Fix cars', 200000, '02-APR-17', 100);
INSERT INTO job (303, 'Doctor', 'Fix people', 300000, '20-APR-17', 100);

/*
** ----------------------------------------------------------------------------
** update pay for a job in the job table 
** --------------------------------------------------------------------------*/
UPDATE job SET pay = 75000 WHERE title='Janitor';
UPDATE job SET pay = 175000 WHERE title='Mechanic';

/*
** ----------------------------------------------------------------------------
** script to insert data into the requirementsTable table 
** --------------------------------------------------------------------------*/

INSERT INTO requirementsTable (300, 'Is able to clean');
INSERT INTO requirementsTable (301, 'Is able to cook food');
INSERT INTO requirementsTable (302, 'Is able to fix cars');
INSERT INTO requirementsTable (303, 'Is able to fix people');

/*
** ----------------------------------------------------------------------------
** update requirements for a job in the requirementsTable table 
** --------------------------------------------------------------------------*/
UPDATE requirementsTable SET requirements = 'Is able to fix broken people' WHERE jobID=303;
UPDATE requirementsTable SET requirements = 'Is able to fix broken cars' WHERE jobID=302;

/*
** ----------------------------------------------------------------------------
** script to insert data into the reviews table 
** --------------------------------------------------------------------------*/

INSERT INTO reviews (105, 200, 'Avg applicant', 3);
INSERT INTO reviews (105, 201, 'Good applicant', 4);
INSERT INTO reviews (105, 202, 'Excellent applicant', 5);
INSERT INTO reviews (105, 203, 'Bad applicant', 1);

/*
** ----------------------------------------------------------------------------
** update rating for an applicant in the reviews table 
** --------------------------------------------------------------------------*/
UPDATE reviews SET rating = 2 WHERE applicationFK= 200;
UPDATE reviews SET rating = 3 WHERE applicationFK= 201;



















