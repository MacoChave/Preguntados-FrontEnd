<%-- 
    Document   : Administrador
    Created on : 27-dic-2015, 23:07:18
    Author     : u
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
        <title>Administrador</title>
    </head>
    <body>
        <header>
		<ul class="menu">
			<li><a href="#">Inicio</a></li>
			<li><a href="Perfil.jsp">Perfil</a></li>
                        <li><a href="Partida.jsp">Partida</a></li>
			<li><a href="Juego.jsp">Juego</a></li>
                        <li><a href="#">Acerca De</a></li>
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
                        
                    <div class="caja rolUsuario">
                        <form method="POST">
                            <h1>Editar rol de usuario</h1>
                            
                            <select class="texto" name="usuarioRol">
                            <%
                                List<String> allusuario = Invocador.mostrarAllUsuario();
                                //Iterator iter = listaUsuario.iterator();
                                for(int i = 0; i < allusuario.size(); i++){
                                    %>
                                    <option><%= allusuario.get(i) %></option>
                                    <%
                                }
                            %>
                            </select>
                            
                            <select class="texto" name="rolUsuario">
                                <option>Jugador</option>
                                <option>Moderador</option>
                                <option>Administrador</option>
                            </select>
                            
                            <input type="submit" name="editarRolUser" value="Editar rol" class="boton">
                            <%
                                String nRol = request.getParameter("rolUsuario");
                                String userR = request.getParameter("usuarioRol");
                                Invocador.editRolUsuario(userR, nRol);
                            %>
			</form>
                    </div>
                        
                    <div class="caja bajaUsuario">
                        <form method="POST">
                            <h1>Dar de baja usuario</h1>
                            
                            <select class="texto" name="usuarioBaja">
                            <%
                                List<String> usuarioBaja = Invocador.mostrarAllUsuario();
                                //Iterator iter = listaUsuario.iterator();
                                for(int i = 0; i < usuarioBaja.size(); i++){
                                    %>
                                    <option><%=usuarioBaja.get(i)%></option>
                                    <%
                                }
                            %>
                            </select>
                            
                            <input type="submit" name="darBaja" value="Baja" class="boton">
                            <%
                                String userBaja = request.getParameter("usuarioBaja");
                                Invocador.bajaUsuario(userR);
                            %>
			</form>
                    </div>
                        
                    <div class="caja verRanking">
                        <form method="POST">
                            <h1>Ver ranking</h1>
                            
                            <table class="tabla">
                                <%
                                    
                                %>
                                <thead>
                                    <tr>
                                        <th>Usuario</th>
                                        <th>Rol</th>
                                        <th>Experiencia</th>
                                        <th>No. de Avatar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
			
                        </form>
                    </div>
			
                    <div class="caja verCuestionario">
                        <form method="POST">
                            <h1>Ver cuestionario</h1>
                            
                            <table class="tabla">
                                <%
                                    List<String> codCurso = Invocador.mostrarCursoPregunta();
                                    List<String> codNivel = Invocador.mostrarNivelPregunta();
                                    List<String> pregunta = Invocador.mostrarPregunta();
                                    List<Boolean> estado = Invocador.mostrarEstadoPregunta();
                                %>
                                <tr>
                                    <th>Curso</th>
                                    <th>Nivel</th>
                                    <th>Pregunta</th>
                                    <th>Estado</th>
                                </tr>
                                    <%for(int i = 0; i < codCurso.size(); i++){%>
                                <tr>
                                    <td><%= codCurso.get(i) %></td>
                                    <td><%= codNivel.get(i) %></td>
                                    <td><%= pregunta.get(i) %></td>
                                    <td><%= estado.get(i) %></td>
                                </tr>
                                    <%}%>
                            </table>                            
			</form>
                    </div>
                        
                    <div class="caja cargaCarrera">
                        <form method="POST">
                            <h1>Cargar carrera</h1>
                            <p>Carrera </p><input type="text" name="carrera" class="texto">
                            
                            <input type="submit" name="crearCarrera" value="Crear carrera" class="boton">
                            <%
                                if(request.getParameter("carrera") != null){
                                    String carrera = request.getParameter("carrera");
                                    Invocador.addCarrera(carrera);
                                }
                            %>
			</form>
                    </div>
                        
                    <div class="caja cargaCurso">
                        <form method="POST">
                            <h1>Cargar curso</h1>
                            
                            <select class="texto" name="carreraCurso">
                            <%
                                List<String> carreraCur = Invocador.mostrarCursoPregunta();
                                //Iterator iter = listaUsuario.iterator();
                                for(int i = 0; i < carreraCur.size(); i++){
                                    %>
                                    <option><%=carreraCur.get(i)%></option>
                                    <%
                                }
                            %>
                            </select>
                            
                            <p>Curso</p><input type="text" name="Curso" class="texto">
                            <input type="submit" name="crearCurso" value="Crear curso" class="boton">
                            <%
                                if(request.getParameter("carreraCurso") != null && request.getParameter("Curso") != null){
                                    String carreraCurso = request.getParameter("carreraCurso");
                                    String Curso = request.getParameter("Curso");
                                    Invocador.addCurso(carreraCurso, Curso);
                                }
                            %>
			</form>
                    </div>
                        
                    <div class="caja cargaItem">
                        <form method="POST">
                            <h1>Cargar item</h1>
                            <p>Nombre </p><input type="text" name="nombreItem" class="texto">
                            <p>Descripcion </p><input type="text" name="descItem" class="texto">
                            <p>Rareza </p><input type="text" name="rarezaItem" class="texto">
                            <p>Efectividad </p><input type="text" name="efectItem" class="texto">
                            <p>Bonus si gana </p><input type="text" name="bgItem" class="texto">
                            <p>Bonus si pierde </p><input type="text" name="bpItem" class="texto">
                            <p>Tipo</p><input type="text" name="tipoItem" class="texto">
                            
                            <input class="boton" type = "submit" value = "item" name = "item" />
                            
                            <%
                                if(request.getParameter("nombreItem") != null && request.getParameter("descItem") != null && request.getParameter("rarezaItem") != null && request.getParameter("efectItem") != null && request.getParameter("bgItem") != null && request.getParameter("bpItem") != null && request.getParameter("tipoItem") != null){
                                    String nombreItem = request.getParameter("nombreItem");
                                    String descItem = request.getParameter("descItem");
                                    String rarezaItem = request.getParameter("rarezaItem");
                                    String efectItem = request.getParameter("efectItem");
                                    String bgItem = request.getParameter("bgItem");
                                    String bpItem = request.getParameter("bpItem");
                                    String tipoItem = request.getParameter("tipoItem");
                                    Invocador.addItem(nombreItem, descItem, Integer.parseInt(rarezaItem), Integer.parseInt(efectItem), Integer.parseInt(bgItem), Integer.parseInt(bpItem), tipoItem);
                                }
                            %>
			</form>
                    </div>
                        
                    <div class="caja cargaMasiva">
                        <form method="POST">
                            <h1>Carga masiva</h1>
                            <input class="archivo" type="file" name="cargaMasiva"/>
                            <input class="boton" type="submit" value="Cargar Archivo" name="cargaMasiva" />
			</form>
                    </div>
                        
		</main>
	</div>
    </body>
</html>
