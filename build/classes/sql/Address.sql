--address
--addr_seq (DECIMAL, primary key)
--zipcode
--province -도
--city -시
--gugun -구, 군, 동
--doro -로 -번길

SELECT * FROM TAB;

CREATE SEQUENCE addr_seq START WITH 1000;

CREATE TABLE ADDRESS(
	addr_seq DECIMAL PRIMARY KEY,
	zipcode VARCHAR2(20),
	province VARCHAR2(20),
	city VARCHAR2(20),
	gugun VARCHAR2(20),
	doro VARCHAR(20)
);
--1
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'10064', '경기도','김포시','장기동', '한강로 1' 
);
--2
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'80054', '경기도','고양시','일산서구', '탄현로11' 
);
--3
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'10404', '경기도','부천시','중동', '계남로17' 
);
--4
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'14323', '서울특별시','금천구','독산1동', '남부순환로' 
);
--5
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'16437', '대전광역시','서구','관저동', '관저동로8' 
);
--6
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'20501', '제주도','제주시','애월읍','일주서로6' 
);
--7
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'51162', '부산광역시','연제구','연산동', '중앙대로1' 
);
--8
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'20168', '강원도','강릉시','죽헌동', '율곡로31' 
);
--9
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'10412', '경상남도','거창군','거창읍', '동동6길' 
);
-10
INSERT INTO ADDRESS
(
	addr_seq, zipcode, province, city, gugun, doro
)
VALUES
(
	addr_seq.nextval,'21391', '대구광역시','남구','대명동','명덕로14' 
);

SELECT * FROM ADDRESS;