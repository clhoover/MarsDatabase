CREATE TABLE Address
	(`ssn` int, `address` int, `street` varchar(40), `state` varchar(2), `city` varchar(40), `zipCode` int)
;
CREATE TABLE Citizen
	(`ssn` int, `fName` varchar(40), `lName` varchar(40), `gender` varchar(6), `age` int, `nationality` int)
;
CREATE TABLE Nationality
	(`nationalID` int, `nationality` varchar(40))
;
CREATE TABLE Health
	(`evalID` int, `ssn` int, `bmi` int, `bloodPressure` varchar(10), `cholesterolLevel` int, `healthRiskScore` int, `mentalHealthRating` int)
;
CREATE TABLE Skills
	(`ssn` int, `profession` int, `educationLevel` varchar(40), `mileTime` varchar(40), `gsThreshold` varchar(2), `holdingBreathTime` int)
;
CREATE TABLE Professions
	(`jobID` int,`profession` varchar(40))
;

-- All Data
SELECT * FROM Citizen C, Nationality N, Address A, Skills S, Professions P, Health H
WHERE C.ssn=A.ssn AND A.ssn=S.ssn AND S.ssn=H.ssn AND C.nationality=N.nationalID AND S.profession=P.jobID;

-- All Data without key fields except SSN
SELECT C.ssn, fName, lName, gender, age, N.nationality, address, street, state, city, zipCode, P.profession, educationLevel, mileTime, gsThreshold, holdingBreathTime, bmi, bloodPressure, cholesterolLevel, healthRiskScore, mentalHealthRating 
FROM Citizen C, Nationality N, Address A, Skills S, Professions P, Health H
WHERE C.ssn=A.ssn AND A.ssn=S.ssn AND S.ssn=H.ssn AND C.nationality=N.nationalID AND S.profession=P.jobID;

-- Names and applicable information of citizins who meet minimum criteria for the Mars mission
SELECT fName, lName, healthRiskScore, mentalHealthRating, age FROM Citizen C, Health H
WHERE C.ssn=H.ssn AND healthRiskScore < 5 AND mentalHealthRating < 5 AND age > 25 AND age < 44;

-- Names and applicable data of physically ideal canidates
SELECT fName, lName, mileTime,holdingBreathTime, gsThreshold
FROM Citizen C, Skills S
WHERE C.ssn=S.ssn AND mileTime < 10 AND holdingBreathTime > 60 AND gsThreshold >=5;

-- Names and applicable data of intellectually ideal canidates
SELECT fName, lName, educationLevel
FROM Citizen C, Skills S
WHERE C.ssn=S.ssn AND educationLevel > 14;

-- Data pertaining to who the canidates are
SELECT fName, lName, gender, age, N.nationality, P.profession, educationLevel
FROM Citizen C, Nationality N, Skills S, Professions P
WHERE C.ssn=S.ssn AND C.nationality=N.nationalID AND S.profession=P.jobID;

-- Data pertaining to the condition of each canidate
SELECT fName, lName, gender, age, N.nationality, bmi, bloodPressure, cholesterolLevel, healthRiskScore, mentalHealthRating 
FROM Citizen C, Nationality N, Health H
WHERE C.ssn=H.ssn AND C.nationality=N.nationalID;

-- Names of ideal canidates
SELECT fName, lName FROM Citizen C, Nationality N, Address A, Skills S, Professions P, Health H
WHERE C.ssn=A.ssn AND A.ssn=S.ssn AND S.ssn=H.ssn AND C.nationality=N.nationalID AND S.profession=P.jobID
	AND healthRiskScore < 3 
	AND mentalHealthRating < 3 
	AND age < 45 AND age > 16
	AND mileTime <= 8
	AND holdingBreathTime >= 60
	AND gsThreshold > 5
	AND educationLevel > 14;
