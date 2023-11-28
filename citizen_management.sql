

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"
SET time_zone = "+00:00"
---
--- Table Structure for table "resident"
---
CREATE TABLE 'resident'(
    'SIN' int NOT NULL,
    'name' varchar(50) DEFAULT NULL,
    'address' varchar(50) DEFAULT NULL,
    'region' varchar(20) DEFAULT NULL,
    'dateofbirth' varchar(8) DEFAULT NULL,
    'surveillance_level' int DEFAULT NULL,
    'credit_score' int DEFAULT NULL,
    PRIMARY KEY ('SIN')
);

---
--- Dumping data for table "resident"
---

INSERT INTO 'resident' ('SIN', 'name', 'address', 'region', 'dateofbirth', 'surveillance_level', 'credit_score ') VALUES
(123456789, 'Hasan Tareque', '4401 University Dr W, AB T1K 3M4, Lethbridge', 'Gnodgnaug', '15/06/1953', 9001, -149403384921)
(987654321, 'Raheem Mir', '81 Nanchang Street, Xicheng District, Beijing', 'Nauhcis', '14/05/2003', 1, 999999999999)
(786591745, 'Robert Benkoczi', '2711 US-95, Amargosa Valley, Nevada', 'Naniah', '07/10/1952', 100, 3780)
(786591745, 'Nash Fischer', 'Fugging 4, 5121 Fugging', 'Gnaijehz', '30/05/2002', 4633)























































































--- Table structure for "Party"


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"
SET time_zone = "+00:00"

CREATE TABLE 'poltical party'(

    'party leader' varchar(100) DEFAULT NULL
    'party name' varchar(100) DEFAULT NULL
    'number of the party' int DEFAULT NULL
    --'name' varchar(100) DEFAULT NULL
    PRIMARY KEY ("party name")

);
--------- DATA DUMPING FOR POLITICAL PARTY, AND THE ATTRIBUTES OF THEM. 

INSERT INTO 'political party'('party leader', 'party name', 'party number') VALUES
(348975987) ('Supreme Leader Nasah Euqerat', 'C756', 10)
(457435435) ('Leader Peter Griffin', 'The Fingerlicans', 9)
(059675194) ('Lord Darth Vader', 'The Empire', 8)
(937528634) ('Lois Griffin', 'The Kitchen party', 7)
(923759756) ('Bryan', 'The Yard Party of Poo', 6)
(126348574) ('Homer Simpson', 'The Simps Party of Donuts', 5)
(235438514) ('Bart Simpson', 'Broke Gamer Party of America', 4)
(324536457) ('Lisa Simpson', 'Smart Party Nobody Cares' 3)
(454689763) ('Meg', 'Shut up Meg of Feminism', 2)
(382495769) ('Kevin Fiege', 'Bad Marvel Pics of America', 1) 







































































































--- Table structure for "Region"

















