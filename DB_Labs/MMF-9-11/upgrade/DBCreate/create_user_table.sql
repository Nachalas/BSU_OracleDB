DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE UserT(
  ID Number GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
  Nickname Varchar2(30 ) NOT NULL,
  First_name Varchar2(30 ),
  Last_name Varchar2(30 ),
  EMail Varchar2(30 ) NOT NULL,
  Bio Varchar2(200 ),
  Listening_to Number,
  Paused_at Varchar2(20)
) TABLESPACE &&DATA_TABLESPACE_NAME;

COMMENT ON COLUMN UserT.ID IS 'User''s ID (PK)';
COMMENT ON COLUMN UserT.Nickname IS 'User''s nickname';
COMMENT ON COLUMN UserT.First_name IS 'User''s first name';
COMMENT ON COLUMN UserT.Last_name IS 'User''s last name';
COMMENT ON COLUMN UserT.EMail IS 'User''s email';
COMMENT ON COLUMN UserT.Bio IS 'User''s biography';
COMMENT ON COLUMN UserT.Listening_to IS 'What user is currently listening to (Null or a composition ID)';
COMMENT ON COLUMN UserT.Paused_at IS 'Where did user pause the composition he''s listening to (Null or a value)';