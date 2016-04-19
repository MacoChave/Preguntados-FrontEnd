/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Intersector;

/**
 *
 * @author u
 */
public class Invocador {

    public static String iniciarSesion(java.lang.String usuario, java.lang.String pass) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.iniciarSesion(usuario, pass);
    }

    public static boolean registro(java.lang.String usuario, java.lang.String pass, java.lang.String email) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.registro(usuario, pass, email);
    }

    public static boolean crearPregunta(java.lang.String curso, java.lang.String nivel, java.lang.String pregunta) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.crearPregunta(curso, nivel, pregunta);
    }

    public static boolean crearRespuesta(java.lang.String pregunta, java.lang.String opcion, boolean correcta) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.crearRespuesta(pregunta, opcion, correcta);
    }

    public static boolean editEstadoPregunta(boolean estado, String pregunta) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.editEstadoPregunta(estado, pregunta);
    }

    public static boolean editNivelPregunta(java.lang.String nivel, String pregunta) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.editNivelPregunta(nivel, pregunta);
    }

    public static boolean editRolUsuario(java.lang.String usuario, java.lang.String rol) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.editRolUsuario(usuario, rol);
    }

    public static boolean editPassUsuario(java.lang.String usuario, java.lang.String pass) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.editPassUsuario(usuario, pass);
    }

    public static boolean addCarrera(java.lang.String carrera) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.addCarrera(carrera);
    }

    public static boolean addCurso(java.lang.String carrera, java.lang.String curso) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.addCurso(carrera, curso);
    }

    public static boolean addItem(java.lang.String nombre, java.lang.String descripcion, int rareza, int efectividad, int bGana, int bPierde, java.lang.String tipo) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.addItem(nombre, descripcion, rareza, efectividad, bGana, bPierde, tipo);
    }

    public static boolean bajaUsuario(java.lang.String usuario) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.bajaUsuario(usuario);
    }

//MOSTRAR LISTADO DE PREGUNTAS
    public static java.util.List<logica.Pregunta> listaPregunta() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.listaPregunta();
    }

//MOSTRAR LISTA DE USUARIO
    public static java.util.List<java.lang.String> mostrarUsuario(java.lang.String usuario) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarUsuario(usuario);
    }
    
    public static java.util.List<java.lang.String> mostrarAllUsuario() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarAllUsuario();
    }
    
    public static java.util.List<java.lang.String> mostrarRol(java.lang.String usuario) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarRol(usuario);
    }

    public static java.util.List<java.lang.String> mostrarEmail(java.lang.String usuario) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarEmail(usuario);
    }   

    public static java.util.List<java.lang.Integer> mostrarExp(java.lang.String usuario) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarExp(usuario);
    }
    
    public static java.util.List<java.lang.Boolean> mostrarEstadoUsuario(java.lang.String usuario) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarEstadoUsuario(usuario);
    }
//MOSTRAR LISTA DE PREGUNTA
    public static java.util.List<java.lang.String> mostrarPregunta() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarPregunta();
    }

    public static java.util.List<java.lang.String> mostrarPreguntaPendiente() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarPreguntaPendiente();
    }

    public static java.util.List<java.lang.String> mostrarNivelPregunta() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarNivelPregunta();
    }

    public static java.util.List<java.lang.String> mostrarCursoPregunta() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarCursoPregunta();
    }
    
    public static java.util.List<java.lang.String> mostrarCarreraPregunta() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarCarreraPregunta();
    }
    
    public static java.util.List<java.lang.Boolean> mostrarEstadoPregunta() {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarEstadoPregunta();
    }
    
//    MOSTRAR LISTA DE RESPUESTA

    public static java.util.List<java.lang.Boolean> mostrarOpcionRespuesta(java.lang.String pregunta) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarOpcionRespuesta(pregunta);
    }

    public static java.util.List<java.lang.String> mostrarRespuesta(java.lang.String pregunta) {
        logica.WsPreguntado_Service service = new logica.WsPreguntado_Service();
        logica.WsPreguntado port = service.getWsPreguntadoPort();
        return port.mostrarRespuesta(pregunta);
    }
//    MOSTRAR LISTA DE INVENTARIO
    
//    MOSTRAR LISTA DE ITEM
    
//    MOSTRAR LISTA DE CURSOS
    
//    MOSTRAR LISTA DE CARRERA
    
//    MOSTRAR LISTA DE NIVEL
    
//    MOSTRAR LISTA DE PARTIDA


}
