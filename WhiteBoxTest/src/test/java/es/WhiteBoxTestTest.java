/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Usuario
 */
public class WhiteBoxTestTest {

    @Test
    public void testAmethod1() {
        WhiteBoxTest instance = new WhiteBoxTest();
        assertEquals(instance.aMetthod(true, false, true), 2);
    }

    @Test
    public void testAmethod2() {
        WhiteBoxTest instance = new WhiteBoxTest();
        assertEquals(instance.aMetthod(true, false, false), 0);
    }

    @Test
    public void testAmethod3() {
        WhiteBoxTest instance = new WhiteBoxTest();
        assertEquals(instance.aMetthod(true, true, false), 1);
    }

    @Test
    public void testAmethod4() {
        WhiteBoxTest instance = new WhiteBoxTest();
        assertEquals(instance.aMetthod(false, false, false), 0);
    }
}
