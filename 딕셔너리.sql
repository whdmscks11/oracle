-- 자바에서 제공하는 뷰 목록
SELECT * FROM DICT;

-- 딕셔너리의 뷰 이름의 형태 ( USER_***, CDB_***, ALL_*** 등등 ) -권한에 따라 나눠지는 것 
SELECT * FROM USER_TABLES;
SELECT * FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'MEMBER';