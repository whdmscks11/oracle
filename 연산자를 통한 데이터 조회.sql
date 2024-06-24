SELECT HIT FROM NOTICE;

INSERT INTO NOTICE(HIT) VALUES('1');
INSERT INTO NOTICE(HIT) VALUES('12');
INSERT INTO NOTICE(HIT) VALUES('9');

COMMIT;
ROLLBACK;

SELECT HIT+1 FROM NOTICE; -- 게시물의 조회수(HIT)을 1 증가 시키면서 불러오는 코드
                          -- 하지만 이렇게 하게 되면 컬럼명이 HIT+1로 되서 나온다
SELECT HIT+1 "HIT" FROM NOTICE; -- 컬럼명을 HIT로 나오게 하면서 조회수 1증가  
                                -- 컬럼명을 지정할떄 큰따옴표를 생략해도 된다

SELECT 1 + '3' RESULT FROM DUAL; -- SELECT 키워드로 1 과 문자 '3'을 더한 값을 출력하고 싶다
                          -- 하지만 오라클에서는 SELECT 키워드를 사용하면 반드시 FROM <테이블>을 사용해야만 한다.
                          -- 이때 'DUAL'이라는 이름의 임시테이블을 사용할 수 있다. 
                          -- FROM DUAL은 사실상 의미없는 코드이다. 
                          -- 출력 결과 : 4 다른 프로그래밍 언어에서는 숫자와 문자를 더하게 되면 숫자를 문자열로 변환시켜 두 문자를 문자열로 만든다.
                          -- 하지만 오라클에서 '+' 기호는 오로지 숫자연산을 위해서만 사용된다.
                          
--문자 결합 연산자 : ||                          
SELECT '3' || 10 RESULT FROM DUAL; -- 문자열 결합 연산으로는 '||' 기호가 쓰인다.  
SELECT NAME || '(' || ID || ')' AS 회원정보 FROM MEMBER; -- 회원들의 ID와 NAME을 NAME(ID) 형태로 출력

SELECT * FROM MEMBER; --모든 데이터 출력
SELECT ID, PWD FROM MEMBER; -- 컬럼명이 ID와 PWD인 데이터 출력
SELECT * FROM MEMBER WHERE ID = 'dokdo'; -- ID가 'dokdo'인 열의 데이터 출력
SELECT * FROM NOTICE WHERE HIT > 3; -- HIT의 값이 3보다 큰 열의 데이터 출력
SELECT * FROM NOTICE WHERE CONTENT IS NULL; -- CONTENT의 값이 NULL인 열의 데이터 출력


-- 비교 연산자 : =, !=, ^=, <>, >, <, >=, <=, IS NULL, IS NOT NULL
-- 조회수가 0,1,2 인 게시글 조회
SELECT * FROM NOTICE WHERE HIT = 0 OR HIT = 1 OR HIT = 2; 
SELECT * FROM NOTICE WHERE HIT >= 0 AND HIT <= 2;
SELECT * FROM NOTICE WHERE HIT BETWEEN 0 AND 2;


-- 관계 연산자 : NOT, AND, OR, BETWEEN, IN
-- 조회수가 0,2,9인 게시글 조회
SELECT * FROM NOTICE WHERE HIT = 0 OR HIT = 2 OR HIT = 9;
SELECT * FROM NOTICE WHERE HIT IN(0,2,9);

-- 조회수가 0,1,2가 아닌 게시글 조회 
SELECT * FROM NOTICE WHERE HIT NOT BETWEEN 0 AND 2; 

-- 조회수가 0,2,9 가 아닌 게시글 조회
SELECT * FROM NOTICE WHERE HIT NOT IN(0,2,9);

-- 패턴 연산자 : LIKE, %, _
-- 회원 중에서 '조'씨 성을 가진 열의 데이터 조회
INSERT INTO MEMBER(ID, NAME, PWD) VALUES('whdmscks11', '조은찬', '1129');
INSERT INTO MEMBER(ID, NAME, PWD) VALUES('joseph88', '조한울', '9511');
INSERT INTO MEMBER(ID, NAME, PWD) VALUES('whdns', '조운', '3333');
SELECT * FROM MEMBER;
SELECT * FROM MEMBER WHERE NAME LIKE '조%';
-- 회원 중에서 NAME이 '조'로 시작하며 이를 포함하여 총 두글자인 열의 데이터 조회
SELECT * FROM MEMBER WHERE NAME LIKE '조_';
SELECT * FROM MEMBER WHERE NAME LIKE '조__';


-- PRACTICE 
-- 회원 중에서 '조'씨 성을 제외한 회원을 조회하시오
SELECT * FROM MEMBER WHERE NAME NOT LIKE '조%';
-- 회원 중에서 이름에 '도'자가 들어간 회원을 조회하시오
SELECT * FROM MEMBER WHERE NAME LIKE'%도%';

SELECT * FROM NOTICE;
UPDATE NOTICE SET ID = 1, TITLE = 'JDBC란 무엇인가', WRITER_ID = 'dokdo', CONTENT = 'AAA', REGDATE = '2024-03-14 01.23.50.00000' WHERE HIT = 1;
UPDATE NOTICE SET ID = 2, TITLE = 'JDBC 드라이버 다운로드 방법', WRITER_ID = 'daemado', CONTENT = 'AAA', REGDATE = '2024-03-15 12.29.10.00000' WHERE HIT = 12;
UPDATE NOTICE SET ID = 3, TITLE = '파라미터를 가지는 문장 실행하기', WRITER_ID = 'dokdo', CONTENT = 'AAA', REGDATE = '2024-02-01 10.10.48.00000' WHERE HIT = 9;
INSERT INTO NOTICE(ID,TITLE,WRITER_ID,CONTENT,REGDATE,HIT) VALUES(4,'Service 계층 추가하기','whdmscks11','AAA','2024-01-22 17.55.12.00000', 20);
--게시글 제목중 J가 들어가는 게시글 조회
SELECT * FROM NOTICE WHERE TITLE LIKE '%J%';