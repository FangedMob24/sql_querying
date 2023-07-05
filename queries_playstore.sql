-- Comments in SQL Start with dash-dash --
-- query 1 --
SELECT * FROM analytics WHERE id = 1880;
-- query 2 --
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
-- query 3 --
SELECT category, COUNT(*) FROM analytics GROUP BY category;
-- query 4 --
SELECT reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
-- query 5 --
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
-- query 6 --
SELECT AVG(rating) FROM analytics GROUP BY category ORDER BY AVG DESC;
-- query 7 --
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC;
-- query 8 --
SELECT id, app_name, rating FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating DESC;
-- query 9 --
SELECT app_name, rating FROM analytics WHERE rating < 3 AND reviews >= 10000;
-- query 10 --
SELECT app_name, price, reviews FROM analytics 
WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
-- query 11 --
SELECT app_name, last_updated FROM analytics ORDER BY last_updated;
-- query 12 --
SELECT app_name, price FROM analytics ORDER BY price DESC;
-- query 13 --
SELECT SUM(reviews) FROM analytics;
-- query 14 --
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- query 15 --
SELECT app_name, reviews, min_installs, min_installs/reviews AS "review per install" FROM analytics 
WHERE min_installs >= 100000 ORDER BY min_installs/reviews DESC;