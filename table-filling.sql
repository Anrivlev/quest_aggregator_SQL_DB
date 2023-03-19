insert into users(email, password, first_name, last_name, birthdate, sex, city, phone, is_verified)
values ('v.pupkin@gmail.com', 'qwer1234', 'vasiliy', 'pupkin', '2001-12-12', 1, 'Moscow', '9175817545', true),
('p.ryabov@mail.ru', 'qwer4321', 'pavel', 'ryabov', '1985-12-12', 1, 'Moscow', '9171857545', true),
('i.manuilova@gmail.com', 'irinamanuilova', 'irina', 'manuilova', '1981-12-12', 2, 'Moscow', '9175818965', true),
('e.pupkina@gmail.com', 'qwer1234', 'elena', 'pupkina', '2001-5-12', 2, 'Moscow', '9175895145', true),
('v.brovin@gmail.com', 'qwer1234', 'vasiliy', 'brovin', '1973-6-7', 1, 'Moscow', '9175817656', true),
('monster@mail.ru', 'qwer1234', 'anna', 'ivanova', '2001-12-12', 2, 'Moscow', '9176667545', true);

insert into companies(name, description)
values ('Questomania', 'The best company ever'),
('Vkonakte', 'Also known as Mail.ru GROUPS'),
('EpicGames', 'We make games');

insert into offices (company_id, city, subway_station, address, has_wifi, has_parking, has_waiting_room, other_features, start_time, end_time)
values (1, 'Moscow', 'Kantemirovskaya', 'Kantemirovskaya street 8', true, false, true, '', '8:00:00', '23:00:00'),
(1, 'Perm', null, 'Stalina street 9', true, true, true, '', '8:00:00', '23:00:00'),
(2, 'Moscow', 'Kantemirovskaya', 'Kantemirovskaya street 9', false, false, true, '', '8:00:00', '23:00:00'),
(3, 'Moscow', 'Kantemirovskaya', 'Kantemirovskaya street 10', false, false, false, '', '8:00:00', '23:00:00'),
(1, 'Moscow', 'Kantemirovskaya', 'Kantemirovskaya street 59', true, true, true, '', '8:00:00', '23:00:00'),
(2, 'Moscow', 'Technopark', 'Krasivaya street 4', true, false, true, '', '8:00:00', '23:00:00'),
(1, 'Moscow', 'Technopark', 'Krasivaya street 9', false, false, true, '', '8:00:00', '23:00:00');

insert into categories (name)
values ('scary'), ('funny'), ('with family'), ('kids'), ('18+'), ('steampunk'), ('cyberpunk'), ('difficult'), ('popular'), ('best'), ('performance');

insert into quests (name, minimum_players, maximum_players, office_id, duration, difficulty, fear_level, age, description)
values ('Fishing with dynamite', 4, 8, 1, 90, 8, 1, 18, 'Do not bring your dad'),
('Steamtrain', 3, 6, 2, 75, 6, 0, 12, 'Take a ride'),
('Paris 2277', 2, 6, 3, 60, 7, 5, 16, 'In the most developed part of the world'),
('Last Brawl', 2, 4, 1, 60, 4, 0, 12, 'Welcome to the Last Brawl'),
('Superman returns', 2, 8, 2, 75, 5, 2, 12, 'He is back'),
('Anarchy in Rome 9997', 4, 12, 4, 90, 4, 3, 12, 'The bright future awaits'),
('Tesla Aircraft', 2, 4, 5, 60, 4, 0, 12, 'Electric mayhem'),
('Fishing with Chapayev', 4, 8, 1, 80, 8, 1, 12, 'Bring your dad'),
('Hold your breath', 4, 8, 6, 90, 5, 10, 12, 'The scariest moment of your life'),
('Knights of steam and horror', 3, 8, 7, 90, 8, 10, 18, 'Fight the ghosts'),
('Ivan the Ripper', 2, 8, 6, 90, 2, 10, 18, 'He changed the name but not the style'),
('Stolen Easter', 3, 5, 7, 90, 2, 0, 6, 'Return the Easter');

