-- Создание БД.

CREATE DATABASE `phones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- 1. Создание таблицы с телефонами.

CREATE TABLE `phones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(45) NOT NULL,
  `Manufacturer` varchar(45) NOT NULL,
  `ProductCount` int NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2.

SELECT ProductName, Manufacturer, Price  FROM phones where ProductCount > 2;

-- 3. Выведите весь ассортимент товаров марки "Samsung".

SELECT * FROM phones where Manufacturer = 'Samsung';

-- 4.1. Выведите товыры в которых есть упоминание "Iphone".

SELECT * FROM phones where ProductName LIKE 'Iphone%';

-- 4.2. Выведите товыры в которых есть упоминание "Samsung".

SELECT * FROM phones where Manufacturer LIKE 'Samsung%';

-- 4.3. Выведите товыры в которых есть цифры.

SELECT * FROM phones WHERE ProductName REGEXP '[0-9]';

-- 4.4. Выведите товыры в которых есть цифра "8".

SELECT * FROM phones WHERE ProductName LIKE '%8%';


