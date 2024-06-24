-- 절댓값 구하는 함수 
SELECT ABS(35), ABS(-35) FROM DUAL;

-- 부호를 알려주는 함수 
SELECT SIGN(100), SIGN(-100), SIGN(0) FROM DUAL;

-- 반올림 함수 
SELECT ROUND(34.456789), ROUND(34.56789) FROM DUAL;
SELECT ROUND(12.3456789, 2), ROUND(12.3456789, 3) FROM DUAL;

-- n제곱을 구하는 함수 
SELECT POWER(5,3) FROM DUAL;

-- 제곱근을 구하는 함수 
SELECT SQRT(25) FROM DUAL;

-- 숫자의 몫(TRUNC())과 나머지(MOD()) 값을 반환하는 함수 
SELECT TRUNC(17/5) 몫, MOD(17,5) 나머지 FROM DUAL;

