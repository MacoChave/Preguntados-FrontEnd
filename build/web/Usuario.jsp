<%-- 
    Document   : Usuario
    Created on : 27-dic-2015, 23:07:27
    Author     : u
--%>

<%@page import="java.util.List"%>
<%@page import="Intersector.Invocador"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
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
        <title>Usuario</title>
    </head>
    <body>
        <header>
		<ul class="menu">
			<li><a href="#">Ininio</a></li>
			<li><a href="Perfil.jsp">Perfil</a></li>
                        <li><a href="Partida.jsp">Partida</a></li>
			<li><a href="Juego.jsp">Juego</a></li>
			<li><a href="#">Acerca de</a></li>
                        <li><a href="logOut.jsp">Cerrar Sesión</a></li>
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
                                </ul>
                            </li>
			</ul>
		</aside>
		<main>
                    
                    <div class="caja inventario">
                        <form method="POST">
                            <h1>Inventario</h1>
                        </form>
                    </div>
                    
                    
                    <div class="caja equiparAvatar">
                        <form method="POST">
                            <h1>Editar avatar</h1>
                            <p>Avatar </p><input class="texto" name="avatarEqipar" type ="text">
                            <p>Equipo </p><input class="texto" name="equipoAvatar" type ="text">
                            <input type="submit" name="equipar" value="Equipar" class="boton">
			</form>
                    </div>
			
                    <div class="caja cargaPregunta">
                        <form method="POST">
                            <h1>Crear pregunta</h1>
                            <%
                                List<String> listaCodNivel = Invocador.mostrarNivelPregunta();
                                List<String> listaCodCurso = Invocador.mostrarCursoPregunta();
                            %>
                            <select class="texto" name="nivelPregunta">
                                <%for(int cN = 0; cN < listaCodNivel.size(); cN ++){%>
                                <option><% listaCodNivel.get(cN); %></option>
                                <%}%>
                            </select>
                            <select class="texto" name="cursoPregunta">
                                <%for(int cC = 0; cC < listaCodCurso.size(); cC ++){%>
                                <option><% listaCodCurso.get(cC); %></option>
                                <%}%>
                            </select>
                            <p>Pregunta </p><input type="text" name="pregunta" class="texto">
                            <p>Respuesta </p><input type="text" name="opcion1" class="texto">
                            <p>Opcion 1 </p><input type="text" name="opcion2" class="texto">
                            <p>Opcion 2 </p><input type="text" name="opcion3" class="texto">
                            <p>Opcion 3 </p><input type="text" name="opcion4" class="texto">
                            <input type="submit" name="cargarPregunta" value="Cargar Pregunta" class="boton">
                            <%
                                if(request.getParameter("pregunta") != null && request.getParameter("opcion1") != null){
                                    String codNivel = request.getParameter("nivelPregunta");
                                    String codCurso = request.getParameter("cursoPregunta");
                                    String pregunta = request.getParameter("pregunta");
                                    String opcion1 = request.getParameter("opcion1");
                                    String opcion2 = request.getParameter("opcion2");
                                    String opcion3 = request.getParameter("opcion3");
                                    String opcion4 = request.getParameter("opcion4");
                                    Invocador.crearPregunta(codNivel, codCurso, pregunta);
                                    Invocador.crearRespuesta(pregunta, opcion1, true);
                                    Invocador.crearRespuesta(pregunta, opcion2, false);
                                    Invocador.crearRespuesta(pregunta, opcion3, false);
                                    Invocador.crearRespuesta(pregunta, opcion4, false);
                                }

                            %>
			</form>
                    </div>
                        
		</main>
	</div>
    </body>
</html>