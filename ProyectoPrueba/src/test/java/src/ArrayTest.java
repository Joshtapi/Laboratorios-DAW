/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Usuario
 */
public class ArrayTest {

    private int[] elements;

    @Test
    public void testSize() {
        int arr[] = {1, 2, 3};
        Array a = new Array(arr);
        assertEquals(3, a.size());
    }

    @Test
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < elements.length; i++) {
            sb.append(elements[i]);
            if (i < elements.length - 1) {
                sb.append("x");
            }
        }
        return sb.toString();
    }

    @Test
    public void testSetElementAt() {
        int arr[] = {1, 2, 3};
        Array a = new Array(arr);
        a.setElementAt(100, 2);

        int obt[] = a.getArray();

        assertEquals(obt[2], 100);
        
        try {
            a.setElementAt(100, -1);
            
            assertFalse(true);
        }
        catch(Exception e){
            assertTrue(true);
        }
    }
    
    public void setUp(){
        System.out.println("Los valores iniciales del arreglo : {1,2,3}");
    }
    public void tearDown(){
        System.out.println("Aqui finaliza este caso de prueba");
    }
}


