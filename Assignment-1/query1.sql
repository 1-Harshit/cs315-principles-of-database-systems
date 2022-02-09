SELECT
	starsin.starname,
	starsin.title,
	stardetails.gender
FROM
	starsin
	LEFT JOIN stardetails ON starsin.starname = stardetails.starname
ORDER BY
	stardetails.gender ASC,
	starsin.starname ASC,
	starsin.title ASC;
