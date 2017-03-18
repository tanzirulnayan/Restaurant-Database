INSERT INTO jobs (j_id, j_title) VALUES (20, 'WAITER');
INSERT INTO jobs (j_id, j_title) VALUES (21, 'COOK');
INSERT INTO jobs (j_id, j_title) VALUES (22, 'CLEANER');
INSERT INTO jobs (j_id, j_title) VALUES (23, 'CASHIER');


INSERT INTO customers (c_id, c_name, c_address, c_phone, c_occupation) VALUES (101, 'Tanzirul Haque', 'Basundhara, Dhaka', 01788284381, 'STU');
INSERT INTO customers (c_id, c_name, c_address, c_phone, c_occupation) VALUES (102, 'Sabbir Hosssain', 'Mohakhali, Dhaka', 01788284381, 'STU');
INSERT INTO customers (c_id, c_name, c_address, c_phone, c_occupation) VALUES (103, 'Sakib Hosssain', 'Baridhara, Dhaka', 01521301871, 'STU');
INSERT INTO customers (c_id, c_name, c_address, c_phone, c_occupation) VALUES (104, 'Al Amin', 'Notun Bazar, Dhaka', 01521318596, 'STU');
INSERT INTO customers (c_id, c_name, c_address, c_phone, c_occupation) VALUES (105, 'Muktadir Udoy', 'Basundhara, Dhaka', 01773709191, 'DOC');
INSERT INTO customers (c_id, c_name, c_address, c_phone, c_occupation) VALUES (106, 'Jason James', 'Basundhara, Dhaka', 01554369526, 'ENG');


INSERT INTO employees (e_id, e_name, e_phone, e_address, e_salary, j_id) VALUES (1, 'Abdal Mumit', 01788523695, 'Nikunjo, Dhaka', 15000, 20);
INSERT INTO employees (e_id, e_name, e_phone, e_address, e_salary, j_id) VALUES (2, 'Ar Rafi', 01756295398, 'Nikunjo, Dhaka', 19000, 21);
INSERT INTO employees (e_id, e_name, e_phone, e_address, e_salary, j_id) VALUES (3, 'Fokhrul Hridoy', 01653269852, 'Uttara, Dhaka', 9000, 22);
INSERT INTO employees (e_id, e_name, e_phone, e_address, e_salary, j_id) VALUES (4, 'Obida Alauddin', 01856296541, 'Nikunjo, Dhaka', 21000, 23);


INSERT INTO foods (f_id, f_name, f_price, e_id) VALUES (1, 'BURGER', 450, 2);
INSERT INTO foods (f_id, f_name, f_price, e_id) VALUES (2, 'SANDWICH', 180, 2);
INSERT INTO foods (f_id, f_name, f_price, e_id) VALUES (3, 'PIZZA', 880, 2);
INSERT INTO foods (f_id, f_name, f_price, e_id) VALUES (4, 'PASTA', 300, 2);


INSERT INTO tables (t_id, capacity, e_id) VALUES (101, 4, 1);
INSERT INTO tables (t_id, capacity, e_id) VALUES (102, 4, 1);
INSERT INTO tables (t_id, capacity, e_id) VALUES (103, 2, 1);
INSERT INTO tables (t_id, capacity, e_id) VALUES (104, 10, 1);


INSERT INTO booking (b_date, b_hour, c_id, t_id) VALUES ('12-12-2016', 2, 101, 101);
INSERT INTO booking (b_date, b_hour, c_id, t_id) VALUES ('12-13-2016', 1, 103, 102);
INSERT INTO booking (b_date, b_hour, c_id, t_id) VALUES ('12-14-2016', 6, 104, 104);


INSERT INTO orders (o_id, o_type, o_date, c_id, e_id) VALUES (1, 'IN HOUSE', '12-12-2016', 101, 1);
INSERT INTO orders (o_id, o_type, o_date, c_id, e_id) VALUES (2, 'PARCEL', '12-12-2016', 102, 1);
INSERT INTO orders (o_id, o_type, o_date, c_id, e_id) VALUES (3, 'IN HOUSE', '12-13-2016', 103, 1);
INSERT INTO orders (o_id, o_type, o_date, c_id, e_id) VALUES (5, 'IN HOUSE', '12-14-2016', 104, 1);
INSERT INTO orders (o_id, o_type, o_date, c_id, e_id) VALUES (4, 'PARCEL', '12-14-2016', 105, 1);
INSERT INTO orders (o_id, o_type, o_date, c_id, e_id) VALUES (6, 'PARCEL', '12-14-2016', 106, 1);


INSERT INTO items (o_id, f_id, quantity) VALUES (1, 3, 4);
INSERT INTO items (o_id, f_id, quantity) VALUES (2, 3, 2);
INSERT INTO items (o_id, f_id, quantity) VALUES (3, 4, 3);
INSERT INTO items (o_id, f_id, quantity) VALUES (4, 3, 4);
INSERT INTO items (o_id, f_id, quantity) VALUES (5, 3, 10);
INSERT INTO items (o_id, f_id, quantity) VALUES (5, 1, 10);
INSERT INTO items (o_id, f_id, quantity) VALUES (6, 2, 1);


INSERT INTO order_history (t_id, o_id) VALUES (101, 1);
INSERT INTO order_history (t_id, o_id) VALUES (102, 3);
INSERT INTO order_history (t_id, o_id) VALUES (104, 5);

