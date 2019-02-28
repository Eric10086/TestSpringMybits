<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--引入into.jsp的头部文件--%>
<%@ include file="/into.jsp"%>
<html>
<body>
<h2>Hello World!</h2>
<h1>版本测试</h1>
<h2>测试222</h2>
<div align="center">
    <p>ssm整合测试</p>
    <h1>网址测试<%=basePath%></h1>
    <a href="<%=basePath%>/stu/index?target=addStudent">学生添加测试</a>
    <a href="<%=basePath%>/stu/index?target=addStudent">学生查询</a>
</div>
<div id="w" class="easyui-window" title="Fluid Window" style="width:80%;height:200px;padding:10px;" data-options="
			iconCls:'icon-save',
			onResize:function(){
				$(this).window('hcenter');
			}">
    <p>The window has a width of 80%.</p>
</div>
</body>
</html>
