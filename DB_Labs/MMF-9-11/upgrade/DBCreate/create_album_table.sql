CREATE TABLE Album(
  ID Number GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
  Style_ID Number,
  Likes Integer NOT NULL,
  Reposts Integer NOT NULL,
  Plays Integer NOT NULL,
  Rating Float,
  Owner_ID Number
);

COMMENT ON COLUMN Album.ID IS 'Album''s ID (PK)';
COMMENT ON COLUMN Album.Style_ID IS 'ID of an album''s style';
COMMENT ON COLUMN Album.Likes IS 'Amount of likes of an album';
COMMENT ON COLUMN Album.Reposts IS 'Amount of reposts of an album';
COMMENT ON COLUMN Album.Plays IS 'Amount of plays of an album';
COMMENT ON COLUMN Album.Rating IS 'Album''s rating';
COMMENT ON COLUMN Album.Owner_ID IS 'ID of an album''s owner';