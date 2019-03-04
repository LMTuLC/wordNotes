#进阶3 排序查询
#案例1
SELECT 
  * 
FROM
  employees 
ORDER BY salary DESC ;

SELECT 
  * 
FROM
  employees 
ORDER BY salary ;

#案例2  查询部门编号>=90的员工的信息 按入职时间的先后进行排序
SELECT 
  * 
FROM
  employees 
WHERE `department_id` >= 90 
ORDER BY `hiredate` ;

#案例3 按年薪的高低显示员工的信息 和年薪(按表达式排序)

SELECT *,salary*12*(IFNULL(commission_pct,0)) AS `sum` FROM employees ORDER BY `sum`;


#案例5 按员工姓名的长度显示员工的信息   LENG	TH(last_name) 获取长度
SELECT LENGTH(last_name) FROM employees; 

#案例6  查询员工信息  先按工资排序  再按员工编号排序[按多个字段排序]

SELECT * FROM employees ORDER BY salary,employee_id DESC 











