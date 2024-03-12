--1.sorgu,film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
select distinct replacement_cost from film;

--2.sorgu,film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
select count(distinct replacement_cost) from film;

--3.sorgu,film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
select count(*) from film
where title ~~ 'T%' and rating='G';

--4.sorgu,country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
select count(*) from country
where country ~~ '%_____';

--5.sorgu,city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
select count(*) from city
where city ~~* '%R';