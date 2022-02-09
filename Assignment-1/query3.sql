SELECT
	starsin.starname,
	movies.genre,
	COUNT(movies.title) AS numgenr
FROM
	starsin
	LEFT JOIN movies ON starsin.title = movies.title
GROUP BY
	starsin.starname,
	movies.genre
ORDER BY
	movies.genre ASC,
	starsin.starname ASC,
	numgenr DESC;