insert into timetable (quest_id, quest_date, quest_time, price, is_booked, user_id, is_paid, is_visited)
values (1, '2021-12-24', '15:00:00', 2500, false, null, false, false),
(1, '2021-12-24', '17:00:00', 2500, false, null, false, false),
(1, '2021-12-24', '19:00:00', 2800, true, 1, true, false),
(1, '2021-12-24', '21:00:00', 3000, false, null, false, false),
(2, '2021-12-24', '14:00:00', 2000, false, null, false, false),
(2, '2021-12-24', '16:00:00', 2000, false, null, false, false),
(2, '2021-12-24', '18:00:00', 2000, false, null, false, false),
(2, '2021-12-24', '20:00:00', 2000, false, null, false, false),
(3, '2021-12-24', '16:00:00', 2000, false, null, false, false),
(3, '2021-12-24', '18:00:00', 2000, false, null, false, false),
(3, '2021-12-24', '20:00:00', 3000, true, 4, false, false),
(4, '2021-12-24', '10:00:00', 1700, false, null, false, false),
(4, '2021-12-24', '12:00:00', 1700, false, null, false, false),
(4, '2021-12-24', '14:00:00', 1700, false, null, false, false),
(4, '2021-12-24', '16:00:00', 2700, false, null, false, false),
(4, '2021-12-24', '18:00:00', 3700, false, null, false, false),
(4, '2021-12-24', '20:00:00', 3700, false, null, false, false),
(5, '2021-12-24', '10:00:00', 3000, true, 5, true, false),
(5, '2021-12-23', '12:00:00', 2900, false, null, false, false),
(5, '2021-12-23', '14:00:00', 2900, false, null, false, false),
(5, '2021-12-23', '16:00:00', 3600, true, 6, false, false),
(5, '2021-12-23', '18:00:00', 3600, true, 2, false, false),
(5, '2021-12-23', '20:00:00', 2900, false, null, false, false),
(6, '2021-12-23', '12:00:00', 5000, false, null, false, false),
(7, '2021-12-23', '16:00:00', 5000, false, null, false, false),
(8, '2021-12-23', '22:00:00', 5000, false, null, false, false),
(9, '2021-12-23', '14:00:00', 5000, false, null, false, false),
(10, '2021-12-23', '16:00:00', 3000, false, null, false, false),
(11, '2021-12-23', '15:00:00', 10000, false, null, false, false),
(12, '2021-12-23', '18:00:00', 1700, false, null, false, false);

insert into office_workers (user_id, office_id, right_to_edit_timetable, right_to_add_users, right_to_edit_office_phones, right_to_edit_company_phones, right_to_mark_visits, right_to_accept_payments)
values (3, 1, true, true, true, true, true, true);

-- insert into quests_photos (quest_id, photo)
-- values ();

insert into quest_categories (quest_id, category_id)
values (1, 2),(1, 5),(1, 9),(1, 10),(2, 6),(2, 10),(3, 7),(4, 2),(6, 2),(6, 7),(7, 6),(8, 2),(9, 1),(10, 1),(10, 6),(11, 1),(11, 5),(11, 11),(12, 2),(12, 3),(12, 4);



insert into offices_phones (office_id, phone)
values (1, 9178956788),(2, 9179456078),(3, 9177809678),(4, 9178905699),(5, 9178905678),(6, 7917800678),(7, 7917800078),(7, 7917895009);

-- insert into offices_photos (office_id, photo)
-- values ();

insert into companies_phones (company_id, phone)
values (1, 9176785544),(2, 9176788955),(3, 9179995544),(3, 9178889554);

insert into user_comments (user_id, quest_id, comment_text, score)
values (1, 1, 'pretty good', 8),(3, 12, 'nice', 6),(6, 4, 'awesome', 7),(5, 9, 'want to go again', 10),(3, 1, 'bad, just bad', 3),(2, 7, 'exciting', 9);

insert into favourite_quests (user_id, quest_id)
values(3, 1),(3, 2),(3, 3),(1, 1),(6, 1);
