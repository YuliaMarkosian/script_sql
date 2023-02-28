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



