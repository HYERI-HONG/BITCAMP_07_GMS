ALTER TABLE TEAMW ADD CONSTRAINT TEAMZ_FK_TEAM_ID
	FOREIGN KEY(TEAM_ID) REFERENCES TEAMZ(TEAM_ID);


CREATE TABLE TEAMZ(
    TEAM_ID VARCHAR2(20) PRIMARY KEY,
    TEAM_NAME VARCHAR2(20)
);

CREATE TABLE TEAMW(
    MEM_ID VARCHAR2(20) PRIMARY KEY,
    TEAM_ID VARCHAR2(20),
    MEM_NAME VARCHAR2(20),
    MEM_AGE DECIMAL,
    ROLL VARCHAR2(20)
);

INSERT INTO TEAMZ(
    TEAM_ID, team_name
)
VALUES(
    'ateam', '저스티스'
);
INSERT INTO TEAMZ(
    TEAM_ID, team_name
)
VALUES(
    'hteam', '아마조네스'
);
INSERT INTO TEAMZ(
    TEAM_ID, team_name
)
VALUES(
    'cteam', '가오갤'
);
INSERT INTO TEAMZ(
    TEAM_ID, team_name
)
VALUES(
    'steam', '어벤져스'
);

	
--ateam
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('a1','ateam','형준',34,'팀장');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('a2','ateam','세인',35,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('a3','ateam','희태',21,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('a4','ateam','상훈',29,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('a5','ateam','태형',25,'팀원');

--hteam
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('h1','hteam','혜리',26,'팀장');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('h2','hteam','지은',26,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('h3','hteam','단아',26,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('h4','hteam','재경',30,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('h5','hteam','준',27,'팀원');

--cteam
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('c1','cteam','최정훈',32,'팀장');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('c2','cteam','윤호',31,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('c3','cteam','가은',29,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('c4','cteam','정훈',23,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('c5','cteam','승태',30,'팀원');

--steam
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('s1','steam','승호',27,'팀장');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('s2','steam','소진',26,'팀원');
INSERT INTO TEAMW(MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('s3','steam','이슬',29,'팀원');
INSERT INTO TEAMW( MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('s4','steam','진태',26,'팀원');
INSERT INTO TEAMW(MEM_ID, TEAM_ID, MEM_NAME, MEM_AGE,ROLL)
VALUES('s5','steam','누리',30,'팀원');

SELECT * FROM MEMBER;


ALTER TABLE TEAMZ
RENAME TO PROJECT_TEAM;
ALTER TABLE TEAMW
RENAME TO MEMBER;

ALTER TABLE MEMBER
RENAME COLUMN MEM_NAME TO NAME;

ALTER TABLE MEMBER
RENAME COLUMN MEM_AGE TO AGE;


--SUBJECT 테이블 생성
--과목 : JAVA,SQL,HTML5,R,PYTHON
CREATE TABLE SUBJECT(
    SUB_SEQ DECIMAL PRIMARY KEY,
    SUB_NAME VARCHAR2(20) 
);

--SEQUENCE생성
CREATE SEQUENCE SUB_SEQ;
--결과 확인
SELECT * FROM SUBJECT;

INSERT INTO SUBJECT(
    SUB_SEQ, SUB_NAME
)
values(
    SUB_SEQ.NEXTVAL, 'JAVA'
);

INSERT INTO SUBJECT(
    SUB_SEQ, SUB_NAME
)
values(
    SUB_SEQ.NEXTVAL, 'SQL'
);

INSERT INTO SUBJECT(
    SUB_SEQ, SUB_NAME
)
values(
    SUB_SEQ.NEXTVAL, 'HTML5'
);
INSERT INTO SUBJECT(
    SUB_SEQ, SUB_NAME
)
values(
    SUB_SEQ.NEXTVAL, 'R'
);
INSERT INTO SUBJECT(
    SUB_SEQ, SUB_NAME
)
values(
    SUB_SEQ.NEXTVAL, 'PYTHON'
);


--RECORD테이블 생성
CREATE TABLE RECORD(
    RECORD_SEQ DECIMAL PRIMARY KEY,
    GRADE VARCHAR2(20),
    AGE VARCHAR2(20)
);
CREATE SEQUENCE RECORD_SEQ;

SELECT * FROM RECORD;

--EXAM테이블 생성

CREATE TABLE EXAM(
    EXAM_SEQ DECIMAL PRIMARY KEY,
    MEM_ID VARCHAR2(20),
    SUB_SEQ DECIMAL,
    MONTH VARCHAR2(20),
    SCORE VARCHAR2(20),
    RECORD_SEQ DECIMAL
);
CREATE SEQUENCE EXAM_SEQ;

ALTER TABLE EXAM ADD CONSTRAINT EXAM_FK_MEM_ID
	FOREIGN KEY(MEM_ID) REFERENCES MEMBER(MEM_ID);
	
ALTER TABLE EXAM ADD CONSTRAINT EXAM_FK_SUB_SEQ
FOREIGN KEY(SUB_SEQ) REFERENCES SUBJECT(SUB_SEQ);

ALTER TABLE EXAM ADD CONSTRAINT EXAM_FK_RECORD_SEQ
FOREIGN KEY(RECORD_SEQ) REFERENCES RECORD(RECORD_SEQ);

SELECT * FROM EXAM;

--------------------------컬럼명 변경 필요
insert into teamz(
    team_id, team_name
)
values(
    'ateam', '저스티스'
);
insert into teamz(
    team_id, team_name
)
values(
    'hteam', '아마조네스'
);
insert into teamz(
    team_id, team_name
)
values(
    'cteam', '가오갤'
);
insert into teamz(
    team_id, team_name
)
values(
    'steam', '어벤져스'
);

	
--ateam
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('a1','ateam','형준',34,'팀장');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('a2','ateam','세인',35,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('a3','ateam','희태',21,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('a4','ateam','상훈',29,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('a5','ateam','태형',25,'팀원');

--hteam
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('h1','hteam','혜리',26,'팀장');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('h2','hteam','지은',26,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('h3','hteam','단아',26,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('h4','hteam','재경',30,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('h5','hteam','준',27,'팀원');

--cteam
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('c1','cteam','최정훈',32,'팀장');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('c2','cteam','윤호',31,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('c3','cteam','가은',29,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('c4','cteam','정훈',23,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('c5','cteam','승태',30,'팀원');

--steam
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('s1','steam','승호',27,'팀장');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('s2','steam','소진',26,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('s3','steam','이슬',29,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('s4','steam','진태',26,'팀원');
insert into teamw( mem_id, team_id, mem_name, mem_age,roll)
values('s5','steam','누리',30,'팀원');