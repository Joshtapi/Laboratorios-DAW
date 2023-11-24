/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.miempresa.biblioteca;

/**
 *
 * @author Usuario
 */
import java.util.HashMap;
import java.util.Map;

public class Biblioteca {
    private Map<String, Boolean> librosDisponibles; // Mapa para almacenar la disponibilidad de los libros
    private Map<Integer, String> usuarios; // Mapa para almacenar los usuarios y contraseñas
    private Map<Integer, Integer> planesUsuario; // Mapa para almacenar los planes de los usuarios
    private Map<Integer, Integer> prestamosUsuario; // Mapa para almacenar los préstamos realizados por cada usuario

    public Biblioteca() {
        librosDisponibles = new HashMap<>();
        usuarios = new HashMap<>();
        planesUsuario = new HashMap<>();
        prestamosUsuario = new HashMap<>();
        
        // Inicializar algunos libros disponibles (cambiar según tus necesidades)
        librosDisponibles.put("123", true);
        librosDisponibles.put("456", true);
        
        // Inicializar algunos usuarios y contraseñas (cambiar según tus necesidades)
        usuarios.put(1, "contrasena1");
        usuarios.put(2, "contrasena2");
        
        // Inicializar algunos planes de usuarios (cambiar según tus necesidades)
        planesUsuario.put(1, 1);
        planesUsuario.put(2, 2);
    }

    public String prestarLibro(String codigoLibro, int codigoUsuario, int codigoPlan, String contrasena, String tipoPrestamo) {
        // Verificar la disponibilidad del libro
        if (!verificarDisponibilidadLibro(codigoLibro)) {
            return "El libro no está disponible en este momento";
        }

        // Verificar la validez del usuario y su plan
        if (!verificarUsuario(codigoUsuario, contrasena)) {
            return "Usuario no válido o contraseña incorrecta";
        }

        if (!verificarPlanUsuario(codigoUsuario, codigoPlan)) {
            return "El usuario no tiene un plan válido para realizar el préstamo";
        }

        // Realizar la lógica para prestar el libro
        if (tipoPrestamo.equals("Casa")) {
            if (realizarPrestamoCasa(codigoLibro, codigoUsuario)) {
                return "El libro fue prestado exitosamente para leer en casa";
            } else {
                return "No se pudo realizar el préstamo del libro para leer en casa";
            }
        } else if (tipoPrestamo.equals("Sala")) {
            if (realizarPrestamoSala(codigoLibro, codigoUsuario)) {
                return "El libro fue prestado exitosamente para leer en la sala de lectura";
            } else {
                return "No se pudo realizar el préstamo del libro para leer en la sala de lectura";
            }
        } else {
            return "Tipo de préstamo inválido";
        }
    }

    private boolean verificarDisponibilidadLibro(String codigoLibro) {
        // Verificar la disponibilidad del libro en el mapa de libros disponibles
        return librosDisponibles.getOrDefault(codigoLibro, false);
    }

    private boolean verificarUsuario(int codigoUsuario, String contrasena) {
        // Verificar si el usuario y contraseña coinciden en el mapa de usuarios
        String contrasenaUsuario = usuarios.get(codigoUsuario);
        return contrasenaUsuario != null && contrasenaUsuario.equals(contrasena);
    }

    private boolean verificarPlanUsuario(int codigoUsuario, int codigoPlan) {
        // Verificar si el usuario tiene un plan válido en el mapa de planes de usuario
        Integer planUsuario = planesUsuario.get(codigoUsuario);
        return planUsuario != null && planUsuario.equals(codigoPlan);
    }

    private boolean realizarPrestamoCasa(String codigoLibro, int codigoUsuario) {
        // Realizar la lógica para prestar el libro para leer en casa
        // Por ejemplo, marcar el libro como no disponible y registrar el préstamo en el sistema
        librosDisponibles.put(codigoLibro, false);
        prestamosUsuario.put(codigoUsuario, prestamosUsuario.getOrDefault(codigoUsuario, 0) + 1);
        // Registro del préstamo en el sistema...
        return true; // Simplemente se retorna true para este ejemplo
    }

    private boolean realizarPrestamoSala(String codigoLibro, int codigoUsuario) {
        // Realizar la lógica para prestar el libro para leer en la sala de lectura
        // Por ejemplo, registrar el préstamo en el sistema
        prestamosUsuario.put(codigoUsuario, prestamosUsuario.getOrDefault(codigoUsuario, 0) + 1);
        // Registro del préstamo en el sistema...
        return true; // Simplemente se retorna true para este ejemplo
    }
}
