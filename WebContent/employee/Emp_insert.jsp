<%@ page language="java" contentType="text/html; charset=GB2312" import="post.*,organization.*,staff.*,java.util.*"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	ArrayList<DeptInfo> reclist=(ArrayList<DeptInfo>)session.getAttribute("getdeptList");
	
	ArrayList<TitleInfo> reclistA=(ArrayList<TitleInfo>)session.getAttribute("gettitleList");
	
	ArrayList<PostInfo> reclistB=(ArrayList<PostInfo>)session.getAttribute("getpostList");
	
	
	session.removeAttribute("getdeptList");
	session.removeAttribute("gettitleList");
	session.removeAttribute("getpostList");
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<DeptInfo>();
	}
	if(reclistA==null){//�������ݻ�δ����
		reclistA=new ArrayList<TitleInfo>();
	}
	if(reclistB==null){//�������ݻ�δ����
		reclistB=new ArrayList<PostInfo>();
	}
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
		<form name="frm" method="post" action="<%=request.getContextPath() %>/EmpInsertAction">
			<table  class="table table-bordered" >
				<tr align="center" class=" "><td colspan="4">��ӹ�Ա��Ϣ</td>						</tr>
				 
				<tr class=" ">   <td><span>����</span></td>
				 <td><select  name="dept"  class="form-control" style="width:100px">
				 		<% 			 
				 		int count=reclist.size();
				 		request.setCharacterEncoding("utf-8");
				 		   for(int i=0;i<count;i++){
				 			 DeptInfo deptInfo =reclist.get(i);
				 		 	out.print("<option>"+deptInfo.getDeptname()+"</option>");
				 		   }
				 		%>	
				 </select></td>  
	     		  </tr>
				<tr class=" ">   <td ><span>ְ��</span></td> 
				 <td><select  name="title"  class="form-control" style="width:100px">
				 		<% 			 
				 		int countA=reclistA.size();
				 		request.setCharacterEncoding("utf-8");
				 		   for(int i=0;i<countA;i++){
				 			 TitleInfo titleInfo =reclistA.get(i);
				 		 	out.print("<option>"+titleInfo.getTitlename()+"</option>");
				 		   }
				 		%>	
				 </select></td>  
				
				
				
				
				 </tr>
				<tr class=" ">   <td><span>��λ</span></td> </td>  	
				 <td><select  name="post"  class="form-control" style="width:100px">
				 		<% 			 
				 		int countB=reclistB.size();
				 		request.setCharacterEncoding("utf-8");
				 		   for(int i=0;i<countB;i++){
				 			PostInfo postInfo =reclistB.get(i);
				 		 	out.print("<option>"+postInfo.getPostname()+"</option>");
				 		   }
				 		%>	
				 </select></td>  
	 
					</tr>
				
				<tr class=" ">   <td><span>����</span></td> <td><input name="empname"></td>   			</tr>
				<tr class=" ">   <td><span>����</span></td> <td><input name="empcode"></td>  		</tr>
				<tr class=" ">   <td>�Ա�</td>   <td><select name="gender" class="form-control" style="width:100px" >
			        <option value="1">��</option>
			        <option value="2">Ů</option>
			      </select><font color="red">*</font></td></tr>
				<tr class=" ">  <td><span>���֤��</span></td> <td><input name="idcard"></td>  		</tr>
			   <tr class=" "> <td>�������ڣ�</td> <td><input type="date" name="birthday">	</td>     </tr>
				<tr class=" ">   <td><span>����</span></td> <td><input name="nativeplace"></td>  		</tr>
				<tr class=" ">   <td>ѧ����</td>
			             <td><select name="edulevel"  class="form-control" style="width:100px" >
			                    <option value="3">����</option>
			                    <option  value="4" >ר��</option>
			                    <option  value="5">����</option>
			                    <option  value="6">˶ʿ</option>
			                    <option  value="7">��ʿ</option>			              
			                 </select>
			             </td>	</tr>
					<tr class=" ">    <tr><td>���壺</td>
			            <td><select name="nantion" class="form-control" style="width:100px" >
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
				
			
			
		 <tr><td>������ò��</td>
			            <td><select name="party" class="form-control" style="width:100px">
			            <option value="1">�й���Ա</option>
			            <option value="2">�й�Ԥ����Ա</option>
			            <option value="3">������Ա</option>
			            <option value="4">��������</option>
			            <option value="5">Ⱥ��</option>
			           </select></td>
			        </tr>
			         <tr><td>����״����</td>
			            <td><select name="health" class="form-control" style="width:100px">
			                <option value="8">����</option>
			                <option value="9">����</option>
			                <option value="10">һ��</option>
			                <option value="11">�����Լ���</option>
			            </select></td>
			        </tr>
			        <tr><td>��������</td>
			            <td><select name="regtype"class="form-control" style="width:100px">
			                <option value="1">ũ�廧��</option>
			                <option value="2">���о���</option>
			            </select></td>
			        </tr>
			        <tr><td>��ְ״̬��</td>
			            <td><select name="status" class="form-control" style="width:100px">
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