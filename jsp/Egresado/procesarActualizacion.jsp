<%-- 
    Document   : procesarActualizacion
    Created on : 28/04/2016, 12:00:13 AM
    Author     : Sergio
--%>

<%@page import="java.sql.Date"%>
<%@page import="Dto.EgresadoDto"%>
<%@page import="Facade.FEgresado"%>
<%

    int cc = Integer.parseInt(request.getParameter("cc"));

    String direccion = request.getParameter("direccion");
    String fijo = request.getParameter("fijo");
    String celular = request.getParameter("celular");
    String correo = request.getParameter("correo");
    String empresa = "";
    String actividad = "";
    String cargo = "";
    Date ingreso = null;
    String dirempresa = "";
    String ciuempresa = "";
    String telempresa = "";
    String explaboral = "";
    String estudio = "";
    String investigacion = "";
    String eacademica = request.getParameter("eacademica");

    EgresadoDto egresado = new EgresadoDto();

    if (!request.getParameter("empresa").equals("")) {
        empresa = request.getParameter("empresa");
        actividad = request.getParameter("actividad");
        cargo = request.getParameter("cargo");
        ingreso = Date.valueOf(request.getParameter("ingreso"));
        dirempresa = request.getParameter("dirempresa");
        ciuempresa = request.getParameter("ciuempresa");
        telempresa = request.getParameter("telempresa");
        explaboral = request.getParameter("explaboral");

    }
    if (!request.getParameter("estudio").equals("")) {
        estudio = request.getParameter("estudio");
        investigacion = request.getParameter("investigacion");
        eacademica = request.getParameter("eacademica");
    }

    egresado.setCc(cc);
    egresado.setDireccion(direccion);
    egresado.setFijo(fijo);
    egresado.setCelular(celular);
    egresado.setCorreo(correo);
    egresado.setEmpresa(empresa);
    egresado.setActividad(actividad);
    egresado.setCargo(cargo);
    egresado.setIngreso(ingreso);
    egresado.setDirempresa(dirempresa);
    egresado.setCiuempresa(ciuempresa);
    egresado.setTelempresa(telempresa);
    egresado.setExplaboral(explaboral);
    egresado.setEstudio(estudio);
    egresado.setInvestigacion(investigacion);
    egresado.setEacademica(eacademica);

    FEgresado f = new FEgresado();
    boolean existe = f.actualizarEgresado(egresado);

    String msg = "";
    if (existe) {

%><script> alert("Actualizacion correcta");</script>
<script> location.href = "../Egresado.jsp";</script>
<%        } else {

%><script> alert("Error de datos intente de nuevo");</script>
<script> location.href = "../Egresado.jsp";</script>
<%            }


%>