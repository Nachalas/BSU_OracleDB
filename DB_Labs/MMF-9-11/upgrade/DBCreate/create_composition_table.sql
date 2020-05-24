DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Composition(
  ID Number GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
  Name Varchar2(50 ) NOT NULL,
  Style_ID Number,
  C_Length Varchar2(20) NOT NULL,
  Owner_ID Number,
  Likes INTEGER NOT NULL,
  Reposts INTEGER NOT NULL,
  Plays INTEGER NOT NULL,
  Rating Float
) TABLESPACE &&DATA_TABLESPACE_NAME;

COMMENT ON COLUMN Composition.ID IS 'Compositon''s ID (PK)';
COMMENT ON COLUMN Composition.Name IS 'Compostion''s name';
COMMENT ON COLUMN Composition.Style_ID IS 'ID of a composition''s style (May be NULL)';
COMMENT ON COLUMN Composition.Length IS 'Composition''s length';
COMMENT ON COLUMN Composition.Owner_ID IS 'ID of a composition''s owner (may be NULL)';
COMMENT ON COLUMN Composition.Likes IS 'Amount of likes of a composition';
COMMENT ON COLUMN Composition.Reposts IS 'Amount of reposts of a composition';
COMMENT ON COLUMN Composition.Plays IS 'Amount of plays of a composition';
COMMENT ON COLUMN Composition.Rating IS 'Rating of a composition';