<%@page import="employee.EmployeeInfo"%>
<%@ page language="java" contentType="text/html; charset=GB2312" import="employee.*"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
 EmployeeInfo emp=(EmployeeInfo)session.getAttribute("empinfo");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>¼���¸�λ</title>
 <!-- Bootstrap -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
		<form name="frm" method="post" >
			<table  class="table table-bordered" align="center">
				<tr align="center"><td colspan="4">Ա����ϸ��Ϣ</td>						</tr>
				<tr><td align="center"><span>Ա��ID</span></td> <td align="center"><%=emp.getEmpid() %></td>          </tr>
				<tr><td align="center"><span>����</span></td> <td align="center"><%=emp.getDeptname() %></td>    </tr>
				<tr><td align="center"><span>ְ��</span></td> <td align="center"><%=emp.getTitlename() %></td>  	  </tr>
				<tr><td align="center"><span>��λ</span></td> <td align="center"><%=emp.getPostname() %></td>  		</tr>
				<tr><td align="center"><span>����</span></td> <td align="center"><%=emp.getEmpname() %></td>   		</tr>
				<tr><td align="center"><span>����</span></td> <td align="center"><%=emp.getEmpcode() %></td>  		</tr>
				<tr><td align="center"><span>�Ա�</span></td><td align="center"><% 
						if(emp.getSex()==1)  
							{out.println("��"); }
				     	else if(emp.getSex()==2)
				      		{out.println("Ů");}
				%></td>  </tr>
				<tr><td align="center"><span>���֤��</span></td> <td align="center"><%=emp.getIdcard() %></td>  		</tr>
			    <tr><td align="center">��������</td> <td align="center"><%=emp.getBirthday() %></td>     </tr>
				<tr><td align="center"><span>����</span></td> <td align="center"><%=emp.getNativeplace() %></td>  		</tr>
				<tr><td align="center">ѧ��</td><td align="center"><% 
				if(emp.getEdulevel()==3)  
					{out.print("����"); }
		     	 else if(emp.getEdulevel()==4)
		      		{out.print("ר��");}
		      	else if(emp.getEdulevel()==5)
					{out.print("����");}
		     	 else if(emp.getEdulevel()==6)
					{out.print("˶ʿ");}
		      	else if(emp.getEdulevel()==7)
					{out.print("��ʿ");}
			 %></td></tr>
				<tr><tr><td align="center">����</td><td align="center"><%=emp.getNantion() %></td></tr>
		 		<tr><td align="center">������ò</td><td align="center"><% 
				if(emp.getParty()==1)  
					{out.print("�й���Ա"); }
		     	 else if(emp.getParty()==2)
		      		{out.print("�й�Ԥ����Ա");}
		      	else if(emp.getParty()==3)
					{out.print("������Ա");}
		      	 else if(emp.getParty()==4)
					{out.print("��������");}
		     	 else if(emp.getParty()==5)
					{out.print("Ⱥ��");}
			 %></td></tr>
			    <tr><td align="center">����״��</td><td align="center"><%
				if(emp.getHealth()==8)  
					{out.print("����"); }
		      	else if(emp.getHealth()==9)
		     		 {out.print("����");}
		      	else if(emp.getHealth()==10)
					{out.print("һ��");}
		      	else if(emp.getHealth()==11)
					{out.print("�����Բ�");}
			  %></td></tr>
			    <tr><td align="center">��������</td><td align="center">
			    <% if(emp.getRegtype()==1)  
					{out.print("ũ�廧��"); }
		     	 else if(emp.getRegtype()==2)
		      		{out.print("���о���");}
			  %></td></tr>
			    <tr><td align="center">��ְ״̬</td><td align="center">
			    <% if(emp.getStatus()==1)  
				{out.print("����"); }
		      else if(emp.getStatus()==2)
		      {out.print("ת��");}
		      else if(emp.getStatus()==3)
				{out.print("�ҿ�");}
		      else if(emp.getStatus()==4)
				{out.print("�Զ���ְ");}
		      else if(emp.getStatus()==5)
				{out.print("����");}
			  %></td></tr>
			    <tr><td colspan="4" align="center"><input type="button"   onclick="javascript:history.back(-1);" value="������һҳ"></td></tr>
		</table>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>