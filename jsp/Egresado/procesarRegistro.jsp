<%-- 
    Document   : procesarRegistro
    Created on : 25/04/2016, 10:09:09 PM
    Author     : Sergio
--%>

<%@page import="java.sql.Date"%>
<%@page import="Dto.EgresadoDto"%>
<%@page import="Facade.FEgresado"%>
<%

    String sexo = request.getParameter("sexo");
    String nombre = request.getParameter("nombre");
    String papellido = request.getParameter("papellido");
    String sapellido = request.getParameter("sapellido");
    int cc = Integer.parseInt(request.getParameter("cc"));
    Date expedida = Date.valueOf(request.getParameter("expedida"));
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    Date nacimiento = Date.valueOf(request.getParameter("nacimiento"));
    Date grado = Date.valueOf(request.getParameter("grado"));
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
    String eacademica = "";

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

    EgresadoDto egresado = new EgresadoDto();

    egresado.setSexo(sexo);
    egresado.setNombre(nombre);
    egresado.setPapellido(papellido);
    egresado.setSapellido(sapellido);
    egresado.setCc(cc);
    egresado.setExpedida(expedida);
    egresado.setCodigo(codigo);
    egresado.setNacimiento(nacimiento);
    egresado.setGrado(grado);
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
    boolean existe = f.registrarEgresado(egresado);

    String msg = "";

    if (existe) {

%><script> alert("Registrado Correctamente, Espere que el Administrador Valide su Usuario");</script>
<script> location.href = "../../index.html";</script>
<%} else {

%><script> alert("Error de datos intente de nuevo");</script>
<script> location.href = "../../index.html";</script>
<%    }


%>
