/**
 * SQL Query Multiple Columns Using Distinct on One Column Only 
 */
 /* http://stackoverflow.com/questions/11937206/sql-query-multiple-columns-using-distinct-on-one-column-only */
select * from tblFruit where
tblFruit_ID in (Select max(tblFruit_ID) FROM tblFruit group by tblFruit_FruitType)