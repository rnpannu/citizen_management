

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




































































































--- Table structure for "Region"

















