﻿SELECT DISTINCT name
FROM person p, writes w
WHERE w.pid = p.pid
AND NOT EXISTS (
SELECT *
FROM directs d
WHERE d.pid = w.pid
)