<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" import="statistics.*,java.util.*"
 %>
<%
	String path = request.getContextPath(); 
	request.setCharacterEncoding("gb2312");
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="gb2312">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<div style="margin: 5px auto;">
    <form name="frm" action="<%=path%>/SearchAction" method="post">
        <table class="table table-bordered table-striped">
            <tr align="center"><td colspan="4">Ա����Ϣ��ѯ</td></tr>
            <tr><td>������</td><td><input class="form-control" style="width:200px" name="name"></td> <td>Ա���ţ�</td><td><input  class="form-control" style="width:200px" name="number"></td></tr>
            <tr><td>�Ա�</td><td><select class="form-control" style="width:80px" name="sex"><option value="1">��</option><option value="2">Ů</option></select></td><td>���ţ�</td><td><input class="form-control" style="width:200px" name="department"></td></tr>
            <tr><td>ְ�ƣ�</td><td><input class="form-control" style="width:200px" name="title"></td><td>��λ��</td><td><input class="form-control" style="width:200px" name="post"></td></tr>
            <tr><td>�������ڣ�</td>
                <td>
                    <input  class="form-control" style="width:200px" type="date" name="date" />
                </td> <td>���ѧ����</td>
                <td><select class="form-control" style="width:100px" name="education">
                    <option value="7">��ʿ</option>
                    <option value="6">˶ʿ</option>
                    <option value="5">����</option>
                    <option value="4">ר��</option>
                    <option value="3">����</option>
                </select></td></tr>
            <tr><td>����״����</td>
                <td colspan="3"><select class="form-control" style="width:100px" name="health">
                	<option value="9">����</option>
                    <option value="8">����</option>
                    <option value="10">һ��</option>
                    <option value="11">�����Լ���</option>
                </select></td> </tr>
            <tr align="center"><td colspan="4"><input class="btn btn-default" type="submit" value="��ѯ"> <input class="btn btn-default" type="reset" value="ȡ��"></td></tr>
        </table>

    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>