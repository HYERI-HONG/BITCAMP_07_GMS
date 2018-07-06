SELECT * FROM TAB;
--account
--account_seq, create_date, account_type, account_num, money, limit

CREATE SEQUENCE account_seq START WITH 1000;
CREATE TABLE ACCOUNT(

	account_seq DECIMAL PRIMARY KEY,
	money DECIMAL,
	account_num VARCHAR2(20),
	account_type VARCHAR2(20),
	create_date DATE,
	limit DECIMAL
	
);
--1
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 0, '123-456-789', '일반통장', SYSDATE, 0
);
--2
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 1000, '785-152-841', '일반통장', SYSDATE, 0
);
--3
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 500, '849-554-720', '일반통장', SYSDATE, 0
);
--4
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 5000, '447-528-642', '일반통장', SYSDATE, 0
);
--5
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 7800, '945-779-510', '일반통장', SYSDATE, 0
);
--6
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 12500, '784-220-674', '일반통장', SYSDATE, 0
);
--7
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 8900, '771-246-667', '일반통장', SYSDATE, 0
);
--8
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 4100, '744-123-880', '일반통장', SYSDATE, 0
);
--9
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 9550, '740-557-372', '일반통장', SYSDATE, 0
);
-10
INSERT INTO ACCOUNT
(
	account_seq, money, account_num, account_type, create_date, limit
) 
VALUES
(
	account_seq.nextval, 100, '774-572-510', '일반통장', SYSDATE, 0
);
SELECT * FROM ACCOUNT;
