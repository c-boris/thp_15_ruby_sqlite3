CREATE TABLE Eleve (
  id_eleve INT PRIMARY KEY,
  nom_eleve VARCHAR(50)
);

CREATE TABLE Cours (
  id_cours INT PRIMARY KEY,
  nom_cours VARCHAR(50)
);

CREATE TABLE Inscription (
  id_inscription INT PRIMARY KEY,
  id_eleve INT,
  id_cours INT,
  FOREIGN KEY (id_eleve) REFERENCES Eleve(id_eleve),
  FOREIGN KEY (id_cours) REFERENCES Cours(id_cours)
);