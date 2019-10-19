<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html14/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    <div style="margin: auto; width: 80%">
    <sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/zb1018146?serverTimezone=Asia/Shanghai&characterEncoding=utf-8"
    user="root" password=""    /> 
    
    <!--  执行删除语句 -->
    <sql:update dataSource="${connection }" var="count">
    DELETE FROM employee WHERE EMP_ID>5;
    </sql:update>
    
    
    <sql:query dataSource="${connection }" var="result">
    SELECT * from employee;
    </sql:query>
    
    <table border="1" width="100%">
   <tr>
      <th>EMP_ID</th>
      <th>EMP_NAME</th>
      <th>JOB</th>
      <th>SALARY</th>
      <th>DEPT</th>
     </tr>
     
     <c:forEach var="row" items="${result.rows}">
     <tr>
      <td><c:out value="${row.EMP_ID}" /></td>
      <td><c:out value="${row.EMP_NAME }" /></td>
      <td><c:out value="${row.JOB }" /></td>
      <td><c:out value="${row.SALARY }" /></td>
      <td><c:out value="${row.DEPT }" /></td>
     </tr>
     </c:forEach>
    
    </table>
</div>
</body>
</html>