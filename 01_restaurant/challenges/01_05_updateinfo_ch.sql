-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE customers
SET Address = '74 Pine St.', city = 'New York', state = 'NY'
where FirstName = 'Taylor' and LastName ='Jenkins' and address = '27170 6th Ave.'; 

select * from customers where firstname = 'Taylor'