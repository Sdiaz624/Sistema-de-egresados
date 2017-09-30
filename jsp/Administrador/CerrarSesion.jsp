<%-- 
    Document   : CerrarSesion
    Created on : 1/05/2016, 03:15:33 PM
    Author     : Sergio
--%>

<%

    HttpSession sesion = request.getSession();

    request.getSession().removeAttribute("rol");
    
    sesion.invalidate();
    
    
    response.sendRedirect("../../index.html");


%>

