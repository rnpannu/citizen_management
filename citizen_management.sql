



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"
SET time_zone = "+00:00"
---
--- Table Structure for table "resident"
---
CREATE TABLE 'resident'(
    'SIN' int NOT NULL,
    'name' varchar(50) DEFAULT NULL,
    'address' varchar(50) DEFAULT NULL,
    'regionofresidence' varchar(20) DEFAULT NULL,
    'dateofbirth' DATE DEFAULT NULL,
    'surveillance_level' int DEFAULT 0,
    'credit_score' int DEFAULT 0,
    PRIMARY KEY ('SIN'),
    
);

---
--- Dumping data for table "resident"
---

INSERT INTO 'resident' ('SIN', 'name', 'address', 'regionofresidence', 'dateofbirth', 'surveillance_level', 'credit_score ') VALUES
(123456789, 'Hasan Tareque', '4401 University Dr W, AB T1K 3M4, Lethbridge', 'Gnodgnaug', '15/06/1953', 9001, -149403384921),
(987654321, 'Raheem Mir', '81 Nanchang Street, Xicheng District, Beijing', 'Nauhcis', '05/02/2003', 1, 999999999999),
(786591745, 'Robert Benkoczi', '2711 US-95, Amargosa Valley, Nevada', 'Naniah', '07/10/1952', 100, 378001000000),
(357829031, 'Nash Fischer', 'Fugging 4, 5121, Fugging', 'Gnaijehz', '30/05/2002', 4633, 4),
(651934799, 'Kaleb Calverly', '20785 Schultes Avenue, Detroit', 'Naijuf', '04/04/2001', 8944, 0),























































































--- Table structure for "Party"


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"
SET time_zone = "+00:00"

CREATE TABLE 'polticalParty'(
    'leader' varchar(100) DEFAULT NULL,
    'name' varchar(100) DEFAULT NULL,
    'number' int DEFAULT 0,
    --'name' varchar(100) DEFAULT NULL
    PRIMARY KEY ("name"),

);
--------- DATA DUMPING FOR POLITICAL PARTY, AND THE ATTRIBUTES OF THEM. 

INSERT INTO 'politicalParty'('leader', 'name', 'number') VALUES
(348975987) ('Supreme Leader Nasah Euqerat', 'C756', 10),
(457435435) ('Leader Peter Griffin', 'The Fingerlicans', 9),
(059675194) ('Lord Darth Vader', 'The Empire', 8),
(937528634) ('Lois Griffin', 'The Kitchen party', 7),
(923759756) ('Bryan', 'The Yard Party of Poo', 6),
(126348574) ('Homer Simpson', 'The Simps Party of Donuts', 5),
(235438514) ('Bart Simpson', 'Broke Gamer Party of America', 4),
(324536457) ('Lisa Simpson', 'Smart Party Nobody Cares' 3),
(454689763) ('Meg', 'Shut up Meg of Feminism', 2),
(382495769) ('Kevin Feige', 'Bad Marvel Pics of America', 1),







































































































--- Table structure for "Region"
CREATE TABLE 'region'(
    'population' int NOT NULL,
    'name' varchar(50) DEFAULT NULL,
    'northBorder' int NOT NULL,
    'eastBorder' int NOT NULL,
    'southBorder' int NOT NULL,
    'westBorder' int NOT NULL,
    PRIMARY KEY ('name'),
);

INSERT INTO 'region' ('population', 'name', 'northBorder', 'eastBorder', 'southBorder', 'westBorder') VALUES
('124840000', 'Gnodgnaug', '50', '75', '50', '75'),
('81100000', 'Nauhcis', '30', '35', '30', '35'),
('9258000', 'Naniah', '40', '60', '40', '60'),
('57370000', 'Gnaijehz', '70', '60', '70', '60'),
('38560000', 'Naijuf', '50', '45', '50', '45'),












ADD CONSTRAINT 'regionofresidence' FOREIGN KEY ('regionofresidence') REFERENCES 'region' ('name')



