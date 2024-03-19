use db_QuanLyBanHang;
CREATE DATABASE DB_QuanLyBanHang;
USE DB_QuanlyBanHang;

CREATE TABLE CUSTOMERS (
	C_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
	C_NAME VARCHAR(100) NOT NULL,
    C_EMAIL VARCHAR(100) NOT NULL,
    C_PASSWORD VARCHAR(50) NOT NULL,
    C_PHONE INT NOT NULL
)CHARACTER SET = UTF8;


CREATE TABLE PRODUCT_TYPE (
	PT_ID INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PT_NAME VARCHAR(100) NOT NULL
)CHARACTER SET = UTF8;

INSERT INTO `PRODUCT_TYPE` (`PT_NAME`) VALUES
('ÁO THUN'),
('Áo HOODIE'),
('Áo SOMI'),
('QUAN');

CREATE TABLE PRODUCT (
	P_ID INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    P_NAME VARCHAR(100) NOT NULL,
    P_DESCRIPTION  VARCHAR(500) NOT NULL,
    P_PRICE INT NOT NULL,
    NAME_IMAGE VARCHAR(200) NOT NULL,
    PT_ID INT(10) NOT NULL,
    FOREIGN KEY (PT_ID) REFERENCES PRODUCT_TYPE(PT_ID)
)CHARACTER SET = UTF8;

drop table PRODUCT;
select * from CUSTOMERS;
select * from PRODUCT;
select * from PRODUCT_TYPE;
