UPDATE MEMBER SET AGE = NULL WHERE ID = 'dokdo';
SELECT AGE FROM MEMBER;
-- NULL �� -> 0���� ��ü
SELECT NVL(AGE, 0) FROM MEMBER;
-- ȸ���� ���� �� ���� 
SELECT TRUNC(AGE/10)*10 FROM MEMBER; -- NULL ���� � ������ �ϴ��� NULL ���� �״�� ���´�
SELECT TRUNC(NVL(AGE, 0)/10)*10 FROM MEMBER; -- ���� NULL ���� ���°� ���� ��ü ���� ������ ���� ������ ���� �ִ�
SELECT NVL2(AGE, TRUNC(AGE/10)*10, 0) FROM MEMBER; -- AGE�� NULL�� �ƴ� ���� [TRUNC(AGE/10)*10] ���� ���� / NULL�϶��� 0���� ��ü

SELECT PHONE FROM MEMBER;
SELECT DECODE(SUBSTR(PHONE, 1, 3),
              '011', '����ȣ',
              '010', '�űԹ�ȣ',
              '��Ÿ') || ', [' || PHONE || ']' FROM MEMBER;