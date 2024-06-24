SELECT HIT FROM NOTICE;

INSERT INTO NOTICE(HIT) VALUES('1');
INSERT INTO NOTICE(HIT) VALUES('12');
INSERT INTO NOTICE(HIT) VALUES('9');

COMMIT;
ROLLBACK;

SELECT HIT+1 FROM NOTICE; -- �Խù��� ��ȸ��(HIT)�� 1 ���� ��Ű�鼭 �ҷ����� �ڵ�
                          -- ������ �̷��� �ϰ� �Ǹ� �÷����� HIT+1�� �Ǽ� ���´�
SELECT HIT+1 "HIT" FROM NOTICE; -- �÷����� HIT�� ������ �ϸ鼭 ��ȸ�� 1����  
                                -- �÷����� �����ҋ� ū����ǥ�� �����ص� �ȴ�

SELECT 1 + '3' RESULT FROM DUAL; -- SELECT Ű����� 1 �� ���� '3'�� ���� ���� ����ϰ� �ʹ�
                          -- ������ ����Ŭ������ SELECT Ű���带 ����ϸ� �ݵ�� FROM <���̺�>�� ����ؾ߸� �Ѵ�.
                          -- �̶� 'DUAL'�̶�� �̸��� �ӽ����̺��� ����� �� �ִ�. 
                          -- FROM DUAL�� ��ǻ� �ǹ̾��� �ڵ��̴�. 
                          -- ��� ��� : 4 �ٸ� ���α׷��� ������ ���ڿ� ���ڸ� ���ϰ� �Ǹ� ���ڸ� ���ڿ��� ��ȯ���� �� ���ڸ� ���ڿ��� �����.
                          -- ������ ����Ŭ���� '+' ��ȣ�� ������ ���ڿ����� ���ؼ��� ���ȴ�.
                          
--���� ���� ������ : ||                          
SELECT '3' || 10 RESULT FROM DUAL; -- ���ڿ� ���� �������δ� '||' ��ȣ�� ���δ�.  
SELECT NAME || '(' || ID || ')' AS ȸ������ FROM MEMBER; -- ȸ������ ID�� NAME�� NAME(ID) ���·� ���

SELECT * FROM MEMBER; --��� ������ ���
SELECT ID, PWD FROM MEMBER; -- �÷����� ID�� PWD�� ������ ���
SELECT * FROM MEMBER WHERE ID = 'dokdo'; -- ID�� 'dokdo'�� ���� ������ ���
SELECT * FROM NOTICE WHERE HIT > 3; -- HIT�� ���� 3���� ū ���� ������ ���
SELECT * FROM NOTICE WHERE CONTENT IS NULL; -- CONTENT�� ���� NULL�� ���� ������ ���


-- �� ������ : =, !=, ^=, <>, >, <, >=, <=, IS NULL, IS NOT NULL
-- ��ȸ���� 0,1,2 �� �Խñ� ��ȸ
SELECT * FROM NOTICE WHERE HIT = 0 OR HIT = 1 OR HIT = 2; 
SELECT * FROM NOTICE WHERE HIT >= 0 AND HIT <= 2;
SELECT * FROM NOTICE WHERE HIT BETWEEN 0 AND 2;


-- ���� ������ : NOT, AND, OR, BETWEEN, IN
-- ��ȸ���� 0,2,9�� �Խñ� ��ȸ
SELECT * FROM NOTICE WHERE HIT = 0 OR HIT = 2 OR HIT = 9;
SELECT * FROM NOTICE WHERE HIT IN(0,2,9);

-- ��ȸ���� 0,1,2�� �ƴ� �Խñ� ��ȸ 
SELECT * FROM NOTICE WHERE HIT NOT BETWEEN 0 AND 2; 

-- ��ȸ���� 0,2,9 �� �ƴ� �Խñ� ��ȸ
SELECT * FROM NOTICE WHERE HIT NOT IN(0,2,9);

-- ���� ������ : LIKE, %, _
-- ȸ�� �߿��� '��'�� ���� ���� ���� ������ ��ȸ
INSERT INTO MEMBER(ID, NAME, PWD) VALUES('whdmscks11', '������', '1129');
INSERT INTO MEMBER(ID, NAME, PWD) VALUES('joseph88', '���ѿ�', '9511');
INSERT INTO MEMBER(ID, NAME, PWD) VALUES('whdns', '����', '3333');
SELECT * FROM MEMBER;
SELECT * FROM MEMBER WHERE NAME LIKE '��%';
-- ȸ�� �߿��� NAME�� '��'�� �����ϸ� �̸� �����Ͽ� �� �α����� ���� ������ ��ȸ
SELECT * FROM MEMBER WHERE NAME LIKE '��_';
SELECT * FROM MEMBER WHERE NAME LIKE '��__';


-- PRACTICE 
-- ȸ�� �߿��� '��'�� ���� ������ ȸ���� ��ȸ�Ͻÿ�
SELECT * FROM MEMBER WHERE NAME NOT LIKE '��%';
-- ȸ�� �߿��� �̸��� '��'�ڰ� �� ȸ���� ��ȸ�Ͻÿ�
SELECT * FROM MEMBER WHERE NAME LIKE'%��%';

SELECT * FROM NOTICE;
UPDATE NOTICE SET ID = 1, TITLE = 'JDBC�� �����ΰ�', WRITER_ID = 'dokdo', CONTENT = 'AAA', REGDATE = '2024-03-14 01.23.50.00000' WHERE HIT = 1;
UPDATE NOTICE SET ID = 2, TITLE = 'JDBC ����̹� �ٿ�ε� ���', WRITER_ID = 'daemado', CONTENT = 'AAA', REGDATE = '2024-03-15 12.29.10.00000' WHERE HIT = 12;
UPDATE NOTICE SET ID = 3, TITLE = '�Ķ���͸� ������ ���� �����ϱ�', WRITER_ID = 'dokdo', CONTENT = 'AAA', REGDATE = '2024-02-01 10.10.48.00000' WHERE HIT = 9;
INSERT INTO NOTICE(ID,TITLE,WRITER_ID,CONTENT,REGDATE,HIT) VALUES(4,'Service ���� �߰��ϱ�','whdmscks11','AAA','2024-01-22 17.55.12.00000', 20);
--�Խñ� ������ J�� ���� �Խñ� ��ȸ
SELECT * FROM NOTICE WHERE TITLE LIKE '%J%';