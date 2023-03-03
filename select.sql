--название и год выхода альбомов, вышедших в 2019 году

SELECT title, year_of_release FROM album 
WHERE year_of_release = '2019';

-- название и продолжительность самого длительного трека

SELECT title, duration FROM track
ORDER BY duration DESC
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты

SELECT title,  MAX (duration)
FROM track
GROUP BY title 
HAVING  MAX(duration) >='00:03:30'; 


--названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT title, year_of_release FROM collection 
WHERE year_of_release >= 2018 AND year_of_release  <= 2020;

--исполнители, чье имя состоит из 1 слова

SELECT nickname FROM singer
WHERE nickname NOT  LIKE '% %';

--название треков, которые содержат слово "мой"/"my"


SELECT  title FROM track 
WHERE title  LIKE  '%me%';

-- ДЗ №4 
--1. Количество исполнителей в каждом жанре

SELECT g.name_genre, count(s.nickname)
FROM genre as g
LEFT JOIN singer_genre AS  sg ON g.id_genre = sg.id_genre 
LEFT JOIN singer AS s ON sg.id_singer = s.id_singer 
GROUP BY g.name_genre 
ORDER BY count(s.id_singer) DESC  
 

--2. Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT t.title, a.year_of_release
FROM album AS a 
LEFT JOIN track as t ON t.id_album = a.id_album 
WHERE (a.year_of_release >= '2019') AND (a.year_of_release <= '2020')


--3. Средняя продолжительность треков по каждому альбому

SELECT a.title, AVG(t.duration) 
FROM album AS a
LEFT JOIN track AS t ON t.id_album = a.id_album 
GROUP BY a.title 
ORDER BY AVG(t.duration) 

--4. Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT DISTINCT s.nickname
FROM singer AS s
WHERE s.nickname NOT IN (
	SELECT DISTINCT s.nickname
	FROM singer AS s
	LEFT JOIN singer_album AS sa ON s.id_singer = sa.ad_singer_album
	LEFT JOIN album AS a ON a.id_album = sa.id_album
	WHERE a.year_of_release = '2020')
ORDER BY s.nickname 	

-- 5. Названия сборников, в которых присутствует конкретный исполнитель Emin

SELECT DISTINCT c.title
FROM collection AS c
LEFT JOIN track_collection AS tc ON c.id_collection = tc.id_track_collection 
LEFT JOIN track AS t ON t.id_track = tc.id_track 
LEFT JOIN album AS a ON a.id_album = t.id_album 
LEFT JOIN singer_album AS sa ON sa.id_album = a.id_album 
LEFT JOIN singer AS s ON s.id_singer = sa.id_singer 
WHERE s.nickname LIKE '%%Emin%%'
ORDER BY c.title 

--6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.title 
FROM album AS a
LEFT JOIN singer_album AS sa ON a.id_album = sa.id_album 
LEFT JOIN singer AS s ON s.id_singer = sa.id_singer 
LEFT JOIN  singer_genre AS sg ON s.id_singer = sg.id_singer 
LEFT JOIN  genre AS  g ON g.id_genre =sg.id_genre 
GROUP BY a.title 
HAVING count (DISTINCT g.name_genre) > 1
ORDER BY a.title 

-- 7. Наименования треков, которые не входят в сборники.

SELECT  t.title
FROM track AS  t
LEFT JOIN track_collection AS tc  ON t.id_track = tc.id_track 
WHERE tc.id_track IS NULL 



-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
SELECT s.nickname, t.duration 
FROM track AS t
LEFT JOIN album AS a ON a.id_album = t.id_album 
LEFT JOIN singer_album AS sa ON sa.id_album = a.id_album 
LEFT JOIN singer AS s ON s.id_singer = sa.id_singer 
GROUP BY s.nickname, t.duration 
HAVING t.duration = (SELECT min(duration) FROM track )
ORDER BY s.nickname 


-- 9. Названия альбомов, содержащих наименьшее количество треков.
SELECT DISTINCT a.title
FROM album AS a
LEFT JOIN track AS  t ON t.id_album = a.id_album 
WHERE t.id_album IN (SELECT id_album
	FROM track 
	GROUP BY id_album
	HAVING count(id_album) = (
		SELECT count(id_track)
		FROM track 
		GROUP BY id_album
		ORDER BY count
		LIMIT 1)
	)
ORDER BY a.title 










