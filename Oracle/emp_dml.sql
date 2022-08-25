SELECT ENAME,DNAME FROM EMPLOY3 E,DEPT1 D
WHERE E.DEPTNO=D.DEPTNO AND D.DEPTNO =
(select DEPTNO from dept1 where dname='SALES');

SELECT ENAME,DEPTNO FROM EMPLOY3 WHERE DEPTNO=
(select DEPTNO from dept1 where dname='SALES');

SELECT * FROM DEPT1
SELECT * FROM EMPLOY3

SELECT * FROM EMPLOY3 
WHERE DEPTNO=(SELECT DEPTNO FROM EMPLOY3 WHERE ENAME='ARUN');

SELECT DNAME FROM DEPT1 WHERE DEPTNO=(SELECT DEPTNO FROM EMPLOY3 WHERE 
SALARY=(SELECT MAX(SALARY) FROM EMPLOY3) )

SELECT * FROM EMPLOY3;

SELECT ENAME,DEPTNO,SALARY FROM EMPLOY3 WHERE SALARY IN
(SELECT MAX(SALARY) FROM EMPLOY3 WHERE DEPTNO IS NOT NULL);

SELECT DEPTNO,SALARY FROM EMPLOY3 WHERE deptno IS NOT NULL

SELECT * FROM(SELECT * FROM EMPLOY3 ORDER BY SALARY DESC) WHERE ROWNUM <=3
MINUS

SELECT * FROM(SELECT *FROM EMPLOY3 ORDER BY SALARY DESC) WHERE ROWNUM <=2

SELECT * FROM(SELECT ROWNUM R ,EMPLOY3.* FROM EMPLOY3)WHERE MOD(R,2)=0;

SELECT DEPTNO ,AVG(SALARY) FROM EMPLOY3 GROUP BY DEPTNO 


(SELECT DEPTNO ,AVG(SALARY) OVER(PARTITION BY DEPTNO)FROM EMPLOY3);

SELECT * FROM (SELECT ENAME,DEPTNO,SALARY,ROW_NUMBER()
OVER(PARTITION BY DEPTNO ORDER BY SALARY DESC)R
FROM EMPLOY3) WHERE R=2 ;

DELETE FROM EMPLOY WHERE ROWID NOT IN
(SELECT MIN(ROWID) FROM EMPLOY GROUP BY ENO)

SELECT * FROM EMPLOY
ROLLBACK

CREATE SEQUENCE S4
START WITH 1
INCREMENT BY 2
MAXVALUE 100;

SELECT S4.NEXTVAL FROM DUAL;

SELECT DEPTNO AS DEPTNO,TO_CHAR(NULL)AS DEPT FROM EMPLOY3
UNION
SELECT TO_NUMBER(NULL),DNAME FROM DEPT1;

SELECT DECODE('10','TEN','20','TWENTY') FROM DUAL;

SELECT ENAME,SALARY,DEPTNO,DECODE(DEPTNO,10,'TEN',20,'TWENTY') FROM EMPLOY3;

update employ3 set comm=decode
(JOB,'CLERK',SALARY*0.1);

SELECT * FROM EMPLOY3

SELECT TO_CHAR(TO_DATE(SALARY,'J'),'JSP') FROM EMPLOY3;

select to_char(1234) from dual;

select 35.5+5 from dual;

select * from employ3;
select employ3.*,nvl(to_char(comm),'Not descided yet') from employ3;

SELECT TO_CHAR(12345,'99g99g9d99') from dual;

select to_char(123,'L999','nls_currency=Rs') from dual;

select * from employ3 where  regexp_like(ename,'^[^VI]')

select * from employ3 e ,dept1 d where e.deptno(+)=d.deptno;


select * from employ3 e ,dept1 d where e.deptno=d.deptno;