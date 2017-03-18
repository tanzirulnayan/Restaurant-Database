VIEW:

Simple:
1.
CREATE VIEW RES_MENU
            (ID, NAME, PRICE) AS
SELECT f_id, f_name, f_price FROM foods; 

2.
CREATE VIEW EMP_LIST
            (ID, NAME, ADDRESS, PHONE) AS
SELECT e_id, e_name, e_address, e_phone FROM employees; 

3.
CREATE VIEW TABLE_DETAIL
            (ID, SPACE) AS
SELECT t_id, capacity FROM tables; 

Complex:
4.
CREATE VIEW bill_detail
            (ID, BILL) AS
SELECT c.c_id, SUM (f.f_price * i.quantity) FROM customers c, foods f, items i, orders o 
       WHERE c.c_id = o.c_id AND o.o_id = i.o_id AND i.f_id = f.f_id GROUP BY c.c_id;

5.
CREATE VIEW sell_detail
            (S_DATE, TOTAL)
AS 
SELECT o.o_date, SUM (f.f_price * i.quantity) FROM orders o, foods f, items i 
WHERE o.o_id = i.o_id AND i.f_id = f.f_id GROUP BY o.o_date;




QUERY:

1.Show menu of the restaurant.
SELECT f_id, f_name, f_price FROM foods; 

2.Show total salary of all employees.
SELECT SUM(e_salary) FROM employees;

3.Show the expense of the restaurant in waiter purpose.
SELECT SUM(e_salary) Expense_Waiter FROM employees
WHERE 
j_id = (SELECT j_id FROM jobs WHERE j_title = 'Waiter');

4.Show the expenses of the restaurant behind employees , job wise.
SELECT j_title Job, SUM(e_salary) Expense 
FROM
employees NATURAL JOIN jobs GROUP BY j_title;

5.Show employee detail (id, name, phone, job_title).
SELECT e.e_id, e.e_name, e.e_phone, j.j_title 
FROM
employees e, jobs j WHERE e.j_id = j.j_id;

6.Show the total sell in 14 Dec/16 (Without help of View).
SELECT SUM (f.f_price * i.quantity) FROM foods f, items i
WHERE
    i.f_id = f.f_id
                   AND 
i.o_id IN (SELECT o_id FROM orders o WHERE o_date = '12/14/2016');

7.Show the total sell in 14 Dec/16 (With the help of View).
SELECT total FROM sell_detail WHERE s_date = '12/14/2016';

8.Show the total sell in december.
SELECT SUM(total) AS DECEMBER_SELL FROM sell_detail 
WHERE s_date BETWEEN '12/01/2016' AND '12/31/2016';

9.Show the total number of customers served by Abdal Mumit.
SELECT COUNT(o_id) Served_by_Mumit FROM orders 
WHERE 
e_id = (SELECT e_id FROM employees WHERE e_name = 'Abdal Mumit');

10.Show Customer id, name, phone number and bill for all customers.
SELECT bd.id AS ID, c.c_name AS NAME, c.c_phone AS PHONE_NUMBER, bd.bill AS BILL 
FROM 
bill_detail bd, customers c WHERE c.c_id = bd.id;
