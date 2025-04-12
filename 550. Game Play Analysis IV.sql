WITH MinEventDates AS (
    SELECT player_id, MIN(event_date) AS min_event_date
    FROM Activity
    GROUP BY player_id
),
NextDayEvents AS (
    SELECT A.player_id
    FROM Activity A
    JOIN MinEventDates M ON A.player_id = M.player_id
    WHERE DATEDIFF(A.event_date, M.min_event_date) = 1
)
SELECT 
    ROUND(
        (SELECT COUNT(*) FROM NextDayEvents) / COUNT(DISTINCT player_id),
        2
    ) AS fraction
FROM 
    Activity;
