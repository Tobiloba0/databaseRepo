-- A
SELECT * FROM mi_ch02.ITEM;
SELECT * FROM SHIPMENT;
SELECT * FROM SHIPMENT_ITEM;

-- B
SELECT ShipmentID, ShipperName, ShipperInvoiceNumber FROM SHIPMENT;

-- C 
SELECT ShipmentID, ShipperName, ShipperInvoiceNumber FROM SHIPMENT WHERE InsuredValue > 10000;

-- D
SELECT ShipmentID, ShipperName, ShipperInvoiceNumber FROM SHIPMENT WHERE ShipperName LIKE '%AB%';

-- E
SELECT ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate FROM SHIPMENT WHERE MONTH(DepartureDate) = 12 AND DAY(DepartureDate) = 10;

-- F
SELECT  ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate FROM SHIPMENT WHERE DAY(DepartureDate) = 10; 

-- G
SELECT MAX(InsuredValue) FROM SHIPMENT;
SELECT MIN(InsuredValue) FROM SHIPMENT;

-- H
SELECT AVG(InsuredValue) FROM SHIPMENT;

-- I
SELECT COUNT(*) FROM SHIPMENT;

-- J
SELECT ItemID, Description, Store,
       LocalCurrencyAmount * ExchangeRate AS USCurrencyAmount
FROM ITEM;

-- K
SELECT City, Store
FROM ITEM
GROUP BY City, Store;

-- L
SELECT City, Store, COUNT(*) AS TotalPurchases
FROM ITEM
GROUP BY City, Store;

-- M
SELECT ShipperName, ShipmentID, DepartureDate
FROM SHIPMENT
WHERE ShipmentID IN (
    SELECT ShipmentID
    FROM ITEM
    WHERE Value >= 1000
)
ORDER BY ShipperName ASC, DepartureDate DESC;

-- N
SELECT s.ShipperName, s.ShipmentID, s.DepartureDate
FROM SHIPMENT s
JOIN ITEM i ON s.ShipmentID = i.ShipmentID
WHERE i.Value >= 1000
ORDER BY s.ShipperName ASC, s.DepartureDate DESC;

-- O
WHERE ShipmentID IN (
    SELECT ShipmentID
    FROM ITEM
    WHERE City = 'Singapore'
)

-- P
FROM SHIPMENT s, ITEM i
WHERE s.ShipmentID = i.ShipmentID
AND i.City = 'Singapore'

-- Q
FROM SHIPMENT s
JOIN ITEM i ON s.ShipmentID = i.ShipmentID
WHERE i.City = 'Singapore'

-- R
SELECT s.ShipperName, s.ShipmentID, s.DepartureDate, i.Value
FROM SHIPMENT s
JOIN ITEM i ON s.ShipmentID = i.ShipmentID
WHERE i.ShipmentID IN (
    SELECT ShipmentID
    FROM ITEM
    WHERE City = 'Singapore'
)
ORDER BY s.ShipperName ASC, s.DepartureDate DESC;
-- S
SELECT s.ShipperName, s.ShipmentID, s.DepartureDate, i.Value
FROM SHIPMENT s
JOIN ITEM i ON s.ShipmentID = i.ShipmentID
WHERE i.City = 'Singapore'

UNION

SELECT s.ShipperName, s.ShipmentID, s.DepartureDate, NULL
FROM SHIPMENT s

ORDER BY Value ASC, ShipperName ASC, DepartureDate DESC;



