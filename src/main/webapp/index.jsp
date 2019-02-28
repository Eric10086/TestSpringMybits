<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--引入into.jsp的头部文件--%>
<%@ include file="/into.jsp" %>
<html>
<body>
<h2>Hello World!</h2>
<h1>版本测试</h1>
<h2>测试222</h2>
<div align="center">
    <p>ssm整合测试</p>
    <h1>网址测试<%=basePath%>
    </h1>
    <%--<a href="<%=basePath%>/stu/index?target=addStudent">学生添加测试</a>--%>
    <a href="<%=basePath%>/stu/index?target=listStudent">学生查询</a>
    <%--<a href="<%=basePath%>/stu/delStudents.do?id=15">学生删除</a>--%>
</div>
</body>
</html>
