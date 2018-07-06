SELECT * FROM TAB;

-- member
--uid, pass, name, ssn, regidate, addr_seq, phone,email,profile,access_num,credit-rating



CREATE TABLE MEMBER(

	userid VARCHAR(20) CONSTRAINT member_pk_userid PRIMARY KEY,
	pass VARCHAR2(20),
	name VARCHAR2(20),
	ssn VARCHAR2(20),
	regidate DATE,
	phone VARCHAR2(13),
	email VARCHAR2(20),
	profile VARCHAR2(7),
	access_num VARCHAR2(8),
	create_rating DECIMAL,
	addr_seq DECIMAL,
	account_seq DECIMAL
);
ALTER TABLE MEMBER ADD CONSTRAINT ADDRESS_fk_addr_seq
	FOREIGN KEY(addr_seq) REFERENCES ADDRESS(addr_seq);
ALTER TABLE MEMBER ADD CONSTRAINT ACCOUNT_fk_account_seq
	FOREIGN KEY(account_seq) REFERENCES ACCOUNT(account_seq);
--1
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'HONG','1234','홍길동','600805-1',SYSDATE,'010-1596-8282',
	'HONG@test.com','H.jpg','',5,'1020','1000'
);
--2
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'LEE','5678','이순신','751125-1',SYSDATE,'010-4625-7891',
	'LEE@test.com','L.jpg','',5,'1021','1001'
);
--3
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'KIM','4628','김유신','850217-1',SYSDATE,'010-8249-8425',
	'KIM@test.com','K.jpg','',5,'1022','1002'
);
--4
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'JANG','8112','장영실','901011-2',SYSDATE,'010-7794-1351',
	'JANG@test.com','J.jpg','',5,'1023','1003'
);
--5
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'PARK','1145','박제가','200135-2',SYSDATE,'010-5541-6001',
	'PARK@test.com','P.jpg','',5,'1024','1004'
);
--6
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'MIN','1145','민서영','880317-2',SYSDATE,'010-4115-8496',
	'MIN@test.com','M.jpg','',5,'1025','1005'
);
--7
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'KANG','1946','강감찬','651011-1',SYSDATE,'010-8465-2251',
	'KANG@test.com','K.jpg','',5,'1026','1006'
);
--8
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'YANG','7153','양세찬','960230-1',SYSDATE,'010-1314-4952',
	'YANG@test.com','Y.jpg','',5,'1027','1007'
);
--9
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'NA','5520','나영석','900615-1',SYSDATE,'010-5179-3516',
	'NA@test.com','N.jpg','',5,'1028','1008'
);
--10
INSERT INTO MEMBER
(
	userid,pass,name,ssn,regidate,
	phone,email,profile,access_num,create_rating,addr_seq,account_seq
) 

VALUES(
	'JIN','8512','진지희','000927-3',SYSDATE,'010-5421-9974',
	'JIN@test.com','JI.jpg','',5,'1029','1009'
);

SELECT * FROM MEMBER;
SELECT * FROM MEMBER, ACCOUNT
WHERE MEMBER.account_seq = ACCOUNT.account_seq
AND MEMBER.userid = 'HONG'
;

SELECT userid, name, ssn,phone,city 
FROM MEMBER m, ACCOUNT ac, ADDRESS ad
WHERE m.account_seq = ac.account_seq
AND m.addr_seq = ad.addr_seq
AND m.userid = 'LEE'
;




