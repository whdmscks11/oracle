UPDATE MEMBER SET AGE = NULL WHERE ID = 'dokdo';
SELECT AGE FROM MEMBER;
-- NULL 값 -> 0으로 대체
SELECT NVL(AGE, 0) FROM MEMBER;
-- 회원의 나이 대 구분 
SELECT TRUNC(AGE/10)*10 FROM MEMBER; -- NULL 값은 어떤 연산을 하더라도 NULL 값을 그대로 갖는다
SELECT TRUNC(NVL(AGE, 0)/10)*10 FROM MEMBER; -- 때론 NULL 값을 갖는것 보다 대체 값을 가지는 것이 유용할 때가 있다
SELECT NVL2(AGE, TRUNC(AGE/10)*10, 0) FROM MEMBER; -- AGE가 NULL이 아닐 때만 [TRUNC(AGE/10)*10] 연산 수행 / NULL일때는 0으로 대체

SELECT PHONE FROM MEMBER;
SELECT DECODE(SUBSTR(PHONE, 1, 3),
              '011', '구번호',
              '010', '신규번호',
              '기타') || ', [' || PHONE || ']' FROM MEMBER;