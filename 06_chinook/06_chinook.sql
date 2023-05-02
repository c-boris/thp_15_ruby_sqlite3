sqlite3
.open chinook.db

-- Récupérer tous les albums
SELECT * FROM albums;

-- Récupérer tous les albums dont le titre contient "Great" (indice)
SELECT * FROM albums WHERE title LIKE '%Great%';

-- Donner le nombre total d'albums contenus dans la base (sans regarder les id bien sûr)
SELECT COUNT(*) FROM albums;

-- Supprimer tous les albums dont le nom contient "music"
DELETE FROM albums WHERE title LIKE '%music%';

-- Récupérer tous les albums écrits par AC/DC
SELECT * FROM albums
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE artists.name = 'AC/DC';

-- Récupérer tous les titres des albums de AC/DC
SELECT title FROM albums
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE artists.name = 'AC/DC';

-- Récupérer la liste des titres de l'album "Let There Be Rock"
SELECT tracks.name FROM tracks
INNER JOIN albums ON tracks.album_id = albums.album_id
WHERE albums.title = 'Let There Be Rock';

-- Afficher le prix de cet album ainsi que sa durée totale
SELECT SUM(tracks.milliseconds) AS total_duration, SUM(tracks.unit_price) AS total_price
FROM tracks
INNER JOIN albums ON tracks.album_id = albums.album_id
WHERE albums.title = 'Let There Be Rock';

-- Afficher le coût de l'intégralité de la discographie de "Deep Purple"
SELECT SUM(tracks.unit_price) AS total_price
FROM tracks
INNER JOIN albums ON tracks.album_id = albums.album_id
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE artists.name = 'Deep Purple';

-- Créer l'album de ton artiste favori en base, en renseignant correctement les trois tables albums, artists et tracks

-- Tout d'abord, il faut vérifier si l'artiste existe déjà en base
SELECT * FROM artists WHERE name = 'nom de l'artiste';

-- Si l'artiste n'existe pas, il faut l'ajouter à la table artists
INSERT INTO artists (name) VALUES ('nom de l'artiste');

-- Ensuite, on récupère l'id de l'artiste ajouté ou existant
SELECT artist_id FROM artists WHERE name = 'nom de l'artiste';

-- On peut ensuite ajouter l'album dans la table albums en spécifiant l'id de l'artiste et les autres informations nécessaires
INSERT INTO albums (title, artist_id, release_date, etc.) VALUES ('titre de l'album', id_de_l_artiste, 'date de sortie', etc.);

-- Enfin, on ajoute les titres de l'album dans la table tracks en spécifiant l'id de l'album et les autres informations nécessaires
INSERT INTO tracks (name, album_id, composer, milliseconds, unit_price, etc.) VALUES ('titre de la chanson', id_de_l_album, 'compositeur', durée en millisecondes, prix unitaire, etc.);
