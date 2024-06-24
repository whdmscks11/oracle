-- ���� ���� ����
ALTER TABLE MEMBER DROP CONSTRAINT CK_MEMBER_PHONE;

-- USER_ ��ųʸ� ���
SELECT * FROM user_constraints WHERE TABLE_NAME = 'MEMBER';

-- ���� ���� ���� (���ԽĿ��� ^�� ������ �ǹ��ϰ�, $�� ���� �ǹ��Ѵ�)
ALTER TABLE MEMBER ADD CONSTRAINT CK_MEMBER_PHONE CHECK(REGEXP_LIKE(PHONE, '^01[01]-\d{3,4}-\d{4}$'));


-- ���̺� ���� �ܰ迡�� PRIMARY KEY / UNIQUE ���� ���� ����
CREATE TABLE TEST1
(
    ID          NUMBER          CONSTRAINT PK_TEST1_ID PRIMARY KEY, -- ���� ���Ǹ� ���� ����
    TITLE       VARCHAR2(300)   NOT NULL, -- NOT NULL ���� ���� 
    WRITER_ID   VARCHAR2(50)    NOT NULL CONSTRAINT UK_TEST1_WID UNIQUE, -- NOT NULL / UNIQUE ���� ���� (���� ���Ǹ� ���� ����)
    CONTENT     VARCHAR2(4000),
    REGDATE     DATE            DEFAULT SYSDATE, -- �⺻ �� ���糯¥(SYSDATE)
    HIT         NUMBER          DEFAULT 0 
)

CREATE TABLE TEST2
(
    ID          NUMBER,          
    TITLE       VARCHAR2(300)   NOT NULL, -- NOT NULL ���� ���� 
    WRITER_ID   VARCHAR2(50)    NOT NULL, -- NOT NULL ���� ����
    CONTENT     VARCHAR2(4000),
    REGDATE     DATE            DEFAULT SYSDATE, -- �⺻ �� ���糯¥(SYSDATE)
    HIT         NUMBER          DEFAULT 0 
    
    CONSTRAINT PK_TEST2_ID PRIMARY KEY(ID),
    CONSTRAINT UK_TEST2_WID UNIQUE(WRITER_ID)
)



-- �̹� ������ ���̺� PRIMARY KEY / UNIQUE ���� ���� ����
ALTER TABLE NOTICE
ADD CONSTRAINT PK_NOTICE_ID PRIMARY KEY(ID);

ALTER TABLE NOTICE
ADD CONSTRAINT UK_NOTICE_WID UNIQUE(WRITER_ID);