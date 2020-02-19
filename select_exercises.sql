USE codeup_test_db;
SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Year Sgt. Peppers Lonely Hearts Club Band came out' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'Genre of Nevermind by Nirvana' FROM albums WHERE name = 'Nevermind';
SELECT name, artist, release_date AS 'Albums that came out between 1990 and 1999' FROM albums WHERE release_date  BETWEEN '1990' AND '1999';
SELECT name AS 'Albums that sold less than 20 million' FROM albums WHERE sales <= '20.0';
SELECT name AS 'Albums with the genre rock' FROM albums WHERE genre = 'Rock';