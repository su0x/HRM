

<%@ page language="java" contentType="text/html; charset=gbk" import="post.*,java.util.*"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	ArrayList<PostInfo> reclist=(ArrayList<PostInfo>)session.getAttribute("postList");
	session.removeAttribute("postList");
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<PostInfo>();
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
				<td  class="tb_showall" height="25" colspan="12" align="center">��λ��Ϣ�б�</td>
			</tr>
			<tr class="td_header">
				<td>��λID</td>
				<td>��λ����</td>
				<td>�ϼ���λ</td>
				<td>��λְ��</td>
				<td>��ְ�ʸ�</td>
				<td>��λȨ��</td>
				<td>��λ��������</td>
				<td colspan="2" align="center">����</td>		
			</tr>
		
	<% int count=reclist.size();
	request.setCharacterEncoding("utf-8");
	   for(int i=0;i<count;i++){
		   PostInfo postInfo =reclist.get(i);
	%>
			<tr class="td_<%=i%2+1%>">
				
				<td><%=postInfo.getPostid() %></td>
				<td><%=postInfo.getPostname() %> </td>
				<td><%=postInfo.getParentid() %> </td>
				<td><%=postInfo.getDuty() %></td>
				<td><%=postInfo.getQualification() %></td>
				<td><%=postInfo.getPurview() %></td>
				<td><%=postInfo.getWorkcontent() %></td>
 
					<td>
					<a href="<%=path %>/GetPostidAction?postidA=<%=postInfo.getPostid() %>">�༭</a>
				</td>
				<td>
					<a href="<%=path %>/PostDelAction?postid=<%=postInfo.getPostid() %>"onclick="return del()">ɾ��</a>
				</td>

			</tr>
	<%
}
 %>		
			</tr>	
		</table>
		  <div><a href="<%=path %>/post/Post_insert.jsp">���ְ����Ϣ</a></div>
		  <div align="center"><a href="<%=path %>/PostListAction"><h2>ˢ�������б�<h2></a></div>
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