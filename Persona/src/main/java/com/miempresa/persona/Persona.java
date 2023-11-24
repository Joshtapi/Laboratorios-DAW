/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.miempresa.persona;

/**
 *
 * @author Usuario
 */
public class Persona {
    private int edad;
    
    public Persona(int edad){
        this.edad = edad;
    }
    
    public boolean isMayorDeEdad(){
        assert edad >= 0;
        return edad >= 18;
    }
}
