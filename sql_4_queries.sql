--количество исполнителей в каджом жанре
select g.genre_name , count(mg.musician_id) as "количество исполнителей"
from musicians_genres mg 
join genres g on mg.genre_id = g.genre_id
group by g.genre_name 

--количество треков, вошедших в альбомы 2019-2020 годов
select count(track_id) as "количество треков в альбомах 2019-2020"  
from tracks t 
join albums a on t.album_id = a.album_id
where a.release_date between '2019-01-01' and '2020-12-31'

--средняя продолжительность треков по каждому альбому
select a.album_name, sum(t.duration)/count(t.duration) as avarage_duration
from tracks t 
join albums a on t.album_id = a.album_id
group by a.album_name 

--все исполнители, которые не выпустили альбомы в 2020 году;
with t1 as (
	select m.musician_name, a.release_date 
	from musicians m
	join musicians_albums ma on m.musician_id = ma.musician_id 
	join albums a on ma.album_id = a.album_id 
	where extract (year from a.release_date) = 2020
	)
select m2.musician_name 
from musicians m2 
where m2.musician_name not in (select musician_name from t1)

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select distinct ma.mix_name, m.musician_name
from mixed_albums ma
join tracks_mixes tm on ma.mix_id = tm.mix_id 
join tracks t on tm.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join musicians_albums ma2 on a.album_id = ma2.album_id 
join musicians m on ma2.musician_id = m.musician_id 
where m.musician_name = 'Coldplay'

--название альбомов, в которых присутствуют исполнители более 1 жанра
select a.album_name, count(g.genre_name) as genres_quantity  
from albums a 
join musicians_albums ma on a.album_id = ma.album_id 
join musicians m on ma.musician_id = m.musician_id 
join musicians_genres mg on m.musician_id = mg.musician_id 
join genres g on mg.genre_id = g.genre_id 
group by a.album_name 
having count(*) > 1

--наименование треков, которые не входят в сборники
select t.track_name 
from tracks t 
full join tracks_mixes tm on t.track_id = tm.track_id 
full join mixed_albums ma on tm.mix_id = ma.mix_id
where ma.mix_name is null 

--исполнителя(-ей), написавшего самый короткий по продолжительности трек
select t1.musician_name, t1.track_name, t1.duration
from (
		select m.musician_name, t.track_name, t.duration, 
		dense_rank () over (order by t.duration) as rate
		from musicians m
		join musicians_albums ma on m.musician_id = ma.musician_id 
		join albums a on ma.album_id = a.album_id 
		join tracks t on a.album_id = t.album_id) t1
where t1.rate = 1

--название альбомов, содержащих наименьшее количество треков
select t1.album_name, t1.tracks_amount 
from (
		select a.album_name , 
		dense_rank () over (order by count(t.track_id)) as tracks_amount
		from tracks t 
		join albums a on t.album_id = a.album_id 
		group by a.album_name) t1
where t1.tracks_amount  = 1

 





		



