SELECT * FROM MEMBER;

-- ���ڿ� ���� �Լ� SUBSTR()
SELECT SUBSTR(NAME, 2) FROM MEMBER;

SELECT SUBSTRB(NAME, 1) FROM MEMBER;
SELECT SUBSTRB(NAME, 2) FROM MEMBER;
SELECT SUBSTRB(NAME, 4) FROM MEMBER;

SELECT LENGTHB(NAME) FROM MEMBER;

UPDATE MEMBER SET BIRTHDAY = '2002-01-29' WHERE ID = 'dokdo';
UPDATE MEMBER SET BIRTHDAY = '1992-07-12' WHERE ID = 'daemado';
UPDATE MEMBER SET BIRTHDAY = '2001-11-29' WHERE ID = 'whdmscks11';
UPDATE MEMBER SET BIRTHDAY = '1995-11-11' WHERE ID = 'joseph88';
UPDATE MEMBER SET BIRTHDAY = '2004-08-21' WHERE ID = 'whdns';
COMMIT;

-- ȸ���� �̸�, ����� ��ȸ
SELECT NAME, SUBSTR(BIRTHDAY, 6, 2) BIRTHMONTH FROM MEMBER;

UPDATE MEMBER SET PHONE = '011-314-0072' WHERE ID = 'dokdo';
UPDATE MEMBER SET PHONE = '011-688-1092' WHERE ID = 'daemado';
UPDATE MEMBER SET PHONE = '010-3948-0122' WHERE ID = 'whdmscks11';
UPDATE MEMBER SET PHONE = '010-3472-9511' WHERE ID = 'joseph88';
UPDATE MEMBER SET PHONE = '010-4472-9102' WHERE ID = 'whdns';
COMMIT;
ROLLBACK;

-- ȸ�� �߿��� ��ȭ��ȣ�� 010���� �����ϴ� ȸ���� ��� ���� ���
SELECT * FROM MEMBER WHERE REGEXP_LIKE(PHONE, '010-\d{4}-\d{4}');
SELECT * FROM MEMBER WHERE PHONE LIKE '010%';
SELECT * FROM MEMBER WHERE SUBSTR(PHONE, 1, 3) = '010';

-- ȸ�� �߿��� ���� ���� 7,8,9���� ȸ���� ��� ������ ���
SELECT * FROM MEMBER WHERE REGEXP_LIKE(BIRTHDAY, '\d{4}-0[7-9]-\d{2}');

SELECT * FROM MEMBER WHERE SUBSTR(BIRTHDAY, 7, 1) BETWEEN '7' AND '9';
SELECT * FROM MEMBER WHERE SUBSTR(BIRTHDAY, 7, 1) BETWEEN 7 AND 9;

SELECT * FROM MEMBER WHERE SUBSTR(BIRTHDAY, 6, 2) IN('07','08','09');
SELECT * FROM MEMBER WHERE SUBSTR(BIRTHDAY, 6, 2) IN(07,08,09);

-- ���� �Ҵ빮�� ��ȯ
SELECT LOWER('NeWLec') FROM DUAL;
SELECT UPPER('Newlec') FROM DUAL;

-- ���ڿ� ��ġ �Լ�
SELECT REPLACE('WHERE WE ARE', 'WE', 'YOU') FROM DUAL;
SELECT TRANSLATE('WHERE WE ARE', 'WE', 'YOU') FROM DUAL;

-- ȸ������ ��ȭ��ȣ�� ������ ��ȯ�Ͽ� ��ȸ
SELECT NAME, REPLACE(PHONE, '-',' ') PHONE FROM MEMBER;

-- ȸ���� �̸��� ��ȸ�Ͻÿ�(��, �̸��� ���̰� 3�ڰ� �ȵǴ� ��� �̸� �������� ����('_')�� ä��ÿ�
SELECT NAME FROM MEMBER;
SELECT RPAD(NAME, 6, '_') FROM MEMBER; 

SELECT INITCAP('the important thing is peace') FROM DUAL;
SELECT INITCAP('the impor���tant thi����ng') FROM DUAL;

SELECT INSTR('ALL WE NEED TO DO IS JUST TO...','TO') FROM DUAL; 
SELECT INSTR('ALL WE NEED TO DO IS JUST TO...','TO', 15) FROM DUAL;
SELECT INSTR('ALL WE NEED TO DO IS JUST TO...','TO',1,2) FROM DUAL;

-- ȸ���� ��ȭ��ȣ���� ó ��° ���(-) ���ڿ� �� ��° ���(-0 ���� ������ ������?
SELECT PHONE FROM MEMBER;
SELECT INSTR(PHONE, '-',1,2) - INSTR(PHONE, '-') - 1 FROM MEMBER;

-- ȸ���� ��ȭ��ȣ�� ��� ��ȣ�� ��ȸ
SELECT SUBSTR(PHONE, 5, INSTR(PHONE, '-',1,2) - INSTR(PHONE, '-') - 1 ) FROM MEMBER;

-- ȸ���� ��ȭ��ȣ �÷��� ���Ե� ���� '-'�� ���� ��ȭ��ȣ�� ���� ��ȸ
SELECT LENGTH(REPLACE(PHONE, '-', '')) FROM MEMBER; 
-- �� ��� ���տ��� ù��°�� �ι�° �����Ͱ� 11����Ʈ�� ���̸� ������ ������ 
-- PHONE�� ������ Ÿ���� CHAR(13)�̱� �����̴�. 
-- CHAR ������ Ÿ���� Ư�� ��, ��Ȯ�� ������ ���� ���̿� ������� ������ ���̸�ŭ�� ������ ����Ѵ�.
-- ���� ��� PHONE�� �����ʹ� 13����Ʈ�� ���̸� ������. 
-- �ű⿡�� REPLACE �Լ��� '-' �� '' ���� �ٲپ� �־����� 13 - 2 �� �Ǿ� 11 ����Ʈ�� ��µǴ� ��
-- SELECT�� ������ �� ������ ���̰� 11����Ʈ��� ������ PHONE �÷��� �����ʹ� ������ 13����Ʈ�̴�.
