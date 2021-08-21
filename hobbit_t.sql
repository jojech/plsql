-- ======================================================================
--  Name:    final.sql
--  Author:  Jeremy Johnson
--  Date:    02-Apr-2021
-- ------------------------------------------------------------------
--  Purpose: Prepare final project environment.
-- ======================================================================

/* Set environment variables. */
SET PAGESIZE 999

/* Write to log file. */
SPOOL hobbit_t.txt

CREATE OR REPLACE
  TYPE hobbit_t UNDER BASE_T
  ( name VARCHAR2(30)
  , genus VARCHAR2(30)
  , CONSTRUCTOR FUNCTION hobbit_t
    ( oid   NUMBER
    , oname VARCHAR2
    , name   VARCHAR2
    , genus  VARCHAR2) RETURN SELF AS RESULT
  , MEMBER PROCEDURE set_name
    ( name VARCHAR2 )
  , MEMBER FUNCTION get_genus RETURN VARCHAR2
  , MEMBER PROCEDURE set_genus
    ( genus VARCHAR2 )
  , OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2 )
  INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE
  TYPE BODY hobbit_t IS
   
  CONSTRUCTOR FUNCTION hobbit_t
  (oid NUMBER, oname VARCHAR2, name VARCHAR2, genus VARCHAR2)
  RETURN SELF AS RESULT IS
  BEGIN
    self.oid := oid;
    self.oname := oname;
    self.name := name;
    self.genus := genus;
    RETURN;
  END hobbit_t;  
  
  MEMBER PROCEDURE set_name
  ( name  VARCHAR2 ) IS
  BEGIN
    self.name := name;
  END set_name;
  
  MEMBER FUNCTION get_genus
  RETURN VARCHAR2 IS
  BEGIN
    RETURN self.genus;
  END get_genus;
  
  MEMBER PROCEDURE set_genus
  ( genus  VARCHAR2 ) IS
  BEGIN
    self.genus := genus;
  END set_genus;
  
  /* Implement a to_string function. */
  OVERRIDING MEMBER FUNCTION to_string
  RETURN VARCHAR2 IS
  BEGIN
    RETURN (self AS base_t).to_string||'['||self.name||']['||self.genus||']';
  END to_string;
END;
/

/* Close log file. */
SPOOL OFF

/* Exit the connection. */
QUIT

