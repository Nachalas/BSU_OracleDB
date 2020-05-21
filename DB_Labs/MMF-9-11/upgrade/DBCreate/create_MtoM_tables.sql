CREATE TABLE UsersCompositions(
  User_ID Number NOT NULL,
  Composition_ID Number NOT NULL
);

CREATE TABLE PlaylistSongs(
  Playlist_ID Number NOT NULL,
  Song_ID Number NOT NULL
);

CREATE TABLE AlbumSongs(
  Composition_ID Number NOT NULL,
  Album_ID Number NOT NULL
);

CREATE TABLE SongsLikes(
  User_ID Number NOT NULL,
  Composition_ID Number NOT NULL
);

CREATE TABLE AlbumsLikes(
  Album_ID Number NOT NULL,
  User_ID Number NOT NULL
);

CREATE TABLE Preferences(
  User_ID Number NOT NULL,
  Style_ID Number NOT NULL
);

CREATE TABLE Subscriptions(
  User_ID Number NOT NULL,
  Subscribed_to Number NOT NULL
);

CREATE TABLE CompositionReviews(
  User_ID Number NOT NULL,
  Composition_ID Number NOT NULL,
  Review Varchar2(200 ) NOT NULL
);

COMMENT ON COLUMN CompositionReviews.Review IS 'A review on a composition';

CREATE TABLE AlbumReviews(
  User_ID Number NOT NULL,
  Album_ID Number NOT NULL,
  Review Varchar2(200 ) NOT NULL
);

COMMENT ON COLUMN AlbumReviews.Review IS 'A review on an album';

CREATE TABLE ListeningHistory(
  User_ID Number NOT NULL,
  Composition_ID Number NOT NULL,
  DateField Varchar2(30 ) NOT NULL
);

COMMENT ON COLUMN ListeningHistory.DateField IS 'Date when user listened to a composition';