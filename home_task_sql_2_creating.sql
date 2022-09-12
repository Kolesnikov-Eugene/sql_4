create table musicians (
	musician_id serial primary key,
	musician_name varchar(100) not null
)

create table genres (
	genre_id serial primary key,
	genre_name varchar(100) not null unique
)

create table musicians_genres (
	musician_id int not null references musicians (musician_id),
	genre_id int not null references genres (genre_id),
	primary key (musician_id, genre_id)
)

create table albums (
	album_id serial primary key,
	album_name varchar(100) not null,
	release_date date not null check(date_part('year', release_date) > 1900)
)

create table musicians_albums (
	musician_id int not null references musicians (musician_id),
	album_id int not null references albums (album_id),
	primary key (musician_id, album_id)
)

create table tracks (
	track_id serial primary key,
	album_id int not null references albums (album_id),
	track_name varchar(100) not null,
	duration int not null check(duration > 20)	
)

create table mixed_albums (
	mix_id serial primary key,
	mix_name varchar (100) not null,
	release_date_mix date not null check(date_part('year', release_date_mix) > 1900)
)

create table tracks_mixes (
	track_id int not null references tracks (track_id),
	mix_id int not null references mixed_albums (mix_id),
	primary key (track_id, mix_id)
)
