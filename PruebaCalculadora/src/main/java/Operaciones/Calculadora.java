/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Operaciones;

/**
 *
 * @author Usuario
 */
public class Calculadora {

    private int ans;

    public Calculadora() {
        ans = 0;
    }

    public int add(int a, int b) {
        ans = a + b;
        return ans;
    }

    public int sub(int a, int b) {
        ans = a - b;
        return ans;
    }

    public int add_ans(int v) {
        ans += v;
        return ans;
    }

    public int sub_ans(int v) {
        ans -= v;
        return ans;
    }

    public int ans() {
        return ans;
    }

    public void clear() {
        ans = 0;
    }

    public int div(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("No puedes dividir entre 0!!");
        }
        ans = a / b;
        return ans;
    }

    public void operacionOptima() {
        try {
            Thread.sleep(50);
        } catch (InterruptedException e) {
            //TODO
        }
    }

    public int multi(int a, int b) {
        ans = a * b;
        return ans;
    }

}
