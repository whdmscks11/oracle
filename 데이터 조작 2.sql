SELECT ID "USER ID", PWD "USER PASS", NAME "USER NAME" FROM MEMBER;

UPDATE MEMBER SET PWD = '0000'; -- 모든 사용자의 비밀번호를 '0000'으로 변경
UPDATE MEMBER SET PWD = '0101' WHERE ID = 'dokdo'; --ID명이 'dokdo'인 사용자의 비밀번호를 '0101'로 변경
UPDATE MEMBER SET PWD = '1111', NAME = '대마도' WHERE ID = 'daemado';

INSERT INTO MEMBER(ID, PWD) VALUES ('test', '2222');
DELETE MEMBER WHERE ID = 'test'; --ID명이 'test'인 사용자 정보 삭제