CREATE TABLE Users(
   user_id VARCHAR(50),
   username VARCHAR(50),
   email VARCHAR(50),
   password VARCHAR(50),
   PRIMARY KEY(user_id)
);

INSERT INTO Users
  (user_id, username, email)
VALUES
  ('1', 'Vincent', 'vincentlam@gmail.com', 'password'),
  ('2', 'Kevin', 'kevintran@gmail.com', 'password'),
  ('3', 'Charles', 'charlesfazi@gmail.com', 'password'),
  ('4', 'Eyfeline', 'eyfelinetala@gmail.com', 'password'),
  ('5', 'Melissa', 'melissa@gmail.com', 'password'),
  ('6', 'Audrey', 'audrey@gmail.com', 'password');

CREATE TABLE Movie(
   movie_id VARCHAR(50),
   title VARCHAR(50),
   description VARCHAR(500),
   release_date YEAR,
   duration TIME,
   rating FLOAT,
   genre VARCHAR(50),
   poster_url VARCHAR(50),
   trailer_url VARCHAR(50),
   movie_id_1 VARCHAR(50),
   PRIMARY KEY(movie_id),
   UNIQUE(movie_id_1),
   FOREIGN KEY(movie_id_1) REFERENCES Movie(movie_id)
);

INSERT INTO Movie
  (movie_id, title, description, release_date, duration, rating, genre, poster_url, trailer_url, movie_id_1)
VALUES
  ('1',
   'The Dark Knight',
   'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
   '2008', 
   '2:32:0', 
   '9.0', 
   'Action', 
   'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQfQgYaGGkXDt_8WRcMPkaWGEF6KPKa2Sw53V5sksHO5V2XB7rl', 
   'https://www.youtube.com/watch?v=UMgb3hQCb08&ab_channel=WarnerBros.France', 
   '2'),
   ('2',
   'Batman Begins',
   'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.',
   '2005', 
   '2:20:0', 
   '8.2', 
   'Action', 
   'https://image.tmdb.org/t/p/original/7hys0bs5xfxR9tu3G5InB0xDhat.jpg', 
   'https://www.youtube.com/watch?v=jXrFsn9pcZY&ab_channel=WarnerBros.France', 
   '1'),

CREATE TABLE actor(
   actor_id VARCHAR(50),
   name VARCHAR(50),
   PRIMARY KEY(actor_id)
);

INSERT INTO actor
  (actor_id, name)
VALUES
  ('1','Christian Bale'),
   ('2','Heath Ledger'),
   ('3','Aaron Eckhart');

CREATE TABLE serie(
   serie_id VARCHAR(50),
   title VARCHAR(50),
   description VARCHAR(50),
   release_date DATETIME,
   duration TIME,
   rating INT,
   genre VARCHAR(50),
   poster_url VARCHAR(50),
   trailer_url VARCHAR(50),
   PRIMARY KEY(serie_id)
);

INSERT INTO actor
  (actor_id, name)
VALUES
  ('1','Christian Bale'),
   ('2','Heath Ledger'),
   ('3','Aaron Eckhart');

CREATE TABLE episode(
   episode_id VARCHAR(50),
   name VARCHAR(50),
   saison INT,
   épisode_number INT,
   serie_id VARCHAR(50) NOT NULL,
   PRIMARY KEY(episode_id),
   FOREIGN KEY(serie_id) REFERENCES serie(serie_id)
);

INSERT INTO actor
  (actor_id, name)
VALUES
  ('1','Christian Bale'),
   ('2','Heath Ledger'),
   ('3','Aaron Eckhart');

CREATE TABLE rate(
   user_id VARCHAR(50),
   movie_id VARCHAR(50),
   individual_rating DECIMAL(15,2),
   PRIMARY KEY(user_id, movie_id),
   FOREIGN KEY(user_id) REFERENCES Users(user_id),
   FOREIGN KEY(movie_id) REFERENCES Movie(movie_id)
);

INSERT INTO actor
  (actor_id, name)
VALUES
  ('1','Christian Bale'),
   ('2','Heath Ledger'),
   ('3','Aaron Eckhart');

CREATE TABLE watch(
   user_id VARCHAR(50),
   watch_date DATETIME,
   movie_id VARCHAR(50) NOT NULL,
   episode_id VARCHAR(50) NOT NULL,
   PRIMARY KEY(user_id),
   FOREIGN KEY(user_id) REFERENCES Users(user_id),
   FOREIGN KEY(movie_id) REFERENCES Movie(movie_id),
   FOREIGN KEY(episode_id) REFERENCES episode(episode_id)
);

INSERT INTO actor
  (actor_id, name)
VALUES
  ('1','Christian Bale'),
   ('2','Heath Ledger'),
   ('3','Aaron Eckhart');

CREATE TABLE play1(
   movie_id VARCHAR(50),
   actor_id VARCHAR(50),
   PRIMARY KEY(movie_id, actor_id),
   FOREIGN KEY(movie_id) REFERENCES Movie(movie_id),
   FOREIGN KEY(actor_id) REFERENCES actor(actor_id)
);

INSERT INTO actor
  (actor_id, name)
VALUES
  ('1','Christian Bale'),
   ('2','Heath Ledger'),
   ('3','Aaron Eckhart');

CREATE TABLE play2(
   actor_id VARCHAR(50),
   episode_id VARCHAR(50),
   PRIMARY KEY(actor_id, episode_id),
   FOREIGN KEY(actor_id) REFERENCES actor(actor_id),
   FOREIGN KEY(episode_id) REFERENCES episode(episode_id)
);
