<%-- 
    Document   : Evento
    Created on : 28/04/2016, 10:04:26 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Facade.FEgresado"%>
<%@page import="Dto.EventoDto"%>
<%

    FEgresado e = new FEgresado();
    EventoDto[] of = e.retornarEventos();

%>
<div>
    <h2 align="center"> EVENTOS MAS RECIENTES</h2>
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="../images/InicioSesion.jpg" alt="...">
            <div class="caption">
                <h3><%= of[0].getNombre()%></h3>
                <p>Descripcion
                    <br>
                    <br>
                    <%= of[0].getNombre()%>
                    <%= of[0].getDescripcio()%>
                    <%= of[0].getFecha()%>
                </p>
                <p> </p>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="../images/InicioSesion.jpg" alt="...">
            <div class="caption">
                <h3><%= of[1].getNombre()%></h3>
                <p>Descripcion
                    <br>
                    <br>
                    <%= of[1].getNombre()%>
                    <%= of[1].getDescripcio()%>
                    <%= of[1].getFecha()%>
                </p>
                <p> </p>
            </div>
        </div>
    </div>


    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="../images/InicioSesion.jpg" alt="...">
            <div class="caption">
                <h3><%= of[2].getNombre()%></h3>
                <p>Descripcion
                    <br>
                    <br>
                    <%= of[2].getDescripcio()%>
                    <%= of[2].getFecha()%>
                </p>
                
            </div>
        </div>
    </div>


</div>

