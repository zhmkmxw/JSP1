<%@ page language="java" import="java.util.*,EXP_2.Student" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title>学生信息显示</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
      <table border="1" width="80%" align="center">
         <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>班级</th>
            <th>成绩</th>
         </tr>
         <%
         Student stu1= new Student("001","李白","男","01",723.0);
         Student stu2= new Student("002","孟浩然","男","02",689.0);
         Student stu3= new Student("003","杨玉环","女","03",600.0);
         ArrayList arr =  new ArrayList();
         arr.add(stu1);
         arr.add(stu2);
         arr.add(stu3);
         for(int i=0;i<arr.size();i++){
        	 Student stu =(Student)arr.get(i);
         %>
          <tr>
             <td><%=stu.getSno()%></td>
             <td><%=stu.getSname()%></td>
             <td><%=stu.getSex()%></td>
             <td><%=stu.getClasses()%></td>
             <td><%=stu.getScore()%></td>
          </tr>
         <%} %>
      </table>
  </body>
</html>