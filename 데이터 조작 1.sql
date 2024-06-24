CREATE TABLE NOTICE
(
    ID          NUMBER,
    TITLE       NVARCHAR2(100),
    WRITER_ID   NVARCHAR2(50),
    CONTENT     CLOB,
    REGDATE     TIMESTAMP,
    HIT         NUMBER,
    FILES       NVARCHAR2(1000)
);

CREATE TABLE "COMMENT"
(
    ID          NUMBER,
    CONTENT     NVARCHAR2(2000),
    REGDATE     TIMESTAMP,
    WRITER_ID   NVARCHAR2(50),
    NOTICE_ID   NUMBER
);

CREATE TABLE ROLE
(
    ID              VARCHAR2(50),
    DISCRIPTION     NVARCHAR2(500)
);

CREATE TABLE MEMBER_ROLE
(
    MEMBER_ID   NVARCHAR2(50),
    ROLE_ID     VARCHAR2(50)
);

INSERT INTO MEMBER(ID, PWD) VALUES('dokdo', '1122');
INSERT INTO MEMBER(ID, PWD) VALUES('daemado', '3344');

SELECT * FROM MEMBER;
Select id, pwd, name from Member; -- �����, �÷��� ��ҹ��� ���� X

--�÷����� �ٲ㼭 ����ڿ��� �����ؾ� �ϴ� ��찡 ���� �� �ִ�.
--���� ��� ���ø����̼��� �̹� ������� �־ �÷����� USER_ID�� ����Ǿ� �ִ�. 
--������ �� �̹� ���̺��� ���鶧 ID��� �̸����� �÷��� �������. 
--�̷� ���, ���̺��� ������ �ʿ� ���� �ذ��� �� �ִ� ����� �ִ�. 
--ID AS USER_ID ��� �������� �ۼ��ϰ� �Ǹ� ���̺��� ���� �÷����� �������� �ʾ����� 
--����ڿ��� �����Ǵ� ���̺����� ID�� �ƴ� USER_ID�� ���̰� �ȴ�. 
--AS �� ���� ������ Ű�����̴�. ���� ID USER_ID�� ���� �ۼ��ϴ� ���� �ٶ����ϴ�.
--���� �÷��� ������ �����ϰ� �ʹٸ� ū ����ǥ�� �����ָ� �Ǵµ� �̶�, ū����ǥ�� ���ΰ� �Ǹ� ��ҹ��ڸ� �����ϰ� �Ǵ� ���� �ؾ� �Ѵ�.

SELECT ID AS "USER ID" FROM MEMBER;
SELECT ID "USER ID" FROM MEMBER;
