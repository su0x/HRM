<%@page import="employee.EmployeeInfo"%>
<%@ page language="java" contentType="text/html; charset=gbk" import="post.*,java.util.*"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	ArrayList<EmployeeInfo> reclist=(ArrayList<EmployeeInfo>)session.getAttribute("empList");
	session.removeAttribute("empList");
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<EmployeeInfo>();
	}
%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/student.css">
<title>Title_list</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<table class="table table-bordered" width="100%" height="100" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td  class="tb_showall" height="25" colspan="18" align="center">��Ա��Ϣ�б�</td>
			</tr>
			<tr class="td_header">
				<td>Ա����ϢID</td>
				<td>����</td>
				<td>ְ��</td>
				<td>��λ</td>
				<td>Ա������</td>
				<td>Ա������</td>
				<td>Ա���Ա�</td>
				<td>���֤��</td>
				<td>��������</td>
				<td>����</td>
				<td>ѧ��</td>
				<td>����</td>
				<td>������ò</td>
				<td>����״��</td>
				<td>��������</td>
				<td>����״̬</td>
				<td colspan="2" align="center">����</td>		
		</tr>	
			
			<% int count=reclist.size();
	request.setCharacterEncoding("utf-8");
	   for(int i=0;i<count;i++){
		  EmployeeInfo empInfo =reclist.get(i);
	%>
			<tr class="td_<%=i%2+1%>">
				
				<td><%=empInfo.getEmpid() %></td>
				<td><%=empInfo.getDeptname() %></td>
				<td><%=empInfo.getTitlename() %></td>
				<td><%=empInfo.getPostname() %></td>
				<td><%=empInfo.getEmpname() %></td>
				<td><%=empInfo.getEmpcode() %></td>
				<% if(empInfo.getSex()==1)  
				{out.print("<td>��</td>"); }
		      else if(empInfo.getSex()==2)
		      {out.print("<td>Ů</td>");}
			  %>
				<td><%=empInfo.getIdcard() %></td>
				<td><%=empInfo.getBirthday() %></td>
				<td><%=empInfo.getNativeplace() %></td>
	 	
				<% if(empInfo.getEdulevel()==3)  
				{out.print("<td>����</td>"); }
		      else if(empInfo.getEdulevel()==4)
		      {out.print("<td>ר��</td>");}
		      else if(empInfo.getEdulevel()==5)
				{out.print("<td>����</td>");}
		      else if(empInfo.getEdulevel()==6)
				{out.print("<td>˶ʿ</td>");}
		      else if(empInfo.getEdulevel()==7)
				{out.print("<td>��ʿ</td>");}
			  %>
				
				
				<td><%=empInfo.getNantion() %></td>
				<% if(empInfo.getParty()==1)  
						{out.print("<td>�й���Ա</td>"); }
				      else if(empInfo.getParty()==2)
				      {out.print("<td>�й�Ԥ����Ա</td>");}
				      else if(empInfo.getParty()==3)
						{out.print("<td>������Ա</td>");}
				      else if(empInfo.getParty()==4)
						{out.print("<td>��������</td>");}
				      else if(empInfo.getParty()==5)
				      {out.print("<td>Ⱥ��</td>");}
				%>
				<% if(empInfo.getHealth()==8)  
				{out.print("<td>����</td>"); }
		      else if(empInfo.getHealth()==9)
		      {out.print("<td>����</td>");}
		      else if(empInfo.getHealth()==10)
				{out.print("<td>һ��</td>");}
		      else if(empInfo.getHealth()==11)
				{out.print("<td>�����Բ�</td>");}
			  %>
			  	<% if(empInfo.getRegtype()==1)  
				{out.print("<td>ũ�廧��</td>"); }
		      else if(empInfo.getRegtype()==2)
		      {out.print("<td>���о���</td>");}
			  %>
			  			<% if(empInfo.getStatus()==1)  
				{out.print("<td>����</td>"); }
		      else if(empInfo.getStatus()==2)
		      {out.print("<td>ת��</td>");}
		      else if(empInfo.getStatus()==3)
				{out.print("<td>�ҿ�</td>");}
		      else if(empInfo.getStatus()==4)
				{out.print("<td>�Զ���ְ</td>");}
		      else if(empInfo.getStatus()==5)
				{out.print("<td>����</td>");}
			  %>
			 
		 

 
					<td>
					<a href="<%=path %>/GetEmpidAction?empidA=<%=empInfo.getEmpid()  %>">�༭</a>
				</td>
				<td>
					<a href="<%=path %>/EmpDelAction?empid=<%=empInfo.getEmpid()  %> "onclick="return del()">ɾ��</a>
				</td>

			</tr>
	<%
}
 %>		
			</tr>	
		</table>
		  <div><a href="<%=path %>/GetDeptPostTitleAction">��ӹ�Ա��Ϣ</a></div>
		  <div align="center"><a href="<%=path %>/EmpListAction"><h2>ˢ�������б�<h2></a></div>
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
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				