--название и год выхода альбомов, вышедших в 2018 году;
SELECT "name", year_issue
FROM album a
WHERE year_issue >= '2018-01-01' AND year_issue <= '2018-12-31'

--название и продолжительность самого длительного трека;
SELECT title, duration 
FROM track t 
ORDER BY duration DESC 
LIMIT 1

--название треков, продолжительность которых не менее 3,5 минуты;
SELECT title, duration 
FROM track t 
WHERE duration >= 210

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT "name"
FROM compilation c 
WHERE "year" >= '2018-01-01' AND "year" <= '2020-12-31'

--исполнители, чье имя состоит из 1 слова;
SELECT alias 
FROM performer p
WHERE alias NOT LIKE '% %'

--название треков, которые содержат слово "мой"/"my".
SELECT title 
FROM track t 
WHERE title LIKE '%my%'