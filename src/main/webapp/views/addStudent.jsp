<%--
  Created by IntelliJ IDEA.
  User: Eric1
  Date: 2019/2/27
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入into.jsp的头部文件--%>
<%@ include file="/into.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <p>AddStudent.jsp</p>
    <form method="post" action="<%=basePath%>/stu/addStudent.do">
        <table>
            <tr>
                <td>姓名:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>年龄:</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td><input type="submit" name="注册功能"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
