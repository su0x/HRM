<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="organization.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
DeptInfo dept=(DeptInfo)session.getAttribute("deptinfo");

%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form name="frm" method="post" action="<%=request.getContextPath() %>/CWModifyAction">
	<table  class="table table-bordered">
				<tr align="center" class=" info"><td colspan="4">�༭������Ϣ</td></tr>
				<tr class="">   <td><span>����id</span></td> <td><input name="deptid" readonly="readonly"value="<%=dept.getDeptid() %>"></td>   <td><span>���ű��</span></td> <td><input name="deptcode"  value="<%=dept.getDeptcode() %>"></td>    </tr>
				<tr class=" ">    <td><span>�ϼ�����ID</span></td> <td><input name="parentid" value="<%=dept.getParentid() %>"></td><td><span>��������</span></td> <td><input name="deptname" value="<%=dept.getDeptname() %>"></td>    </tr>
				<tr class=" info">    <td><span>��������</span></td> <td><input name="depttype" value="<%=dept.getDepttype() %>"></td><td ><span>���ŵ�ַ</span></td> <td><input name="location" value="<%=dept.getLocation() %>"></td> <td></td><td></td> 																</tr>
				<tr class=" ">   <td><span>��������</span></td> <td><input name="postcode" value="<%=dept.getPostcode() %>"></td> <td><span>�绰����</span></td> <td><input name="telephone" value="<%=dept.getTelephone() %>"></td> </tr>
				<tr class=" ">   <td><span>�������</span></td> <td><input name="fax" value="<%=dept.getFax() %>"></td>  <td><span>�����ʼ�</span></td> <td><input name="mail" 			value="<%=dept.getMail() %>"></td></tr>
				<tr class="info ">   <td colspan="4" align="center"><input type="submit" value="ȷ��"> <input type="reset" value="ȡ��" ><input type="button"   onclick="javascript:history.back(-1);" value="������һҳ"></td></tr>
			</table>

</form>
</body>
</html>