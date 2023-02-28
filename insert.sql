-- добавляем 8 исполнителей 
INSERT INTO singer (nickname)
VALUES ('Timati')

INSERT INTO singer (nickname)
VALUES ('Karolina')

INSERT INTO singer (nickname)
VALUES ('Djony')

INSERT INTO singer (nickname)
VALUES ('Emin')

INSERT INTO singer (nickname)
VALUES ('Laboda')

INSERT INTO singer (nickname)
VALUES ('Klava Koka')

INSERT INTO singer (nickname)
VALUES ('Milana')

INSERT INTO singer (nickname)
VALUES ('Ivanushki Internetional')


-- заполняем таблицу жанры

INSERT INTO  genre (name_genre)
VALUES ('pop')

INSERT INTO  genre (name_genre)
VALUES ('jazz')

INSERT INTO  genre (name_genre)
VALUES ('rap')

INSERT INTO  genre (name_genre)
VALUES ('folklore')

INSERT INTO  genre (name_genre)
VALUES ('rock')


-- заполняем таблицу альбомы

INSERT INTO  album  (title, year_of_release)
VALUES ('Black Star', '2006')

INSERT INTO  album  (title, year_of_release)
VALUES ('Koroleva', '1997')

INSERT INTO  album  (title, year_of_release)
VALUES ('Spisok tvoih misleyi', '2019')


INSERT INTO  album  (title, year_of_release)
values ('Good Love', '2019')

INSERT INTO  album  (title, year_of_release)
values ('Ne ma4o', '2008')

INSERT INTO  album  (title, year_of_release)
VALUES ('Neprilichno o lichnom', '2017')


INSERT INTO  album  (title, year_of_release)
VALUES ('Barbie', '2023')

INSERT INTO  album  (title, year_of_release)
VALUES ('Podogdi menya', '2000')


-- заполняем таблицу треки
INSERT INTO  track  (title, duration, id_album)
VALUES  ('Revi', '4:58', '8')

INSERT INTO  track  (title, duration, id_album)
VALUES  ('Podogdi menya', '4:32', '8')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Potancyi co mnoi', '4:32', '1')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Jara', '4:19', '1')

INSERT INTO  track  (title, duration, id_album)
VALUES ('V letnem kafe', '3:35', '2')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Koketctvo', '4:14', '2')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Zvezda', '2:41', '3')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Love your voice', '2:30', '3')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Lali', '2:28', '3')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Let me go', '3:01', '4')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Got me good', '2:44', '4')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Always', '3:06', '4')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Schastie', '4:55', '5')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Allo', '3:03', '6')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Mne pox', '2:39', '6')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Malyavka', '3:05', '7')

INSERT INTO  track  (title, duration, id_album)
VALUES ('Begi begi', '4:21', '8')


-- заполняем сборники

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 1', '2018')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 2', '2019')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 3', '2017')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 4', '2000')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 5', '2006')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 6', '2023')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 7', '1997')

INSERT INTO collection (title, year_of_release)
VALUES ('Cbornik 8', '2021')

--заполняем таблицу  singer_album

INSERT INTO singer_album (id_singer, id_album)
VALUES ('1', '1')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('2', '2')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('3', '3')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('4', '4')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('5', '5')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('6', '6')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('7', '7')

INSERT INTO singer_album (id_singer, id_album)
VALUES ('8', '8')

--заполняем таблицу singer_genre

INSERT INTO singer_genre (id_singer, id_genre)
VALUES ('1', '3')

INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('2', '1')

INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('3', '1')

--удаляю ошибочные строчки

DELETE FROM singer_album 
WHERE ad_singer_album = 9;

DELETE FROM singer_album 
WHERE ad_singer_album = 10;

DELETE FROM singer_album 
WHERE ad_singer_album = 11;

DELETE FROM singer_album 
WHERE ad_singer_album = 12;


INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('4', '1')

INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('5', '1')

INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('6', '1')

INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('7', '5')

INSERT INTO singer_genre  (id_singer, id_genre)
VALUES ('8', '1')

--заполняем талицу trak_collection

INSERT INTO track_collection (id_track, id_collection)
VALUES ('1', '4')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('2', '4')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('3', '5')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('4', '5')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('5', '7')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('6', '7')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('7', '2')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('8', '2')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('9', '2')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('7', '8')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('10', '2')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('11', '2')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('12', '2')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('10', '8')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('13', '3')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('14', '3')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('15', '3')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('15', '1')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('16', '6')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('17', '4')

INSERT INTO track_collection (id_track, id_collection)
VALUES ('17', '5')










