/*
** ----------------------------------------------------------------------------
** drop.sql
** CREATED BY:  Patrick Archer - 1208960164 - Patrick.Archer@asu.edu or pjarcher@asu.edu - CSE412 F18 - 11/13/18
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to drop all objects in the database
** --------------------------------------------------------------------------*/

-- Tables 
DROP TABLE person CASCADE CONSTRAINTS purge;
DROP TABLE application purge;
DROP TABLE job purge;
DROP TABLE requirementsTable purge;
DROP TABLE reviews purge;

/*-- Views for query (no views implemented, so these are just commented out)
**DROP VIEW projectHours;
**DROP VIEW projectExEmp;
**DROP VIEW empDependentCount;*/


