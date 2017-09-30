<%-- 
    Document   : Galeria
    Created on : 1/05/2016, 04:03:24 PM
    Author     : Sergio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Dto.EventoDto"%>
<%@page import="Dto.EventoDto"%>
<%@page import="Facade.FEgresado"%>
<%

    FEgresado f = new FEgresado();
    ArrayList<EventoDto> e = f.mostrar();


%>


<h2 align="center"> GALERIA DE IMAGENES</h2>
<div id="slider" class="box-section triggerAnimation animated" data-animate="rollIn">
    <div class="flexslider">
        <ul >
            <%    for (int i = 1; i < e.size(); i++) {%>
            <li>
                <img alt="" class="img3" src="<%=e.get(i).getI().getUrl()%>"/>
                <br>
                    
            </li>
            <%
                }
            %>
        </ul>
    </div>
</div>

<%

%>


