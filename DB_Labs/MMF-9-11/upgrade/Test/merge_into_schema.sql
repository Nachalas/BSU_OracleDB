-- Вставляем данные о людях из таблицы
merge into usert
    using (
        select distinct
        dt.first_name fn,
        dt.last_name ln,
        dt.nickname nick,
        dt.email email
        from data_table dt
    ) tmp
    on (
    tmp.nick = usert.nickname 
    )
when not matched then 
    insert (
    first_name, 
    last_name, 
    nickname, 
    email
    ) values (
    tmp.fn, 
    tmp.ln, 
    tmp.nick, 
    tmp.email
    );
	
-- Вставляем данные о создателях песен туда же
merge into usert
    using (
        select distinct
        dt.owner_first_name fn,
        dt.owner_last_name ln,
        dt.owner_nickname nick
        from data_table dt
    ) tmp
    on (
    tmp.nick = usert.nickname 
    )
when not matched then 
    insert (
    first_name, 
    last_name, 
    nickname
    ) values (
    tmp.fn, 
    tmp.ln, 
    tmp.nick
	);
    
-- Вставляем в таблицу юзеров время, на котором они остановили песню
merge into usert 
    using (
        select distinct
        dt.stopped_time sttime,
        usert.id u_id
        from data_table dt
        left join usert
        on usert.nickname = dt.nickname
    ) tmp
    on (
    usert.id = tmp.u_id
    )
when matched then
    update set usert.paused_at = tmp.sttime;


-- добавляем плейлисты в таблицу плейлистов
merge into playlist
    using (
        select distinct
        dt.playlist_name name,
        dt.playlist_type type,
        usert.id id
        from data_table dt
        left join usert 
        on dt.owner_nickname = usert.nickname
    ) tmp
    on (
    playlist.name = tmp.name and
    playlist.p_type = tmp.type and
    playlist.owner_id = tmp.id
    )
when not matched then
    insert (
    playlist.name,
    playlist.p_type,
    playlist.owner_id
    ) values (
    tmp.name,
    tmp.type,
    tmp.id
    );


-- добавляем стили в таблицу стилей
merge into style
    using (
        select distinct
        dt.music_type style
        from data_table dt
    ) tmp
    on (
    style.style = tmp.style
    )
when not matched then 
    insert (
    style.style
    ) values (
    tmp.style
    );


-- добавляем композиции в таблицу композиций
merge into composition
    using (
        select distinct
        dt.composition_name name,
        dt."Length" len,
        style.id style,
        dt.composition_likes likes,
        dt.listen plays,
        usert.id id
        from data_table dt
        left join style
        on style.style = dt.music_type
        left join usert
        on dt.owner_nickname = usert.nickname
    ) tmp
    on (
    composition.name = tmp.name and
    composition.c_length = tmp.len and
    composition.style_id = tmp.style and
    composition.plays = tmp.plays and
    composition.likes = tmp.likes and
    composition.owner_id = tmp.id
    )
when not matched then
    insert (
    composition.name,
    composition.c_length,
    composition.style_id,
    composition.plays,
    composition.likes,
    composition.owner_id
    ) values (
    tmp.name,
    tmp.len,
    tmp.style,
    tmp.plays,
    tmp.likes,
    tmp.id
    );
	
	
-- добавляем данные, какие песни в какой плейлист входят
merge into playlistsongs
    using (
        select distinct
        dt.composition_name,
        c.id c_id,
        p.id p_id
        from data_table dt
        left join usert
        on usert.nickname = dt.owner_nickname
        left join playlist p
        on p.name = dt.playlist_name and p.p_type = dt.playlist_type and usert.id = p.owner_id
        right join composition c
        on c.name = dt.composition_name
    ) tmp 
    on (
    playlistsongs.playlist_id = tmp.p_id and
    playlistsongs.song_id = tmp.c_id
    ) 
when not matched then
    insert (
    playlistsongs.song_id,
    playlistsongs.playlist_id
    ) values (
    tmp.c_id,
    tmp.p_id
    );


-- добавляем данные, кто какие песни лайкнул
merge into songslikes 
    using (
        select distinct
        usert.id u_id,
        c.id c_id
        from data_table dt
        left join usert
        on usert.nickname = dt.nickname
        left join composition c
        on c.name = dt.composition_name
        where dt."Like" = 'yes' 
    ) tmp
    on (
    songslikes.user_id = tmp.u_id and
    songslikes.composition_id = tmp.c_id
    )
when not matched then
    insert (
    songslikes.user_id,
    songslikes.composition_id
    ) values (
    tmp.u_id,
    tmp.c_id
    );


-- комментарии к песням
merge into compositionreviews
    using (
        select distinct
        dt.comments_track review,
        c.id c_id,
        usert.id u_id
        from data_table dt
        left join composition c
        on dt.composition_name = c.name
        left join usert
        on usert.nickname = dt.nickname
        where not dt.comments_track is null
    ) tmp
    on (
    compositionreviews.user_id = tmp.u_id and
    compositionreviews.composition_id = tmp.c_id and
    compositionreviews.review = tmp.review
    )
when not matched then
    insert (
    compositionreviews.user_id,
    compositionreviews.composition_id,
    compositionreviews.review 
    ) values (
    tmp.u_id,
    tmp.c_id,
    tmp.review
    );


-- что пользователь слушает в текущий момент
merge into usert
    using (
        select distinct
        usert.id u_id,
        c.id c_id
        from data_table dt
        left join composition c
        on c.name = dt.composition_name
        left join usert
        on usert.nickname = dt.nickname
        where dt.current_listening = 'Y'
    ) tmp
    on (
    usert.id = tmp.u_id 
    )
when matched then
    update set usert.listening_to = tmp.c_id;


-- история прослушиваний. Всё на эту дату
merge into listeninghistory 
    using (
        select distinct
        usert.id u_id,
        c.id c_id
        from data_table dt
        left join composition c
        on c.name = dt.composition_name
        left join usert
        on dt.nickname = usert.nickname
    ) tmp
    on (
        listeninghistory.user_id = tmp.u_id and
        listeninghistory.composition_id = tmp.c_id
    )
when not matched then
    insert (
    listeninghistory.datefield,
    listeninghistory.user_id,
    listeninghistory.composition_id
    ) values (
    to_char(current_date),
    tmp.u_id,
    tmp.c_id
    );
    
commit;