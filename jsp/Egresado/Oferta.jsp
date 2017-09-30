<%-- 
    Document   : Oferta.jsp
    Created on : 19/04/2016, 07:34:10 PM
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
    <h2 align="center"> OFERTAS DE EMPLEO MAS RECIENTES</h2>
    <div class="col-sm-6 col-md-4">
        <form class="form-horizontal" method="post" >
            <div class="thumbnail">
                <img src="../images/InicioSesion.jpg" alt="...">
                <div class="caption">
                    <h3><%= of[0].getNombre()%></h3>
                    <p>Descripcion
                        <br>
                        <br>
                        <%= of[0].getDescripcion()%>
                    </p>
                    <p> <a onclick="mioferta()" class="btn btn-default" role="button">Aplicar</a></p>
                </div>
            </div>

            <input type="hidden" name="nit" id="nit" value="<%= of[0].getNit()%>">
            <input type="hidden" name="nombre" id="nombre" value="<%= of[0].getNombre()%>">
            <input type="hidden" name="cargo"  id="cargo"value="<%= of[0].getCargo()%>">
            <input type="hidden" name="salario" id="salario" value="<%= of[0].getSalario()%>">
            <input type="hidden" name="descripcion" id="descripcion" value="<%= of[0].getDescripcion()%>">
            <input type="hidden" name="fecha" id="fecha" value="<%= of[0].getFecha()%>">
            <input type="hidden" name="correo" id="correo" value="<%= of[0].getCorreo()%>">
            <input type="hidden" name="telefono" id="telefono" value="<%= of[0].getNumero()%>">


        </form>
    </div>

           
    <div class="col-sm-6 col-md-4">
        <form class="form-horizontal" method="post"  >
            <div class="thumbnail">
                <img src="../images/InicioSesion.jpg" alt="...">
                <div class="caption">
                    <h3><%= of[1].getNombre()%></h3>
                    <p>Descripcion
                        <br>
                        <br>
                        <%= of[1].getDescripcion()%>
                    </p>
                    <p> <a onclick="mioferta1()" class="btn btn-default" role="button">Aplicar</a></p>
                </div>
            </div>

            <input type="hidden" name="nit" id="nit1" value="<%= of[1].getNit()%>">
            <input type="hidden" name="nombre" id="nombre1" value="<%= of[1].getNombre()%>">
            <input type="hidden" name="cargo"  id="cargo1"value="<%= of[1].getCargo()%>">
            <input type="hidden" name="salario" id="salario1" value="<%= of[1].getSalario()%>">
            <input type="hidden" name="descripcion" id="descripcion1" value="<%= of[1].getDescripcion()%>">
            <input type="hidden" name="fecha" id="fecha1" value="<%= of[1].getFecha()%>">
            <input type="hidden" name="correo" id="correo1" value="<%= of[1].getCorreo()%>">
            <input type="hidden" name="telefono" id="telefono1" value="<%= of[1].getNumero()%>">


        </form>
    </div>
            
            
            
    <div class="col-sm-6 col-md-4">
        <form class="form-horizontal" method="post"  >
            <div class="thumbnail">
                <img src="../images/InicioSesion.jpg" alt="...">
                <div class="caption">
                    <h3><%= of[2].getNombre()%></h3>
                    <p>Descripcion
                        <br>
                        <br>
                        <%= of[2].getDescripcion()%>
                    </p>
                    <p> <a onclick="mioferta2()" class="btn btn-default" role="button">Aplicar</a></p>
                </div>
            </div>

            <input type="hidden" name="nit" id="nit2" value="<%= of[2].getNit()%>">
            <input type="hidden" name="nombre" id="nombre2" value="<%= of[2].getNombre()%>">
            <input type="hidden" name="cargo"  id="cargo2"value="<%= of[2].getCargo()%>">
            <input type="hidden" name="salario" id="salario2" value="<%= of[2].getSalario()%>">
            <input type="hidden" name="descripcion" id="descripcion2" value="<%= of[2].getDescripcion()%>">
            <input type="hidden" name="fecha" id="fecha2" value="<%= of[2].getFecha()%>">
            <input type="hidden" name="correo" id="correo2" value="<%= of[2].getCorreo()%>">
            <input type="hidden" name="telefono" id="telefono2" value="<%= of[2].getNumero()%>">


        </form>
    </div>

</div>

