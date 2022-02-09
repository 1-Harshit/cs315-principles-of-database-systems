WITH genreStarMovieCount AS(
	SELECT
		starsin.starname,
		movies.genre,
		COUNT(movies.title) AS movieCount
	FROM
		starsin NATURAL
		JOIN movies 
	GROUP BY
		starsin.starname,
		movies.genre
),
genreMovieCount AS (
	SELECT
		genre,
		COUNT(*) AS movieCount
	FROM
		movies
	GROUP BY
		genre
)
SELECT
	genreStarMovieCount.starname,
	genreStarMovieCount.genre
FROM
	genreStarMovieCount NATURAL
	JOIN genreMovieCount
ORDER BY
	genreStarMovieCount.genre ASC,
	genreStarMovieCount.starname ASC;
