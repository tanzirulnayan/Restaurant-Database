CREATE TABLE jobs(
	j_id NUMBER (5),
	j_title VARCHAr2 (10),
	CONSTRAINT jobs_j_id_pk PRIMARY KEY (j_id)
);

CREATE TABLE employees(
	e_id NUMBER (7),
	e_name VARCHAR2 (20) NOT NULL,
	e_phone NUMBER (11)NOT NULL,
	e_address VARCHAR2 (25) NOT NULL,
	e_salary NUMBER (6),
	j_id NUMBER (5) NOT NULL,
	CONSTRAINT employees_e_id_pk PRIMARY KEY (e_id),
	CONSTRAINT employees_j_id_fk FOREIGN KEY (j_id) REFERENCES jobs (j_id)
);

CREATE TABLE tables(
	t_id NUMBER (5),
	capacity NUMBER (2) NOT NULL,
	e_id NUMBER (7) NOT NULL,
	CONSTRAINT tables_t_id_pk PRIMARY KEY (t_id),
	CONSTRAINT tables_e_id_fk FOREIGN KEY (e_id) REFERENCES employees (e_id)
);

CREATE TABLE foods(
	f_id NUMBER (7),
	f_name VARCHAR2 (10) UNIQUE,
	f_price NUMBER (5) NOT NULL,
	e_id NUMBER (7) NOT NULL,
	CONSTRAINT foods_f_id_pk PRIMARY KEY (f_id),
	CONSTRAINT foods_e_id_fk FOREIGN KEY (e_id) REFERENCES employees (e_id)
);

CREATE TABLE customers(
	c_id NUMBER (7),
	c_name VARCHAR2 (25),
	c_phone NUMBER (11),
	c_address VARCHAR2 (25),
	c_occupation VARCHAR2 (10),
	CONSTRAINT customers_c_id_pk PRIMARY KEY (c_id)
);

CREATE TABLE orders(
	o_id NUMBER (7),
	o_type VARCHAR2 (10),
	o_date DATE DEFAULT SYSDATE,
	c_id NUMBER (7),
	e_id NUMBER (7),
	CONSTRAINT orders_o_id_pk PRIMARY KEY (o_id),
	CONSTRAINT orders_cid_fk FOREIGN KEY (c_id) REFERENCES customers (c_id),
	CONSTRAINT orders_eid_fk FOREIGN KEY (e_id) REFERENCES employees (e_id)
);

CREATE TABLE order_history(
	t_id NUMBER (5),
	o_id NUMBER (7),
	CONSTRAINT order_history_PK PRIMARY KEY (t_id, O_id),
	CONSTRAINT order_history_tid_fk FOREIGN KEY (t_id) REFERENCES tables (t_id),
	CONSTRAINT order_history_oid_fk FOREIGN KEY (o_id) REFERENCES orders (o_id)
);

CREATE TABLE items(
	quantity NUMBER (4) NOT NULL,
	o_id NUMBER (7),
	f_id NUMBER (7),
	CONSTRAINT items_oid_fid_pk PRIMARY KEY (o_id, f_id),
	CONSTRAINT items_oid_fk FOREIGN KEY (o_id) REFERENCES orders (o_id),
	CONSTRAINT items_fid_fk FOREIGN KEY (f_id) REFERENCES foods (f_id)
);

CREATE TABLE booking(
	b_date DATE,
	b_hour NUMBER(2),
	c_id NUMBER (7),
	t_id NUMBER (5),
	CONSTRAINT booking_cid_tid_pk PRIMARY KEY (c_id, t_id),
	CONSTRAINT booing_cid_fk FOREIGN KEY (c_id) REFERENCES customers(c_id),
	CONSTRAINT booing_tid_fk FOREIGN KEY (t_id) REFERENCES tables (t_id)
);

