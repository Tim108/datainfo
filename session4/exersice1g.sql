﻿CREATE TABLE Bestelling (
isbn int,
aantal int,
PRIMARY KEY(isbn),
FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE OR REPLACE FUNCTION addRow()
RETURNS TRIGGER
AS $$ BEGIN
IF (NEW.auteur NOT IN (SELECT auteur FROM boek)) 
THEN 
INSERT INTO Bestelling VALUES (NEW.isbn, 1);
END IF;
RETURN NEW;
END;
$$
LANGUAGE plpgsql;


CREATE TRIGGER addRow 
AFTER INSERT ON boek
FOR EACH ROW 
EXECUTE PROCEDURE addRow();