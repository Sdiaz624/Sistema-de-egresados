<%-- 
    Document   : procesarConsulta
    Created on : 12/05/2016, 08:41:44 PM
    Author     : Sergio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Facade.FAdministrador"%>

<%

    String c = request.getParameter("tipo");
    FAdministrador f = new FAdministrador();
    ArrayList<String> res = f.consultiaResultado(c);
    String[] ves;
%>

<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {

        var data = google.visualization.arrayToDataTable([
    <%
                           ves = res.get(0).split(";");
    %>                      ['<%=ves[0]%>', '<%=ves[1]%>'], <%
                        for (int i = 1; i < res.size()-1; i++) {

                            ves = res.get(i).split(";");
    %>                  ['<%=ves[0]%>', <%=ves[1]%>], <%
                        }
                        ves = res.get(res.size()-1).split(";");
    %>                  ['<%=ves[0]%>', <%=ves[1]%>] <%
    %>

        ]);

        var options = {
            title: 'TORTA'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
    }
</script>

<h2>CONSULTA REALIZADA PARA <%=c%></h2>


<table class="table table-responsive"> 
    <%
        for (int i = 0; i < res.size(); i++) {

            ves = res.get(i).split(";");

    %>
    <tr>
    <td>
        <%=ves[0]%>
    </td>
    <td>
        <%=ves[1]%>
    </td>
</tr>
<%

    }

%>
</table>
<div id="piechart" style="width: 900px; height: 500px;"></div>

