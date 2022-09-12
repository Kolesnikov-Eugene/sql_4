insert into musicians (musician_name)
values ('Coldplay'), ('Blink-182'), ('Sum-41'), ('Nickelback'), ('Bring me the horizon'),
	('Machine gun kelly'), ('Michael Jackson'), ('Madonna'), ('Limp bizkit'), ('Linkin park')
	
insert into genres (genre_name)
values ('pop'), ('pop-rock'), ('alternative'), ('pop-punk'), ('rock')

insert into albums (album_name, release_date)
values ('Madame X', '2019-06-14')

insert into albums (album_name, release_date)
values ('Music of the spheres', '2021-10-15'), ('Everyday life', '2019-11-22'), 
	('California', '2016-07-01'), ('Order in decline', '2018-01-01'), 
	('Feed the machine', '2018-02-02'), ('Amo', '2019-03-05'), 
	('Tickets to my downfall', '2020-03-04'), ('Invincible', '2001-01-01'),
	('Gold Cobra', '2011-05-05'), ('One more light', '2018-06-04')

insert into mixed_albums (mix_name, release_date_mix)
values ('Coldmix', '2021-01-01')

insert into mixed_albums (mix_name, release_date_mix)
values ('Limpmix', '2020-08-09'),
	('Blink mix', '2018-09-05'), ('Sum-41 mix', '2019-09-09'), 
	('Nickmix', '2021-01-03'), ('Supermix', '2018-01-01'),
	('Michael mix', '2019-05-04'), ('Summer mix', '2020-01-01')
	
insert into tracks (album_id, track_name, duration)
values (2, 'Higher power', '225')

insert into tracks (album_id, track_name, duration)
values (2, 'Let somebody go', '240'), (3, 'Church', '190'), (4, 'Bored to death', '200'),
	(5, 'Into deep', '180'), (6, 'How you remind me', '200'), (7, 'Strangers', '160'),
	(7, 'Follow you', '175'), (8, 'Lonely', '205'), (8, 'kiss kiss', '210'), (9, 'Heartbreaker', '195'),
	(9, 'Unbreakable', '175'), (10, 'Back porch', '220'), (10, 'Why try', '180'),
	(11, 'Numb', '215'), (11, 'In the end', '210'), (1, 'Frozen', '170')
	
insert into musicians_genres (musician_id, genre_id)
values (1, 2), (2, 4), (3, 4), (4, 5), (6, 3), (7, 1), (8, 1), (9, 3), (10, 3)

insert into musicians_albums (musician_id, album_id)
values (1, 2), (1, 3), (2, 4), (3, 5), (4, 6), (5, 7), (6, 8), (7, 9), (8, 1), (9, 10), (10, 11)

insert into tracks_mixes (track_id, mix_id)
values (1, 1), (2, 1), (3, 1), (4, 1), (1, 2), (13, 2), (14, 2),
	(4, 3), (5, 3), (5, 4), (7, 4), (6, 5), (10, 5), (17, 6), (16, 6), (15, 6), (14, 6),
	(8, 7), (7, 7), (9, 7), (10, 8), (11, 8), (12, 8), (13, 8)
	
insert into tracks (album_id, track_name, duration)
values (4, 'My valentine', '250'), (6, 'Oh my God', '225')

insert into musicians_genres (musician_id, genre_id)
values (5, 5)

insert into musicians_genres (musician_id, genre_id)
values (5, 3)
