<%--
  Created by IntelliJ IDEA.
  User: Eric1
  Date: 2019/2/27
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<html>
<head>
    <title>TestEric</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/easyui/demo.css">
    <script type="text/javascript" src="<%=basePath%>/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/easyui/jquery.easyui.min.js"></script>
</head>
<body>

</body>
</html>
