#the link task
#https://techbeamers.com/sql-query-questions-answers-for-practice/#google_vignette

________________________________________________________________________________
#Q1

SELECT FIRST_NAME WORKER_NAME FROM task.worker;

SELECT FIRST_NAME as WORKER_NAME FROM task.worker;
________________________________________________________________________________

#Q2

SELECT upper(FIRST_NAME)  FROM task.worker;

________________________________________________________________________________

Q3

SELECT distinct DEPARTMENT FROM task.worker;
________________________________________________________________________________

Q4

SELECT substring(FIRST_NAME,1,3) FROM task.worker;
________________________________________________________________________________

Q5

SELECT instr(FIRST_NAME , 'a' ) FROM task.worker WHERE FIRST_NAME = 'Amitabh';

________________________________________________________________________________

Q6

SELECT rtrim(FIRST_NAME) FROM task.worker;

________________________________________________________________________________

Q7

SELECT Ltrim(DEPARTMENT) FROM task.worker;
________________________________________________________________________________

Q8

SELECT distinct DEPARTMENT, length(DEPARTMENT) FROM task.worker;
________________________________________________________________________________

Q9

SELECT replace(FIRST_NAME,'a','A') FROM task.worker;

________________________________________________________________________________

Q10

SELECT FIRST_NAME ||' '||LAST_NAME AS  COMPLETE_NAME FROM task.worker;
________________________________________________________________________________

Q11

SELECT * FROM task.worker order by FIRST_NAME asc ;
________________________________________________________________________________

Q12

SELECT * FROM task.worker order by FIRST_NAME asc, department desc ;

________________________________________________________________________________

Q13

SELECT * FROM task.worker where FIRST_NAME in ('Vipul','Satish');
________________________________________________________________________________

Q14

SELECT * FROM task.worker where FIRST_NAME not in ('Vipul','Satish');
________________________________________________________________________________

Q15

SELECT * FROM task.worker where department like 'admin%';
________________________________________________________________________________

Q16

SELECT * FROM task.worker where first_name like '%a%';
________________________________________________________________________________

Q17

SELECT * FROM task.worker where first_name like '%a';

________________________________________________________________________________

Q18

SELECT * FROM task.worker where first_name like '______h';

________________________________________________________________________________

Q19

SELECT * FROM task.worker where salary between 100000 and 500000;
________________________________________________________________________________

Q20

SELECT * FROM task.worker where JOINING_DATE like '2021-02%';
________________________________________________________________________________

Q21

SELECT count(*) FROM task.worker where department = 'admin';
________________________________________________________________________________

Q22

SELECT first_name || ' ' || last_name AS Worker_Name, Salary FROM task.worker
 where salary between 50000 and 100000;
________________________________________________________________________________

Q23
SELECT DEPARTMENT, count(WORKER_ID) No_Of_Workers FROM task.worker  
GROUP BY DEPARTMENT ORDER BY No_Of_Workers DESC;
________________________________________________________________________________

Q24

SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE FROM task.worker W INNER JOIN task.Title T 
ON W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE in ('Manager');

________________________________________________________________________________

Q25
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*) FROM TASK.Title 
GROUP BY WORKER_TITLE, AFFECTED_FROM HAVING COUNT(*) > 1;

________________________________________________________________________________

Q26

SELECT * FROM TASK.Worker WHERE WORKER_ID % 2 <> 0;

________________________________________________________________________________

Q27

SELECT * FROM TASK.Worker WHERE WORKER_ID % 2 = 0;

________________________________________________________________________________

Q28

use `task`;
CREATE TABLE WorkerClone AS SELECT * FROM TASK.Worker;

________________________________________________________________________________

Q29

SELECT * FROM task.Worker INTERSECT SELECT * FROM task.WorkerClone;

________________________________________________________________________________

Q30

SELECT * FROM task.Worker EXCEPT SELECT * FROM task.WorkerClone;

________________________________________________________________________________