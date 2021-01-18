SELECT * FROM public.customers WHERE  country='Germany' 
UPDATE public.customers SET country='United Kingdom' WHERE country='UK'
DELETE FROM public.customers WHERE fax=null
INSERT INTO public.customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) VALUES('AYEEU', 'AYEEETUS', 'Guy Fieri', 'Professional memer', 'what now', 'yeet', 'RLP', '51,364,317', 'Tibet', '696-6969', '555-535')
SELECT * FROM public.customers WHERE contact_title='Sales Representative';
UPDATE public.customers SET company_name='Linkedin' WHERE customer_id='BOTTM'
SELECT * FROM public.customers WHERE region=null AND country='USA';
DELETE FROM public.customers WHERE postal_code='1734'
SELECT * FROM public.customers WHERE contact_title='Owner'
SELECT company_name , contact_name, contact_title FROM public.customers WHERE country='Brazil'
SELECT contact_name AS name, contact_title AS title FROM public.customers WHERE country='Finland'
DELETE FROM public.customers WHERE city='Lion'
UPDATE public.customers SET region='Unknown' WHERE region=null
SELECT * FROM public.customers WHERE  region IS null