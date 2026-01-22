-- Price vs number of reviews
-- Reviews capped at 300 to reduce outlier influence

WITH room_type_median AS (
    SELECT
        room_type,
        PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) AS median_price
    FROM listings
    WHERE price IS NOT NULL
    GROUP BY room_type
)
SELECT
    COALESCE(l.price, r.median_price) AS price,
    l.number_of_reviews
FROM listings l
JOIN room_type_median r
    ON l.room_type = r.room_type
WHERE l.number_of_reviews <= 300;