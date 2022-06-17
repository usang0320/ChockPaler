CREATE TABLE USERS(
num NUMBER PRIMARY KEY,
id VARCHAR2(30) NOT NULL,
pwd VARCHAR2(30) NOT NULL,
name VARCHAR2(10) NOT NULL,
email VARCHAR2(100),
regdate DATE,
gender VARCHAR2(10),
profile VARCHAR2(200)
);

CREATE SEQUENCE USERS_SEQ;

CREATE TABLE USERS_ACCOUNT(
id VARCHAR2(30) NOT NULL,
money NUMBER CHECK(money >= 0),
point NUMBER
);

CREATE TABLE USERS_ORDER(
num NUMBER PRIMARY KEY,
id VARCHAR2(30) NOT NULL,
item_code NUMBER,
addr VARCHAR2(100)
);

CREATE SEQUENCE USERS_ORDER_SEQ;

CREATE TABLE REVIEWS(
num NUMBER PRIMARY KEY,
writer VARCHAR2(30),
title VARCHAR2(100),
content CLOB,
regdate DATE
);

CREATE SEQUENCE REVIEWS_SEQ;

CREATE TABLE ORDER_VIEW(
num NUMBER,
id VARCHAR2(30),
name VARCHAR2(10),
addr VARCHAR2(100),
item VARCHAR2(100),
count NUMBER,
price NUMBER
);

CREATE SEQUENCE items_seq;

CREATE TABLE ITEMS(
item_type VARCHAR2(50),
item_num NUMBER PRIMARY KEY,
name VARCHAR2(100),
detail VARCHAR2(300),
price NUMBER,
star_point NUMBER,
regdate DATE,
img VARCHAR2(300),
remain_count NUMBER CHECK(remain_count >= 0)
);
