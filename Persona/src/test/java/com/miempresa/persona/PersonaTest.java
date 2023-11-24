package com.miempresa.persona;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class PersonaTest {

    @Test
    public void test3() {
        Persona p = new Persona(18);
        assertTrue(p.isMayorDeEdad());
    }

    @Test
    public void test4() {
        Persona p = new Persona(17);
        assertFalse(p.isMayorDeEdad());
    }

    @Test
    public void test5() {
        Persona p = new Persona(18);
        assertTrue(p.isMayorDeEdad());
    }

    @Test
    public void test6() {
        Persona p = new Persona(100);
        assertTrue(p.isMayorDeEdad());
    }

    @Test
    public void test1() {
        Persona p = new Persona(-1);
        assertThrows(AssertionError.class, () -> p.isMayorDeEdad());
    }

    @Test
    public void test2() {
        Persona p = new Persona(-100);
        assertThrows(AssertionError.class, () -> p.isMayorDeEdad());
    }
}
