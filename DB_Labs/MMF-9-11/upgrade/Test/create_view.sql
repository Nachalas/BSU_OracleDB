create view finalView as 
select
c_user.first_name First_name,
c_user.last_name Last_name,
c_user.nickname Nickname,
c_user.email Email,
p.name Playlist_name,
p.p_type Playlist_Type,
s.style Music_Type,
c.name Composition_name,
c.c_length Length,
u_owner.first_name Owner_First_name,
u_owner.last_name Owner_Last_name,
u_owner.nickname Owner_nickname,
case when c_user.id in (select ss.user_id from songslikes ss where ss.composition_id = c.id)
    then 'yes'
    else 'no' end "Like",
c.likes Composition_Likes,
c.plays Listen,
cr.review Comments_track,
case when c_user.listening_to = c.id
    then 'Y'
    else '' end Current_listening,
case when c_user.listening_to = c.id
    then c_user.paused_at
    else '' end Stopped_time  
from composition c
left join style s
on s.id = c.style_id
left join usert u_owner
on u_owner.id = c.owner_id
left join listeninghistory lh
on lh.composition_id = c.id
left join usert c_user
on c_user.id = lh.user_id
left join playlistsongs ps
on ps.song_id = c.id
left join playlist p
on p.id = ps.playlist_id
left join songslikes sl
on sl.user_id = c_user.id and sl.composition_id = c.id
left join compositionreviews cr 
on cr.user_id = c_user.id and cr.composition_id = c.id;

