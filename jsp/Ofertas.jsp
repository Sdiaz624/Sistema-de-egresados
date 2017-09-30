<%-- 
    Document   : Ofertas
    Created on : 8/05/2016, 11:47:39 AM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Facade.FEgresado"%>
<%@page import="Dto.OfertaDto"%>
<%

    FEgresado e = new FEgresado();
    OfertaDto[] of = e.retornaOfertas();


%>

<div class="container">
    
    <h2 align="center"> OFERTAS RECIENTES</h2>
    <div class="col-sm-6 col-md-4">
        <form class="form-horizontal" method="post"  >
            <div class="thumbnail">
                <img src="images/InicioSesion.jpg" alt="...">
                <div class="caption">
                    <center>
                        <h3><%= of[0].getNombre()%></h3>
                        <p>Descripcion
                            <br>
                            <br>
                            <%= of[0].getDescripcion()%>
                        </p>
                        <p>Si desea conocer mas inicie sesion </p>
                    </center>
                </div>
            </div>
        </form>
    </div>
                        
                        
    <div class="col-sm-6 col-md-4">
        <form class="form-horizontal" method="post"  >
            <div class="thumbnail">
                <img src="images/InicioSesion.jpg" alt="...">
                <div class="caption">
                    <center>
                        <h3><%= of[1].getNombre()%></h3>
                        <p>Descripcion
                            <br>
                            <br>
                            <%= of[1].getDescripcion()%>
                        </p>
                        <p>Si desea conocer mas inicie sesion </p>
                    </center>
                </div>
            </div>
        </form>
    </div>



    <div class="col-sm-6 col-md-4">
        <form class="form-horizontal" method="post"  >
            <div class="thumbnail">
                <img src="images/InicioSesion.jpg" alt="...">
                <div class="caption">
                    <center>
                        <h3><%= of[2].getNombre()%></h3>
                        <p>Descripcion
                            <br>
                            <br>
                            <%= of[2].getDescripcion()%>
                        </p>
                        <p>Si desea conocer mas inicie sesion </p>
                    </center>
                </div>
            </div>
        </form>
    </div>

</div>

