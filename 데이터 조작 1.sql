CREATE TABLE NOTICE
(
    ID          NUMBER,
    TITLE       NVARCHAR2(100),
    WRITER_ID   NVARCHAR2(50),
    CONTENT     CLOB,
    REGDATE     TIMESTAMP,
    HIT         NUMBER,
    FILES       NVARCHAR2(1000)
);

CREATE TABLE "COMMENT"
(
    ID          NUMBER,
    CONTENT     NVARCHAR2(2000),
    REGDATE     TIMESTAMP,
    WRITER_ID   NVARCHAR2(50),
    NOTICE_ID   NUMBER
);

CREATE TABLE ROLE
(
    ID              VARCHAR2(50),
    DISCRIPTION     NVARCHAR2(500)
);

CREATE TABLE MEMBER_ROLE
(
    MEMBER_ID   NVARCHAR2(50),
    ROLE_ID     VARCHAR2(50)
);

INSERT INTO MEMBER(ID, PWD) VALUES('dokdo', '1122');
INSERT INTO MEMBER(ID, PWD) VALUES('daemado', '3344');

SELECT * FROM MEMBER;
Select id, pwd, name from Member; -- 예약어, 컬럼명 대소문자 구분 X

--컬럼명을 바꿔서 사용자에게 제공해야 하는 경우가 생길 수 있다.
--예를 들어 어플리케이션은 이미 만들어져 있어서 컬럼명이 USER_ID로 예약되어 있다. 
--하지만 난 이미 테이블을 만들때 ID라는 이름으로 컬럼을 만들었다. 
--이런 경우, 테이블을 수정할 필요 없이 해결할 수 있는 방법이 있다. 
--ID AS USER_ID 라거 쿼리문을 작성하게 되면 테이블에서 직접 컬럼명을 수정하진 않았지만 
--사용자에게 제공되는 테이블에서는 ID가 아닌 USER_ID로 보이게 된다. 
--AS 는 생략 가능한 키워드이다. 따라서 ID USER_ID와 같이 작성하는 것이 바람직하다.
--만약 컬러명에 공백을 포함하고 싶다면 큰 따옴표로 감싸주면 되는데 이때, 큰따옴표로 감싸게 되면 대소문자를 구분하게 되니 주의 해야 한다.

SELECT ID AS "USER ID" FROM MEMBER;
SELECT ID "USER ID" FROM MEMBER;
