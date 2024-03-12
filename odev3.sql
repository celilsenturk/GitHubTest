--1.sorgu, country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.

select * from country
where country ~~ 'A%a';

--2.sorgu, country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.

select * from country
where length(country) >= 6 -- En az 6 karakterden oluşan ülke isimleri
and right(country, 1) = 'n'; -- 'n' karakteri ile sonlanan ülke isimleri

--3.sorgu, film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.

select title from film
where (
    length(title) - length(replace(lower(title), 't', '')) >= 4
    or length(title) - length(replace(upper(title), 'T', '')) >= 4
    );

--4.sorgu, film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

select title from film
where title ~~ 'C%' -- Başlığı 'C' karakteri ile başlayan filmler
and length (title) > 90 -- Başlığın uzunluğu 90'dan büyük olan filmler ancak burada sanırım 90 uzunluğu hatalı yazılmış olabilir çünkü 90'dan büyük film yok bu nedenle bunu 9 olarak ele alıyorum
and rental_rate = 2.99; -- rental_rate'i 2.99 olan filmler

select * from film
where title ~~ 'C%' and length > 9 and rental_rate = 2.99;