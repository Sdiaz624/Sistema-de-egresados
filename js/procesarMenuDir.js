
function loading(rta) {
       $(rta).html("<div class='row'><div class=' col-md-offset-5'><img src='images/cargando1.gif' width='500' height='500' /></div>");

}

function ajax2(url, datos, rta) {
    var ajax = $.get(url, datos, function (respuesta) {
        $(rta).html(respuesta);
    });
    return ajax;
}
function ajax(url, datos, rta) {
    var ajax = $.get(url, datos, function (respuesta) {
        $(rta).html(respuesta);
    });
    return ajax;
}

/* Principal -----------------------------------------------------------------*/
/* Egresado -----------------------------------------------------------------*/

function recuperar() {

    var url = "jsp/cambiarContra.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}


function contrase() {

    var url = "Egresado/CambiarContrase.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function registrarEgresado() {

    var url = "jsp/Egresado/Registrar.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function encuesta() {

    var url = "Egresado/LinkEncuesta.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function registrarEgresado2() {

    var url = "Egresado/Registrar.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function iniciarSesion() {

    var url = "jsp/IniciarSesion.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function ofertaLaboral() {

    var url = "jsp/Ofertas.jsp\n\
";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}


function experienciasAprendias() {

    var url = "jsp/Egresado/ExperienciasAprendidas.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function experienciasAprendias1() {

    var url = "Egresado/ExperienciasAprendidas.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function subirExperiencias() {

    var url = "Egresado/SubirExperiencia.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}



function actualizar() {

    var url = "Egresado/Actualizar.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function ofertaLaboral1() {

    var url = "Egresado/Oferta.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function evento() {

    var url = "Egresado/Evento.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function evento1() {

    var url = "jsp/Evento.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}
function Cerrar() {

    window.location = "../jsp/Egresado/CerrarSesion.jsp";


}
function Cerrar2() {

    window.location = "../jsp/Administrador/CerrarSesion.jsp";


}

function mioferta() {

    var url = "Egresado/verOferta.jsp";
    var id = document.getElementById("nombre").value;
    var nombre = document.getElementById("nombre").value;
    var nit = document.getElementById("nit").value;
    var cargo = document.getElementById("cargo").value;
    var salario = document.getElementById("salario").value;
    var descripcion = document.getElementById("descripcion").value;
    var fecha = document.getElementById("fecha").value;
    var correo = document.getElementById("correo").value;
    var telefono = document.getElementById("telefono").value;
    var datos = {nombre: nombre, nit: nit, cargo: cargo, salario: salario, descripcion: descripcion, fecha: fecha, correo: correo, telefono: telefono};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function mioferta1() {

    var url = "Egresado/verOferta.jsp";

    var nombre = document.getElementById("nombre1").value;
    var nit = document.getElementById("nit1").value;
    var cargo = document.getElementById("cargo1").value;
    var salario = document.getElementById("salario1").value;
    var descripcion = document.getElementById("descripcion1").value;
    var fecha = document.getElementById("fecha1").value;
    var correo = document.getElementById("correo1").value;
    var telefono = document.getElementById("telefono1").value;
    var datos = {nombre: nombre, nit: nit, cargo: cargo, salario: salario, descripcion: descripcion, fecha: fecha, correo: correo, telefono: telefono};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function mioferta2() {

    var url = "Egresado/verOferta.jsp";

    var nombre = document.getElementById("nombre2").value;
    var nit = document.getElementById("nit2").value;
    var cargo = document.getElementById("cargo2").value;
    var salario = document.getElementById("salario2").value;
    var descripcion = document.getElementById("descripcion2").value;
    var fecha = document.getElementById("fecha2").value;
    var correo = document.getElementById("correo2").value;
    var telefono = document.getElementById("telefono2").value;
    var datos = {nombre: nombre, nit: nit, cargo: cargo, salario: salario, descripcion: descripcion, fecha: fecha, correo: correo, telefono: telefono};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function galeria() {

    var url = "Egresado/Galeria.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);


}

function galeria1() {

    var url = "jsp/Egresado/Galeria.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

    



}


/* Administrador -----------------------------------------------------------------*/


function validarEgresados() {


    var url = "Administrador/ValidarEgresados.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function registrarOferta() {


    var url = "Administrador/CrearOferta.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function ofertaLaboral2() {

    var url = "Administrador/Oferta.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function subirEncuesta() {

    var url = "Administrador/EncuestaCawii.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function subirE() {

    var url = "Administrador/SubirEvento.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}



function correo() {

    var url = "Administrador/EnviarCorreo.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

function consu() {

    var url = "Administrador/Consultas.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}
function proconsu() {

    var url = "Administrador/procesarConsulta.jsp";
    var tipo = document.getElementById("tipo").value;
    var datos = {tipo: tipo};

    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}
function reporte() {

    var url = "Administrador/Reporte.jsp";
    var datos = {};
    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}
function prorer() {

    var url = "Administrador/generardorResporte.jsp";
    var tipo = document.getElementById("tipo").value;
    var datos = {tipo: tipo};

    var rta = "#ajax";
    loading(rta);
    ajax2(url, datos, rta);

}

