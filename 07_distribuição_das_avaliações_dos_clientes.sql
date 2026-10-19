SELECT review_score, COUNT(review_score) AS 'quantidade'
FROM avaliacoes
GROUP BY review_score
ORDER BY review_score DESC;