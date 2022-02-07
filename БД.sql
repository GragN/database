create table if not exists genre (
	id serial primary key,
	name varchar(20) not null unique
);

create table if not exists musician (
	id serial primary key,
	name varchar(30) not null,
	genre_id integer references genre(id)
);

create table if not exists album (
	id serial primary key,
	name varchar(40) not null unique,
	musician_id integer references musician(id)
);

create table if not exists track (
	id serial primary key,
	name varchar(15) not null unique,
	duration varchar(5) not null,
	album_id integer references album(id)
);

alter table album add column year_of_issue date not null;