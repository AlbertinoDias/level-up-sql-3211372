-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

select Type, Name, Price, description from dishes
order by price asc

select Type, Name, Price, description  from dishes
where Type = 'Beverage' or Type = 'Appetizer'
order by price asc

select Type, Name, Price, description  from dishes
where Type != 'Beverage'
order by price asc