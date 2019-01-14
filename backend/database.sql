/*
 * 작성자 : 전형동
 * 작성일 : 2019.01.06
 * 테이블명 : TEST
 */*/
 
 CREATE TABLE TEST (
     No INT(11),
 	 ID VARCHAR(100),
 	 PASSWORD VARCHAR(100)
 );
 
 /*
 * 작성자 : 전형동
 * 작성일 : 2019.01.07
 * 테이블명 : 카테고리
 * 
 */
 
 CREATE TABLE category (
 
 	id IDENTITY,
 	name VARCHAR(50),
 	description VARCHAR(255),
 	image_url VARCHAR(50),
 	is_active BOOLEAN,
 	
 	CONSTRAINT pk_category_id PRIMARY KEY(id)
 );
 
 /*
 * 작성자 : 전형동
 * 작성일 : 2019.01.07
 * 테이블명 : 상품
 */

CREATE TABLE product(
 	id IDENTITY,
 	code VARCHAR(20),
 	name VARCHAR(50),
 	brand VARCHAR(50),
 	description VARCHAR(255),
 	unit_price DECIMAL(10,2),
 	quantity INT,
 	is_active BOOLEAN,
 	category_id INT,
 	supplier_id INT,
 	purchases INT DEFAULT 0,
 	views INT DEFAULT 0,
 	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
 	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail (id)
);
 
 
 /*
 * 작성자 : 전형동
 * 작성일 : 2019.01.07
 * 테이블명 : 유저
 */

CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(50),
	email VARCHAR(100),
	contact_number VARCHAR(15),
	constraint pk_user_id PRIMARY KEY(id)
);

 
/*
 *	작성자 : 전형동
 *	작성일 : 2019.01.14 
 */

INSERT INTO category (name, description,image_url,is_active) VALUES ('Laptop', '안팔리면 죽빵 1대!', 'CAT_1.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Television', '안팔리면 죽빵 2대', 'CAT_2.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Mobile', '안팔리면 죽빵 3대', 'CAT_3.png', true);
 
 
/*
 *	작성자 : 전형동
 *	작성일 : 2019.01.14 
 */
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Jeon', 'Hyeongdong1', 'ADMIN', true, '12345', 'test1@gmail.com', '11111');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Jeon', 'Hyeongdong2', 'SUPPLIER', true, '12345', 'test2@gmail.com', '22222');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Jeon', 'Hyeongdong3', 'USER', true, '12345', 'test3@gmail.com', '33333');
 

/*
 *	작성자 : 전형동
 *	작성일 : 2019.01.14 
 */

-- adding five products
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABC123DEFX', 'iPhone 5s', 'apple', '아이폰 성에서 온 5세대 구닥다리!', 18000, 5, true, 3, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDDEF123DEFX', 'Samsung s7', 'samsung', '요즘 누가 삼성쓰냐 이 쓰레기를!', 32000, 2, true, 3, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDPQR123WGTX', 'Google Pixel', 'google', '구글성에서 날라온 픽셀!', 57000, 5, true, 3, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDMNO123PQRX', 'Macbook Pro', 'apple', '맥북 54000원에 팜 한번 사보셈!', 54000, 3, true, 1, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABCXYZDEFX', 'Dell Latitude E6510', 'dell', '델이 최고지 가성비 굿 뭐? 가성비?!', 48000, 5, true, 1, 3, 0, 0 );
 
 
 
 
 
 