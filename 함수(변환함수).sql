-- ���� -> ���� 
-- TO_CHAR(����, ����) : ����[9:���� / 0:���ڸ��� ä��� ���� / $:�տ� $ ǥ�� / ,:���� ������ǥ�� / .:�Ҽ��� ǥ��]
SELECT TO_CHAR(12345678, '$099,999,999,999.99') FROM DUAL;
SELECT TRIM(TO_CHAR(12345678, '$99,999,999,999.99')) FROM DUAL;

SELECT TRIM(TO_CHAR(123456789, '$999,999,999,999.99')) || '��' FROM DUAL;

-- ��¥ -> ����
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD DAY HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'DDTH, MONTH DAY HH24:MI:SS') FROM DUAL;

-- ���� -> ��¥
SELECT TO_DATE('2014-03-31') FROM DUAL;
SELECT TO_TIMESTAMP('2014-03-31 13:23:03', 'YY-MM-DD HH24:MI:SS') FROM DUAL; -- �⺻ ��¥ ���Ŀ� ���� ���� / ���� ������ ���� ���־�� ��

-- ���� -> ����
SELECT '2' + 3 FROM DUAL; -- 5
SELECT TO_NUMBER('2') + 3 FROM DUAL;