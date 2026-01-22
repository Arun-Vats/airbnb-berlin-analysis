-- Median price by room type
-- Missing prices handled using median per room type

WITH room_type_median AS (
    SELECT
        room_type,
        PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) AS median_price
    FROM listings
    WHERE price IS NOT NULL
    GROUP BY room_type
)
SELECT
    l.room_type,
    COUNT(*) AS listings_count,
    ROUND(
        PERCENTILE_CONT(0.5) WITHIN GROUP (
            ORDER BY COALESCE(l.price, r.median_price)
        )::numeric,
        2
    ) AS median_price
FROM listings l
JOIN room_type_median r
    ON l.room_type = r.room_type
GROUP BY l.room_type
ORDER BY median_price DESC;