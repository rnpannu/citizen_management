



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"
SET time_zone = "+00:00"
---
--- Table Structure for table "resident"
---
create table RESIDENT(
    SIN int NOT NULL,
    residentName varchar(50) DEFAULT NULL,
    addressOfResidence varchar(50) DEFAULT NULL,
    regionOfResidence varchar(20) DEFAULT NULL,
    dateOfBirth DATE DEFAULT NULL,
    surveillanceLevel int DEFAULT 0,
    creditScore int DEFAULT 0,
    PRIMARY KEY (SIN)
);

---
--- Dumping data for table "resident"
---

INSERT INTO RESIDENT (SIN, residentName, addressOfResidence, regionOfResidence, dateOfBirth, surveillanceLevel, creditScore) 
VALUES
('123456789', 'Hasan Tareque', '4401 University Dr W, AB T1K 3M4, Lethbridge', 'Gnodgnaug', '1953-06-15', '9001', '-483084'),
('987654321', 'Raheem Mir', '81 Nanchang Street, Xicheng District, Beijing', 'Nauhcis', '2003-02-05', '1', '999999999'),
('786591745', 'Robert Benkoczi', '2711 US-95, Amargosa Valley, Nevada', 'Naniah', '1952-10-07', '100', '378001000'),
('357829031', 'Nash Fischer', 'Fugging 4, 5121, Fugging', 'Gnaijehz', '2002-05-30', '4633', '4'),
('651934799', 'Kaleb Calverly', '20785 Schultes Avenue, Detroit', 'Naijuf', '2001-04-04', '8944', '0');























































































--- Table structure for "Party"


create table POLITICALPARTY(
    leader varchar(100) DEFAULT NULL,
    partyName varchar(100) DEFAULT NULL,
    partyNumber int DEFAULT 0,
    --'name' varchar(100) DEFAULT NULL
    PRIMARY KEY (partyName),

);
--------- DATA DUMPING FOR POLITICAL PARTY, AND THE ATTRIBUTES OF THEM. 

INSERT INTO POLITICALPARTY(leader, partyName, partyNumber) VALUES
('Supreme Leader Nasah Euqerat', 'C756', '10'),
('Leader Peter Griffin', 'The Fingerlicans', '9'),
('Lord Darth Vader', 'The Empire', '8'),
('Lois Griffin', 'The Kitchen party', '7'),
('Bryan', 'The Yard Party of Poo', '6'),
('Homer Simpson', 'The Simps Party of Donuts', '5'),
('Bart Simpson', 'Broke Gamer Party of America', '4'),
('Lisa Simpson', 'Smart Party Nobody Cares' '3'),
('Meg', 'Shut up Meg of Feminism', '2'),
('Kevin Feige', 'Bad Marvel Pics of America', '1'),





---
---INSERT INTO 'POLITICALPARTY'('leader', 'name', 'number') VALUES
---(348975987) ('Supreme Leader Nasah Euqerat', 'C756', 10),
---(457435435) ('Leader Peter Griffin', 'The Fingerlicans', 9),
---(059675194) ('Lord Darth Vader', 'The Empire', 8),
---(937528634) ('Lois Griffin', 'The Kitchen party', 7),
---(923759756) ('Bryan', 'The Yard Party of Poo', 6),
---(126348574) ('Homer Simpson', 'The Simps Party of Donuts', 5),
---(235438514) ('Bart Simpson', 'Broke Gamer Party of America', 4),
---(324536457) ('Lisa Simpson', 'Smart Party Nobody Cares' 3),
---(454689763) ('Meg', 'Shut up Meg of Feminism', 2),
---(382495769) ('Kevin Feige', 'Bad Marvel Pics of America', 1),




































































































--- Table structure for "Region"
create table REGION(
    regionPopulation int NOT NULL,
    regionName varchar(50) DEFAULT NULL,
    northBorder int NOT NULL,
    eastBorder int NOT NULL,
    southBorder int NOT NULL,
    westBorder int NOT NULL,
    PRIMARY KEY (regionName),
);

INSERT INTO REGION (regionPopulation, regionName, northBorder, eastBorder, southBorder, westBorder) VALUES
('124840000', 'Gnodgnaug', '50', '75', '50', '75'),
('81100000', 'Nauhcis', '30', '35', '30', '35'),
('9258000', 'Naniah', '40', '60', '40', '60'),
('57370000', 'Gnaijehz', '70', '60', '70', '60'),
('38560000', 'Naijuf', '50', '45', '50', '45'),











alter table RESIDENT
add constraint fk_regionOfResidence FOREIGN KEY (regionOfResidence) REFERENCES REGION (regionName) ON DELETE ON UPDATE CASCADE;

alter table POLITICALPARTY
add constraint fk_leader FOREIGN KEY ('leader') REFERENCES RESIDENT (residentName) ON DELETE ON UPDATE CASCADE;

