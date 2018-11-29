/*
** ----------------------------------------------------------------------------
** query.sql
** CREATED BY:  Patrick Archer - 1208960164 - Patrick.Archer@asu.edu or pjarcher@asu.edu - CSE412 F18 - 11/13/18
** --------------------------------------------------------------------------*/

/*
/*
** ----------------------------------------------------------------------------
** Get jobs applied for
** View all jobs by specified applicant
** --------------------------------------------------------------------------*/
SELECT P.name, J.title, J.description
FROM person P, job J, application A
WHERE P.personPK = A.personFK AND P.name = 'Suzie Queue'*/

/*
** ----------------------------------------------------------------------------
** Get application by private key
** Gets all information pertaining to a private-key-specified application (in this query, applicationPK = 202)
** --------------------------------------------------------------------------*/
SELECT *
FROM A.application
WHERE A.applicationPK = 202

/*
** ----------------------------------------------------------------------------
** View jobs above/below a certain pay level
** View all jobs above/below a specified pay level (in this query, pay >= 100000)
** --------------------------------------------------------------------------*/
SELECT *
FROM job J
WHERE J.pay >= 100000

/*
** ----------------------------------------------------------------------------
** Applications w/ Certain Avg Reference Rating
** Displays applications that have an avg rating between 3 & 5
** --------------------------------------------------------------------------*/
SELECT A.applicationPK, AVG(R.rating) as avgRating
FROM application A, review R
WHERE avgRating >= 3 AND avgRating <= 5























