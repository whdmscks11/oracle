-- ���� ���ϴ� �Լ� 
SELECT ABS(35), ABS(-35) FROM DUAL;

-- ��ȣ�� �˷��ִ� �Լ� 
SELECT SIGN(100), SIGN(-100), SIGN(0) FROM DUAL;

-- �ݿø� �Լ� 
SELECT ROUND(34.456789), ROUND(34.56789) FROM DUAL;
SELECT ROUND(12.3456789, 2), ROUND(12.3456789, 3) FROM DUAL;

-- n������ ���ϴ� �Լ� 
SELECT POWER(5,3) FROM DUAL;

-- �������� ���ϴ� �Լ� 
SELECT SQRT(25) FROM DUAL;

-- ������ ��(TRUNC())�� ������(MOD()) ���� ��ȯ�ϴ� �Լ� 
SELECT TRUNC(17/5) ��, MOD(17,5) ������ FROM DUAL;

