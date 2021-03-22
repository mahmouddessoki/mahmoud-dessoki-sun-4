//query 1
select distinct orderNumber,productCode,priceEach from orderdetails 
where productCode like 'S18%'
and priceEach > 100

//query2
SELECT * FROM `payments`
where paymentDate like '%-06'
or paymentDate like '%-05'

//query3
SELECT creditLimit FROM `customers`
where country = "USA"
and phone like '%555%'
limit 1 offset 4