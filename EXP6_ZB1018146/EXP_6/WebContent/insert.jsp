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
    
     <sql:update dataSource="${connection }" var="count">
    INSERT INTO employees(`name`,`age`,`education`,`address`,`salary`)
    VALUES('李路路','24','本科','北京朝阳区',13600);
    </sql:update>
    
    <sql:query dataSource="${connection }" var="result">
    SELECT * from employees;
    </sql:query>
    
    <table border="1" width="100%">
    <tr>
      <th>编号</th>
      <th>名字</th>
      <th>薪水</th>
      <th>地址</th>
     </tr>
     
     <c:forEach var="row" items="${result.rows}">
     <tr>
      <td><c:out value="${row.id }" /></td>
      <td><c:out value="${row.name }" /></td>
      <td><c:out value="${row.salary }" /></td>
      <td><c:out value="${row.address }" /></td>
     </tr>
     </c:forEach>
    
    </table>
</div>
</body>
</html>