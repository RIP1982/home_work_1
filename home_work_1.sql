CREATE DATABASE home_work_1;

USE home_work_1;

-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными. 
CREATE TABLE phones
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(45),
Manufacturer VARCHAR(45),
ProductCount VARCHAR(45),
Price VARCHAR(45)
);

INSERT phones(ProductName, Manufacturer, ProductCount, Price)
VALUES
("iphoneX", "Apple", "3", "76000"),
("iphone8", "Apple", "2", "51000"),
("GalaxyS9", "Samsung", "2", "56000"),
("GalaxyS8", "Samsung", "1", "41000"),
("P20 Pro", "Huawei", "5", "36000");

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2 
SELECT ProductName, Manufacturer, Price
FROM phones
WHERE ProductCount > "2";

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM phones
WHERE Manufacturer="Samsung";

-- 4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**
SELECT *
FROM phones
WHERE Price*ProductCount BETWEEN 100000 AND 145000;

-- 4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE для 4.3” ):
-- 4.1. Товары, в которых есть упоминание "Iphone"
SELECT ProductName, Manufacturer, Price
FROM phones
WHERE ProductName REGEXP "iphone";

-- 4.2. "Galaxy"
SELECT ProductName, Manufacturer, Price
FROM phones
WHERE ProductName LIKE "Galaxy%";

-- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT ProductName, Manufacturer, Price
FROM phones
WHERE ProductName RLIKE "[0-9]";

-- 4.4.  Товары, в которых есть ЦИФРА "8"
SELECT ProductName, Manufacturer, Price
FROM phones
WHERE ProductName RLIKE "[8]";
