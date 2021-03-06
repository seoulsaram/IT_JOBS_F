--CORPORATION

DROP TABLE CORPORATION
DROP SEQUENCE CORPORATIONSEQ

CREATE SEQUENCE CORPORATIONSEQ

		-- 사업자번호, 대표자명, 담당자명
CREATE TABLE CORPORATION(
	MEMBER_ID VARCHAR2(20) NOT NULL,
	CORP_BUSINESSNO NUMBER,
	CORP_CEO_NAME VARCHAR2(20),
	CORP_BOARD_NAME VARCHAR2(20),
	CORP_MEMBERSHIP VARCHAR2(50),
	CORP_COUNTEMP NUMBER,
	
	CONSTRAINT CORP_FK_MEMBER_ID FOREIGN KEY(MEMBER_ID)
		REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE,
	CONSTRAINT CORP_UQ_BUSINESSNO UNIQUE(CORP_BUSINESSNO)
)


INSERT INTO CORPORATION
VALUES(
	'corporation', 11111111, 'CEO-NAME', 'BOARD-NAME', 'TEST-MEMBERSHIP', 10
)

SELECT * FROM CORPORATION