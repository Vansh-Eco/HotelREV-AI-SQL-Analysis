                                      -- ROOM ANALYSIS
                                      
-- HOW OFTEN IS RESERVED ROOM TYPE DIFFERENT FROM ASSIGNED ROOM TYPE?

SELECT 
	count(*) as total_bookings,
    SUM(CASE WHEN `Assigned Same ?` = "NO" THEN 1 ELSE 0 END) AS MISMATCHED_BOOKING ,
    ROUND(SUM(CASE WHEN `ASSIGNED SAME ?` = "NO" THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) 
				AS MISMATCHED_RATE
FROM hotel_bookings;

-- MOST COMMON BOOKED ROOM TYPE 

SELECT 
	`Reserved Room Type Name`,
    COUNT(*) AS TOTAL_RESERVATIONS
FROM hotel_bookings
GROUP BY `Reserved Room Type Name`
ORDER BY TOTAL_RESERVATIONS DESC ;