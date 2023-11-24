/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es;

/**
 *
 * @author Usuario
 */
public class WhiteBoxTest {
public int aMetthod(boolean a, boolean b, boolean c) {
    if (a && !b && c) {
        return 2;
    } else if (a && !b && !c) {
        return 0;
    } else if (a && b && !c) {
        return 1;
    } else {
        return 0;
    }
}
}
