<%@ page language="java" contentType="text/html; charset=gbk" import="staff.*,java.util.*"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	ArrayList<TitleInfo> reclist=(ArrayList<TitleInfo>)session.getAttribute("TitleList");
	session.removeAttribute("TitleList");
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<TitleInfo>();
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
				<td  class="tb_showall" height="25" colspan="12" align="center">ְ����Ϣ�б�</td>
			</tr>
			<tr class="td_header">
				<td>ְ��ID</td>
				<td>ְ������</td>
				<td>��ְ�ʸ�</td>
				<td>ְ��</td>
				<td>����Ŀ��</td>
				<td colspan="2" align="center">����</td>
	 		
			</tr>
		
	<% int count=reclist.size();
	request.setCharacterEncoding("utf-8");
	   for(int i=0;i<count;i++){
		   TitleInfo titleInfo =reclist.get(i);
	%>
			<tr class="td_<%=i%2+1%>">
				<td><%=titleInfo.getTitleid() %></td>
				<td><%=titleInfo.getTitlename() %></td>
				<td><%=titleInfo.getQualification() %> </td>
				<td><%=titleInfo.getDuty() %></td>
				<td><%=titleInfo.getWorktarget() %></td>
 
					<td>
					<a href="<%=path %>/GetidAction?titleid=<%=titleInfo.getTitleid() %>">�༭</a>
				</td>
				<td>
					<a href="<%=path %>/TitleDelAction?titleid=<%=titleInfo.getTitleid() %>" onclick="return del()">ɾ��</a>
				</td>

			</tr>
	<%
}
 %>		
			</tr>	
		</table>
		  <div><a href="<%=path %>/staff/Title_insert.jsp">���ְ����Ϣ</a></div>
		  <div align="center"><a href="<%=path %>/TitleListAction"><h2>ˢ�������б�<h2></a></div>
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