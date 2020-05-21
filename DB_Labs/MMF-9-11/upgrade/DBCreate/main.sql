SET TIMING ON

SPOOL UPGRADE_LOG.LOG
SET SERVEROUTPUT ON

DEFINE SCHEMA_NAME = &&1

PROMPT ---
PROMPT Connecting to schema &&SCHEMA_NAME
PROMPT ---

connect &&SCHEMA_NAME/oracle 

-- Creating tables
@create_album_table.sql
@create_composition_table.sql
@create_playlist_table.sql
@create_style_table.sql
@create_user_table.sql
@create_MtoM_tables.sql

-- Creating constraints and moving tables
@create_constraints.sql &&SCHEMA_NAME
@move_tables.sql &&SCHEMA_NAME

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE SCHEMA_NAME