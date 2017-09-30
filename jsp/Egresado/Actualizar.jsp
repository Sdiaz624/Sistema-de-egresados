<%-- 
    Document   : Actualizar
    Created on : 18/04/2016, 07:13:31 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Facade.FEgresado"%>
<%@page import="Dto.EgresadoDto"%>

<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession(true);
    String cedula = String.valueOf(session.getAttribute("Usuario"));
    int cc= Integer.parseInt(cedula);
    
    FEgresado f = new FEgresado();
    EgresadoDto egre = f.mostrarEgresado(cc);
   
    %>
<div>
    <h2 align="center"> ACTUALIZACION DE DATOS </h2>
<%--
    <ul class="nav nav-tabs">
        <li id= "li1" role="presentation" class="active"><a href="#" onclick="mostrarTab('tab1', 'tab2', 'tab3', 'li1', 'li2', 'li3')">Personal</a></li>
        <li  id= "li2" role="presentation"><a href="#" onclick="mostrarTab('tab2', 'tab1', 'tab3', 'li2', 'li1', 'li3')">Laboral</a></li>
        <li id= "li3" role="presentation"><a href="#" onclick="mostrarTab('tab3', 'tab2', 'tab1', 'li3', 'li1', 'li2')">Formativa</a></li>
    </ul>
--%>
    <form class="form-horizontal" method="post" action="Egresado/procesarActualizacion.jsp" >
        <div id="tab1" >
                   
            <div class="form-group">
                <label class="col-md-2 control-label">Direccion</label>
                <div class="col-md-10">
                    <input type="Text" class="form-control" name="direccion" placeholder="<%=egre.getDireccion()%>"   required> 
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">celular</label>
                <div class="col-md-10">
                    <input type="number" class="form-control"  name="celular" placeholder="<%=egre.getCelular()%>"   required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Telefono Fijo</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="fijo" placeholder="<%=egre.getFijo()%>"  >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Correo Electronico</label>
                <div class="col-md-10">
                    <input type="email" class="form-control"  name="correo" placeholder="<%=egre.getCorreo()%>" required>
                </div>
            </div>
            
        </div>

        <div id="tab2" style="display:none">

            <div class="form-group">
                <label class="col-md-2 control-label">Nombre de la empresa</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="empresa"  >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Actividad de la Empresa</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="actividad">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Cargo </label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="cargo"  >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Fecha de ingreso</label>
                <div class="col-md-10">
                    <input type="date" class="form-control" name="ingreso" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Direccion</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="dirempresa" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Ciudad</label>
                <div class="col-md-10">
                    <input type="Text" class="form-control" name="ciuempresa" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Telefono</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="telempresa" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Experiencia laboral</label>
                <textarea class="col-md-10" rows="5" name="explaboral" ></textarea>
            </div>

            
        </div>

        <div id="tab3" style="display:none">
            <div class="form-group">
                <label class="col-md-2 control-form">Tipo de Estudio</label>
                <div class="col-md-10">
                    <select name="estudio" >
                        <option ></option>
                        <option value="Pregado">Pregrado</option>
                        <option value="Especializacion">Especializacion</option>
                        <option value="Maestria">Maestria</option>
                        <option value="Doctorado">Doctorado</option>
                        <option value="PostDoctorado">PostDoctorado</option>
                    </select>
                </div> 
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Titulo</label>
                <div class="col-md-10">
                    <input type="Text" class="form-control" name="investigacion" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Experiencia Academica</label>
                <textarea class="col-md-10" rows="5" name="eacademica" ></textarea>
            </div>
            <input type="hidden" name="cc" value="<%=egre.getCc()%>">
            
        </div>
            
            <center>
                <button type="button" class="btn btn-default" onclick="mostrarTab('tab1', 'tab2', 'tab3', 'li2', 'li1', 'li3')">Informacíon Laboral</button>
            <button type="button" class="btn btn-default" onclick="mostrarTab('tab2', 'tab1', 'tab3', 'li2', 'li1', 'li3')">Informacíon Laboral</button>
            <button type="button" class="btn btn-default" onclick="mostrarTab('tab3', 'tab2', 'tab1', 'li3', 'li1', 'li2')">Informacíon Académica</button>
            <br>
            <br>
            <button type="submit" class="btn btn-default"  >Actualizar</button>
            </center>
            
    </form>



</div>

