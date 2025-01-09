-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
select customers.firstname, customers.lastname,
 reservations.date, reservations.partysize from reservations
left join customers 
on customers.customerid= reservations.customerid
where reservations.customerid in (select customerid from customers 
where lastname like 'Ste%')
and partysize = 4
order by 3 desc

