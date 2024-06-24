SELECT * FROM MEMBER;
-- SELECT ������ ������ �°� �ۼ� �Ǿ�� �Ѵ�. �׷��� ������ ������ �߻��� ���̴�.
-- ������ ���� ���� ������ ������ �ٲ�� �ϴ� ��찡 �ִ�. �̷� ��, ����ȸ(��������)�� ����� �� �ִ�. 

-- ���� 3���� ������ ��ȸ
SELECT * FROM MEMBER WHERE ROWNUM BETWEEN 1 AND 3;
-- ������ �ֽ� ��ϼ����� ������ ������� ���� 3���� �����͸� ��ȸ�ϴ� �����?
SELECT * FROM MEMBER ORDER BY REGDATE DESC WHERE ROWNUM BETWEEN 1 AND 3; -- SELECT ������ �ۼ������� ������ �ʾ����Ƿ� ���� �߻�
SELECT * FROM (SELECT * FROM MEMBER ORDER BY REGDATE DESC) WHERE ROWNUM BETWEEN 1 AND 3; -- �������� ���

-- ���̰� 30�̻��� 20�̻��� ȸ�� ��ȸ
SELECT * FROM MEMBER WHERE AGE >= 20;
-- ��ճ��� �̻��� ȸ�� ��ȸ
SELECT AVG(AGE) FROM MEMBER; -- ��� ���� ��� -> ���� ������ ���
SELECT * FROM MEMBER WHERE AGE >= (SELECT AVG(AGE) FROM MEMBER);