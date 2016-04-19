<%-- 
    Document   : Moderador
    Created on : 27-dic-2015, 23:07:50
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
        <title>Moderador</title>
    </head>
    <body>
        <header>
		<ul class="menu">
			<li><a href="Usuario.jsp">Inicio</a></li>
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
                                    <li class="listaS">Aprobar</li>
                                    <li class="listaS">Rechazar</li>
                                    <li class="listaS">Ponderar</li>
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
                        
                    <div class="caja altaPregunta">
                        <form method="POST">
                            <h1>Aprobar pregunta</h1>
                            
                            <p>Selecciona una pregunta</p>
                            <%
                                List<String> altaPregunta = Invocador.mostrarPregunta();
                            %>
                            <select class="texto" name="altaPregunta">
                                <%for(int aP = 0; aP < altaPregunta.size(); aP++){%>
                                <option><%= altaPregunta.get(aP) %></option>
                                <%}%>
                            </select>
                            
                            <input type="submit" name ="aprobarPregunta" value="Aprobar" class="boton">
                            <%
                                String preguntaAprobar = request.getParameter("altaPregunta");
                                Invocador.editEstadoPregunta(true, preguntaAprobar);
                            %>
			</form>
                    </div>
                        
                    <div class="caja bajaPregunta">
                        <form method="POST">
                            <h1>Rechazar pregunta</h1>
                            <p>Pregunta</p>
                            
                            <p>Selecciona una pregunta</p>
                            <%
                                List<String> bajaPregunta = Invocador.mostrarPregunta();
                            %>
                            <select class="texto" name="bajaPregunta">
                                <%for(int aP = 0; aP < altaPregunta.size(); aP++){%>
                                <option><%= bajaPregunta.get(aP) %></option>
                                <%}%>
                            </select>
                            
                            <input type="submit" name ="aprobarPregunta" value="Aprobar" class="boton">
                            <%
                                String reprobarAprobar = request.getParameter("bajaPregunta");
                                Invocador.editEstadoPregunta(false, preguntaAprobar);
                            %>
			</form>
                    </div>
                        
                    <div class="caja nivelPregunta">
                        <form method="POST">
                            <h1>Clasificar pregunta</h1>
                            
                            <select class="texto" name="preguntaNivel">
                                <option>Facil</option>
                                <option>Intermedio</option>
                                <option>Dificil</option>
                                <option>Muy dificil</option>
                            </select>
                            
                            <p>Selecciona una pregunta</p>
                            <%
                                List<String> nivelPregunta = Invocador.mostrarPregunta();
                            %>
                            <select class="texto" name="nivelPregunta">
                                <%for(int nP = 0; nP < nivelPregunta.size(); nP++){%>
                                <option><%= nivelPregunta.get(nP) %></option>
                                <%}%>
                            </select>
                            
                            <input type="submit" name="clasificarPregunta" value="Clasificar" class="boton">
                            <%
                                String preguntaNivel = request.getParameter("preguntaNivel");
                                String nvlPregunta = request.getParameter("nivelPregunta");
                                Invocador.editNivelPregunta(nvlPregunta, preguntaNivel);
                            %>
			</form>
                    </div>
		</main>
	</div>
    </body>
</html>