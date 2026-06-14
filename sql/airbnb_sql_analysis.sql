
--  Top 10 neighbourhoods by average price:

SELECT 
    neighbourhood,
    neighbourhood_group,
    ROUND(AVG(price), 2) AS avg_price,
    COUNT(*) AS total_listings
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 1000
GROUP BY neighbourhood, neighbourhood_group
ORDER BY avg_price DESC
LIMIT 10;

-- Room type breakdown per borough:

SELECT
    neighbourhood_group,
    room_type,
    COUNT(*) AS listing_count,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
GROUP BY neighbourhood_group, room_type
ORDER BY neighbourhood_group, listing_count DESC;

-- Average price per borough:

SELECT
    neighbourhood_group,
    ROUND(AVG(price), 2) AS avg_price,
    COUNT(*) AS total_listings
FROM airbnb_nyc_cleaned
GROUP BY neighbourhood_group
ORDER BY avg_price DESC;

