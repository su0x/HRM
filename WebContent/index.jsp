<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>������Դ����ϵͳ</title>
<link rel="shortcut icon"  href="images/block.ico" type="image/x-icon" />
<link rel="stylesheet" href="js/morris-chart/morris.css">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<style type="text/css">
#three:hover{
	background-color:#65cea7;
}
.left-side-inner{
	padding-top:15px
}
</style>
</head>
<body class="sticky-header">

<nav class="navbar navbar-inverse navbar-fixed-top"  style="background-color: #353f4f;" role="navigation">
    <div class="container-fluid">
		<a class="navbar-brand" style="background-color: #353f4f; color:#00ff99;padding-top: 25px" href="HomePage.jsp">������Դ����ϵͳ</a>
		<form class="navbar-form navbar-right" role="search">
			<a class="navbar-brand" id="mytime" style="color:#00ff99"></a>
		</form>
    </div>
</nav>
<!-- ��ߵ�����-->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2 sidebar">
			<div class="left-side sticky-left-side" >
		        <div class="logo">
		            <a href="<%=path%>/index.jsp"><img src=" " ></a>
		        </div>
		        <div class="left-side-inner" > 
		            <ul class="nav nav-pills nav-stacked custom-nav" > 
		            	<li class="active"><span> </span></li>
		                <li class="active"><a href="<%=path%>/index.jsp"><i class="fa fa-home"></i> <span>��ҳ</span></a></li>
		                <li class="menu-list"><a href="#"><i class="fa fa-laptop"></i> <span>��֯��������</span></a>
		                    <ul class="sub-menu-list">
		                        <li><a href="<%=path %>/ZongWuListAction" target="myframe">���� </a></li>
		                        <li><a href="<%=path %>/RengZiListAction" target="myframe">���ʲ�  </a></li>
		                        <li><a href="<%=path %>/CaiWuListAction" target="myframe">���� </a></li>
		                        <li><a href="<%=path %>/NetListAction" target="myframe">���粿  </a></li>
		                    </ul>
		                </li>
		                <li class="menu-list"><a href="#" target="myframe"><i class="fa fa-cogs"></i> <span>Ա������</span></a>
		                    <ul class="sub-menu-list">
		                        <li><a href="<%=path %>/TitleListAction"target="myframe" > ְ����Ϣ����</a></li>
		                        <li><a href="<%=path %>/PostListAction" target="myframe"> ��λ��Ϣ����</a></li>
		                        <li><a href="<%=path %>/EmpListAction" target="myframe"> Ա����Ϣ����</a></li>
		                    </ul>
		                </li>
		                <li class="menu-list"><a href=""><i class="fa fa-pencil fa-fw"></i> <span>Ա����Ϣ��ѯͳ��</span></a>
		                    <ul class="sub-menu-list">
		                        <li><a href="<%=path %>/statistics/statistics_search.jsp" target="myframe"> �ۺϲ�ѯ</a></li>
		                        <li><a href="<%=path %>/statistics/AllTable.jsp" target="myframe"> ����ͳ��</a></li>
		                    </ul>
		                </li>
		                <li><a href="<%=path%>/login/login.jsp"><i class="fa fa-sign-in"></i> <span>Login</span></a></li>
		            </ul>
		        </div>
		    </div>
		</div>
		<!-- ������ʾ�� -->
		<div class="main-content" >
			<iframe src="<%=path%>/welcome.jsp" name="myframe" width="100%" height="1000px" frameborder="0" scrolling="yes" style="padding-top: 16px"></iframe>
		</div>	
	</div>
</div>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<script type="text/javascript">//��̬��ʾʱ��
function showTime(){
	    nowtime=new Date();
	    year=nowtime.getFullYear();
	    month=nowtime.getMonth()+1;
	    date=nowtime.getDate();
	    document.getElementById("mytime").innerText=year+"��"+month+"��"+date+"��"+" "+nowtime.toLocaleTimeString();
	}
	setInterval("showTime()",1000);
</script>
</body>
</html>