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
	int a=0,b=0,c=0,d=0,e=0,sum=0;
	ArrayList<Integer> edu = new ArrayList<Integer>();
 
	for(int j=0;j<reclist.size();j++){
		 EmployeeInfo sInfo = reclist.get(j);  
		 if(sInfo.getEdulevel()==3){ //����
			 a++;
		 }else if(sInfo.getEdulevel()==4){ //ר��
			 b++;
		 }else if(sInfo.getEdulevel()==5){ //����
			 c++;
		 }else if(sInfo.getEdulevel()==6){ //˶ʿ
			 d++;
		 }else if(sInfo.getEdulevel()==7){  //��ʿ
			 e++;
		 }
	 }
		sum = a+b+c+d+e;
		 edu.add(a);
		 edu.add(b);
		 edu.add(c);
		 edu.add(d);
		 edu.add(e);
		 edu.add(sum);
 
	%>
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
            <tr><td colspan="7" align="center">ѧ��</td> </tr>
            <tr><td>���</td> <td>����</td><td>����</td><td>�ٷֱ�</td><td align="center">��״ͼ</td></tr>
            <tr><td width="15%">1</td><td width="15%">����</td><td width="15%"><%=edu.get(0) %></td><td width="15%"><%=String.format("%.2f",(((double)edu.get(0))/edu.get(5)*100 )) %>%</td><td colspan="3" rowspan="5"><div id="main" style="width: 600px;height:400px;"></div></td></tr>
            <tr><td>2</td><td>ר��</td><td><%=edu.get(1) %></td><td><%=String.format("%.2f",(((double)edu.get(1))/edu.get(5)*100 ))%>%</td></tr>
            <tr><td>3</td><td>����</td><td><%=edu.get(2) %></td><td><%=String.format("%.2f",(((double)edu.get(2))/edu.get(5)*100 )) %>%</td></tr>
            <tr><td>4</td><td>˶ʿ</td><td><%=edu.get(3) %></td><td><%=String.format("%.2f",(((double)edu.get(3))/edu.get(5)*100 )) %>%</td></tr>
            <tr><td>5</td><td>��ʿ</td><td><%=edu.get(4) %></td><td><%=String.format("%.2f",(((double)edu.get(4))/edu.get(5)*100 )) %>%</td></tr>
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
            data:['����','ר��','����','˶ʿ','��ʿ']
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
                    {value:<%=edu.get(0) %>, name:'����'},
                    {value:<%=edu.get(1) %>, name:'ר��'},
                    {value:<%=edu.get(2) %>, name:'����'},
                    {value:<%=edu.get(3) %>, name:'˶ʿ'},
                    {value:<%=edu.get(4) %>, name:'��ʿ'},
                ]
            }
        ]
    };
    // ʹ�ø�ָ�����������������ʾͼ��
    myChart.setOption(option);
</script>
</body>
</html>