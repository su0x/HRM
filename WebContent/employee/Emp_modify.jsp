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
		<form name="frm" method="post" action="<%=request.getContextPath() %>/EmpModifyAction">
			<table  class="table table-bordered" >
				<tr align="center" class=" "><td colspan="4">�޸Ĺ�Ա��Ϣ</td>						</tr>
				<tr class="">   <td><span>Ա��ID</span></td> <td><input name="empid" readonly="readonly"value="<%=emp.getEmpid() %>"></td>          </tr>
				<tr class=" ">   <td><span>����</span></td> <td><input name="dept" value="<%=emp.getDeptname() %>"></td>    </tr>
				<tr class=" ">   <td ><span>ְ��</span></td> <td><input name="title" value="<%=emp.getTitlename() %>"></td>  	  </tr>
				<tr class=" ">   <td><span>��λ</span></td> <td><input name="post" value="<%=emp.getPostname() %>"></td>  		</tr>
				<tr class=" ">   <td><span>����</span></td> <td><input name="empname" value="<%=emp.getEmpname() %>"></td>   			</tr>
				<tr class=" ">   <td><span>����</span></td> <td><input name="empcode" value="<%=emp.getEmpcode() %>"></td>  		</tr>
				<tr class=" ">   <td>�Ա� &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getSex() %>">  1=�У�2=Ů</td>   <td><select name="gender" >
			        <option value="1">��</option>
			        <option value="2">Ů</option>
			      </select><font color="red">*</font></td></tr>
				<tr class=" ">  <td><span>���֤��</span></td> <td><input name="idcard" value="<%=emp.getIdcard() %>"></td>  		</tr>
			   <tr class=" "> <td>�������ڣ�</td> <td><input type="date" name="birthday" value="<%=emp.getBirthday() %>">	</td>     </tr>
				<tr class=" ">   <td><span>����</span></td> <td><input name="nativeplace" value="<%=emp.getNativeplace() %>"></td>  		</tr>
				<tr class=" ">   <td>ѧ����    &nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getEdulevel() %>"><span>3=���У�4=ר�ƣ�5=���ƣ�6=˶ʿ��7=��ʿ</span></td>
			             <td><select name="edulevel">
			                    <option value="3">����</option>
			                    <option  value="4" >ר��</option>
			                    <option  value="5">����</option>
			                    <option  value="6">˶ʿ</option>
			                    <option  value="7">��ʿ</option>			              
			                 </select>
			             </td>	</tr>
					<tr class=" ">    <tr><td>���壺  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getNantion() %>"></td>
			            <td><select name="nantion">
			            <option value="����">����</option>
			            <option value="�ɹ���">�ɹ���</option>
			            <option value="����">����</option>
			            <option value="����">����</option>
			            <option value="ά�����">ά�����</option>
			            <option value="����">����</option>
			            <option value="����">����</option>
			            <option value="׳��">׳��</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="����">����</option>
			            <option value="����">����</option>
			            <option value="����">����</option>
			            <option value="����">����</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="��������">��������</option>
			            <option value="����">����</option>
			            <option value="����">����</option>
			            <option value="������">������</option>
			            <option value="����">����</option>
			            <option value="���">���</option>
			            <option value="��ɽ��">��ɽ��</option>
			            <option value="������">������</option>
			            <option value="ˮ��">ˮ��</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="�¶�������">�¶�������</option>
			            <option value="����">����</option>
			            <option value="�ﺲ����">�ﺲ����</option>
			            <option value="������">������</option>
			            <option value="Ǽ��">Ǽ��</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="������">������</option>
			            <option value="��������">��������</option>
			            <option value="ŭ��">ŭ��</option>
			            <option value="���α����">���α����</option>
			            <option value="����˹��">����˹��</option>
			            <option value="���¿���">���¿���</option>
			            <option value="�°���">�°���</option>
			            <option value="������">������</option>
			            <option value="ԣ����">ԣ����</option>
			            <option value="����">����</option>
			            <option value="��������">��������</option>
			            <option value="������">������</option>
			            <option value="���״���">���״���</option>
			            <option value="������">������</option>
			            <option value="�Ű���">�Ű���</option>
			            <option value="�����">�����</option>
			            <option value="��ŵ��">��ŵ��</option> 	</select></td>	</tr>
				
			
			
		 <tr><td>������ò��     &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getParty()%>">1=�й���Ա��2=�й�Ԥ����Ա��3=������Ա��4=�������ɣ�5=Ⱥ��</td>
			            <td><select name="party">
			            <option value="1">�й���Ա</option>
			            <option value="2">�й�Ԥ����Ա</option>
			            <option value="3">������Ա</option>
			            <option value="4">��������</option>
			            <option value="5">Ⱥ��</option>
			           </select></td>
			        </tr>
			         <tr><td>����״����&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getHealth() %>"><span>8=���ã�9=������10=һ�㣬11=�����Լ���</span></td>
			            <td><select name="health">
			                <option value="8">����</option>
			                <option value="9">����</option>
			                <option value="10">һ��</option>
			                <option value="11">�����Լ���</option>
			            </select></td>
			        </tr>
			        <tr><td>��������&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getRegtype() %>"><span>1=ũ�廧�ڣ�2=���о���</span></td>
			            <td><select name="regtype">
			                <option value="1">ũ�廧��</option>
			                <option value="2">���о���</option>
			            </select></td>
			        </tr>
			        <tr><td>��ְ״̬�� &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;�޸�ǰ��<input readonly="readonly" value="<%=emp.getStatus() %>"><span>1=���ã�2=ת����3=�ҿ���4=�Զ���ְ��5=����</span></td>
			            <td><select name="status">
			                <option value="1">����</option>
			                <option value="2">ת��</option>
			                <option value="3">�ҿ�</option>
			                <option value="4">�Զ���ְ</option>
			                <option value="5">����</option>
			             </select><font color="red">*</font></td> 
			         </tr>
			         	<tr class=" ">   <td colspan="4" align="center"><input type="submit" value="ȷ��"> <input type="reset" value="ȡ��" ><input type="button"   onclick="javascript:history.back(-1);" value="������һҳ"></td></tr>
		</table>
		</form>
		
		
		

		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>