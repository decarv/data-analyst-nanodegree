(SELECT year,
        NULL AS rio_avg_temp,
        NULL AS rio_seven_year_ma,
        avg_temp AS global_avg_temp,
        AVG(avg_temp) OVER(ORDER BY year ASC ROWS 6 PRECEDING) AS global_seven_year_ma
   FROM global_data
  WHERE year < 1832)
UNION
(SELECT gd.year,
        cd.avg_temp AS rio_avg_temp,
        AVG(cd.avg_temp) OVER(ORDER BY cd.year ASC ROWS 6 PRECEDING) AS rio_seven_year_ma,
        gd.avg_temp AS global_avg_temp,
        AVG(gd.avg_temp) OVER(ORDER BY cd.year ASC ROWS 6 PRECEDING) AS global_seven_year_ma
   FROM global_data gd
   FULL JOIN city_data cd
             ON cd.year = gd.year
  WHERE cd.city LIKE 'Rio%')
UNION
(SELECT year,
        NULL AS rio_avg_temp,
        NULL AS rio_seven_year_ma,
        avg_temp AS global_avg_temp,
        AVG(avg_temp) OVER(ORDER BY year ASC ROWS 6 PRECEDING) AS global_seven_year_ma
   FROM global_data
  ORDER BY 1 DESC
  LIMIT 2)
  ORDER BY year;