<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<% String path = request.getContextPath(); %>
<body>
<form name="frm" method="post" action="<%=path %>/RengZiInsertAction">
	<table  class="table table-bordered">
				<tr align="center" class="success"><td colspan="4">����Ӳ���</td></tr>
				<tr class="">   <td><span>���ű��</span></td> <td><input name="deptcode"><span><span style="color:red">* Ҫ��:</span> ������1,���ʲ���2,������3,���粿��4��ͷ</span> </td>   </tr>
				<tr class="info">   <td><span>�ϼ���������</span></td> <td><input name="parentid"></td> <td><span>��������</span></td> <td><input name="deptname"></td>     </tr>
				<tr class=" ">   <td><span>��������</span></td> <td><input name="depttype"></td><td ><span>���ŵ�ַ</span></td> <td><input name="location"></td> <td></td><td></td> 																</tr>
				<tr class="info">   <td><span>��������</span></td> <td><input name="postcode"></td> <td><span>�绰����</span></td> <td><input name="telephone"></td> </tr>
				<tr class=" ">   <td><span>�������</span></td> <td><input name="fax"></td>  <td><span>�����ʼ�</span></td> <td><input name="mail"></td></tr>
				<tr class="danger">   <td colspan="4" align="center"><input type="submit" value="ȷ��"> <input type="reset" value="ȡ��" ><input type="button"   onclick="javascript:history.back(-1);" value="������һҳ"></td></tr>
			</table>
</form>
</body>
</html>