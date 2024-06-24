CREATE TABLE MEMBER(
    ID          VARCHAR2 (50),
    PWD         VARCHAR2 (50),
    NAME        NVARCHAR2 (50),
    GENDER      NCHAR (2),
    AGE         NUMBER(3),
    BIRTHDAY    CHAR(10), -- 2001-11-29
    PHONE       CHAR(13), -- 010-1234-5678
    REGDATE     DATE
);

DROP TABLE MEMBER;

SELECT LENGTH('����') FROM DUAL; --������ ������ ����ϴ� ���� 

SELECT LENGTHB('AB') FROM DUAL; --���ڰ� �� ����Ʈ�� ����ϴ��� �˷��ִ� ����
                                --�����ڴ� ���ĺ� �ϳ��� �ϳ��� ����Ʈ�� ���
                                
SELECT LENGTHB('����') FROM DUAL; --�ѱ��� ���� �ϳ��� 3����Ʈ ���
                                 -- �� ���� ������ ��� 3����Ʈ�� ����Ѵ�.
                                 
INSERT INTO MEMBER(GENDER) VALUES('����');
-- GENDER�� ������ ������ CHAR(2)�̹Ƿ� 2����Ʈ �Ǵ� �׺��� ���� ũ���� ���ڸ��� ���� �� �� �ִ�. 
-- '����'�� ũ��� 6����Ʈ�̹Ƿ� GENDER�� ��� �� ����.
-- ������ CHAR(2 CHAR)��� �Ǿ� ������ �̴� 2����Ʈ�� ������ ���ϴ� ���� �ƴ� 2���� ���ڸ� �������� ���� �� �ְ� �ȴ�. 
-- ���� ������, ���ڴ� ���� �ٸ� ���� ����� ���ڵ� ���� �� �ְ� �Ǵ� ���̴�. 

SELECT LENGTHB(GENDER) FROM MEMBER;
-- CHAR�� ����Ͽ� ��� �ƴ� �ٸ� ���� ����� ���ڸ� ��� ��� ���� �ϳ��� 3����Ʈ�� ������ �ʿ��ϴ�
-- ������ NCHAR�� ����ϸ� 3����Ʈ�� �ƴ� 2����Ʈ������ ���� ���ڸ� ���� �� �ִ�.
-- �⺻������ CHAR�� NCHAR�� ����ϴ� ���ڵ� ���̺��� �ٸ���. ���� ���ڿ��� �������� ũ�Ⱑ �ٸ��� ���̴�.

CREATE TABLE TEST(
    VALUE VARCHAR2(5 CHAR)
);
DROP TABLE TEST;
INSERT INTO TEST(VALUE) VALUES('�ȳ��ϼ���'); --���ڴ� 3����Ʈ
SELECT LENGTHB(VALUE) FROM TEST;

SELECT * FROM NLS_DATABASE_PARAMETERS;


