CREATE TABLE MEMBER(
    ID          VARCHAR2 (50),
    PWD         VARCHAR2 (50),
    NAME        NVARCHAR2 (50),
    GENDER      NCHAR (2),
    AGE         NUMBER(3),
    BIRTHDAY    CHAR(10), -- 2001-11-29
    PHONE       CHAR(13), -- 010-1234-5678
    REGDATE     DATE
);

DROP TABLE MEMBER;

SELECT LENGTH('남성') FROM DUAL; --문자의 개수를 출력하는 구문 

SELECT LENGTHB('AB') FROM DUAL; --문자가 몇 바이트를 사용하는지 알려주는 구문
                                --영문자는 알파벳 하나당 하나의 바이트를 사용
                                
SELECT LENGTHB('남성') FROM DUAL; --한글은 글자 하나당 3바이트 사용
                                 -- 각 국의 언어들은 모두 3바이트를 사용한다.
                                 
INSERT INTO MEMBER(GENDER) VALUES('남성');
-- GENDER의 데이터 형식이 CHAR(2)이므로 2바이트 또는 그보다 작은 크기의 문자만이 저장 될 수 있다. 
-- '남성'의 크기는 6바이트이므로 GENDER에 담길 수 없다.
-- 하지만 CHAR(2 CHAR)라고 되어 있으면 이는 2바이트의 공간을 뜻하는 것이 아닌 2개의 문자를 기준으로 받을 수 있게 된다. 
-- 따라서 영문자, 숫자는 물론 다른 나라 언어의 문자도 받을 수 있게 되는 것이다. 

SELECT LENGTHB(GENDER) FROM MEMBER;
-- CHAR을 사용하여 영어가 아닌 다른 나라 언어의 문자를 담는 경우 문자 하나당 3바이트의 공간이 필요하다
-- 하지만 NCHAR을 사용하면 3바이트가 아닌 2바이트만으로 같은 문자를 담을 수 있다.
-- 기본적으로 CHAR와 NCHAR가 사용하는 인코딩 테이블이 다르다. 같은 문자여도 데이터의 크기가 다르단 뜻이다.

CREATE TABLE TEST(
    VALUE VARCHAR2(5 CHAR)
);
DROP TABLE TEST;
INSERT INTO TEST(VALUE) VALUES('안녕하세요'); --글자당 3바이트
SELECT LENGTHB(VALUE) FROM TEST;

SELECT * FROM NLS_DATABASE_PARAMETERS;


