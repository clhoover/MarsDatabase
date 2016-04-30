-- address - the street number or house number of an Address
-- state - the two digit state abbreviation
CREATE TABLE Address
	(`ssn` int, `address` int, `street` varchar(40), `state` varchar(2), `city` varchar(40), `zipCode` int)
;

INSERT INTO Address
	(`ssn`, `address`, `street`, `state`, `city`, `zipCode`)
VALUES
  (123456789,2378,'Andover Court','NY','New York',55874),
  (234568790,65879,'Devon Court','PA','Denton',41978),
  (345678901,3345,'5th Street South','AZ','San Filipe',35974),
  (456789012,9531,'Fulton Street','WY','Edgington',64578),
  (567890123,856977,'William Street','FL','Philsburg',31458),
  (678901234,17995, 'Avenue B','CA','Sacramento',24544),
  (789012345,3302,'Palmdale Avenue','CA','San Francisco',48293),
  (890123456,628594,'Bernardo Center Drive','CA','San Diego',92126),
  (901234567,1001,'Hollywood Drive','CA','Los Angeles',90210)
;

CREATE TABLE Citizen
	(`ssn` int, `fName` varchar(40), `lName` varchar(40), `gender` varchar(6), `age` int, `nationality` int)
;

INSERT INTO Citizen
	(`ssn`, `fName`, `lName`, `gender`, `age`, `nationality`)
VALUES
  (123456789, 'Chanel','Czapla','female',26,6),
  (234568790,' Lavern','Mclaurin','male',44,4),
  (345678901,'Maude','Messana','female',53,5),
  (456789012,' Eduardo','Bruckner','male',14,3),
  (567890123,'Garth','Piazza','male',31,5),
  (678901234,'Kevin','Bryant','male',33,7),
  (789012345,'Chris','Hoover','male',27,7),
  (890123456,'Jeanette','Reser','female',29,7),
  (901234567,'Mitchell','Warrenburg','male',30,7)
;


CREATE TABLE Nationality
	(`nationalID` int, `nationality` varchar(40))
;

INSERT INTO Nationality
	(`nationalID`, `nationality`)
VALUES
  (1,'Asian'),
  (2,'British'),
  (3,'English'),
  (4,'Irish'),
  (5,'Italian'),
  (6,'Polish'),
  (7,'American')
;



-- cholesterolLevel - the total (LDL and HDL) cholesterol level of an individual (below 200 is ideal)
-- healthRiskScore - the probability of an individual having health problems on a scale of 0="none" through 10="guaranteed"
-- mentalHealthAssesment - the Psycological evaluation of every individual on a scale of 0="no mental issues" through 10="undeniable danger to themselves and/or those around them"
CREATE TABLE Health
	(`evalID` int, `ssn` int, `bmi` int, `bloodPressure` varchar(10), `cholesterolLevel` int, `healthRiskScore` int, `mentalHealthRating` int)
;

INSERT INTO Health
	(`evalID`,`ssn`, `bmi`, `bloodPressure`, `cholesterolLevel`, `healthRiskScore`, `mentalHealthRating`)
VALUES
  (1,123456789,18,'92/65',112,3,1),
  (2,234568790,25,'105/72',153,4,3),
  (3,345678901,22,'128/82',184,4,8),
  (4,456789012,35,'153/92',246,8,5),
  (5,567890123,20,'116/72',99,2,2),
  (6,678901234,21,'115/74',120,1,2),
  (7,789012345,23,'114/73',110,2,1),
  (8,890123456,19,'118/79',115,2,1),
  (9,901234567,22,'109/66',99,1,1)
;


-- educationLevel - the level of education an individual has completed by grade level: 0="No formal education" 1-12="Grade School", 13-14=associate, 15-16=bacholoriate, 17-18=master, and 19-20=PHD 
-- gsThreshold - the number of g-forces an individual can sustain without passing out over 2 seconds (the average is 4-5)
-- mileTime - number of minutes an individual can complete a one mile run
-- holdingBreathTime - time an individual can hold their breath in seconds (average is 60-120 exeptional is 180)

CREATE TABLE Skills
	(`ssn` int, `profession` int, `educationLevel` varchar(40), `mileTime` varchar(40), `gsThreshold` varchar(2), `holdingBreathTime` int)
;

INSERT INTO Skills
	(`ssn`, `profession`, `educationLevel`, `mileTime`, `gsThreshold`, `holdingBreathTime`)
VALUES
  (123456789,1,13,8,6,46),
  (234568790,2,20,7,5,68),
  (345678901,3,16,14,4,33),
  (456789012,4,9,13,4,20),
  (567890123,5,18,7,7,93),
  (678901234,7,16,6,7,98),
  (789012345,9,16,5,7,76),
  (890123456,8,16,8,6,61),
  (901234567,6,16,7,7,82)
;

CREATE TABLE Professions
	(`jobID` int,`profession` varchar(40))
;

INSERT INTO Professions
	(`jobID`,`profession`)
VALUES
	(1,'Bus Driver'),
	(2,'College Professor'),
	(3,'Store Manager'),
	(4,'Student'),
	(5,'Civil Engineer'),
	(6,'Software Engineer'),
	(7,'Aerospace Engineer'),
	(8,'Biologist'),
	(9,'EMT')
;
