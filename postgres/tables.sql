create table language_preferences(id int, created_date_time char(19), lang char(7), lang_pref varchar(7), source_system varchar(10), pref_id int);

insert into language_preferences values(1, '2016-12-13 20:44:45', 'ENGLISH', 'WRITTEN', 'WebApp', 12);
insert into language_preferences values(2, '2016-12-13 20:44:45', 'ENGLISH', 'SPOKEN', 'WebApp', 12);
insert into language_preferences values(3, '2019-07-08 23:16:19', 'ENGLISH', 'SPOKEN', 'Batch', 13);
insert into language_preferences values(4, '2019-07-08 23:16:19', 'ENGLISH', 'WRITTEN', 'Batch', 13);
insert into language_preferences values(5, '2019-07-08 23:17:40', 'SPANISH', 'WRITTEN', 'Batch', 13);
insert into language_preferences values(6, '2018-09-05 16:35:43', 'ENGLISH', 'SPOKEN', 'ThirdParty', 14);
insert into language_preferences values(7, '2018-09-05 16:35:43', 'ENGLISH', 'WRITTEN', 'ThirdParty', 14);
insert into language_preferences values(8, '2018-12-12 22:19:24', 'ITALIAN', 'SPOKEN', 'ThirdParty', 14);
insert into language_preferences values(9, '2018-12-12 22:19:24', 'ITALIAN', 'WRITTEN', 'ThirdParty', 14);
insert into language_preferences values(10, '2018-12-13 15:57:28', 'ENGLISH', 'SPOKEN', 'ThirdParty', 14);
insert into language_preferences values(11, '2018-12-13 15:57:28', 'ENGLISH', 'WRITTEN', 'ThirdParty', 14);
insert into language_preferences values(12, '2019-05-03 16:34:36', 'ENGLISH', 'SPOKEN', 'Batch', 15);
insert into language_preferences values(13, '2019-05-03 16:34:36', 'ENGLISH', 'WRITTEN', 'Batch', 15);

create table identity(id int, pref_id int, identity_owner_name varchar(20), pref_desc varchar(50));

insert into identity values(12, 112, 'alex', 'lang prefs for WebApp');
insert into identity values(13, 112, 'alex', 'lang prefs for Batch');
insert into identity values(14, 114, 'mike', 'lang prefs for ThirdParty');
insert into identity values(15, 114, 'mike', 'lang prefs for Batch');
insert into identity values(16, 112, 'alex', 'email prefs for WebApp');
insert into identity values(17, 112, 'alex', 'email prefs for ThirdParty');
insert into identity values(18, 112, 'alex', 'address prefs for WebApp');
insert into identity values(19, 114, 'mike', 'email prefs for WebApp');

