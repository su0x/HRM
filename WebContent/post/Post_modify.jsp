<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="post.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
 PostInfo post=(PostInfo)session.getAttribute("postinfo");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�޸ĸ�λ��Ϣ</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>


<form name="frm" method="post" action="<%=request.getContextPath() %>/PostModifyAction">
			<table  class="table table-bordered" >
				<tr align="center" class=" "><td colspan="4">�޸�ְ����Ϣ</td>						</tr>
		  		<tr style="height:50px">   <td style="width: 300px" align="center"><span>��λID</span></td> <td><input name="postid"readonly="readonly"  value="<%=post.getPostid()%>" style="width: 600px ; height:40px;"></td>    </tr>	
				<tr style="height:50px">   <td align="center"><span>��λ����</span></td> <td><input name="postname"  value="<%=post.getPostname()%>" style="width: 600px ; height:40px;"></td>    </tr>
				<tr style="height:50px">   <td align="center"><span>�ϼ���λ</span></td> <td><input name="parentid" value="<%=post.getParentid()%>" style="width: 600px ; height:40px;"></td>  	  </tr>
				<tr style="height:50px">   <td align="center"><span>��λְ��</span></td> <td><input name="duty"value="<%=post.getDuty() %>" style="width: 600px ; height:40px;"></td>  		</tr>
				<tr style="height:50px">   <td align="center"><span>��ְ�ʸ�</span></td> <td><input name="qualification"value="<%=post.getQualification()%>" style="width: 600px ; height:40px;"></td>   			</tr>
				<tr style="height:50px">   <td align="center"><span>��λȨ��</span></td> <td><input name="purview"value="<%=post.getPurview()%>" style="width: 600px ; height:40px;"></td>
				<tr style="height:50px">   <td align="center"><span>��������</span></td> <td><input name="workcontent"value="<%=post.getWorkcontent()%>" style="width: 600px ; height:40px;"></td>
				
				<tr class=" ">   <td colspan="4" align="center"><input type="submit" value="ȷ��"style="height:30px;"> <input type="reset" value="ȡ��" style="height:30px;"><input type="button"   style="height:30px;"onclick="javascript:history.back(-1);" value="������һҳ"></td></tr>
			</table>
		
		
		</form>
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>