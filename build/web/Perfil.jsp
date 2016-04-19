<%-- 
    Document   : Perfil
    Created on : 07-ene-2016, 11:40:46
    Author     : u
--%>

<%@page import="Intersector.Invocador"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("user") == null){
        response.sendRedirect("login.jsp");
    }
    String userSesion = sesion.getAttribute("user").toString();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos/estilos.css"/>
        <title>JSP Page</title>
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
            </aside>
            <main>

                <div class="caja verPerfil">
                    <form method="POST">
                        <h1>Ver datos de Usuario</h1>

                        <table class="tabla">
                            <%
                                List<String> usuario = Invocador.mostrarUsuario(userSesion);
                                List<String> rol = Invocador.mostrarRol(userSesion);
                                List<String> email = Invocador.mostrarEmail(userSesion);
                                List<Integer> exp = Invocador.mostrarExp(userSesion);
                            %>
                            <tr>
                                <th>Usuario</th>
                                <th>Rol</th>
                                <th>Email</th>
                                <th>Exp</th>
                            </tr>
                                <%for(int i = 0; i < usuario.size(); i++){%>
                            <tr>
                                <td><%= usuario.get(i) %></td>
                                <td><%= rol.get(i) %></td>
                                <td><%= email.get(i) %></td>
                                <td><%= exp.get(i) %></td>
                            </tr>
                                <%}%>
                        </table>                            
                    </form>    
                </div>
                        
                <div class="caja editarPass">
                    <form method="POST">
                        <p>Ingrese su nueva contraseña</p>
                        <input class="texto" type="password" name="newPass" value="" />
                        <p>Confirme su nueva contraseña</p>
                        <input class="texto" type="password" name="reNewPass" value="" />
                        <input type="submit" value="Aceptar" name="aceptar" />
                        <%
                            if(request.getParameter("newPass") != null && request.getParameter("reNewPass") != null){
                                String newPass = request.getParameter("newPass");
                                String reNewPass = request.getParameter("newPass");
                                Invocador.editPassUsuario(userSesion, newPass);
                            }
                            else{
                                out.println("Su nueva contraseña no coincide.");
                            }
                        %>
                    </form>
                </div>
            </main>
        </div>
    </body>
</html>
