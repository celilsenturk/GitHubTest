--1.sorgu, country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.

select * from country
where country ~~ 'A%a';

--2.sorgu, country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.

select * from country
where country ~~ '%_____n';

--3.sorgu, film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.

select title from film
where title ~~* '%t%t%t%t%';

--4.sorgu, film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

select * from film
where title ~~ 'C%' and length > 90 and rental_rate = 2.99;
