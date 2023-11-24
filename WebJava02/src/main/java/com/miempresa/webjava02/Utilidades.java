/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miempresa.webjava02;

/**
 *
 * @author Usuario
 */
public class Utilidades {
  public int mayor(int a, int b, int c) {
    int mayor = a;
    if (b > mayor) {
        mayor = b;
    }
    if (c > mayor) {
        mayor = c;
    }
    return mayor;
}

  public int total(int[] arreglo) {
    int sumatoria = 0;
    for (int i = 0; i < arreglo.length; i++) {
        sumatoria += arreglo[i];
    }
    return sumatoria;
}
}
