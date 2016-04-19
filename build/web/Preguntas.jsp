<%-- 
    Document   : Preguntas
    Created on : 05-ene-2016, 23:56:30
    Author     : u
--%>

<%@page import="java.util.Iterator"%>
<%@page import="logica.Pregunta"%>
<%@page import="java.util.List"%>
<%@page import="Intersector.Invocador"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("user") == null){
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos/estilos.css"/>
        <title>Cuestionario</title>
    </head>
    <body>
        <header>
		<ul class="menu">
			<li><a href="#">Inicio</a></li>
			<li><a href="#">Perfil</a></li>
			<li><a href="#">Acerca de</a></li>
                        <li><a href="logOut.jsp">Cerrar sesión</a></li>
		</ul>
	</header>
	<div class="main">
		<aside>
			<ul class="menu-side">
				<li class="listaP">Inventario</li>
				<li class="listaP">Avatar</li>
				<li class="listaP">Pregunta
                                    <ul class="sub-side">
					<li class="listaS">Crear</li>
					<li class="listaS">Aprobar</li>
					<li class="listaS">Rechazar</li>
					<li class="listaS">Ponderar</li>
                                    </ul>
				</li>
				<li class="listaP">Editar usuario</li>
				<li class="listaP">Registro
                                    <ul class="sub-side">
					<li class="listaS">Ranking</li>
					<li class="listaS">Cuestionario</li>
                                    </ul>
				</li>
				<li class="listaP">Cargar
                                    <ul class="sub-side">
					<li class="listaS">Curso</li>
					<li class="listaS">Item</li>
					<li class="listaS">Masiva</li>
                                    </ul>
				</li>
			</ul>
		</aside>
                <main>
                    
                </main>
            </div>
    </body>
</html>
