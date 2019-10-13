<%@page import="java.io.Console"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=gbk" import="organization.*,java.util.*"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	
	ArrayList<DeptInfo> reclist=(ArrayList<DeptInfo>)session.getAttribute("DeptList");
	session.removeAttribute("DeptList");
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<DeptInfo>();
	}
%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/student.css">

<title>Course_list</title>
</head>
<body>
<div class="container-fluid" >
	<div class="row">
		<div class="col-md-3">
			<iframe src="<%=path%>/organization/RZTree.jsp" name="myframe" width="100%" height="500" frameborder="0" scrolling="yes" style="padding-top: 16px"></iframe>
		</div>
		<div class="col-md-9" style="margin-top: 15px">
		<table class="table table-bordered" width="100%" height="100" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td  class="tb_showall" height="25" colspan="12" align="center">������Ϣ�б�</td>
			</tr>
			<tr class="td_header">
				<td>����ID</td>
				<td>���ű��</td>
				<td>�ϼ�����</td>
				<td>��������</td>
				<td>��������</td>
				<td>���ŵ�ַ</td>
				<td>��������</td>
				<td>�绰����</td>
				<td>c�������</td>
				<td>�����ʼ�</td>
				<td colspan="2" align="center">����</td>	
			</tr>
		
	<% int count=reclist.size();
	request.setCharacterEncoding("utf-8");
	ArrayList<ArrayList<String>> rzArr = new ArrayList<ArrayList<String>>();
	ArrayList<String> rzArr1 = new ArrayList<String>();
		for(int i=0;i<count;i++){
	   		DeptInfo deptInfo = reclist.get(i);
	   		if(deptInfo.getParentid().equals("���ʲ�") && deptInfo.getDepttype() == 2){
	   			rzArr1.add(deptInfo.getDeptname());
	   		}
		}
		for(int i=0;i<rzArr1.size();i++){
			ArrayList<String> arr = new ArrayList<String>();
			arr.add(rzArr1.get(i));
			rzArr.add(arr);
		}
	   for(int i=0;i<count;i++){
	   		DeptInfo deptInfo = reclist.get(i);
	   		 for(int j=0;j<rzArr.size();j++)
	   			if(deptInfo.getParentid().equals(rzArr.get(j).get(0)) && deptInfo.getDepttype() == 3){
	   				/* ArrayList<String> temp=rzArr.get(j);
	   				temp.add(deptInfo.getDeptname()); */
	   				rzArr.get(j).add(deptInfo.getDeptname());
	   			} 
	   		char s = deptInfo.getDeptcode().charAt(0);
	   		  if(s == '2'){ 
	%>
	
			<tr class="td_<%=i%2+1%>">
			<td><%=deptInfo.getDeptid() %></td>
				<td><%=deptInfo.getDeptcode() %></td>
				<td><%=deptInfo.getParentid() %> </td>
				<td><%=deptInfo.getDeptname() %></td>
				<td><%=deptInfo.getDepttype() %></td>
				<td><%=deptInfo.getLocation() %> </td>
				<td><%=deptInfo.getPostcode() %></td>
				<td><%=deptInfo.getTelephone() %></td>
				<td><%=deptInfo.getFax() %></td>
				<td><%=deptInfo.getMail()%></td>
				<td>
					<a href="<%=path %>/RZGetCodeAction?deptcode=<%=deptInfo.getDeptcode()%>">�༭</a>
				</td>
				<td>
					<a href="<%=path %>/RengZiDelAction?deptcode=<%=deptInfo.getDeptcode()%>" onclick="return del()">ɾ��</a>
				</td>

			</tr>
	<%
	   		  }
		}
/* 	   for(int i=0;i<zwArr.size();i++){
		   for(int j=0;j<zwArr.get(i).size();j++){
		   out.println(zwArr.get(i).get(j));
		   }
	   } */
	   session.setAttribute("rzArr", rzArr);
 	%>
 		
		</table>
		  <div><a href="<%=path %>/organization/RengZi_insert.jsp">��Ӳ�����Ϣ</a></div>
		  <div align="center"><a href="<%=path %>/RengZiListAction"><h2>ˢ�������б�<h2></a></div>
		  </div>
		  </div>
		  
</div>
<script>
    function del()
    {
        if(confirm("ȷ��Ҫɾ����"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
</script>
</body>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>