-- �ڹٿ��� �����ϴ� �� ���
SELECT * FROM DICT;

-- ��ųʸ��� �� �̸��� ���� ( USER_***, CDB_***, ALL_*** ��� ) -���ѿ� ���� �������� �� 
SELECT * FROM USER_TABLES;
SELECT * FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'MEMBER';