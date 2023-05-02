PROJETS : 

Jouer avec ses premières base de données
  
Jouer avec ses premières base de données
On va créer une bases de données et jouer avec une base de données de test

1. Introduction
Tout programmeur doit savoir créer un back-end robuste : même ceux qui finalement se spécialiseront en front-end devront parfaitement comprendre le fonctionnement d'une BDD pour faire des jolies views dynamiques. Et comme tu seras amené à concevoir et manipuler des centaines de bases de données dans ta vie de programmeur, autant commencer tout de suite 😃

2. Le projet
2.1. La startup tech du moment
Ça y est, tu tiens la prochaine licorne française, tu vas conquérir le monde avec une app qui va révolutionner le monde du blogging. Ça va tout déchirer et Mark Zuckerberg va chialer. Avant de faire le code de ton blog, nous allons te demander de concevoir la base de données de ce dernier. Ainsi, tu vas devoir créer, en SQLite les tables qui constitueront ta BDD avec leurs relations et leurs attributs.

Voici, sans plus tarder, l'architecture de ton app de blogging :

L'application va accueillir plusieurs user et ils auront tous un nom.
Chaque user peut créer plusieurs article et chaque article est forcément créé par un user.
Un article peut appartenir à plusieurs category et chaque category peuvent avoir plusieurs article. Chaque category a un titre.
Une catégorie peut appartenir à plusieurs tag ; chaque tag a un titre et une couleur.
Utilise SQLite pour créer cette base de données, ainsi que les tables correspondantes.

A présent, tu vas créer un élément de chaque table : un user, un article, une category et un tag.

2.2. Concepts de sites et base de données
Ce premier exercice sur un blog a permis de bien t'échauffer et de réviser la création de base de données en langage SQL. Mais la partie la plus complexe est de concevoir l'architecture complète de la BDD : en te guidant sur le blog, on t'a évité cette étape.

À présent c'est ton tour ! On va te décrire un concept et c'est à toi de concevoir la BDD de A à Z. Liste (à tête reposée) les différentes tables, attributs, et jointures pour les sites ci-dessous. Tu n'auras pas besoin de les créer en SQL, mais juste de les concevoir, dans un fichier .txt par exemple.

2.2.1. MOOCademy
Tu dois créer une plateforme d'apprentissage en ligne. Il y a plein de cours. Chaque cours a un titre et une description. Enfin, chaque cours a plusieurs leçons, qui ont un titre et un body.

2.2.2. The Hacking Pinterest
Tu veux faire de la concurrence à Pinterest, donc tu voudrais créer un site où les utilisateurs peuvent créer des "pins". Chaque pin contient l'URL d'une image sur le net. Les utilisateurs peuvent commenter les pins, mais ne peuvent pas commenter les commentaires.

2.2.3. The Hacking News
Tu veux créer un message board à la Hacker News. Les utilisateurs peuvent poster des liens. Les autres utilisateurs peuvent commenter les liens soumis, ou commenter les commentaires (mais on ne peut pas aller plus loin qu'un commentaire de commentaire). Comment faire en sorte qu'un commentaire sache où dans la hiérarchie il se trouve ? 🤔

2.2.4. The Hacking Class
Tu vas encore faire un site d'éducation en ligne. Dans ce site il y aura des élèves qui peuvent s'inscrire à un seul cours. Un cours pourra avoir plusieurs élèves.

2.3. Faire des requêtes en base
Suite à THP, une startup trop cool spécialisée dans la musique veut te recruter pour tes compétences de Data Analyst. C'est la fête. Comme cette startup existe déjà depuis plusieurs années, ils ont une base de données existante, et vont te demander de travailler dessus.

Dans cet exercice, nous allons te demander de récupérer une base de données existante, et de faire des requêtes SQL dedans, afin de récupérer les datas qui t'intéressent, et qui feront de toi une star de la musique. Nous allons travailler sur le fichier suivant, qui contient la BDD complète pour faire les requêtes.

Je vais te demander de retrouver les informations suivantes dans la BDD que tu as téléchargée. Tu devras rédiger les requêtes en langage SQL sur ton terminal avec la gem SQLite3. Certaines requêtes avec des jointures ne seront pas faciles au premier abord, donc nous t'invitons à bien décortiquer les ressources que nous t'avons données 😉

Rédige les requêtes SQL ayant les fonctionnalités ci-dessous. Consignes importantes : la requête doit se faire en une seule ligne de SQL et ne doit pas s'appuyer sur d'autres requêtes (notamment pas les requêtes précédentes).

Récupérer tous les albums
Récupérer tous les albums dont le titre contient "Great" (indice)
Donner le nombre total d'albums contenus dans la base (sans regarder les id bien sûr)
Supprimer tous les albums dont le nom contient "music"
Récupérer tous les albums écrits par AC/DC
Récupérer tous les titres des albums de AC/DC
Récupérer la liste des titres de l'album "Let There Be Rock"
Afficher le prix de cet album ainsi que sa durée totale
Afficher le coût de l'intégralité de la discographie de "Deep Purple"
Créer l'album de ton artiste favori en base, en renseignant correctement les trois tables albums, artists et tracks
2.4. Concevoir des bases de données de sites, vol. 2
Est-ce que tu t'en souviens de MOOCademy, The Hacking Pinterest, The Hacking News, The Hacking Class ? Et bien maintenant tu vas devoir créer les bases de données que tu as conçues, en utilisant SQLite3.

3. Rendu attendu
Plein de fichiers :

Un fichier .txt (ou .md) ou diagramme ERD avec la structure de chaque BDD (blog, MOOCacademy, Hackinterest, Hacking News, Hacking Class) ;
Un fichier .txt (ou .md) contenant les requêtes SQL qui permettent d'obtenir les infos demandées sur notre BDD musicale ;
Un fichier .sqlite contenant la BDD de chaque appli.