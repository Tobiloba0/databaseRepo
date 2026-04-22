SELECT SKU, SKU_Description from INVENTORY;

SELECT SKU_Description, SKU from INVENTORY;

SELECT WarehouseID from INVENTORY;

SELECT distinct WarehouseID from INVENTORY;

SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder from INVENTORY;

SELECT * from INVENTORY;

SELECT * from INVENTORY where QuantityOnHand > 0;

SELECT SKU, SKU_Description, WarehouseID from INVENTORY where QuantityOnHand = 0 && QuantityOnOrder > 0 order by WarehouseID desc, SKU asc;

SELECT SKU, SKU_Description, WarehouseID from INVENTORY where QuantityOnHand = 0 && QuantityOnOrder = 0 order by WarehouseID desc, SKU asc;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand from INVENTORY where QuantityOnHand > 1 and QuantityOnHand < 10;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand from INVENTORY where QuantityOnHand between 2 and 9;

SELECT distinct SKU, SKU_Description from INVENTORY where SKU_Description LIKE "Half-Done%";

SELECT distinct SKU, SKU_Description from INVENTORY where SKU_Description LIKE "__d%";

SELECT COUNT(QuantityOnHand) AS quantity,
 SUM(QuantityOnHand) AS sumoOfValue,
 MIN(QuantityOnHand) AS minimumValue,
 MAX(QuantityOnHand) AS maximumValue,
 AVG(QuantityOnHand) AS averageValue
 FROM INVENTORY;
 
 -- The count function is used to get the total number of items on a table column while sum adds up the values in the column cell
 
 SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand from INVENTORY order by TotalItemsOnHand desc;
