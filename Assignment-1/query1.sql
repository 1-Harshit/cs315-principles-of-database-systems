-- Author:	Harshit Raj
-- Date:	09-02-2022
-- Roll:	200433
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
