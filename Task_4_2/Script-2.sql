--Задание 2
--Название и продолжительность самого длительного трека.
select track_list.track_name, track_list.duration_track
from track_list
where track_list.duration_track = (select max(duration_track) from track_list);

--Название треков, продолжительность которых не менее 3,5 минут.
select track_list.track_name, track_list.duration_track
from track_list
where track_list.duration_track > '03:30:00';

--Названия сборников, вышедших в период с 1990 по 2020 год включительно.
insert into collections_list (collection_name,collection_release_year,id_track_list,id_album_list)
values ('Best of the best', '2019', 4, 1);

select collection_name
from collections_list
where collection_release_year between '2018' and '2020';

--Исполнители, чьё имя состоит из одного слова.
select performer_name
from performers_list
where performer_name not LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
insert into track_list (track_name,duration_track,id_album_list)
values ('my religion', '2019', 4),
('Помой меня', '2020', 3);

select track_name
from track_list
where track_name LIKE '%мой%' or track_name like '%My%' or track_name like '%my%';