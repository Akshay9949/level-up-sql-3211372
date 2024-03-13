-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

select Type,Name,Price,Description from dishes order by price;

select Type,Name,Price,Description  from dishes where type in ('Appetizer','Beverage');
select Type,Name,Price,Description  from dishes where type= 'Appetizer' or type='Beverage';

select Type,Name,Price,Description  from dishes where type not in ('Beverage');
select Type,Name,Price,Description  from dishes where type!='Beverage';
