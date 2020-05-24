DEFINE DATA_TABLESPACE_NAME = 'MMF_9_11_DATA'

CREATE TABLE DATA_TABLE (
    First_name VARCHAR2(100),
    Last_name VARCHAR2(100),
    Nickname VARCHAR2(100),
    Email VARCHAR2(100),
    Playlist_name VARCHAR2(100),
    Playlist_Type VARCHAR2(100),
    Music_Type VARCHAR2(100),
    Composition_name VARCHAR2(100),
    Length VARCHAR2(100),
    Owner_First_name VARCHAR2(100),
    Owner_Last_name VARCHAR2(100),
    Owner_nickname VARCHAR2(100),
    Liked VARCHAR2(100),
    Composition_Likes INTEGER,
    Listen INTEGER,
    Comment_Track VARCHAR2(100),
    Current_listening VARCHAR2(100),
    Stopped_Time VARCHAR2(100)
) TABLESPACE &&DATA_TABLESPACE_NAME;

INSERT INTO DATA_TABLE (First_name, Last_name, Nickname, Email, Playlist_name, Playlist_Type, Music_Type, Composition_name, Length, Owner_First_name, Owner_Last_name, Owner_nickname, Liked, Composition_Likes, Listen, Comment_Track)
VALUES 				   ('Владислав', 'Кисляков', 'Chewbaca', 'ChewbacaMorning@gmail.com', 'Morning', 'User', 'Electronic', 'Nicolas Jaar - El Bandido', '6.37', 'Oleg',	'Synytsky', 'Dreamboat', 'yes', 2126, 108000, 'Nah not feelin it');