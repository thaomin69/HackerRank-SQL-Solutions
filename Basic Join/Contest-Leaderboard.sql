SELECT h.HACKER_ID, h.NAME, SUM(s.max_score) as total_score
FROM HACKERS AS h
INNER JOIN (
                SELECT s.HACKER_ID, MAX(SCORE) as max_score
                FROM SUBMISSIONS AS s
                GROUP BY s.HACKER_ID, s.CHALLENGE_ID
            ) s
ON h.HACKER_ID = s.HACKER_ID
GROUP BY h.HACKER_ID, h.NAME
HAVING SUM(s.max_score) > 0
ORDER BY total_score DESC, HACKER_ID ASC;