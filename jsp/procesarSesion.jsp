<%-- 
    Document   : procesarSesion
    Created on : 15/04/2016, 03:31:47 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Facade.FInicioSesion"%>
<!DOCTYPE html>

<%

    FInicioSesion e = new FInicioSesion();

    String user = request.getParameter("username");
    String password = request.getParameter("password");

    if (user.equals("ADMINISTRADOR") && password.equals("admin")) {

        HttpSession sesion = request.getSession();
        sesion.setAttribute("rol", user);
        response.sendRedirect("Administrador.jsp");
        

    }
    
    

    String Datos = e.iniciarSesion(user, password);
    
    if (!Datos.equals("")) {

        String[] ddd = Datos.split(";");

        if (ddd[0].equals("EGRESADO")) {

            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("rol", ddd[0]);
            sesion.setAttribute("Usuario", ddd[1]);
            sesion.setAttribute("Cedula", ddd[2]);
            sesion.setAttribute("Nombre", ddd[3]);
            response.sendRedirect("Egresado.jsp");
        }


%><script> alert("Error de datos intente de nuevo");</script>
<script> location.href = "../index.html";</script><%        } else {

%><script> alert("Error de datos intente de nuevo");</script>
<script> location.href = "../index.html";</script><%        }


%>

