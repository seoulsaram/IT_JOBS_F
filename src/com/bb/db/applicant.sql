--APPLICANT

DROP TABLE APPLICANT

CREATE TABLE APPLICANT(
	MEMBER_NO NUMBER NOT NULL,
	JO_NO NUMBER NOT NULL,
	
	CONSTRAINT APPLICANT_FK_MEMBER FOREIGN KEY(MEMBER_NO)
		REFERENCES MEMBER(MEMBER_NO) ON DELETE CASCADE,
	CONSTRAINT APPLICANT_FK_JOBOFFER FOREIGN KEY(JO_NO)
		REFERENCES JOBOFFER(JO_NO) ON DELETE CASCADE
)

INSERT INTO APPLICANT
VALUES(1, 1)

SELECT * FROM APPLICANT