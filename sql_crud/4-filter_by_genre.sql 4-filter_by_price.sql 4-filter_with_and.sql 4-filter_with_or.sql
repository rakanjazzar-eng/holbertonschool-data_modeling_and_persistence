-- 4-filter_by_genre.sql
SELECT title, author FROM books WHERE genre = 'Tech';

-- 4-filter_by_price.sql
SELECT title, price FROM books WHERE price > 20;

-- 4-filter_with_and.sql
SELECT title, price FROM books WHERE genre = 'Tech' AND price > 30;

-- 4-filter_with_or.sql
SELECT title, genre FROM books WHERE genre = 'Fantasy' OR price < 10;
