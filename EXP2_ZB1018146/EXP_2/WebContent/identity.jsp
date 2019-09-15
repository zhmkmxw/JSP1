<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>identity.jsp</title>
  </head>
  <body>
    <%!
      //声明方法,从身份证中截取生日
      public String getBirthday(String userid){
        String result="";
        if(userid.length()==18){
	        String year=userid.substring(6,10);
	        String month=userid.substring(10,12);
	        String day=userid.substring(12,14);
	        result=year+"-"+month+"-"+day;
        }else{
            result="录入身份证不合法";
        }
        return result;
      }
     %>
     <center>
     <table border="1">
       <tr bgcolor="green">
         <td align="center">身份证</td>
         <td align="center">生日</td>
       </tr>
       <tr>
         <td>010020199601026929</td><td><%=getBirthday("010020199601026929")%></td>
       </tr>
       <tr>
         <td>010020199711126928</td><td><%=getBirthday("010020199711126928")%></td>
       </tr>
     </table>
     </center>
  </body>
</html>