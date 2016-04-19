
<%@page import="Intersector.Invocador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos/estilos.css"/>
        <link rel="stylesheet" href="estilos/login.css"/>
        <title>Login</title>
    </head>
    <body>
          <div class="caja Sesion">
            <form method="POST">
                <h1>Iniciar Sesión</h1>
                <p>Usuario </p> <input type="text" name="username" placeholder="Usuario" required class="texto">
                <p>Contraseña </p> <input type="password" placeholder="Contraseña" required name="pass" class="texto">
		<input type="submit" name="iniciarSesion" value="Iniciar Sesion" class="boton">
                <%
                    if(request.getParameter("username") != null && request.getParameter("pass") != null){
                        String usuario = request.getParameter("username");
                        String pass = request.getParameter("pass");
                        String rol;
                        rol = Invocador.iniciarSesion(usuario, pass);
                        if(rol != null){
                            HttpSession sesion=request.getSession();
                            sesion.setAttribute("user",usuario);
                            switch(rol){
                                case "Jugador": response.sendRedirect("Usuario.jsp");
                                    break;
                                case "Moderador": response.sendRedirect("Moderador.jsp");
                                    break;
                                case "Administrador": response.sendRedirect("Administrador.jsp");
                                    break;
                                default: out.println("Usuario incorrecto");
                                    break;
                            }
                        }
                        else{
                        }
                    }
                %>
            </form>
          </div>
            
        <div class="caja Registro">
            <form method="POST">            
                <h1>Registrarse</h1>
                <p>Usuario </p> <input type="text" name="newUser" placeholder="Usuario" required class="texto">
                <p>Contraseña </p> <input type="password" name="newPass" placeholder="Contraseña" required class="texto">
                <p>Vuelva a escribir la contraseña </p> <input type="password" name="rnewPass" placeholder="Verificación de contraseña" required class="texto">
                <p>E-mail </p> <input type="email" name="newEmail" class="texto" placeholder="Correo@Servidor.com" required>
                <input type="submit" name="registrar" value="Registrar" class="boton">
                <%
                    if(request.getParameter("newUser") != null && request.getParameter("newPass") != null){
                        if(request.getParameter("newPass").equals(request.getParameter("rnewPass"))){
                            String newUser = request.getParameter("newUser");
                            String newPass = request.getParameter("newPass");
                            String newEmail = request.getParameter("newEmail");
                            Invocador.registro(newUser, newPass, newEmail);
                        } else{
                            out.println("¡La contraseña no coincide!");
                        }
                    }
                    else{
                        out.println("¡Complete los campos!");
                    }
                %>
            </form>
        </div>
    </body>
</html>
