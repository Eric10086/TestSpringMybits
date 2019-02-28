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
<script>
    $(function () {
        studentInfo();
    });
    function studentInfo() {
        $.ajax({
            url:"<%=basePath%>/stu/quseryStudents.do",
            type:"post",
            success:function (data) {
                console.log(data)


            }
        })


        //加载隐藏的个人档案的选人页面
        $('#tb_PersonalFiles').datagrid({
            rownumbers: true,
            fit: false,
            border: true,
            singleSelect: false,
            showHeader: true,
            pagination: true,
            pageSize: 20,
            queryParams: { Name: name },
            remoteSort: false,
            sortName: 'id',
            sortOrder: 'desc',
            url: "<%=basePath%>/stu/quseryStudents.do",
            pagination: true,
            columns: [
                [
                    { field: 'id', title: '编号', width: 100 },
                    { field: 'name', title: '名字', width: 60 },
                    { field: 'age', title: '年龄', width: 60 }
                ]
            ]
        });
    }
</script>
<div align="center">
    <p>listStudent.jsp</p>
    <table id="tb_PersonalFiles"></table>

</div>
</body>
</html>
