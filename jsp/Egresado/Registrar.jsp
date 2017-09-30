<%-- 
    Document   : Registrar
    Created on : 17/04/2016, 04:37:06 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<div>
    <h2 align="center"> DIGITE SUS DATOS </h2>
    <%--
    <ul class="nav nav-tabs">
        <li id= "li1" role="presentation" class="active"><a href="#" onclick="mostrarTab('tab1', 'tab2', 'tab3', 'li1', 'li2', 'li3')">Personal</a></li>
        <li  id= "li2" role="presentation"><a href="#" onclick="mostrarTab('tab2', 'tab1', 'tab3', 'li2', 'li1', 'li3')">Laboral</a></li>
        <li id= "li3" role="presentation"><a href="#" onclick="mostrarTab('tab3', 'tab2', 'tab1', 'li3', 'li1', 'li2')">Formativa</a></li>
    </ul>
--%>
    <form class="form-horizontal" method="post" action="jsp/Egresado/procesarRegistro.jsp"  >
        <br>
        <div id="tab1" >
            <div class="form-group">
                <label class="col-md-2 control-label tabsRes  Altura">Nombre</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="nombre" required>
                </div>
            </div>

            <div class="form-group">
                <label  class="col-md-2 control-label">Primer Apellido</label>
                <div class="col-md-10">
                    <input type="text" class="form-control " name="papellido" required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Segundo Apellido</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="sapellido" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Cedula</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="cc" required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Expedida </label>
                <div class="col-md-10">
                    <input type="Date" class="form-control" name="expedida" required>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Sexo</label>
                <div class="col-md-10">
                    <select name="sexo" required class="control-label">
                        <option ></option>
                        <option value="Hombre">Hombre</option>
                        <option value="Mujer">Mujer</option>
                    </select>
                </div> 
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Codigo Estudiante</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="codigo" required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Fecha de Nacimiento</label>
                <div class="col-md-10">
                    <input type="Date" class="form-control" name="nacimiento"  required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Fecha de Grado</label>
                <div class="col-md-10">
                    <input type="Date" class="form-control" name="grado"  required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Direccion</label>
                <div class="col-md-10">
                    <input type="Text" class="form-control" name="direccion"  required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Celular</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="celular"  required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Telefono Fijo</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="fijo"  >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Correo Electronico</label>
                <div class="col-md-10">
                    <input type="email" class="form-control" name="correo"  required>
                </div>
            </div>
        
        </div>

       <div id="tab2" style="display:none"> 

            <div class="form-group">
                <label class="col-md-2 control-label">Nombre de la empresa</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="empresa">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Actividad de la Empresa</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="actividad" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Cargo</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="cargo" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Fecha de ingreso</label>
                <div class="col-md-10">
                    <input type="date" class="form-control" name="ingreso">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Direccion</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" name="dirempresa">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Ciudad</label>
                <div class="col-md-10">
                    <input type="Text" class="form-control" name="ciuempresa">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Telefono</label>
                <div class="col-md-10">
                    <input type="number" class="form-control" name="telempresa">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-form">Experiencia laboral</label>
                <textarea class="col-md-10" rows="5"  name="explaboral" ></textarea>
            </div>

            
        </div>

        <div id="tab3" style="display:none">
            <div class="form-group">
                <label class="col-md-2 control-form">Tipo de Estudio</label>
                <div class="col-md-10">
                    <select name="estudio" class="control-label">
                        <option ></option>
                        <option value="Pregrado">Pregrado</option>
                        <option value="Especializacion">Especializacion</option>
                        <option value="Maestria">Maestria</option>
                        <option value="Doctorado">Doctorado</option>
                        <option value="PostDoctorado">PostDoctorado</option>
                    </select>
                </div> 
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Titulo </label>
                <div class="col-md-10">
                    <input type="Text" class="form-control" name="investigacion">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-form">Experiencia Academica</label>
                <textarea class="col-md-10" rows="5" name="eacademica"></textarea>
            </div>
            
        </div>
        <center><button type="button" class="btn btn-default" onclick="mostrarTab('tab1', 'tab2', 'tab3', 'li3', 'li1', 'li2')">Informacion Personal</button>
        <button type="button" class="btn btn-default" onclick="mostrarTab('tab3', 'tab2', 'tab1', 'li3', 'li1', 'li2')">Informacion Academica</button>
        <button type="button" class="btn btn-default" onclick="mostrarTab('tab2', 'tab1', 'tab3', 'li2', 'li1', 'li3')">Informacion laboral</button>
        </center>
        
        <br>
        <center><button type="submit" class="btn btn-default" value="registrar" >Registrar</button>
        </center>
        
    </form>



</div>
