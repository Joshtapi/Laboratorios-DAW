/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package com.miempresa.biblioteca;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class BibliotecaTest {
    private Biblioteca biblioteca;

    @BeforeEach
    public void setUp() {
        biblioteca = new Biblioteca();
    }

    @Test
    public void testPrestarLibroExitoso() {
        String codigoLibro = "123";
        int codigoUsuario = 1;
        int codigoPlan = 1;
        String contrasena = "contrasena1";
        String tipoPrestamo = "Casa";

        String resultado = biblioteca.prestarLibro(codigoLibro, codigoUsuario, codigoPlan, contrasena, tipoPrestamo);

        Assertions.assertEquals("El libro fue prestado exitosamente para leer en casa", resultado);
    }

    @Test
    public void testPrestarLibroNoDisponible() {
        String codigoLibro = "789";
        int codigoUsuario = 2;
        int codigoPlan = 2;
        String contrasena = "contrasena2";
        String tipoPrestamo = "Sala";

        String resultado = biblioteca.prestarLibro(codigoLibro, codigoUsuario, codigoPlan, contrasena, tipoPrestamo);

        Assertions.assertEquals("El libro no está disponible en este momento", resultado);
    }

    @Test
    public void testPrestarLibroUsuarioNoValido() {
        String codigoLibro = "456";
        int codigoUsuario = 3;
        int codigoPlan = 1;
        String contrasena = "contrasena3";
        String tipoPrestamo = "Casa";

        String resultado = biblioteca.prestarLibro(codigoLibro, codigoUsuario, codigoPlan, contrasena, tipoPrestamo);

        Assertions.assertEquals("Usuario no válido o contraseña incorrecta", resultado);
    }

    @Test
    public void testPrestarLibroPlanInvalido() {
        String codigoLibro = "123";
        int codigoUsuario = 2;
        int codigoPlan = 3;
        String contrasena = "contrasena2";
        String tipoPrestamo = "Casa";

        String resultado = biblioteca.prestarLibro(codigoLibro, codigoUsuario, codigoPlan, contrasena, tipoPrestamo);

        Assertions.assertEquals("El usuario no tiene un plan válido para realizar el préstamo", resultado);
    }
}
