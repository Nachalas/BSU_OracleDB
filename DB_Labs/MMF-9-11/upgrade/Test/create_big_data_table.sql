DEFINE DATA_TABLESPACE_NAME = 'MMF_9_11_DATA'

create table DATA_TABLE (
    First_name VARCHAR2(100),
    Last_name VARCHAR2(100),
    Nickname VARCHAR2(100),
    Email VARCHAR2(100),
    Playlist_name VARCHAR2(100),
    Playlist_Type VARCHAR2(100),
    Music_Type VARCHAR2(100),
    Composition_name VARCHAR2(100),
    "Length" VARCHAR2(100),
    Owner_First_name VARCHAR2(100),
    Owner_Last_name VARCHAR2(100),
    Owner_nickname VARCHAR2(100),
    "Like" VARCHAR2(100),
    Composition_Likes INTEGER,
    Listen INTEGER,
    Comments_Track VARCHAR2(100),
    Current_listening VARCHAR2(100),
    Stopped_Time VARCHAR2(100)
) TABLESPACE &&DATA_TABLESPACE_NAME;

INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Владислав','Кисляков','Chewbaca','ChewbacaMorning@gmail.com','Morning','User','Electronic','Nicolas Jaar - El Bandido','6.37','Oleg','Synytsky','Dreamboat','yes',2126,108000,'Nah not feelin it','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Владислав','Кисляков','Chewbaca','ChewbacaMorning@gmail.com','Morning','User','Electronic','Electro - Trance - House','4.09','Oleg','Synytsky','Dreamboat','no',4005,5055,'','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Владислав','Кисляков','Chewbaca','ChewbacaMorning@gmail.com','Morning','User','Electronic','Nice Night','5.21','Oleg','Synytsky','Dreamboat','yes',88,82000,'NIGGER!!!!','Y','1.02');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Владислав','Кисляков','Chewbaca','ChewbacaMorning@gmail.com','Morning','User','Electronic','Electro 2020','10.05','Christian','Radaelli','Dumpling','no',231,99548,'Sadie is my dog','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Владислав','Кисляков','Chewbaca','ChewbacaMorning@gmail.com','Morning','User','Electronic','REMIX BOLICHEROS 2019!!!','8.01','Christian','Radaelli','Dumpling','yes',84,32001,'','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Sport','System','Sport','Drifting','2.11','Ten','Walls','Monsieur','no',34,806,'Jesus christ','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Sport','System','Sport','SESSION #186 (Feat. Ten Walls)','4.02','Ten','Walls','Monsieur','yes',456,1050,'','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Sport','System','Pop','Ariana Grande - Side To Side Ft. Nicki Minaj (Remix)','3.12','Kelvin ','Pasman','Snuggy','no',1102,1526,'another classic','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Sport','System','Pop','Major Lazer - Too Original (Remix)','2.45','Kelvin ','Pasman','Snuggy','yes',358,1200,'адский разгон','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Sport','System','Sport','Ten Walls - Sparta','3.44','Ten','Walls','Monsieur','no',88,22000,'Очень серьезный кач','Y','2.01');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Bamboo','User','Chill','Murda On They Mind (Tales From Mount Zion)','3.02','Den','Philips','DJ Bishop','yes',3306,540050,'','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','James Blake - Air '||chr(38)||' Lack Thereof','4.09','Hélder','Leal','Hotshot','no',4455,1433,'','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','Little Fish','2.13','Hélder','Leal','Hotshot','yes',6587,8890,'','','');
INSERT INTO DATA_TABLE(First_name,Last_name,Nickname,Email,Playlist_name,Playlist_Type,Music_Type,Composition_name,"Length",Owner_First_name,Owner_Last_name,Owner_nickname,"Like",Composition_Likes,Listen,Comments_Track,Current_listening,Stopped_Time) 
VALUES('Елизавета','Рапинчук','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','Jamie XX - Loud Places (feat. Romy)','4.43','Hélder','Leal','Hotshot','no',2201,202023,'','','');