--database opentraveldata

--Extracción de todas las frecuencias de vuelos por código de aerolínea, también con el nombre de la aerolínea traído de la tabla de aerolíneas. Atención hay códigos con más de un nombre asociado, por lo que hay registros duplicados asociados a los distintos nombres.
SELECT r.airline_code_2c, a.name, r.flight_freq FROM ref_airline_nb_of_flights AS r LEFT OUTER JOIN optd_airlines AS a ON r.airline_code_2c=a."2char_code" ORDER BY r.airline_code_2c ASC;
