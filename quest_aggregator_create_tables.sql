create table if not exists users
(
user_id serial primary key,
email varchar(100) unique not null,
password varchar(100) check (char_length(password) >= 8) not null,
first_name varchar(50) not null,
last_name varchar (50) not null,
birthdate date not null,
sex integer not null,
city varchar(50) not null,
phone varchar(10) unique not null,
is_verified boolean not null
);

create table if not exists companies
(
company_id serial primary key,
name varchar(100) unique not null,
description text not null
);

create table if not exists offices
(
office_id serial primary key,
company_id integer references companies(company_id) on delete cascade,
city varchar(50) not null,
subway_station varchar(50),
address varchar(100) not null,
has_wifi boolean not null,
has_parking boolean not null,
has_waiting_room boolean not null,
other_features text,
start_time time not null,
end_time time not null
);

create table if not exists categories
(
category_id serial primary key,
name varchar(100) unique not null
);

create table if not exists quests
(
quest_id serial primary key,
name varchar(100) unique not null,
minimum_players integer check (minimum_players >= 1) not null,
maximum_players integer check (maximum_players >= minimum_players),
office_id integer references offices(office_id) on delete cascade,
duration integer check (duration >= 1) not null,
difficulty integer check (difficulty >= 0 and difficulty <= 10) not null,
fear_level integer check (fear_level >= 0 and fear_level <= 10) not null,
age integer check (age >= 0 and age < 100) not null,
description text not null
);

create table if not exists timetable
(
timetable_id serial primary key,
quest_id integer references quests(quest_id) on delete cascade,
quest_date date not null,
quest_time time not null,
price integer check (price >= 1) not null,
is_booked boolean not null,
user_id integer references users(user_id) on delete set null,
is_paid boolean not null,
is_visited boolean not null
);

create table if not exists office_workers
(
office_worker_id serial primary key,
user_id integer references users(user_id) on delete cascade,
office_id integer references offices(office_id) on delete cascade,
right_to_edit_timetable boolean not null,
right_to_add_users boolean not null,
right_to_edit_office_phones boolean not null,
right_to_edit_company_phones boolean not null,
right_to_mark_visits boolean not null,
right_to_accept_payments boolean not null
);

create table if not exists quests_photos
(
quest_photo_id serial primary key,
quest_id integer references quests(quest_id) on delete cascade,
photo text not null
);

create table if not exists quest_categories
(
quest_category_id serial primary key,
quest_id integer references quests(quest_id) on delete cascade,
category_id integer references categories(category_id) on delete cascade
);

create table if not exists offices_phones
(
office_phone_id serial primary key,
office_id integer references offices(office_id) on delete cascade,
phone varchar(10) not null
);

create table if not exists offices_photos
(
office_photo_id serial primary key,
office_id integer references offices(office_id) on delete cascade,
photo text not null
);

create table if not exists companies_phones
(
company_phone_id serial primary key,
company_id integer references companies(company_id) on delete cascade,
phone varchar(10) not null
);

create table if not exists user_comments
(
comment_id serial primary key,
user_id integer references users(user_id) on delete set null,
quest_id integer references quests(quest_id) on delete cascade,
comment_text text not null,
score integer check (score >= 0 and score <= 10) not null
);

create table if not exists favourite_quests
(
favourite_quest_id serial primary key,
user_id integer references users(user_id) on delete cascade,
quest_id integer references quests(quest_id) on delete cascade
);