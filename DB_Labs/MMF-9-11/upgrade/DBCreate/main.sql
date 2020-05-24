SET TIMING ON

SPOOL UPGRADE_LOG.LOG
SET SERVEROUTPUT ON

DEFINE SCHEMA_NAME = &&1

PROMPT ---
PROMPT Connecting to schema &&SCHEMA_NAME
PROMPT ---

connect &&SCHEMA_NAME/oracle 

-- Creating tables
@create_album_table.sql &&SCHEMA_NAME
@create_composition_table.sql &&SCHEMA_NAME
@create_playlist_table.sql &&SCHEMA_NAME
@create_style_table.sql &&SCHEMA_NAME
@create_user_table.sql &&SCHEMA_NAME
@create_MtoM_tables.sql &&SCHEMA_NAME

-- Creating constraints and moving tables
@create_constraints.sql &&SCHEMA_NAME

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE SCHEMA_NAME