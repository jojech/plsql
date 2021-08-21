-- ======================================================================
--  Name:    insert_instances.sql
--  Author:  Michael McLaughlin
--  Date:    02-Apr-2020
-- ------------------------------------------------------------------
--  Purpose: Prepare final project environment.
-- ======================================================================

-- Open the log file.
SPOOL insert_instances.txt

-- Here's a sample insert.
INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, man_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Man'
          , name  => 'Boromir'
          , genus => 'Men' ));


INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, man_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Man'
          , name  => 'Faramir'
          , genus => 'Men' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, hobbit_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Hobbit'
          , name  => 'Bilbo'
          , genus => 'Hobbits' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, hobbit_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Hobbit'
          , name  => 'Frodo'
          , genus => 'Hobbits' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, hobbit_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Hobbit'
          , name  => 'Merry'
          , genus => 'Hobbits' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, hobbit_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Hobbit'
          , name  => 'Pippin'
          , genus => 'Hobbits' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, hobbit_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Hobbit'
          , name  => 'Samwise'
          , genus => 'Hobbits' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, dwarf_t(  oid   => tolkien_s.CURRVAL
          , oname => 'Dwarf'
          , name  => 'Gimli'
          , genus => 'Dwarves' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, noldor_t( oid   => tolkien_s.CURRVAL
          , oname => 'Elf'
          , name  => 'Feanor'
          , genus => 'Elves'
          , elfkind => 'Noldor' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, silvan_t( oid   => tolkien_s.CURRVAL
          , oname => 'Elf'
          , name  => 'Tauriel'
          , genus => 'Elves'
          , elfkind => 'Silvan' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, teleri_t( oid   => tolkien_s.CURRVAL
          , oname => 'Elf'
          , name  => 'Earwen'
          , genus => 'Elves'
          , elfkind => 'Teleri' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, teleri_t( oid   => tolkien_s.CURRVAL
          , oname => 'Elf'
          , name  => 'Celeborn'
          , genus => 'Elves'
          , elfkind => 'Teleri' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, sindar_t( oid   => tolkien_s.CURRVAL
          , oname => 'Elf'
          , name  => 'Thranduil'
          , genus => 'Elves'
          , elfkind => 'Sindar' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, sindar_t( oid   => tolkien_s.CURRVAL
          , oname => 'Elf'
          , name  => 'Legolas'
          , genus => 'Elves'
          , elfkind => 'Sindar' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, orc_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Orc'
          , name  => 'Azog the Defiler'
          , genus => 'Orcs' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, orc_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Orc'
          , name  => 'Bolg'
          , genus => 'Orcs' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, maia_t(   oid   => tolkien_s.CURRVAL
          , oname => 'Maia'
          , name  => 'Gandalf the Grey'
          , genus => 'Maiar' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, maia_t(   oid   => tolkien_s.CURRVAL
          , oname => 'Maia'
          , name  => 'Radagast the Brown'
          , genus => 'Maiar' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, maia_t(   oid   => tolkien_s.CURRVAL
          , oname => 'Maia'
          , name  => 'Saruman the White'
          , genus => 'Maiar' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, goblin_t( oid   => tolkien_s.CURRVAL
          , oname => 'Goblin'
          , name  => 'The Great Goblin'
          , genus => 'Goblins' ));

INSERT INTO tolkien
( tolkien_id
, tolkien_character )
VALUES
( tolkien_s.NEXTVAL
, man_t(    oid   => tolkien_s.CURRVAL
          , oname => 'Man'
          , name  => 'Aragorn'
          , genus => 'Men' ));

-- Put your other insert statements here.


-- Close the log file.
SPOOL OFF

QUIT;
