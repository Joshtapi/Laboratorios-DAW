/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Operaciones;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import org.junit.BeforeClass;

public class CalculadoraTest {

    static Calculadora calc;

    @Before
    public void before() {
        System.out.println("before()");
        calc = new Calculadora();
    }

    @After
    public void after() {
        System.out.println("after()");
        calc.clear();
    }

    @Test
    public void testSum() {
        System.out.println("sum()");
        int resul = calc.add(3, 2);
        int esper = 5;
        assertEquals(esper, resul);
    }

    @Test
    public void testAnsSum() {
        System.out.println("ansSum()");
        calc.add(3, 2);
        int resul = calc.ans();
        int esper = 5;
        assertEquals(esper, resul);
    }

    @Test
    public void testDiv() {
        calc.div(5, 2);
    }

    @Test(expected = ArithmeticException.class)
    public void testDivPorCero() {
        calc.div(5, 0);
    }

    @Test(timeout = 100)
    public void testAlgoritmoOptimo() {
        calc.operacionOptima();
    }

    @BeforeClass
    public static void beforeClass() {
        System.out.println("beforeClass()");
        calc = new Calculadora();
    }

    @AfterClass
    public static void afterClass() {
        System.out.println("afterClass()");
    }

    @Test
    public void testMulti() {
        System.out.println("multi()");
        int resul = calc.multi(4, 3);
        int esper = 12;
        assertEquals(esper, resul);
    }

}
