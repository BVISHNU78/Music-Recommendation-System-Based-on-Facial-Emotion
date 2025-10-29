CREATE DATABASE Music;
Use Music;
create TABLE Artists (
ArtistName VARCHAR(255),
primary KEY(ArtistName));
create TABLE Genres(
Genre_Name VARCHAR(255),
Primary KEY(Genre_Name)
);
create TABLE Song(
SongName VARCHAR(255),
ArtistName VARCHAR(255),
Genre_Name VARCHAR(255),
PRIMARY KEY(SongName),
CONSTRAINT FK_Song_Artists FOREIGN KEY(ArtistName) REFERENCES Artists (ArtistName));
INSERT INTO Artists (ArtistName)
VALUES
('Vijay Yesudas & Jyotsna Radhakrishnan'),
('K.J. Yesudas'),
('Karthik & Sujatha'),
('Vijay'),
('Bombay Jayashri'),
('K. S. Harisankar'),
('M. G. Sreekumar'),
('P. S. Jayhari & Sithara Krishnakumar'),
('Bijibal & Sithara Krishnakumar'),
('Gopi Sundar'),
('Kamal Haasan'),
('Rinosh George');
DROP TABLE IF EXISTS Artists;
CREATE TABLE Artists (
  ArtistID INT AUTO_INCREMENT PRIMARY KEY,
  ArtistName VARCHAR(255) UNIQUE
);
INSERT INTO Genres (Genre_Name)
VALUES
('happy'),
('sad'),
('fear'),
('angry'),
('neutral');
INSERT INTO song(SongName,ArtistName,Genre_Name)
values
('BE HAPPY MEN','Vijay Yesudas and Jyotsna Radhakrishnan','HAPPY');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('Innalekal','K. J. Yesudas','Sad');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('MAYA','Karthik & Sujatha','happy');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('jolly o gymkhana','vijay','happy');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('Pavizha Mazha','K. S. Harisankar','neutral');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('Ennai Konjam Maatri','Bombay Jayashri','neutral');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('Kanneer Poovinte','M. G. Sreekumar','sad');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('Kanne Kalaimaane','K. J. Yesudas','sad');
INSERT INTO song(SongName,ArtistName,Genre_Name)
VALUES
('Mizhiyoram Nanajoru','K. J. Yesudas','sad');
INSERT INTO song(SongName, ArtistName, Genre_Name)
VALUES
('Pathala Pathala','Kamal Haasan','anger');
INSERT INTO song(SongName, ArtistName, Genre_Name)
VALUES
('Raakshasan','Gopi Sundar','anger');
INSERT INTO song(SongName, ArtistName, Genre_Name)
VALUES
('Kalippu','Rinosh George','anger');
INSERT INTO song(SongName, ArtistName, Genre_Name)
VALUES
('Manjin Choola','Bijibal & Sithara Krishnakumar','fear');
INSERT INTO song(SongName, ArtistName, Genre_Name)
VALUES
('Uyirile Ninnu','Gopi Sundar','fear');
INSERT INTO song(SongName, ArtistName, Genre_Name)
VALUES
('Ee Kaattu','P. S. Jayhari & Sithara Krishnakumar','fear');

