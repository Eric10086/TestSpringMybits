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


        //加载学生信息
        $('#tb_StudentFiles').datagrid({
            rownumbers: true,
            toolbar: "#dg_StudentHead",
            fit: false,
            border: true,
            singleSelect: true,
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

    function showAdd() {
        $('#stuForm').form("clear");
        $('#stuWin').window('open');
    }
    function addStudent() {
        var form = $('#stuForm').serializeObject();
        if (form.id==""){
            $.ajax({
                type: "post",
                url: "<%=basePath%>/stu/addStudent.do",
                data: form,
                success: function (delrow) {
                    $.messager.alert('提示', delrow, 'info');
                    // console.log(delrow);
                    // if (delrow.Success = true) {
                    //     $.messager.progress('close');
                    //     $.messager.alert('提示', delrow, 'info');
                    // } else {
                    //     $.messager.progress('close');
                    //     $.messager.alert('错误', delrow, 'error');
                    // }
                }
            });
        }else {
            $.ajax({
                type: "post",
                url: "<%=basePath%>/stu/updateStudent.do",
                data: form,
                success: function (delrow) {
                    $.messager.alert('提示', delrow, 'info');
                    // console.log(delrow);
                    // if (delrow.Success = true) {
                    //     $.messager.progress('close');
                    //     $.messager.alert('提示', delrow, 'info');
                    // } else {
                    //     $.messager.progress('close');
                    //     $.messager.alert('错误', delrow, 'error');
                    // }
                }
            });
        }

        studentInfo();
        $('#stuWin').window('close');
    }

    function showUpdate() {
        var ChaXunShuJurow = $('#tb_StudentFiles').datagrid('getSelected');
        $('#stuForm').form('load',ChaXunShuJurow);
        $('#stuWin').window('open');

    }

    function DataDeletion() {
        var ChaXunShuJurow = $('#tb_StudentFiles').datagrid('getSelected');
        if (ChaXunShuJurow) {
            $.messager.confirm('确认', '您确认想要删除这条记录吗？', function (r) {
                if (r) {
                    PreventContinuousClicks();
                    $.ajax({
                        type: "post",
                        url: "<%=basePath%>/stu/delStudents.do?id="+ChaXunShuJurow.id,
                        success: function (delrow) {
                            if (delrow.Success = true) {
                                $.messager.progress('close');
                                $.messager.alert('提示', delrow, 'info');
                            } else {
                                $.messager.progress('close');
                                $.messager.alert('错误', delrow, 'error');
                            }
                        }
                    });
                    studentInfo();
                }
            });
        } else {
            $.messager.alert('提示', '请选择数据行再操作！', 'info');
        }
    }


</script>
<div align="center">
    <p>listStudent.jsp</p>

    <div data-options="region:'center'" style="background: #eee;padding:5px">
        <div id="dg_StudentHead" style="padding: 5px; height: auto">
            <div>
                <a class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="showAdd()">新增</a>
                <a class="easyui-linkbutton" data-options="iconCls:'icon-cut'" onclick="showUpdate()">编辑</a>
                <a class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="DataDeletion()">删除</a>
            </div>
        </div>
        <table id="tb_StudentFiles"></table>
    </div>


    <div id="stuWin" class="easyui-window" title="学生" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:500px;height:200px;padding:10px;">
        <form id="stuForm">
            <table>
                <input type="hidden" name="id">
                <tr>
                    <td>姓名:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄:</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="addStudent()">保存</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</div>
</body>
</html>
