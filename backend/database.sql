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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 