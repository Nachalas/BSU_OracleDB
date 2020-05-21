CREATE TABLE Playlist(
  ID Number GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
  Name Varchar2(30 ) NOT NULL,
  isPublic Number(1,0) NOT NULL,
  madeByUser Number(1,0) NOT NULL
);

COMMENT ON COLUMN Playlist.ID IS 'Playlist''s ID (PK)';
COMMENT ON COLUMN Playlist.Name IS 'Playlist''s name';
COMMENT ON COLUMN Playlist.isPublic IS 'Is playlist public or private';
COMMENT ON COLUMN Playlist.madeByUser IS 'Is playlist made by user or system';