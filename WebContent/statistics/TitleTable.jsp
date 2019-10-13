<%@page import="employee.EmployeeInfo"%>
<%@ page language="java" contentType="text/html; charset=gbk" import="employee.*,java.util.*"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<%
	EmpDB empDB = new  EmpDB();
	String path = request.getContextPath();
	ArrayList<EmployeeInfo> reclist = empDB.getEmpList();
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<EmployeeInfo>();
	}
    %>
<%
	int a=0,b=0,c=0,sum=0;
	ArrayList<Integer>title = new ArrayList<Integer>();

	for(int j=0;j<reclist.size();j++){
		EmployeeInfo sInfo = reclist.get(j);  
		 if(sInfo.getTitlename().equals("��������ʦ")){ //����
			 a++;
		 }else if(sInfo.getTitlename().equals("�м�����ʦ")){ //ר��
			 b++;
		 }else if(sInfo.getTitlename().equals("�߼�����ʦ")){ //����
			 c++;
		 } 
	 }
		sum = a+b+c;
		title.add(a);
		title.add(b);
		title.add(c);
 
		title.add(sum);
	%>
<html>
<head>
    <title>ECharts</title>
    <!-- ���� echarts.js -->
    <script src="<%=path %>/js/a.js"></script>
     
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
 
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<table>

   <tr> <table class="table table-bordered">
            <tr align="center"><td colspan="7">ְ��</td> </tr>
               <tr><td>���</td><td>ְ����</td><td >����</td><td>�ٷֱ�</td><td align="center">��״ͼ</td></tr>
            <tr><td width="15%">1</td><td width="15%">��������ʦ</td><td width="15%"><%=title.get(0) %></td><td width="15%"><%=String.format("%.2f",(((double)title.get(0))/title.get(3)*100 )) %>%</td><td colspan="3" rowspan="5">   <div id="main" style="width: 600px;height:400px;"></div></td></tr>
            <tr><td>2</td><td>�м�����ʦ</td><td><%=title.get(1) %></td><td><%=String.format("%.2f",(((double)title.get(1))/title.get(3)*100 ))%>%</td></tr>
            <tr><td>3</td><td>�߼�����ʦ</td><td><%=title.get(2) %></td><td><%=String.format("%.2f",(((double)title.get(2))/title.get(3)*100 )) %>%</td></tr>
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
            data:['��������ʦ','�м�����ʦ','�߼�����ʦ']
        },
        series: [
            {
                name:' ',
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
                    {value:<%=title.get(0) %>, name:'��������ʦ'},
                    {value:<%=title.get(1) %>, name:'�м�����ʦ'},
                    {value:<%=title.get(2) %>, name:'�߼�����ʦ'},
 
                ]
            }
        ]
    };
    // ʹ�ø�ָ�����������������ʾͼ��
    myChart.setOption(option);
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>