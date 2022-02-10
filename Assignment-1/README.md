# CS315: MySQL Programming Assignment 1

## Problem Statement

This programming assignment is an introductory assignment using MySQL. You are supposed to
install MySQL server and MySQL command line client for this assignment’s purpose. You can
also install MySQL documentation on your machine. A copy of the MySQL reference manual
(documentation) is placed on moodle. For installation, you may follow the instructions placed on
moodle. For the next assignment, we plan to use phpmyadmin and/or MySQL workbench; you can
install MySQL workbench together with the other modules.  

Since the purpose of this assignment is to introduce you to hands-on MySQL, the assignment is
simple and uses a very basic database schema. The schema and the queries to be written are
detailed in the next section. Here we will describe how to submit the queries you write in this
assignment.  

This assignment has three queries, named Query1, Query2 and Query3. The course page on moodle
has a topic MySQL Assignment 1. This allows uploading of three files: name these files exactly
as query1.txt, query2.txt and query3.txt. Multiple uploading of the files within the deadline is
permitted by moodle, however, late submissions are not permitted. The (simple) database schema
is presented below. Using MySQL command line client (you will probably need a MySQL root
password to begin a session), create a database (e.g., movies) and within this database, create the
tables given in the schema.

## Schema  

`movies(title VARCHAR(50), length int, genre VARCHAR(30))`  
`starsin(starname VARCHAR(100), title VARCHAR(50))`  
`stardetails(starname VARCHAR(100), DOB DATE, gender CHAR(1))`  

**Primary Keys:**  

`movies: {title}`  
`starsin: {starname, title}`  
`stardetails: {starname}`  

For introductory reasons, we will not be using foreign keys in the definition of the tables. So it is
possible (though not very reasonable!) that there are starname values in the starsin table that
are not present in the stardetails table, and there could be movie title names in the starsin
table that are not present in the movies table. Default unknown values of all attributes (not
primary/unique key) is NULL.

## Query 1

Give `starname, title, gender` triples of all actors/actresses with `starname` who have
starred in movie `title`. In case gender is unknown, the attribute `gender` is left as NULL (use left
outer join). The query should be sorted in order as `gender` (asc), `starname` (asc), `title` (asc).

## Query 2

Find all `starname, genre` pairs such that `starname` has starred in every movie released
of that `genre`. The output should be sorted by `genre` (asc) followed by `starname` (asc).

## Query 3

Find all `genre, starname, numgenr` such that for every `genre` and `starname`, the
starname has starred in numgenr number of movies of this `genre`. The result should be sorted
by `genre` (asc), `starname`(asc), `numgenr` (desc).
