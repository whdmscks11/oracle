SELECT ID "USER ID", PWD "USER PASS", NAME "USER NAME" FROM MEMBER;

UPDATE MEMBER SET PWD = '0000'; -- ��� ������� ��й�ȣ�� '0000'���� ����
UPDATE MEMBER SET PWD = '0101' WHERE ID = 'dokdo'; --ID���� 'dokdo'�� ������� ��й�ȣ�� '0101'�� ����
UPDATE MEMBER SET PWD = '1111', NAME = '�븶��' WHERE ID = 'daemado';

INSERT INTO MEMBER(ID, PWD) VALUES ('test', '2222');
DELETE MEMBER WHERE ID = 'test'; --ID���� 'test'�� ����� ���� ����