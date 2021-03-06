--CUSTOMER_SERVICE

DROP TABLE CUSTOMER_SERVICE
DROP SEQUENCE CS_SEQ

CREATE SEQUENCE CS_SEQ

CREATE TABLE CUSTOMER_SERVICE(
	CS_NO NUMBER NOT NULL,
	CS_TITLE VARCHAR2(500) NOT NULL,
	CS_CONTENT VARCHAR2(4000) NOT NULL,
	CS_REGDATE DATE NOT NULL,
	
	CONSTRAINT CS_PK_NO PRIMARY KEY(CS_NO)
)

INSERT INTO CUSTOMER_SERVICE
VALUES(CS_SEQ.NEXTVAL, 'TEST-TITLE', 'TEST-CONTENT', SYSDATE)

SELECT * FROM CUSTOMER_SERVICE