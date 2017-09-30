<%-- 
Document   : Egresado
Created on : 15/04/2016, 03:49:11 PM
Author     : Sergio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Dto.EventoDto"%>
<%@page import="Facade.FEgresado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en" class="no-js">

    <!-- Mirrored from premiumlayers.com/demos/unik/skin4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Aug 2015 18:31:29 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <title>SEGRE-EGRESADO</title>

        <meta charset="utf-8">
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,700,600,300' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/animate.css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/Sergio.css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/flexslider.css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/jquery.bxslider.css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/magnific-popup.css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/font-awesome.css" media="screen">
        <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen">
        <script type="text/javascript" src="../js/procesarMenuDir.js"></script>
        <script type="text/javascript" src="../js/Front.js"></script>
        <script type="text/javascript" src="../js/noVolver.js"></script>
    </head>
    <body onload="nobackbutton()>
        <!-- Container -->
        <div id="container" class="container">

            <div>
                <a href="../index.html"><img alt="" width="100%"   src="../images/a.jpg" /> </a>

            </div>

            <%
                HttpSession sesion = request.getSession();
                String Nombre = String.valueOf(session.getAttribute("Nombre"));
                if (sesion.getAttribute("rol") == null || sesion == null) {
            %>
            <script>alert("No posee credenciales");
                location.href = "../index.html"</script> 
                <%
                } else if (!sesion.getAttribute("rol").equals("EGRESADO")) {
                %>
            <script>alert("No posee credenciales" + )); location.href = "../index.html"</script> 

            <%
                }

            %>
            <!-- sidebar
                ================================================== -->
            <div id="sidebar">

                <!-- header -->
                <header class="sidebar-section">

                    <a class="elemadded responsive-link" href="#">Menú</a>
                    <div class="navbar-vertical">
                        <ul class="main-menu">

                            <li class="drop"><a class="active"><i class="fa fa-cog "></i>Bienvenido <%=Nombre%></a></li>
                            <li class="drop"><a><i class="fa fa-user"></i>Informacion Personal</a>
                                <ul class="drop-down">
                                    <li><a onclick="actualizar()">Actualizar Datos</a></li>
                                    <li><a onclick="contrase()">Cambiar Contraseña</a></li>
                                </ul>
                            </li>
                            <li class="drop"><a><i class="fa fa-user"></i>Experiencias Aprendidas</a>
                                <ul class="drop-down">
                                    <li><a onclick="subirExperiencias()">Subir Video</a></li>
                                    <li><a onclick="experienciasAprendias1()">Ver Video</a></li>
                                </ul>
                            </li>
                            <li class="drop"><a onclick="ofertaLaboral1()"><i class="fa fa-cog"></i>Ofertas de Empleo</a></li>
                            <li class="drop"><a onclick="encuesta()"><i class="fa fa-briefcase"></i>Encuesta</a></li>
                            <li class="drop"><a><i class="fa fa-user"></i>Acerca De</a>
                                <ul class="drop-down">
                                    <li><a onclick="evento()">Eventos</a></li>
                                    <li><a onclick="galeria()">Galería</a></li>
                                </ul></li>
                            <li class="drop"><a class="active" onclick="Cerrar()"  ><i class="fa fa-home"></i>Cerrar Sesion</a></li>
                        </ul>

                    </div>
                </header>

                <!-- Social list box -->
                <div class="sidebar-section white-box">
                    <div class="social-box">
                        <h2>Redes Sociales</h2>
                        <ul class="social-icons">
                            <li><a class="facebook" href="https://www.facebook.com/groups/140309882649983/?fref=ts"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="page" href="http://ingsistemas.ufps.edu.co/"><i class="fa fa-mail-reply-all"></i></a></li>
                        </ul>
                    </div>
                </div>



                <!-- contact-info box -->
                <div class="sidebar-section white-box">
                    <div class="contact-info-box">
                        <h2>Contacto</h2>
                        <ul>
                            <li>
                                <i class="fa fa-phone"></i> (57)(7)(57776655) ext 201-203
                            </li>

                            <li>
                                <i class="fa fa-home"></i> Direccion: Av Gran Colombia No.      12E-96 Barrio Colsag. Cúcuta - Colombia (Aula Sur 4Piso)
                            </li>
                        </ul>
                    </div>
                </div>



            </div>
            <!-- End Sidebar -->

            <!-- content 
                    ================================================== -->
            <div id="content">
                <!-- slider 
                            ================================================== -->
                <div id="ajax"> 
                    <%

                        FEgresado f = new FEgresado();
                        ArrayList<EventoDto> e = f.mostrar();


                    %>
                    <div id="slider" class="box-section triggerAnimation animated" data-animate="rollIn">
                        <div class="flexslider">
                            <ul class="slides">
                                <%    for (int i = 1; i < 4; i++) {%>
                                <li>
                                    <img alt="" class="img" src="<%=e.get(i).getI().getUrl()%>"/>
                                    <p class="flex-caption">"<%=e.get(i).getDescripcio()%>"</p>
                                </li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                    <%

                    %>
                </div>
                <!-- End slider -->

                <!-- Services section 
                        ================================================== -->

                 <center>
                <footer>
                    <div class="footer-line" aling="center">
                        Sistema de Infomación Básico para los Egresados de Ingeniería de Sistemas de la UFPS
                        <br>
                        Sergio Vladimir Díaz Rolón, Adriana del Valle Víllamizar
                        <br>
                        Universidad Francísco de Paula Santander
                        <br>
                        Derechos Reservados
                        <br>
                        2016<br>
                        <a class="go-top" href="#"><i class="fa fa-angle-up"></i></a>
                    </div>
                </footer>
                </center>
            </div>
            <!-- End Container -->


            <script type="text/javascript" src="../js/jquery.min.js"></script>
            <script type="text/javascript" src="../js/jquery.migrate.js"></script>
            <script type="text/javascript" src="../js/jquery.appear.js"></script>
            <script type="text/javascript" src="../js/jquery.magnific-popup.min.js"></script>
            <script type="text/javascript" src="../js/bootstrap.js"></script>
            <script type="text/javascript" src="../js/raphael-min.js"></script>
            <script type="text/javascript" src="../js/DevSolutionSkill.min.js"></script>
            <script type="text/javascript" src="../js/jquery.flexslider.js"></script>
            <script type="text/javascript" src="../js/jquery.bxslider.min.js"></script>
            <script type="text/javascript" src="../js/retina-1.1.0.min.js"></script>
            <script type="text/javascript" src="../js/waypoint.min.js"></script>
            <script type="text/javascript" src="../js/plugins-scroll.js"></script>
            <script type="text/javascript" src="../js/script.js"></script>

    </body>

    <!-- Mirrored from premiumlayers.com/demos/unik/skin4/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Aug 2015 18:32:48 GMT -->
</html>




