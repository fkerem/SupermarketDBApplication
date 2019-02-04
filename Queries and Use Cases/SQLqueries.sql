
/* Query below belongs to use case - 1 */
SELECT D.dname AS Department, E.ssn AS M_SSN, E.ename AS Name, M.email AS Email
FROM depart_man D, managers M, employees E
WHERE D.ssn = M.ssn AND M.ssn = E.ssn


/* Query below belongs to use case - 2 */
SELECT E.ename AS Name, E.gender AS Gender, E.salary AS Salary
FROM depart_man D, works_in W, employees E
WHERE D.dname = '$dname' AND D.did = W.did AND W.ssn = E.ssn


/* Query below belongs to use case - 3 */
SELECT D.dname AS Department, COUNT(*) AS Employee_Num, AVG(E.salary) AS Average_Salary
FROM depart_man D, works_in W, employees E
WHERE D.did = W.did AND W.ssn = E.ssn
GROUP BY D.dname


/* Query below belongs to use case - 4 */
SELECT D.dname AS Department, P.brand AS Brand, COUNT(*) AS Stock
FROM product_stores_supply P, depart_man D
WHERE P.did = D.did
GROUP BY D.dname, P.brand
HAVING D.dname = '$dname' AND P.brand = '$brand'


/* Query below belongs to use case - 5 */
INSERT INTO suppliers (sname) VALUES ('$sname');


/* Query below belongs to use case - 6 */
INSERT INTO buys (pid, cid) VALUES ($pid,'$cid');


/* Query below belongs to use case - 7 */
SELECT m.ssn, e.ename, e.salary, COUNT(*) as total_dependent, SUM(d.cost) as total_cost
FROM dep_policy d, managers m, employees e 
WHERE m.ssn = e.ssn AND d.ssn=e.ssn 
GROUP BY m.ssn


/* Query below belongs to use case - 8 */
SELECT C.cname, D.dname , COUNT(*) AS Totals
FROM  customer C, buys B, product_stores_supply P, depart_man D
WHERE C.cname = '$cname' AND C.cid = B.cid AND P.pid = B.pid AND D.did = P.did
GROUP BY D.dname
ORDER BY Totals DESC