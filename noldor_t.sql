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
SPOOL noldor_t.txt

CREATE OR REPLACE
  TYPE noldor_t UNDER ELF_T
  ( elfkind VARCHAR2(30)
  , CONSTRUCTOR FUNCTION noldor_t
    ( oid   NUMBER
    , oname VARCHAR2
    , name   VARCHAR2
    , genus  VARCHAR2
    , elfkind VARCHAR2) RETURN SELF AS RESULT
  , MEMBER FUNCTION get_elfkind RETURN VARCHAR2
  , MEMBER PROCEDURE set_elfkind
    ( elfkind VARCHAR2 )
  , OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2 )
  INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE
  TYPE BODY noldor_t IS
   
  CONSTRUCTOR FUNCTION noldor_t
  ( oid NUMBER, oname VARCHAR2
  , name VARCHAR2, genus VARCHAR2
  , elfkind VARCHAR2)
  RETURN SELF AS RESULT IS
  BEGIN
    self.oid := oid;
    self.oname := oname;
    self.name := name;
    self.genus := genus;
    self.elfkind := elfkind;
    RETURN;
  END noldor_t;  
  
  MEMBER FUNCTION get_elfkind
  RETURN VARCHAR2 IS
  BEGIN
    RETURN self.elfkind;
  END get_elfkind;
  
  MEMBER PROCEDURE set_elfkind
  ( elfkind  VARCHAR2 ) IS
  BEGIN
    self.elfkind := elfkind;
  END set_elfkind;
  
  /* Implement a to_string function. */
  OVERRIDING MEMBER FUNCTION to_string
  RETURN VARCHAR2 IS
  BEGIN
    RETURN (self AS elf_t).to_string||'['||self.elfkind||']';
  END to_string;
END;
/

/* Close log file. */
SPOOL OFF

/* Exit the connection. */
QUIT

