CREATE TABLE `moviedb`.`movies` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`TITLE` VARCHAR(100) NOT NULL,
	`YEAR` INT NOT NULL,
	`DIRECTOR` VARCHAR(100) NOT NULL,
	`banner_url` VARCHAR(200),
	`trailer_url` VARCHAR(200),
	PRIMARY KEY(`id`)
);

CREATE TABLE `moviedb`.`stars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `dob` DATE,
  `photo_url` VARCHAR(200),
  PRIMARY KEY (`id`)
);


CREATE TABLE `moviedb`.`genres` (
	`id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(32) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE `moviedb`.`creditcards` (
	`id` VARCHAR(20) NOT NULL,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `expiration` DATE NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE `moviedb`.`stars_in_movies` (
	`star_id` INT NOT NULL,
    `movie_id` INT NOT NULL,
    FOREIGN KEY(star_id) REFERENCES stars(id),
    FOREIGN KEY(movie_id) REFERENCES movies(id)
);



CREATE TABLE `moviedb`.`genres_in_movies` (
	`genre_id` INT NOT NULL,
    `movie_id` INT NOT NULL,
    FOREIGN KEY(genre_id) REFERENCES genres(id),
    FOREIGN KEY(movie_id) REFERENCES movies(id)
);
  


CREATE TABLE `moviedb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `cc_id` VARCHAR(20) NOT NULL,
  `address` VARCHAR(200) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(cc_id) REFERENCES creditcards(id)
  );



CREATE TABLE `moviedb`.`sales` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`customer_id` INT NOT NULL,
	`movie_id` INT NOT NULL,
    `sale_date` DATE NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(id),
	FOREIGN KEY(movie_id) REFERENCES movies(id),
	PRIMARY KEY (id)
);

