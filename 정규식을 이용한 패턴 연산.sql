SELECT * FROM NOTICE;

INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT) VALUES(5, '�� ��ȭ��ȣ�� �����ּ��� : 010-2345-6789', 'MR.HEE', 'AAA', '2024-02-01 05.23.10.00000', 3);
INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT) VALUES(6, '����-����-��������', 'UNKNOWN', 'AAA', '2024-01-21 07.31.50.00000', 3);

COMMIT;
ROLLBACK;

-- ��ȭ��ȣ�� ���� ���Ե� �Խñ� ��ȸ
SELECT * FROM NOTICE WHERE TITLE LIKE '%-%-%'; -- %-%-% ������ '����-����-����'�Ӹ� �ƴ϶� '����-����-����'�� ���� �������� �ν��Ѵ�.
                                               -- ���� ������ �˻��� �����Ϸ��� ���Խ��� �̿��� ���� ������ ����ؾ� �Ѵ�. 

010-0000-0000
016-000-0000
017-000-0000
018-000-0000
019-000-0000

01[06-9]-\d{3,4}-\d{4}
-- 01 �ڿ� 0,6,7,8,9 �� �ü� �ִ�. [06789]�� ǥ���� �� ������ ���ӵǴ� ���� '-'�� �̿��Ͽ� �����ϰ� ��Ÿ�� �� �ִ�. [06-9]
-- \d �� 0-9������ ���� �ǹ��Ѵ�. {}�� �ݺ�Ƚ���� �ǹ��Ѵ�. \d{3,4}�� 0���� 9������ ���� 3�� �Ǵ� 4���� �� �� �ִٴ� ���̴�. 

SELECT * FROM NOTICE WHERE TITLE LIKE '01[06-9]-\d{3,4}-\d{4}'; --�ƹ��� ������ ��Ÿ���� �ʴ´�
-- ���Խ����� ǥ���� ���� ���� ������ ����Ŭ�� ���� ���� ������ �ٸ���. 
-- SELECT * FROM NOTICE WHERE REGEXP_LIKE(�÷���, ����);
SELECT * FROM NOTICE WHERE REGEXP_LIKE(TITLE, '01[06-9]-\d{3,4}-\d{4}');

INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT) VALUES(7, '���������� �̸��� �ּ� : whdmscks11@gmail.com', 'dokdo', 'AAA', '2024-01-01 00.01.20.00000', 53);
SELECT * FROM NOTICE WHERE REGEXP_LIKE(TITLE, '\D\w*@\D\w*.[com|net|org]');