set serveroutput on;

declare rowCount NUMBER;

begin
select count(*) into rowCount from ALBUM;
DBMS_OUTPUT.PUT_LINE('ALBUM - row count: '|| rowCount); 
select count(*) into rowCount from PLAYLIST;
DBMS_OUTPUT.PUT_LINE('PLAYLIST - row count: '|| rowCount); 
select count(*) into rowCount from COMPOSITION;
DBMS_OUTPUT.PUT_LINE('COMPOSITION - row count: '|| rowCount); 
select count(*) into rowCount from STYLE;
DBMS_OUTPUT.PUT_LINE('STYLE - row count: '|| rowCount); 
select count(*) into rowCount from USERT;
DBMS_OUTPUT.PUT_LINE('USERT - row count: '|| rowCount);
select count(*) into rowCount from ALBUMREVIEWS; 
DBMS_OUTPUT.PUT_LINE('ALBUMREVIEWS - row count: '|| rowCount);
select count(*) into rowCount from ALBUMSLIKES; 
DBMS_OUTPUT.PUT_LINE('ALBUMSLIKES - row count: '|| rowCount);
select count(*) into rowCount from ALBUMSONGS; 
DBMS_OUTPUT.PUT_LINE('ALBUMSONGS - row count: '|| rowCount); 
select count(*) into rowCount from COMPOSITIONREVIEWS;
DBMS_OUTPUT.PUT_LINE('COMPOSITIONREVIEWS - row count: '|| rowCount); 
select count(*) into rowCount from LISTENINGHISTORY;
DBMS_OUTPUT.PUT_LINE('LISTENINGHISTORY - row count: '|| rowCount); 
select count(*) into rowCount from PLAYLISTSONGS;
DBMS_OUTPUT.PUT_LINE('PLAYLISTSONGS - row count: '|| rowCount); 
select count(*) into rowCount from PREFERENCES;
DBMS_OUTPUT.PUT_LINE('PREFERENCES - row count: '|| rowCount); 
select count(*) into rowCount from SONGSLIKES;
DBMS_OUTPUT.PUT_LINE('SONGSLIKES - row count: '|| rowCount);
select count(*) into rowCount from SUBSCRIPTIONS; 
DBMS_OUTPUT.PUT_LINE('SUBSCRIPTIONS - row count: '|| rowCount); 
end;
/