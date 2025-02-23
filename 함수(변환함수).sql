-- 숫자 -> 문자 
-- TO_CHAR(숫자, 포멧) : 포멧[9:숫자 / 0:빈자리를 채우는 문자 / $:앞에 $ 표시 / ,:단위 구분자표시 / .:소수점 표시]
SELECT TO_CHAR(12345678, '$099,999,999,999.99') FROM DUAL;
SELECT TRIM(TO_CHAR(12345678, '$99,999,999,999.99')) FROM DUAL;

SELECT TRIM(TO_CHAR(123456789, '$999,999,999,999.99')) || '원' FROM DUAL;

-- 날짜 -> 문자
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD DAY HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'DDTH, MONTH DAY HH24:MI:SS') FROM DUAL;

-- 문자 -> 날짜
SELECT TO_DATE('2014-03-31') FROM DUAL;
SELECT TO_TIMESTAMP('2014-03-31 13:23:03', 'YY-MM-DD HH24:MI:SS') FROM DUAL; -- 기본 날짜 형식에 맞지 않음 / 따라서 포맷을 지정 해주어야 함

-- 문자 -> 숫자
SELECT '2' + 3 FROM DUAL; -- 5
SELECT TO_NUMBER('2') + 3 FROM DUAL;