SELECT DISTINCT name
FROM person p, writes w, movie m, directs d
WHERE w.pid = p.pid
AND 'p heeft een film gemaakt die niet geregisseerd is'