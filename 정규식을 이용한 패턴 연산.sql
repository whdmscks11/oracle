SELECT * FROM NOTICE;

INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT) VALUES(5, '이 전화번호로 연락주세요 : 010-2345-6789', 'MR.HEE', 'AAA', '2024-02-01 05.23.10.00000', 3);
INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT) VALUES(6, '선택-집중-마음가짐', 'UNKNOWN', 'AAA', '2024-01-21 07.31.50.00000', 3);

COMMIT;
ROLLBACK;

-- 전화번호가 제목에 포함된 게시글 조회
SELECT * FROM NOTICE WHERE TITLE LIKE '%-%-%'; -- %-%-% 형식은 '숫자-숫자-숫자'뿐만 아니라 '문자-문자-문자'도 같은 형식으로 인식한다.
                                               -- 따라서 세밀한 검색을 수행하려면 정규식을 이용한 패턴 연산을 사용해야 한다. 

010-0000-0000
016-000-0000
017-000-0000
018-000-0000
019-000-0000

01[06-9]-\d{3,4}-\d{4}
-- 01 뒤에 0,6,7,8,9 가 올수 있다. [06789]로 표현할 수 있지만 연속되는 수는 '-'를 이용하여 간략하게 나타낼 수 있다. [06-9]
-- \d 는 0-9까지의 수를 의미한다. {}는 반복횟수를 의미한다. \d{3,4}는 0부터 9까지의 수가 3개 또는 4개가 될 수 있다는 뜻이다. 

SELECT * FROM NOTICE WHERE TITLE LIKE '01[06-9]-\d{3,4}-\d{4}'; --아무런 정보도 나타나지 않는다
-- 정규식으로 표현한 패턴 연산 문법은 오라클의 패턴 연산 문법과 다르다. 
-- SELECT * FROM NOTICE WHERE REGEXP_LIKE(컬럼명, 패턴);
SELECT * FROM NOTICE WHERE REGEXP_LIKE(TITLE, '01[06-9]-\d{3,4}-\d{4}');

INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT) VALUES(7, '조은찬님의 이메일 주소 : whdmscks11@gmail.com', 'dokdo', 'AAA', '2024-01-01 00.01.20.00000', 53);
SELECT * FROM NOTICE WHERE REGEXP_LIKE(TITLE, '\D\w*@\D\w*.[com|net|org]');