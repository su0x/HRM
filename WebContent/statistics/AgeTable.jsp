<%@page import="employee.EmployeeInfo"%>
<%@ page language="java" contentType="text/html; charset=gbk" import="employee.*,java.util.*"
    pageEncoding="GB18030"%>
    <%
    EmpDB empDB = new  EmpDB();
	String path = request.getContextPath();
	ArrayList<EmployeeInfo> reclist = empDB.getEmpList();
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<EmployeeInfo>();
	}
    %>
    <%
    int a=0,b=0,c=0,d=0,sum=0;
    ArrayList<Integer> alist = new ArrayList<Integer>();
	for(int j=0;j<reclist.size();j++){
		EmployeeInfo sInfo = reclist.get(j);
		String[] birth = sInfo.getBirthday().split("-");
		int year = Integer.parseInt(birth[0]);
		int age = 2019 - year;
		if(age>=0 && age<20){
			a++;
		}else if(age>=20 && age<40){
			b++;
		}else if(age>=40 && age<60){
			c++;
		}else if(age>60){
			d++;
		}
	}
	sum=a+b+c+d;
	alist.add(a);
	alist.add(b);
	alist.add(c);
	alist.add(d);
	alist.add(sum);
    %>
<!DOCTYPE html>
<html>
<head>
    <title>ECharts</title>
    <!-- ���� echarts.js -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>


<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="<%=path %>/js/a.js"></script>
</head>
<body>
<table>

   <tr> <table class="table table-bordered">
            <tr><td colspan="7" align="center">����</td> </tr>
            <tr><td>���</td> <td>����</td><td>����</td><td>�ٷֱ�</td><td align="center">��״ͼ</td></tr>
            <tr><td width="15%">1</td><td width="15%">20������</td><td width="15%"><%=alist.get(0) %></td><td width="15%"><%=String.format("%.2f",(((double)alist.get(0))/alist.get(4)*100 )) %>%</td><td colspan="3" rowspan="7"><div id="main" style="width: 600px;height:400px;"></div></td></tr>
            <tr><td>2</td><td>20~40��</td><td><%=alist.get(1) %></td><td><%=String.format("%.2f",(((double)alist.get(1))/alist.get(4)*100 ))%>%</td></tr>
            <tr><td>3</td><td>40~60��</td><td><%=alist.get(2) %></td><td><%=String.format("%.2f",(((double)alist.get(2))/alist.get(4)*100 )) %>%</td></tr>
            <tr><td>4</td><td>60������</td><td><%=alist.get(3) %></td><td><%=String.format("%.2f",(((double)alist.get(3))/alist.get(4)*100 )) %>%</td></tr>
    </table>

   </tr>
</table>
<script type="text/javascript">
    // ����׼���õ�dom����ʼ��echartsʵ��
    var myChart = echarts.init(document.getElementById('main'));

    // ָ��ͼ��������������
    option = {
        //��ʾ�����,����ƶ���ȥ��ʾ����ʾ����
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"//ģ������� {a}��{b}��{c}��{d}���ֱ��ʾϵ������������������ֵ���ٷֱȡ�
        },
        //ͼ��
        legend: {
            //ͼ����ֱ����
            orient: 'vertical',
            x: 'left',
            //data�е�����Ҫ��series-data�е�������Ӧ�����ɵ���ٿ�
            data:['20������','20~40��','40~60��','60������']
        },
        series: [
            {
                name:'',
                type:'pie',
                //��״ͼ
                // radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                //��ǩ
                label: {
                    normal: {
                        show: true,
                        position: 'inside',
                        formatter: '{d}%',//ģ������� {a}��{b}��{c}��{d}���ֱ��ʾϵ������������������ֵ���ٷֱȡ�{d}���ݻ����valueֵ����ٷֱ�

                        textStyle : {
                            align : 'center',
                            baseline : 'middle',
                            fontFamily : '΢���ź�',
                            fontSize : 15,
                            fontWeight : 'bolder'
                        }
                    },
                },
                data:[
                    {value:<%=alist.get(0) %>, name:'20������'},
                    {value:<%=alist.get(1) %>, name:'20~40��'},
                    {value:<%=alist.get(2) %>, name:'40~60��'},
                    {value:<%=alist.get(3) %>, name:'60������'},
                ]
            }
        ]
    };
    // ʹ�ø�ָ�����������������ʾͼ��
    myChart.setOption(option);
</script>
</body>
</html>