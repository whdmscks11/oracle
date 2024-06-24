SELECT * FROM MEMBER;
-- SELECT 구절은 순서에 맞게 작성 되어야 한다. 그렇지 않으면 에러가 발생할 것이다.
-- 하지만 때에 따라서 구절의 순서를 바꿔야 하는 경우가 있다. 이럴 때, 부조회(서브쿼리)를 사용할 수 있다. 

-- 상위 3명의 데이터 조회
SELECT * FROM MEMBER WHERE ROWNUM BETWEEN 1 AND 3;
-- 하지만 최신 등록순으로 정렬한 결과에서 상위 3명의 데이터를 조회하는 경우라면?
SELECT * FROM MEMBER ORDER BY REGDATE DESC WHERE ROWNUM BETWEEN 1 AND 3; -- SELECT 구절의 작성순서를 따르지 않았으므로 에러 발생
SELECT * FROM (SELECT * FROM MEMBER ORDER BY REGDATE DESC) WHERE ROWNUM BETWEEN 1 AND 3; -- 서브쿼리 사용

-- 나이가 30이상인 20이상인 회원 조회
SELECT * FROM MEMBER WHERE AGE >= 20;
-- 평균나이 이상인 회원 조회
SELECT AVG(AGE) FROM MEMBER; -- 평균 나이 계산 -> 서브 쿼리로 사용
SELECT * FROM MEMBER WHERE AGE >= (SELECT AVG(AGE) FROM MEMBER);