-- MEMBER ���̺� �� NOTICE ���̺��� ����
SELECT * FROM MEMBER;
SELECT * FROM NOTICE;

-- �� ���̺��� ������� ID�� ���� ���� �Ǿ� �ִ�. MEMBER ���̺��� ID = NOTICE ���̺��� WRITER_ID
-- MEMBER ���̺��� ID���� NOTICE ���̺��� ������ ��� �ǰ� �ִ�. 
-- �̿� ���� MEMBER ���̺��� �θ� ���̺��� �ǰ� NOTICE ���̺��� �ڽ� ���̺��� �ȴ�. 

SELECT * FROM MEMBER INNER JOIN NOTICE ON MEMBER.ID = NOTICE.WRITER_ID; -- INNER�� ���� ����
-- ��� ����� ���� MEMBER ���̺��� joseph88�� whdns, NOTICE ���̺��� MR.HEE�� UNKNOWN�� �����͸� ã�� �� �� ����.
-- �̵��� ������ ���̺��� �������� �ʾ� OUTER�� �з� �ȴ�. ���� INNER JOIN�� ������� ���Ե��� ���� ���̴�. 

-- OUTER JOIN 
SELECT * FROM MEMBER M LEFT OUTER JOIN NOTICE N ON M.ID = N.WRITER_ID;
SELECT * FROM MEMBER M RIGHT OUTER JOIN NOTICE N ON M.ID = N.WRITER_ID;
SELECT * FROM MEMBER M FULL OUTER JOIN NOTICE N ON M.ID = N.WRITER_ID;

-- ID, NAME �׸��� ȸ���� �ۼ��� �Խñ� ���� ��ȸ�Ͻÿ�
SELECT M.ID, M.NAME, COUNT(N.ID) FROM MEMBER M JOIN NOTICE N ON M.ID = N.WRITER_ID GROUP BY M.ID, M.NAME;
SELECT M.ID, M.NAME, COUNT(N.ID) FROM MEMBER M LEFT OUTER JOIN NOTICE N ON M.ID = N.WRITER_ID GROUP BY M.ID, M.NAME;

SELECT * FROM MEMBER M JOIN MEMBER B ON M.BOSS_ID = B.ID; -- MEMBER ���̺��� BOSS_ID �� �ڱ��ڽ��� ID�� ������� // BOSS_ID -> ����
SELECT * FROM MEMBER M JOIN MEMBER B ON M.ID = B.BOSS_ID; -- MEMBER ���̺��� ID �� �ڱ��ڽ��� BOSS_ID�� ������� // ID -> ����
-- ȸ�������� ��ȸ�� ��, �ش� ȸ���� ��簡 �ִٸ� ����� �̸��� ���
SELECT M.*, B.NAME FROM MEMBER M LEFT OUTER JOIN MEMBER B ON M.BOSS_ID = B.ID;